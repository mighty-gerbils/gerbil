;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method"
        "compile"
        "optimize-base"
        "optimize-xform")
(export #t)
(declare (inlining-limit 200))

;; method to optimize with context annotations
(defcompile-method (apply-optimize-annotated) (::optimize-annotated ::basic-xform)
  ()
  final:
  (%#begin-annotation optimize-annotation%))

;; method to generate the runtime representation of an AST
(defcompile-method (apply-generate-runtime-repr) (::generate-runtime-repr ::generate-runtime)
  ()
  final:
  (%#quote-syntax identity-method))

;; method to process variable refs in match/syntax-case conte4xt
(defcompile-method (apply-push-match-vars vars: vars K: K) ::push-match-vars
  (vars K)
  final:
  (%#lambda                xform-lambda%)
  (%#let-values       push-match-vars-let-values%)
  (%#letrec-values    push-match-vars-stop)
  (%#if               push-match-vars-if%)
  (%#call             push-match-vars-call%)
  (%#begin-annotation push-match-vars-stop)

;; current annotation context stack
(def current-annotation-optimizer
  (make-parameter []))

;;; apply-optimize-annotated
(def (optimize-annotation% self stx)
  (ast-case stx ()
    ((_ ann expr)
     (identifier? #'ann)
     (let (ann (stx-e #'ann))
       (parameterize ((current-annotation-optimizer
                       (cons ann (current-annotation-optimizer))))
         (case ann
           ((@match)
            (verbose "Optimizing match expansion")
            (optimize-match #'expr))
           ((@syntax-case)
            (verbose "Optimizing syntax-case expansion")
            (optimize-syntax-case #'expr))
           (else
            (compile-e #'expr))))))
     (_ (xform-begin-annotation% self stx))))

;;; optimize-match
(def (optimize-match stx)
  (ast-case stx (%#let-values)
    ((%#let-values (((E) fail)) body)
     (let lp ((body #'body) (negation (cons #'E #'fail)) (clauses []) (konts []))
       (ast-case body (%#let-values
                       %#begin-annotation
                       @match-body)
         ((%#begin-annotation @match-body body)
          (ast-case #'body (%#let-values)
            ((%#let-values (((K) kont)) body)
             (if (null? clauses)
               ;; single arm match; nothing to optimize
               (with ([E . negate] negation)
                 (xform-wrap-source
                  ['%#let-values [[[E] negate]]
                    ['%#let-values [[[#'K] (compile-e #'kont)]]
                      #'body]]
                  stx))
               ;; we got a bunch of clauses, let's optimize
               (optimize-match-body
                stx negation
                (cons (cons #f #'(%#lambda () body))
                      clauses)
                (cons (cons #'K (compile-e #'kont))
                      konts))))
            (_
             (null? clauses)
             (with ([E . negate] negation)
               (xform-wrap-source
                ['%#let-values [[[E] negate]] #'body]
                stx)))))
         ((%#let-values (((clause) clause-body)) body)
          (ast-case #'clause-body (%#let-values
                                   %#lambda
                                   %#begin-annotation
                                   @match-else)
            ((%#lambda () (%#let-values (((K) kont)) clause-match))
             (lp #'body negation
                 (cons (cons #'clause #'(%#lambda () clause-match))
                       clauses)
                 (cons (cons #'K (compile-e #'kont))
                       konts)))
            ((%#begin-annotation @match-else match-else)
             (lp #'body
              (cons #'clause (compile-e #'match-else))
              clauses konts)))))))))

(def (optimize-match-body stx negation clauses konts)
  (def (push-variables clause kont)
    (with (([clause-name . clause-lambda] clause)
           ([K . _] kont))
      (cons clause-name (apply-push-match-vars clause-lambda vars: [] K: K))))

  (def (start-match kont)
    (ast-case kont (%#lambda)
      ((%#lambda () body) #'body)))

  (def (match-body blocks)
    (with ([[#f . start] . rest] blocks)
      (let lp ((rest rest) (body (start-match start)))
        (match rest
          ([block . rest]
           (with ([K . kont] block)
             (lp rest ['%#let-values [[[K] kont]] body])))
          (else body)))))

  (parameterize ((current-expander-context (make-local-context)))
    (let* ((clauses (map push-variables clauses konts))
           (blocks (optimize-match-basic-blocks clauses))
           (blocks (optimize-match-fold-basic-blocks blocks))
           (body (match-body blocks))
           (bind (map (match <> ([K . kont] [[K] kont]))
                      konts))
           (negate (with ([K . kont] negation) [[K] kont])))
      (xform-wrap-source
       ['%#let-values [negate]
         ['%#let-values bind body]]
       stx))))

(def (optimize-match-basic-blocks clauses)
  (let lp ((rest clauses) (blocks []))
    (match rest
      ([clause . rest]
       (lp rest (optimize-match-lift-basic-blocks clause blocks)))
      (else
       (reverse blocks)))))

(def (optimize-match-lift-basic-blocks clause blocks)
  (def (bind->args bind)
    (foldl (lambda (b r) (cons ['%#ref (car b)] r)) [] bind))

  (def (create-block body let-bind bind assert)
    (let* ((id (make-symbol (gensym '__match)))
           (id (core-quote-syntax id))
           (_ (core-bind-runtime! id))
           (block [id body bind assert])
           (continue
            ['%#call ['%#ref id] (bind->args bind) ...])
           (continue
            (if (null? let-bind)
              continue
              (let (locals (map (match <> ([id . expr] [[id] expr]))
                                let-bind))
                ['%#let-values locals continue]))))
      (values continue block)))

  (def (basic-block body bind assert)
    (ast-case body (%#if %#let-values %#ref)
      ((%#if test K E)
       (let ((values k-continue k-block)
             (create-block #'K [] bind (cons (cons #'test #t) assert)))
         (ast-case #'E (%#call)
           ((%#call . _)
            (values ['%#if #'test k-continue #'E]
                    [k-block]))
           (_
            (let ((values e-continue e-block)
                  (create-block #'E [] bind (cons (cons #'test #f) assert)))
              (values ['%#if #'test k-continue e-continue]
                      [k-block e-block]))))))

      ;; pattern var bind -- macroblock
      ((%#let-values (((_) (%#ref _)) ...) _)
       (values body []))

      ;; binding block
      ((%#let-values (((id) expr) ...) body)
       (let* ((let-bind (map cons #'(id ...) #'(expr ...)))
              ((values continue block)
               (create-block #'body let-bind
                 (foldl cons bind let-bind)
                 assert)))
         (values continue [block])))

      ;; macroblock
      (_ (values body []))))

  (def (fold-blocks rest blocks)
    (match rest
      ([[name body bind assert] . rest]
       (let ((values body body-blocks)
             (basic-block body bind assert))
         (fold-blocks (foldl cons rest body-blocks)
           (cons [name continue: ['%#lambda (reverse (map car bind)) body] assert bind]
                 blocks))))
      ([] blocks)))

  (with ([name . body] clause)
    (ast-case body (%#lambda)
      ((%#lambda () body)
       (let ((values body body-blocks)
             (basic-block #'body [] []))
         (fold-blocks body-blocks
           (cons [name restart: ['%#lambda [] body] []]
                 blocks)))))))

(def (optimize-match-fold-basic-blocks blocks)
  (let lp ((rest blocks) (blocks []))
    (match rest
      ([block . rest]
       (match block
         ([name restart: kont assert]
          (ast-case kont (%#lambda)
            ((%#lambda () body)
             (let* ((body (optimize-match-block #'body assert [] rest))
                    (block [name restart: ['%#lambda [] body] assert])
                    (blocks (cons block blocks))
                    (rest (optimize-match-prune-blocks rest blocks))
                    (rest (optimize-match-fuse-restart-blocks rest blocks)))
               (lp rest blocks)))))
         ([name continue: kont assert bind]
          (ast-case kont (%#lambda)
            ((%#lambda (id ...) body)
             (let* ((body (optimize-match-block #'body assert bind rest))
                    (block [name continue: ['%#lambda #'(id ...) body] assert bind])
                    (blocks (cons block blocks))
                    (rest (optimize-match-prune-blocks rest blocks))
                    (rest (optimize-match-fuse-restart-blocks rest blocks)))
               (lp rest blocks)))))))
      (else
       (foldl (lambda (block r)
                (with ([name _ kont . _] block)
                  (cons (cons name kont) r)))
              [] blocks)))))

(def (optimize-match-block body assert bind blocks)
  (defrules with-assert ()
    ((_ assert expr)
     (do-assert assert (lambda () expr))))

  (defrules with-bind ()
    ((_ bind expr)
     (do-bind bind (lambda () expr))))

  (defrules with-splice ()
    ((_ expr)
     (do-splice! (lambda () expr))))

  (def env-assert [])
  (def env-type [])
  (def env-bind [])
  (def in-splice? #f)

  (def (do-assert assert K)
    (if (pair? assert)
      (let lp ((rest assert) (env-assert env-assert) (env-type env-type))
        (match rest
          ([assert . rest]
           (with ([expr . val] assert)
             (let* ((sexpr (apply-generate-runtime-repr expr))
                    (env-assert (cons (cons sexpr val) env-assert))
                    (env-type (fold-assert-type expr val env-type)))
               (lp rest env-assert env-type))))
          (else
           (do-assert! env-assert env-type K))))
      (K)))

  (def (predicate-type id)
    (let (sym (identifier-symbol id))
      (case sym
        ((pair? ##pair?) 'pair)
        ((null? ##null?) 'null)
        ((vector? ##vector?) 'vector)
        ((box? ##box?) 'box)
        ((gx#identifier?) 'identifier)
        ((gx#stx-pair?) 'stx-pair)
        ((gx#stx-null?) 'stx-null)
        ((gx#stx-vector?) 'stx-vector)
        ((gx#stx-box?) 'stx-box)
        ((gx#stx-datum?) 'stx-datum)
        (else
         (match (optimizer-resolve-type sym)
           ((!predicate t)
            (optimizer-resolve-class `(predicate-type ,id) t))
           (else #f))))))

  (def (fold-assert-type expr val env)
    (ast-case expr (%#call %#ref %#quote %#quote-syntax %#lambda)
      ((%#call (%#ref pred) (%#ref id))
       (cond
        ((predicate-type #'pred)
         => (lambda (t) (cons [#'id t val] env)))
        (else env)))

      ((%#call (%#ref primop) target (%#quote datum))
       (case (identifier-symbol #'primop)
         ((##fx= fx=)
          (ast-case #'target (%#call %#ref)
            ((%#call (%#ref count) (%#ref id))
             (cond
              ((countf-symbol #'count)
               => (lambda (sym)
                    (cons [#'id sym (stx-e #'datum) val] env)))
              (else env)))
            (_ env)))

         ((##eq? eq? ##eqv? eqv? ##equal? equal?
                 gx#free-identifier=? gx#stx-eq?)
          => (lambda (sym)
               (let (sym (eqf-symbol sym))
                 (ast-case #'target (%#ref)
                   ((%#ref id)
                    (cons [#'id sym (stx-e #'datum) val] env))
                   (_ env)))))

         (else env)))

      ((%#call (%#ref primop) (%#quote datum) target)
       (fold-assert-type #'(%#call (%#ref primop) target (%#quote datum)) val env))

      ((%#call (%#ref primop) (%#ref id) (%#quote-syntax qstx))
       (case (identifier-symbol #'primop)
         ((gx#free-identifier=? gx#stx-eq?)
          => (lambda (sym)
               (let (sym (eqf-symbol sym))
                 (cons [#'id sym #'qstx val] env))))
         (else env)))

      ((%#call (%#ref primop) (%#quote-syntax qstx) (%#ref id))
       (fold-assert-type #'(%#call (%#ref primop) (%#ref id) (%#quote-syntax qstx)) val env))

      ((%#call (%#lambda (id) body) (%#ref xid))
       (fold-assert-type (apply-expression-subst #'body id: #'id new-id: #'xid) val env))

      (_ env)))

  (def (countf-symbol id)
    (case (identifier-symbol id)
      ((##vector-length vector-length)
       'vector-length)
      ((values-count)
       'values-count)
      (else #f)))

  (def (eqf-symbol sym)
    (case sym
      ((##eq? eq?) 'eq?)
      ((##eqv? eqv?) 'eqv?)
      ((##equal? equal?) 'equal?)
      ((gx#free-identifier=?) 'free-identifier=?)
      ((gx#stx-eq?) 'stx-eq?)
      (else #f)))

  (def (eqf-symbol? sym)
    (case sym
      ((eq? eqv? equal? free-identifier=? stx-eq?)
       #t)
      (else #f)))

  (def  (do-assert! assert type K)
    (let ((unwind-assert env-assert)
          (unwind-type env-type))
      (set! env-assert assert)
      (set! env-type type)
      (let (val (K))
        (set! env-assert unwind-assert)
        (set! env-type unwind-type)
        val)))

  (def (do-bind bind K)
    (if (pair? bind)
      (do-bind! (fold-bind-env bind env-bind) K)
      (K)))

  (def (fold-bind-env bind env)
    (let lp ((rest bind) (env env))
      (match rest
        ([bind . rest]
         (with ([id . expr] bind)
           (let (sexpr (apply-generate-runtime-repr expr))
             (lp rest (cons (cons sexpr id) env)))))
        (else env))))

  (def (do-bind! env K)
    (let (unwind env-bind)
      (set! env-bind env)
      (let (val (K))
        (set! env-bind unwind)
        val)))

  (def (do-splice! K)
    (let (unwind in-splice?)
      (set! in-splice? #t)
      (let (val (K))
        (set! in-splice? unwind)
        val)))

  (def (optimize-e expr)
    (ast-case expr (%#if %#let-values %#letrec-values %#lambda %#call %#ref)
      ((%#if test K E)
       (case (assert-e #'test)
         ((#t)
          (optimize-e #'K))
         ((#f)
          (optimize-e #'E))
         (else
          (let ((K (optimize-t #'K #'test))
                (E (optimize-f #'E #'test)))
            (if (equal? (apply-generate-runtime-repr K)
                        (apply-generate-runtime-repr E))
              K
              ['%#if #'test K E])))))

      ((%#call (%#ref rator) (%#ref id) ...)
       (cond
        ((lookup-block #'rator)
         => (lambda (block)
              (if (nonlinear-block? block)
                expr
                (optimize-e (inline-block block #'(id ...))))))
        (else
         expr)))

      ((%#let-values (((id) (%#ref xid)) ...) body)
       (let (body (optimize-e #'body))
         ['%#let-values #'(((id) (%#ref xid)) ...) body]))

      ((%#let-values (((id) expr) ...) body)
       (bind-e (map cons #'(id ...) #'(expr ...))
               #'body))

      ((%#letrec-values (((K) (%#lambda (id ...) expr)) bind ...) body)
       (with-splice
        (let (expr (optimize-e #'expr))
          ['%#letrec-values [[[#'K] ['%#lambda #'(id ...) expr]] #'(bind ...) ...] #'body])))

      (_ expr)))

  (def (optimize-t expr test (continue optimize-e))
    (with-assert [(cons test #t)]
      (continue expr)))

  (def (optimize-f expr (test #f))
    (with-assert (if test [(cons test #f)] [])
      (ast-case expr (%#call %#ref %#if %#let-values %#letrec-values %#lambda)
        ((%#call (%#ref rator) (%#ref id) ...)
         (cond
          ((lookup-block #'rator)
           => (lambda (block)
                (if (nonlinear-block? block)
                  expr
                  (let (inline (inline-block block #'(id ...)))
                    (ast-case inline (%#if)
                      ((%#if test K E)
                       ;; only inline conditionals if we can fuse the match tree
                       (case (assert-e #'test)
                         ((#t)
                          (if in-splice?
                            (optimize-f #'K)
                            (optimize-e #'K)))
                         ((#f)
                          (optimize-f #'E))
                         (else expr)))

                      (_ (optimize-f inline)))))))
          (else expr)))

        ((%#if test K E)
         (case (assert-e #'test)
           ((#t)
            (if in-splice?
              (optimize-f #'K)
              (optimize-e #'K)))
           ((#f)
            (optimize-f #'E))
           (else
            (let ((K (optimize-t #'K #'test optimize-f))
                  (E (optimize-f #'E #'test)))
              (if (equal? (apply-generate-runtime-repr K)
                          (apply-generate-runtime-repr E))
                K
                ['%#if #'test K E])))))

        ((%#let-values (((id) (%#ref xid)) ...) body)
         (let (body (optimize-f #'body))
           ['%#let-values #'(((id) (%#ref xid)) ...) body]))

        ((%#let-values (((id) expr) ...) body)
         (bind-e (map cons #'(id ...) #'(expr ...))
                 #'body optimize-f))

        ((%#letrec-values (((K) (%#lambda (id ...) expr)) bind ...) body)
         (with-splice
          (let (expr (optimize-f #'expr))
            ['%#letrec-values [[[#'K] ['%#lambda #'(id ...) expr]] #'(bind ...) ...] #'body])))

        (_ expr))))

  (def (assert-e expr)
    (let (sexpr (apply-generate-runtime-repr expr))
      (cond
       ((assoc sexpr env-assert)
        => cdr)
       (else
        (let assert ((expr expr))
          (ast-case expr (%#call %#ref %#quote %#quote-syntax %#lambda)
            ((%#call (%#ref pred) (%#ref id))
             (cond
              ((predicate-type #'pred)
               => (lambda (t)
                    (assert-type #'id t)))
              (else #!void)))

            ((%#call (%#ref primop) target (%#quote datum))
             (case (identifier-symbol #'primop)
               ((##fx= fx=)
                (ast-case #'target (%#call %#ref)
                  ((%#call (%#ref count) (%#ref id))
                   (cond
                    ((countf-symbol #'count)
                     => (lambda (sym)
                          (assert-count #'id sym (stx-e #'datum))))
                    (else #!void)))
                  (_ #!void)))

               ((##eq? eq? ##eqv? eqv? ##equal? equal?
                       gx#free-identifier=? gx#stx-eq?)
                => (lambda (sym)
                     (ast-case #'target (%#ref)
                       ((%#ref id)
                        (assert-eqf #'id (eqf-symbol sym) (stx-e #'datum)))
                       (_ #!void))))

               (else #!void)))

            ((%#call (%#ref primop) (%#quote datum) target)
             (assert #'(%#call (%#ref primop) target (%#quote datum))))

            ((%#call (%#ref primop) (%#ref id) (%#quote-syntax qstx))
             (case (identifier-symbol #'primop)
               ((gx#free-identifier=? gx#stx-eq?)
                => (lambda (sym)
                     (assert-eqf #'id (eqf-symbol sym) #'qstx)))
               (else #!void)))

            ((%#call (%#ref primop) (%#quote-syntax qstx) (%#ref id))
             (assert #'(%#call (%#ref primop) (%#ref id) (%#quote-syntax qstx))))

            ((%#call (%#lambda (id) body) (%#ref xid))
             (assert (apply-expression-subst #'body id: #'id new-id: #'xid)))

            (_ #!void)))))))

  (def (assert-type id t)
    (let lp ((rest env-type))
      (match rest
        ([type-info . rest]
         (match type-info
           ([xid xt val]
            (if (free-identifier=? id xid)
              (cond
               ((eq? t xt) val)
               (val
                ;; it's a positive type assertion; we can only satisfy it
                ;; if it's an assertion for a subtype of ours
                (and (!class? t)
                     (!class? xt)
                     (!class-subclass? t xt)))
               (else
                ;; it's a negative type assertion; we cannot satisfy it
                ;; if it's an assertion for a supertype of ours
                (if (and (!class? t)
                         (!class? xt)
                         (!class-subclass? t xt))
                    #f
                    (lp rest))))
              (lp rest)))
           (else (lp rest))))
        (else #!void))))

  (def (assert-count id sym count)
    (let lp ((rest env-type))
      (match rest
        ([type-info . rest]
         (match type-info
           ([xid xsym xcount val]
            (if (and (eq? sym xsym) (free-identifier=? id xid))
              (cond
               (val (fx= count xcount))
               ((fx= count xcount) #f)
               (else (lp rest)))
              (lp rest)))
           (else
            (lp rest))))
        (else #!void))))

  (def (assert-eqf id sym datum)
    (def (eqf sym)
      (case sym
        ((eq?) eq?)
        ((eqv?) eqv?)
        ((equal?) equal?)
        ((free-identifier=?) free-identifier=?)
        ((stx-eq?) stx-eq?)
        (else
         (raise-compile-error "Unexpected eqf symbol" body sym))))

    (let lp ((rest env-type))
      (match rest
        ([type-info . rest]
         (match type-info
           ([xid xsym xdatum val]
            (if (and (eq? sym xsym) (free-identifier=? id xid))
              (let (=? (eqf sym))
                (cond
                 (val (=? datum xdatum))
                 ((=? datum xdatum) #f)
                 (else (lp rest))))
              (lp rest)))
           (else
            (lp rest))))
        (else #!void))))

  (def (bind-e bind body (continue optimize-e))
    (let lp ((rest bind) (subst []) (locals []) (env env-bind))
      (match rest
        ([bind . rest]
         (with ([id . expr] bind)
           (let (sexpr (apply-generate-runtime-repr expr))
             (cond
              ((assget sexpr env-bind)
               => (lambda (xid)
                    (lp rest (cons (cons id xid) subst) locals env)))
              (else
               (lp rest subst (cons [[id] expr] locals) (cons (cons sexpr id) env)))))))
        (else
         (let* ((body (if (null? subst) body (apply-expression-subst* body subst: subst)))
                (body (do-bind! env (cut continue body))))
           (if (null? locals)
             body
             ['%#let-values locals body]))))))

  (def (lookup-block id)
    (find (lambda (block) (free-identifier=? (car block) id)) blocks))

  (def (inline-block block args)
    (let (kont (caddr block))
      (ast-case kont (%#lambda)
        ((%#lambda (id ...) body)
         (if (null? #'(id ...))
           #'body
           (let (subst (map cons #'(id ...) args))
             (apply-expression-subst* #'body subst: subst)))))))

  (def (nonlinear-block? block)
    (def (nonlinear-expr? expr)
      (ast-case expr (%#let-values %#letrec-values %#ref %#if)
        ((%#letrec-values . _) #t)
        ((%#let-values (((_) (%#ref _)) ...) body)
         (ast-case #'body (%#call)
           ((%#call . _) #f)
           (_ #t)))
        ((%#let-values _ body)
         (nonlinear-expr? #'body))
        ((%#if test K E)
         (or (nonlinear-expr? #'K)
             (nonlinear-expr? #'E)))
        (_ #f)))

    (let (kont (caddr block))
      (ast-case kont (%#lambda)
        ((%#lambda (id ...) body)
         (nonlinear-expr? #'body)))))

  (with-assert assert
    (with-bind bind
      (if (memq '@match:prefix (current-annotation-optimizer))
        (with-splice
         (optimize-e body))
        (optimize-e body)))))

(def (optimize-match-prune-blocks blocks konts)
  (def rtab (make-hash-table-eq))

  (for-each
    (lambda (block)
      (apply-collect-runtime-refs (caddr block) table: rtab))
    konts)

  (let lp ((rest blocks) (r []))
    (match rest
      ([block . rest]
       (match block
         ([name type kont . _]
          (if (hash-get rtab (identifier-symbol name))
            (begin
              (apply-collect-runtime-refs kont table: rtab)
              (lp rest (cons block r)))
            (lp rest r)))))
      (else
       (reverse r)))))

(def (optimize-match-fuse-restart-blocks blocks konts)
  (match blocks
    ([[name restart: kont _] . rest]
     (def rtab (make-hash-table-eq))

     (for-each
       (lambda (block)
         (apply-collect-runtime-refs (caddr block) table: rtab))
       konts)

     (if (fx= (hash-ref rtab (identifier-symbol name)) 1)
       (let* ((rblock
               (find (lambda (block) (apply-find-var-refs (caddr block) ids: [name]))
                     konts))
              (assert
               (optimize-match-assert-restart rblock name)))
         (cons [name restart: kont assert] rest))
       blocks))

    (else blocks)))

(def (optimize-match-assert-restart block name)
  (def (assert-restart expr assert)
    (ast-case expr (%#if %#call %#ref %#let-values %#letrec-values %#lambda)
      ((%#if test K E)
       (or (assert-restart #'K (cons (cons #'test #t) assert))
           (assert-restart #'E (cons (cons #'test #f) assert))))

      ((%#call (%#ref rator) . _)
       (and (free-identifier=? #'rator name)
            assert))

      ((%#let-values _ body)
       (assert-restart #'body assert))

      ((%#letrec-values (((K) (%#lambda (id ...) expr)) bind ...) body)
       (assert-restart #'expr assert))

      (_ #f)))

  (match block
    ([_ _ kont assert . maybe-bind]
     (ast-case kont (%#lambda)
       ((%#lambda (id ...) body)
        (assert-restart #'body assert))))))

;;; optimize-syntax-case
(def (optimize-syntax-case stx)
  (ast-case stx (%#let-values)
    ((%#let-values (((E) fail)) body)
     (let lp ((body #'body) (clauses []))
       (ast-case body (%#let-values %#call %#ref)
         ((%#let-values (((clause) clause-lambda)) body)
          (lp #'body (cons (cons #'clause (compile-e #'clause-lambda)) clauses)))
         ((%#call (%#ref start) expr)
          (case (length clauses)
            ((0)
             (xform-wrap-source
              ['%#let-values [[[#'E] #'fail]]
               (compile-e body)]
              stx))
            ((1)
             (with ([[clause . clause-lambda]] clauses)
               (xform-wrap-source
                ['%#let-values [[[#'E] #'fail]]
                  ['%#let-values [[[clause] clause-lambda]]
                    (compile-e body)]]
                stx)))
            (else
             (optimize-syntax-case-body stx (compile-e #'expr) (cons #'E #'fail) clauses)))))))))

(def (optimize-syntax-case-body stx expr negation clauses)
  (def (normalize clauses)
    (with ([[id . kont] . rest] clauses)
      [[#f . kont] . rest]))

  (parameterize ((current-expander-context (make-local-context)))
    (let* ((id (make-symbol (gensym '__stx)))
           (id (core-quote-syntax id))
           (_ (core-bind-runtime! id))
           ((values clauses konts)
            (optimize-syntax-case-clauses clauses (car negation)))
           (clauses (map (cut optimize-syntax-case-closure <> <> id)
                         clauses
                         [(map car (cdr clauses)) ... (car negation)]))
           (clauses (normalize clauses))
           (negation (optimize-syntax-case-closure negation #f id))
           (body (optimize-match-body stx negation clauses konts)))
      (xform-wrap-source
       ['%#let-values [[[id] expr]] body]
       stx))))

(def (optimize-syntax-case-clauses clauses negation-id)
  ;; don't forget the fender, it is inside the continuation -- that's
  ;; the point where we lift arguments for dispatch

  (def (xform-e expr kont-id kont-box negation-id)
    (ast-case expr (%#if %#let-values %#letrec-values %#ref %#lambda %#call)
      ((%#if test K E)
       (let (K (xform-e #'K kont-id kont-box negation-id))
         ['%#if #'test K #'E]))

      ((%#let-values (((tgt tl) (%#call (%#ref split-splice) . args))) body)
       (runtime-identifier=? #'split-splice 'gx#syntax-split-splice)
       (let* ((id (make-symbol (gensym '__splice)))
              (id (core-quote-syntax id))
              (_ (core-bind-runtime! id))
              (body (xform-e #'body kont-id kont-box negation-id)))
         ['%#let-values [[[id] #'(%#call (%#ref split-splice) . args)]]
           ['%#let-values [[[#'tgt] ['%#call '(%#ref ##vector-ref) ['%#ref id] '(%#quote 0)]]
                           [[#'tl] ['%#call '(%#ref ##vector-ref) ['%#ref id] '(%#quote 1)]]]
              body]]))

      ((%#let-values bind body)
       (let (body (xform-e #'body kont-id kont-box negation-id))
         ['%#let-values #'bind body]))

      ((%#letrec-values (((id) lambda-expr)) body)
       (let (lambda-expr (xform-loop-e #'lambda-expr kont-id kont-box negation-id))
         ['%#letrec-values [[[#'id] lambda-expr]] #'body]))

      ((%#call (%#lambda (id ...) body) arg ...)
       (ast-case #'body (%#if %#call %#ref)
         ((%#if fender K (%#call (%#ref E) (%#ref xarg)))
          (free-identifier=? #'E negation-id)
          (let (kont #'(%#lambda (id ...) K))
            (set! (box kont-box) kont)
            (let* ((kont-args
                    (map (lambda (id) ['%#ref id]) #'(id ...)))
                   (body
                    ['%#if #'fender
                           ['%#call ['%#ref kont-id] kont-args ...]
                           #'(%#call (%#ref E) (%#ref xarg))]))
              (if (null? #'(id ...))
                body
                ['%#let-values (map (lambda (id arg) [[id] arg]) #'(id ...) #'(arg ...))
                               body]))))
         (_
          (let (kont #'(%#lambda (id ...) body))
            (set! (box kont-box) kont)
            ['%#call ['%#ref kont-id] #'(arg ...) ...]))))))

  (def (xform-loop-e expr kont-id kont-box negation-id)
    (ast-case expr (%#lambda %#if)
      ((%#lambda (id ...) (%#if test K E))
       (let (E (xform-e #'E kont-id kont-box negation-id))
         ['%#lambda #'(id ...) ['%#if #'test #'K E]]))))

  (def (clause-e clause-lambda kont-id rest)
    (def kont-box (box #f))

    (let (negation-id
          (match rest
            ([[clause-id . clause] . _] clause-id)
            (else negation-id)))
      (ast-case clause-lambda (%#lambda)
        ((%#lambda (id) body)
         (let (body (xform-e #'body kont-id kont-box negation-id))
           (values ['%#lambda #'(id) body]
                   (unbox kont-box)))))))

  (let lp ((rest clauses) (clauses []) (konts []))
    (match rest
      ([clause . rest]
       (with ([clause-id . clause-lambda] clause)
         (let* ((id (make-symbol (gensym '__kont)))
                (id (core-quote-syntax id))
                (_ (core-bind-runtime! id))
                ((values clause-lambda kont)
                 (clause-e clause-lambda id rest)))
           (lp rest
               (cons [clause-id . clause-lambda] clauses)
               (cons [id . kont] konts)))))
      (else
       (values (reverse clauses) (reverse konts))))))

(def (optimize-syntax-case-closure clause negation target)
  (def (closure-e expr)
    (ast-case expr (%#if %#let-values %#letrec-values %#ref %#lambda %#call)
      ((%#if test K E)
       ['%#if #'test (closure-e #'K) (closure-e #'E)])
      ((%#let-values bind body)
       ['%#let-values #'bind (closure-e #'body)])
      ((%#letrec-values (((id) lambda-expr)) body)
       ['%#letrec-values [[[#'id] (closure-e #'lambda-expr)]] #'body])
      ((%#lambda (id ...) body)
       ['%#lambda #'(id ...) (closure-e #'body)])
      ((%#call (%#ref rator) _)
       (free-identifier=? #'rator negation)
       ['%#call #'(%#ref rator)])
      ((%#call (%#ref rator) arg ...)
       expr)))

  (with ([id . kont] clause)
    (ast-case kont (%#lambda)
      ((%#lambda (obj) body)
       (let* ((body (apply-expression-subst #'body id: #'obj new-id: target))
              (body (if negation (closure-e body) body)))
         ;; we need to redeclare the type of the lambda, as it has lost the argument
         (optimizer-declare-type! (identifier-symbol id) (make-!lambda 0 #f) #t)
         (cons id ['%#lambda [] body]))))))

;;; apply-push-match-vars
(def (push-match-vars-let-values% self stx)
  (ast-case stx ()
    ((_ bind body)
     (let lp ((rest #'bind) (rebind []) (vars (@ self vars)))
       (match rest
         ([bind . rest]
          (ast-case bind (%#ref)
            (((id) (%#ref new-id))
             (lp rest rebind (cons bind vars)))
            (_ (lp rest (cons bind rebind) vars))))
         (else
          (let (sibling (struct-copy self))
            (set! (@ sibling vars) vars)
            (parameterize ((current-compile-method sibling))
              (if (null? rebind)
                (compile-e sibling #'body)
                (xform-wrap-source
                 ['%#let-values (reverse rebind) (compile-e sibling #'body)]
                 stx))))))))))

(def (push-match-vars-if% self stx)
  (ast-case stx ()
    ((_ test k e)
     (if (apply-find-var-refs #'test ids: (map caar (@ self vars)))
       (push-match-vars-stop self stx)
       (xform-wrap-source
        ['%#if #'test
               (compile-e self #'k)
               (compile-e self #'e)]
        stx)))))

(def (push-match-vars-call% self stx)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . _)
     (if (and (free-identifier=? #'rator (@ self K)) (pair? (@ self vars)))
       (xform-wrap-source
        ['%#let-values (reverse (@ self vars)) stx]
        stx)
       stx))))

(def (push-match-vars-stop self stx)
  (if (null? (@ self vars)) stx
      (xform-wrap-source
       ['%#let-values (reverse (@ self vars)) stx]
       stx)))
