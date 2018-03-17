;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        "optimize-base"
        "optimize-xform")
(export #t)

(defcompile-method apply-optimize-annotated (&optmize-annotated &basic-xform)
  (%#begin-annotation optimize-annotation%))

(defcompile-method apply-push-match-vars &push-match-vars
  (%#lambda             xform-lambda%)
  (%#let-values    push-match-vars-let-values%)
  (%#letrec-values push-match-vars-stop)
  (%#if            push-match-vars-if%)
  (%#call          push-match-vars-call%))

;;; apply-optimize-annotated
(def (optimize-annotation% stx)
  (ast-case stx ()
    ((_ ann expr)
     (identifier? #'ann)
     (case (stx-e #'ann)
       ((@match)
        (verbose "Optimizing match expansion")
        (optimize-match #'expr))
       (else
        (verbose "Ignoring uknown annotation " (stx-e #'ann))
        (compile-e #'expr))))
    (_ (xform-begin-annotation% stx))))

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
      (cons clause-name (apply-push-match-vars clause-lambda [] K))))

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
    (ast-case body (%#if)
      ((%#if test K E)
       (ast-case #'K (%#let-values %#ref)
         ((%#let-values (((_) (%#ref _)) ...) _)
          ;; pattern var bind -- we end the block, it's either the end of match
          ;; or a splice/non-linear pattern forces us to capture variables and stop
          ;; optimizing
          (ast-case #'E (%#call)
            ((%#call . _)
             (values body []))
            (_
             ;; or pattern
             (let ((values e-continue e-block)
                   (create-block #'E [] bind (cons (cons #'test #f) assert)))
               (values ['%#if #'test #'K e-continue]
                       [e-block])))))

         ((%#let-values (((id) expr) ...) body)
          ;; destructuring bind -- we create a new basic block with
          ;; extended bindings and assertion
          (let* ((let-bind (map cons #'(id ...) #'(expr ...)))
                 ((values k-continue k-block)
                  (create-block #'body let-bind
                    (foldl cons bind let-bind)
                    (cons (cons #'test #t) assert))))
            (ast-case #'E (%#call)
              ((%#call . _)
               (values ['%#if #'test k-continue #'E]
                       [k-block]))
              (_
               ;; or pattern
               (let ((values e-continue e-block)
                     (create-block #'E [] bind (cons (cons #'test #f) assert)))
                 (values ['%#if #'test k-continue e-continue]
                         [k-block e-block]))))))
         (_
          ;; create a new generic block without bindings
          (let ((values k-continue k-block)
                (create-block #'K [] bind (cons (cons #'test #t) assert)))
            (ast-case #'E (%#call)
              ((%#call . _)
               (values ['%#if #'test k-continue #'E]
                       [k-block]))
              (_
               ;; or pattern
               (let ((values e-continue e-block)
                     (create-block #'E [] bind (cons (cons #'test #f) assert)))
                 (values ['%#if #'test k-continue e-continue]
                         [k-block e-block]))))))))
      (_ (values body []))))

  (def (fold-blocks rest blocks)
    (match rest
      ([[name body bind assert] . rest]
       (let ((values body body-blocks)
             (basic-block body bind assert))
         (fold-blocks (foldl cons rest body-blocks)
           (cons [name continue: ['%#lambda (reverse (map car bind)) body] bind assert]
                 blocks))))
      ([] blocks)))

  (with ([name . body] clause)
    (ast-case body (%#lambda)
      ((%#lambda () body)
       (let ((values body body-blocks)
             (basic-block #'body [] []))
         (fold-blocks body-blocks
           (cons [name restart: ['%#lambda [] body]]
                 blocks)))))))

(def (optimize-match-fold-basic-blocks blocks)
  (let lp ((rest blocks) (blocks []))
    (match rest
      ([block . rest]
       (match block
         ([name restart: kont]
          (ast-case kont (%#lambda)
            ((%#lambda () body)
             (let* ((body (optimize-match-block #'body [] [] rest))
                    (block (cons name ['%#lambda [] body]))
                    (blocks (cons block blocks))
                    (rest (optimize-match-prune-blocks rest blocks)))
               (lp rest blocks)))))
         ([name continue: kont bind assert]
          (ast-case kont (%#lambda)
            ((%#lambda (id ...) body)
             (let* ((body (optimize-match-block #'body bind assert rest))
                    (block (cons name ['%#lambda #'(id ...) body]))
                    (blocks (cons block blocks))
                    (rest (optimize-match-prune-blocks rest blocks)))
               (lp rest blocks)))))))
      (else
       (reverse blocks)))))

(def (optimize-match-block body bind assert blocks)
  (defrules with-assert ()
    ((_ assert expr)
     (do-assert assert (lambda () expr))))

  (defrules with-bind ()
    ((_ bind expr)
     (do-bind bind (lambda () expr))))

  (def env-assert [])
  (def env-type [])
  (def env-bind [])

  (def (do-assert assert K)
    (if (pair? assert)
      (let lp ((rest assert) (env-assert env-assert) (env-type env-type))
        (match rest
          ([assert . rest]
           (with ([expr . val] assert)
             (let* ((sexpr (apply-generate-runtime expr))
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
        (else
         (match (optimizer-resolve-type sym)
           ((!struct-pred struct-t)
            (optimizer-resolve-type struct-t))
           (else #f))))))

  (def (fold-assert-type expr val env)
    (ast-case expr (%#call %#ref %#quote)
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
         ((##eq? eq? ##eqv? eqv? ##equal? equal?)
          => (lambda (sym)
               (let (sym (eqf-symbol sym))
                 (ast-case #'target (%#ref)
                   ((%#ref id)
                    (cons [#'id sym (stx-e #'datum) val] env))
                   (_ env)))))
         (else env)))

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
    (do-bind! (fold-bind-env bind env-bind) K))

  (def (fold-bind-env bind env)
    (let lp ((rest bind) (env env))
      (match rest
        ([bind . rest]
         (with ([id . expr] bind)
           (let (sexpr (apply-generate-runtime expr))
             (lp rest (cons (cons sexpr id) env)))))
        (else env))))

  (def (do-bind! env K)
    (let (unwind env-bind)
      (set! env-bind env)
      (let (val (K))
        (set! env-bind unwind)
        val)))

  (def (optimize-e expr)
    (ast-case expr (%#if %#let-values %#call %#ref)
      ((%#if test K E)
       (case (assert-e #'test)
         ((#t)
          (optimize-e #'K))
         ((#f)
          (optimize-e #'E))
         (else
          (let ((K (optimize-t #'K #'test))
                (E (optimize-f #'E #'test)))
            (if (equal? (apply-generate-runtime K)
                        (apply-generate-runtime E))
              K
              ['%#if #'test K E])))))

      ((%#let-values (((_) (%#ref _)) ...) _)
       expr)

      ((%#let-values (((id) expr) ...) body)
       (bind-e (map cons #'(id ...) #'(expr ...))
               #'body))

      ((%#call (%#ref rator) (%#ref id) ...)
       (cond
        ((lookup-block #'rator)
         => (lambda (block)
              (optimize-e (inline-block block #'(id ...)))))
        (else
         expr)))

      (_ expr)))

  (def (optimize-t expr test)
    (with-assert [(cons test #t)]
      (optimize-e expr)))

  (def (optimize-f expr (test #f))
    (with-assert (if test [(cons test #f)] [])
      (ast-case expr (%#call %#ref %#let-values)
        ((%#call (%#ref rator) (%#ref id) ...)
         (cond
          ((lookup-block #'rator)
           => (lambda (block)
                (let (inline (inline-block block #'(id ...)))
                  (let fuse ((inline inline) (expr expr))
                    (ast-case inline (%#if %#letrec-values %#let-values %#ref)
                      ((%#if test K E)
                       ;; only inline conditionals if we can fuse the match tree
                       (case (assert-e #'test)
                         ((#t)
                          (optimize-e #'K))
                         ((#f)
                          (optimize-f #'E))
                         (else expr)))

                      ((%#letrec-values . _)
                       ;; don't inline splices
                       expr)

                      ((%#let-values (((_) (%#ref _)) ...) body)
                       (ast-case #'body (%#call)
                         ((%#call . _)
                          ;; inline continuation dispatch
                          inline)
                         (_
                          ;; don't inline non-linear patterns
                          expr)))

                      ((%#let-values (((id) expr) ...) body)
                       (bind-e (map cons #'(id ...) #'(expr ...))
                               #'body
                               (lambda (e) (fuse e e))))

                      (_ (optimize-f inline)))))))
          (else expr)))

        (_ (optimize-e expr)))))

  (def (assert-e expr)
    (let (sexpr (apply-generate-runtime expr))
      (cond
       ((assoc sexpr env-assert)
        => cdr)
       (else
        (ast-case expr (%#call %#ref %#quote)
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
             ((##eq? eq? ##eqv? eqv? ##equal? equal?)
              => (lambda (sym)
                   (ast-case #'target (%#ref)
                     ((%#ref id)
                      (assert-eqf #'id (eqf-symbol sym) (stx-e #'datum)))
                     (_ #!void))))
             (else #!void)))

          (_ #!void))))))

  (def (assert-type id t)
    (def (super-e t)
      (alet (tid (!struct-type-super t))
        (optimizer-resolve-type tid)))

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
                (if (and (!struct-type? t) (!struct-type? xt))
                  (let subtype? ((xt (super-e xt)))
                    (cond
                     ((not xt) #f)
                     ((eq? xt t) #t)
                     (else
                      (subtype? (super-e xt)))))
                  #f))
               (else
                ;; it's a negative type assertion; we cannot satisfy it
                ;; if it's an assertion for a supertype of ours
                (if (and (!struct-type? t) (!struct-type? xt))
                  (let supertype? ((t (super-e t)))
                    (cond
                     ((not t)
                      (lp rest))
                     ((eq? t xt)
                      #f)
                     (else
                      (supertype? (super-e t)))))
                  (lp rest))))
              (lp rest)))
           (else
            (lp rest))))
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
        (else equal?)))

    (let lp ((rest env-type))
      (match rest
        ([type-info . rest]
         (match type-info
           ([xid xsym xdatum val]
            (if (and (eqf-symbol xsym) (free-identifier=? id xid))
              (cond
               (val ((eqf sym) datum xdatum))
               (((eqf xsym) datum xdatum) #f)
               (else (lp rest)))
              (lp rest)))
           (else
            (lp rest))))
        (else #!void))))

  (def (bind-e bind body (continue optimize-e))
    (let lp ((rest bind) (subst []) (locals []) (env env-bind))
      (match rest
        ([bind . rest]
         (with ([id . expr] bind)
           (let (sexpr (apply-generate-runtime expr))
             (cond
              ((assget sexpr env-bind)
               => (lambda (xid)
                    (lp rest (cons (cons id xid) subst) locals env)))
              (else
               (lp rest subst (cons [[id] expr] locals) (cons (cons sexpr id) env)))))))
        (else
         (let* ((body (if (null? subst) body (apply-expression-subst* body subst)))
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
             (apply-expression-subst* #'body subst)))))))

  (with-assert assert
    (with-bind bind
      (optimize-e body))))

(def (optimize-match-prune-blocks blocks konts)
  (def rtab (make-hash-table-eq))

  (for-each
    (match <>
      ([K . kont]
       (apply-collect-runtime-refs kont rtab)))
    konts)

  (let lp ((rest blocks) (r []))
    (match rest
      ([block . rest]
       (match block
         ([name type kont . _]
          (if (hash-get rtab (identifier-symbol name))
            (begin
              (apply-collect-runtime-refs kont rtab)
              (lp rest (cons block r)))
            (lp rest r)))))
      (else
       (reverse r)))))

;;; apply-push-match-vars
(def (push-match-vars-let-values% stx vars K)
  (ast-case stx ()
    ((_ bind body)
     (let lp ((rest #'bind) (rebind []) (vars vars))
       (match rest
         ([bind . rest]
          (ast-case bind (%#ref)
            (((id) (%#ref new-id))
             (lp rest rebind (cons bind vars)))
            (_ (lp rest (cons bind rebind) vars))))
         (else
          (if (null? rebind)
            (compile-e #'body vars K)
            (xform-wrap-source
             ['%#let-values (reverse rebind) (compile-e #'body vars K)]
             stx))))))))

(def (push-match-vars-if% stx vars K)
  (ast-case stx ()
    ((_ test k e)
     (if (apply-find-var-refs #'test (map caar vars))
       (push-match-vars-stop stx vars K)
       (xform-wrap-source
        ['%#if #'test
               (compile-e #'k vars K)
               (compile-e #'e vars K)]
        stx)))))

(def (push-match-vars-call% stx vars K)
  (ast-case stx (%#ref)
    ((_ (%#ref rator) . _)
     (if (free-identifier=? #'rator K)
       (xform-wrap-source
        ['%#let-values (reverse vars) stx]
        stx)
       stx))))

(def (push-match-vars-stop stx vars K)
  (if (null? vars) stx
      (xform-wrap-source
       ['%#let-values (reverse vars) stx]
       stx)))
