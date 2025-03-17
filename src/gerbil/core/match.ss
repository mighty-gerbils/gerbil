;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: pattern matching
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" "sugar" "mop"
        (phi: +1 "runtime" "expander" "sugar" "mop" "macro-object")
        (phi: +2 "runtime"))
(export #t
        (phi: +1 match-macro match-macro::t
                make-match-macro match-macro?
                syntax-local-match-macro?
                match-pattern?))

(begin-syntax
  (defclass (match-macro macro-object) ()
    id: gerbil.core#match-macro::t)

  (def (syntax-local-match-macro? stx)
    (and (identifier? stx)
         (match-macro? (syntax-local-value stx false))))

  ;; private
  (def (parse-match-pattern stx (match-stx #f))
    (def (parse1 hd)
      (syntax-case hd (? and or not
                         cons cons* @list
                         values vector box
                         quote quasiquote
                         eq? eqv? equal?
                         apply)
        ;; gated match
        ((? test . body)
         (syntax-case #'body (=>)
           (()
            [?: #'test])
           ((pat)
            [?: #'test (parse1 #'pat)])
           ((=> pat)
            [?: #'test =>: (parse1 #'pat)])
           ((:: proc => pat)
            [?: #'test :: #'proc =>: (parse1 #'pat)])
           (_ (parse-error hd))))
        ;; algebraic
        ((and . body)
         (stx-list? #'body)
         (syntax-case #'body ()
           ((pat)
            (parse1 #'pat))
           (_ [and: (stx-map parse1 #'body) ...])))
        ((or . body)
         (stx-list? #'body)
         (syntax-case #'body()
           ((pat)
            (parse1 #'pat))
           (_ [or: (stx-map parse1 #'body) ...])))
        ((not pat)
         [not: (parse1 #'pat)])
        ;; conses
        ((cons hd tl)
         [cons: (parse1 #'hd) (parse1 #'tl)])
        ((cons* hd tl . rest)
         (if (stx-null? #'rest)
           [cons: (parse1 #'hd) (parse1 #'tl)]
           [cons: (parse1 #'hd) (parse1 #'(cons* tl . rest))]))
        ((@list . body)
         (parse-list #'body))
        ;; boxes
        ((box pat)
         [box: (parse1 #'pat)])
        (#&pat
         [box: (parse1 #'pat)])
        ;; vectors
        ((values pat)
         (parse1 #'pat))
        ((values . body)
         [values: (parse-vector #'body)])
        ((vector . body)
         [vector: (parse-vector #'body)])
        (#(body ...)
         [vector: (parse-vector #'(body ...))])
        ((struct-id . body)
         (syntax-local-class-type-info? #'struct-id !class-type-struct?)
         [struct: (syntax-local-value #'struct-id)
                  (parse-vector #'body)])
        ((class-id . body)
         (syntax-local-class-type-info? #'class-id)
         [class: (syntax-local-value #'class-id)
                 (parse-class-body #'body)])
        ;; equality
        ((eql e)
         (and (identifier? #'eql)
              (or (free-identifier=? #'eql #'eq?)
                  (free-identifier=? #'eql #'eqv?)
                  (free-identifier=? #'eql #'equal?)))
         [?: #'(cut eql <> e)])
        ;; quotes
        ((quote datum)
         [datum: (stx-e #'datum)])
        ((quasiquote qp)
         (parse-qq #'qp))
        ;; applicative destructuring
        ((apply getf pat)
         [apply: #'getf (parse1 #'pat)])
        ;; user expansion
        ((match-id . _)
         (syntax-local-match-macro? #'match-id)
         (parse1
          (core-apply-expander (syntax-local-e #'match-id)
                               (stx-wrap-source
                                (cons match: hd)
                                (or (stx-source hd)
                                    (stx-source stx))))))
        ;; terminals
        (us (underscore? #'us)
            [any:])
        (id (and (identifier? #'id)
                 (not (ellipsis? #'id)))
            [var: #'id])
        (datum (stx-datum? #'datum)
               [datum: (stx-e #'datum)])
        (_ (parse-error hd))))

    (def (parse-list body)
      (syntax-case body ()
        ((:: tl)
         (parse1 #'tl))
        ((hd dots . rest)
         (ellipsis? #'dots)
         [splice: (parse1 #'hd) (parse-list #'rest)])
        ((hd . rest)
         (not (ellipsis? #'hd))
         [cons: (parse1 #'hd) (parse-list #'rest)])
        (_
         (cond
          ((stx-null? body)
           [null:])
          ((not (stx-pair? body))
           (parse1 body))
          (else
           (parse-error body))))))

    (def (parse-vector body)
      (if (simple-vector? body)
        [simple: (stx-map parse1 body)]
        [list: (parse-list body)]))

    (def (simple-vector? body)
      (syntax-case body ()
        ((hd . rest)
         (and (not (ellipsis? #'hd))
              (simple-vector? #'rest)))
        (_ (stx-null? body))))

    (def (parse-class-body body)
      (let recur ((rest body))
        (syntax-case rest ()
          ((key pat . rest)
           (stx-keyword? #'key)
           (cons* #'key (parse1 #'pat) (recur #'rest)))
          (_ (if (stx-null? rest) []
                 (parse-error rest))))))

    (def (parse-qq hd)
      (syntax-case hd ()
        ;; XXX
        ))

    (def (parse-error hd)
      (apply raise-syntax-error
        #f "bad syntax; illegal pattern"
        (if match-stx
          [match-stx stx hd]
          [stx hd])))

    (parse1 stx))

  (def (match-pattern? stx)
    (call/cc
      (lambda (E)
        (with-exception-handler
         (let (E! (current-exception-handler))
           (lambda (e)
             (if (syntax-error? e)
               (E #f)
               (E! e))))
         (lambda () (parse-match-pattern stx) #t)))))

  (def (match-pattern-vars ptree)
    (def (loop ptree vars K)
      (syntax-case ptree ()
        ((?: _ . body)
         (syntax-case #'body ()
           ((pat)
            (loop #'pat vars K))
           ((=>: pat)
            (loop #'pat vars K))
           ((:: _ =>: pat)
            (loop #'pat vars K))
           (_ (K vars))))
        ((key . body)
         (or (stx-eq? and: #'key)
             (stx-eq? or: #'key))
         (syntax-case #'body ()
           ((hd . rest)
            (loop #'hd vars (cut loop #'(key . rest) <> K)))
           (_ (K vars))))
        ((not: pat)
         (loop #'pat vars K))
        ((cons: hd tl)
         (loop #'hd vars (cut loop #'tl <> K)))
        ((splice: hd rest)
         (loop #'hd vars (cut loop #'rest <> K)))
        ((box: pat)
         (loop #'pat vars K))
        ((key body)
         (or (stx-eq? values: #'key)
             (stx-eq? vector: #'key))
         (loop-vector #'body vars K))
        ((struct: _ body)
         (loop-vector #'body vars K))
        ((class: _ body)
         (loop-class-list #'body vars K))
        ((apply: getf pat)
         (loop #'pat vars K))
        ((var: id)
         (if (find (cut bound-identifier=? <> #'id) vars)
           (K vars)
           (K (cons #'id vars))))
        (_ (K vars))))

    (def (loop-vector body vars K)
      (syntax-case body ()
        ((simple: body)
         (loop-list #'body vars K))
        ((list: body)
         (loop #'body vars K))))

    (def (loop-list rest vars K)
      (syntax-case rest ()
        ((hd . rest)
         (loop #'hd vars (cut loop-list #'rest <> K)))
        (_ (K vars))))

    (def (loop-class-list rest vars K)
      (syntax-case rest ()
        ((_ pat . rest)
         (loop #'pat vars (cut loop-class-list #'rest <> K)))
        (_ (K vars))))

    (loop ptree [] values))

  (def (generate-match1 stx tgt ptree K E)
    (def (generate1 tgt ptree K E)
      (with-syntax ((target tgt))
        (syntax-case ptree ()
          ((?: hd . rest)
           (syntax-case #'rest ()
             (()
              ['if #'(? hd target) K E])
             ((pat)
              ['if #'(? hd target)
                (generate1 tgt #'pat K E)
                E])
             ((=>: pat)
              (with-syntax (($tgt (genident 'e)))
                ['let #'(($tgt (hd target)))
                  ['if #'$tgt
                    (generate1 #'$tgt #'pat K E)
                    E]]))
             ((:: proc =>: pat)
              (with-syntax (($tgt (genident 'e)))
                ['if #'(? hd target)
                  ['let #'(($tgt (proc target)))
                    (generate1 #'$tgt #'pat K E)]
                  E]))))
          ((and: . rest)
           (syntax-case #'rest ()
             ((hd . rest)
              (generate1 tgt #'hd
                         (generate1 tgt #'(and: . rest) K E)
                         E))
             (_ K)))
          ((or: . rest)
           (syntax-case #'rest ()
             ((hd . rest)
              (generate1 tgt #'hd K
                         (generate1 tgt #'(or: . rest) K E)))
             (_ E)))
          ((not: pat)
           (generate1 tgt #'pat E K))
          ((cons: hd tl)
           (with-syntax (($hd (genident 'hd))
                         ($tl (genident 'tl)))
             ['if #'(pair? target)
               (let ((hd-pat (stx-e #'hd))
                     (tl-pat (stx-e #'tl)))
                 (cond
                  ((and (equal? hd-pat '(any:))
                        (equal? tl-pat '(any:)))
                   K)
                  ((equal? tl-pat '(any:))
                   ['let #'(($hd (##car target)))
                     (generate1 #'$hd #'hd K E)])
                  ((equal? hd-pat '(any:))
                   ['let #'(($tl (##cdr target)))
                     (generate1 #'$tl #'tl K E)])
                  (else
                   ['let #'(($hd (##car target))
                            ($tl (##cdr target)))
                     (generate1 #'$hd #'hd
                                (generate1 #'$tl #'tl K E)
                                E)])))
               E]))
          ((null:)
           ['if #'(null? target) K E])
          ((splice: hd rest)
           (generate-splice tgt #'hd #'rest K E))
          ((box: pat)
           (with-syntax (($tgt (genident 'e)))
             ['if #'(box? target)
               ['let #'(($tgt (##unbox target)))
                 (generate1 #'$tgt #'pat K E)]
               E]))
          ((values: body)
           (syntax-case #'body ()
             ((simple: body)
              (with-syntax ((len (stx-length #'body)))
                ['if #'(##fx= (values-count target) len)
                  (generate-simple-vector tgt #'body 0 '##values-ref K E)
                  E]))
             ((list: body)
              (generate-list-vector tgt #'body 'values->list K E))))
          ((vector: body)
           (syntax-case #'body ()
             ((simple: body)
              (with-syntax ((len (stx-length #'body)))
                ['if #'(vector? target)
                  ['if #'(##fx= (##vector-length target) len)
                    (generate-simple-vector tgt #'body 0 '##vector-ref K E)
                    E]
                  E]))
             ((list: body)
              ['if #'(vector? target)
                (generate-list-vector tgt #'body 'vector->list K E)
                E])))
          ((struct: info body)
           (generate-struct (stx-e #'info) tgt #'body K E))
          ((class: info body)
           (generate-class (stx-e #'info) tgt #'body K E))
          ((datum: datum)
           (with-syntax ((eql (let (e (stx-e #'datum))
                                (cond
                                 ((or (symbol? e)
                                      (keyword? e)
                                      (immediate? e))
                                  '##eq?)
                                 ((number? e) 'eqv?)
                                 (else 'equal?)))))
             ['if #'(eql target (quote datum)) K E]))
          ((apply: getf pat)
           (with-syntax (($tgt (genident 'e)))
             ['let #'(($tgt (getf target)))
               (generate1 #'$tgt #'pat K E)]))
          ((var: id)
           ['let #'((id target)) K])
          ((any:) K))))

    (def (generate-splice tgt hd rest K E)
      (with-syntax* (((var ...)
                      (match-pattern-vars hd))
                     ((var-r ...)
                      (gentemps #'(var ...)))
                     ((init ...)
                      (make-list (stx-length #'(var ...)) #'[]))
                     (target tgt)
                     ($splice-rest (genident 'splice-rest))
                     ($loop        (genident 'splice-loop))
                     ($loop-try    (genident 'splice-try))
                     ($hd          (genident 'hd))
                     ($rest        (genident 'rest))
                     (splice-rest-body
                      (generate1 #'$rest rest K E))
                     (loop-K
                      #'($loop (##cdr $rest) (cons var var-r) ...))
                     (loop-E
                      #'($splice-rest $rest (reverse var-r) ...))
                     (loop-try-body
                      (generate1 #'$hd hd #'loop-K #'loop-E)))
        #'(letrec (($splice-rest
                    (lambda ($rest var ...) splice-rest-body))
                   ($loop-try
                    (lambda ($hd $rest var-r ...) loop-try-body))
                   ($loop
                    (lambda ($rest var-r ...)
                      (if (pair? $rest)
                        ($loop-try (##car $rest) $rest var-r ...)
                        loop-E))))
            ($loop target init ...))))

    (def (generate-simple-vector tgt body start ref K E)
      (let recur ((rest body) (off start))
        (syntax-case rest ()
          ((hd . rest)
           (with-syntax (($tgt (genident 'e))
                         (target tgt)
                         (k off)
                         (ref ref))
             ['let #'(($tgt (ref target k)))
               (generate1 #'$tgt #'hd
                          (recur #'rest (fx1+ off))
                          E)]))
          (_ K))))

    (def (generate-list-vector tgt body ->list K E)
      (with-syntax* (($tgt (genident 'e))
                     (target tgt)
                     (target->list
                      (case ->list
                        ((values->list)
                         #'(values->list target))
                        ((vector->list)
                         #'(##vector->list target))
                        ((struct->list)
                         #'(##cdr (struct->list target)))
                        (else
                         (raise-syntax-error #f "Unexpected list conversion" stx ->list)))))
        ['let #'(($tgt target->list))
          (generate1 #'$tgt body K E)]))

    (def (generate-struct info tgt body K E)
      (syntax-case body ()
        ((simple: body)
         (let ((fields (struct-field-accessors info)))
           ['if [(!class-type-predicate info) tgt]
             (generate-simple-struct-body info tgt #'body K E)
             E]))
        ((list: body)
         ['if [(!class-type-predicate info) tgt]
           (generate-list-vector tgt #'body 'struct->list K E)
           E])))

    (def (generate-simple-struct-body info tgt body K E)
      (let recur ((rest body) (fields (struct-field-accessors info)))
        (syntax-case rest ()
          ((hd . rest)
           (if (null? fields)
             (raise-syntax-error #f "too many parts for struct" stx info (!class-type-name info))
             (let (($tgt (genident 'e))
                   (getf (car fields)))
               ['let [[$tgt [getf tgt]]]
                 (generate1 $tgt #'hd
                            (recur #'rest (cdr fields))
                            E)])))
          (_ K))))

    (def (struct-field-accessors info)
      (let recur ((next [info]))
        (if (null? next)
          []
          (let (ti (car next))
            (append (recur (map syntax-local-value (!class-type-super ti)))
                    (map (lambda (slot)
                           (or (agetq slot (!class-type-unchecked-accessors ti))
                               (raise-syntax-error #f "no accessor for struct slot" stx info slot)))
                         (!class-type-slots ti)))))))

    (def (generate-class info tgt body K E)
      ['if [(!class-type-predicate info) tgt]
        (generate-class-body info tgt body K E)
        E])

    (def (generate-class-body info tgt body K E)
      (let recur ((rest body))
        (syntax-case rest ()
          ((key pat . rest)
           (cond
            ((agetq (string->symbol (keyword->string (stx-e #'key)))
                      (!class-type-unchecked-accessors info))
             => (lambda (getf)
                  (let ($tgt (genident 'e))
                    ['let [[$tgt [getf tgt]]]
                      (generate1 $tgt #'pat
                                 (recur #'rest)
                                 E)])))
            (else
             (raise-syntax-error #f "no slot accessor" stx info #'key))))
          (_ K))))

    (generate1 tgt ptree K E))

  (def (generate-match* stx tgt-lst clauses)
    (def (parse-body hd-len)
      (let lp ((rest clauses) (r []))
        (syntax-case rest ()
          ((hd . rest)
           (syntax-case #'hd (else)
             ((else . body)
              (and (stx-list? #'body)
                   (not (stx-null? #'body)))
              (if (stx-null? #'rest)
                (cons [(genident 'else) #f
                       (stx-wrap-source
                        #'(begin . body)
                        (or (stx-source #'hd)
                            (stx-source stx)))]
                      r)
                (raise-syntax-error #f
                  "bad syntax; misplaced else" stx #'hd)))
             ((hd-pat . body)
              (and (stx-list? #'hd-pat)
                   (fx= (stx-length #'hd-pat) hd-len)
                   (stx-list? #'body)
                   (not (stx-null? #'body)))
              (lp #'rest
                  (cons [(genident 'try-match)
                         (stx-map (cut parse-match-pattern <> stx) #'hd-pat)
                         (stx-wrap-source
                          #'(begin . body)
                          (or (stx-source #'hd)
                              (stx-source stx)))]
                        r)))
             (_ (raise-syntax-error #f "bad syntax; illegal match clause"
                                    stx #'hd))))
          (_ r))))

    (def (generate-body body)
      (with-syntax* (($E (genident 'E))
                     ((target ...)
                      tgt-lst)
                     ((fail-diagnostic ...)
                      (stx-map stx-car clauses))
                     (fail
                      (syntax/loc stx
                        (lambda ()
                          (error "No clause matching" target ... 'fail-diagnostic ...)
                          ;; make a frame for the stack trace
                          (void))))
                     (body
                      (generate-clauses body #'(begin-annotation (@abort) ($E))))
                     (match-expr
                      (syntax/loc stx
                        (let (($E fail))
                          body))))
        #'(begin-annotation @match match-expr)))

    (def (generate-clauses rest E)
      (syntax-case rest ()
        ((hd)
         (syntax-case #'hd ()
           ((_ clause body)
            ['begin-annotation '@match-body
              (if (stx-e #'clause)
                (generate1 #'clause #'body E)
                #'body)])))
        ((hd . rest)
         (syntax-case #'hd ()
           ((try clause body)
            (if (stx-e #'clause)
              (with-syntax ((body (generate1 #'clause #'body E))
                            (rest-body (generate-clauses #'rest #'(try))))
                #'(let ((try (lambda () body)))
                    rest-body))
              (with-syntax ((rest-body (generate-clauses #'rest #'(try))))
                #'(let ((try (begin-annotation @match-else (lambda () body))))
                    rest-body))))))
        (_ ['begin-annotation '@match-body E])))

    (def (generate1 clause body E)
      (with-syntax (($K (genident 'K))
                    ((var ...)
                     (apply append (map match-pattern-vars clause))))
        (check-duplicate-identifiers #'(var ...) stx)
        (with-syntax*
            ((dispatch
              (let recur ((rest clause) (rest-targets tgt-lst))
                (syntax-case rest ()
                  ((ptree . rest)
                   (syntax-case rest-targets ()
                     ((target . rest-targets)
                      (generate-match1 stx #'target #'ptree
                                       (recur #'rest #'rest-targets)
                                       E))))
                  (_ #'($K var ...)))))
             (body body)
             (kont
              (syntax/loc stx
                (lambda (var ...) body))))
          (syntax/loc stx
            (let ($K kont)
              dispatch)))))

    (generate-body (parse-body (stx-length tgt-lst))))

  (def (generate-match stx tgt clauses)
    (def (reclause clause)
      (syntax-case clause (else)
        ((else . _) clause)
        ((hd . body)
         (syntax/loc #'clause
           ((hd) . body)))
        (_ (raise-syntax-error #f
             "bad syntax; illegal match clause" stx clause))))

    (generate-match* stx [tgt] (stx-map reclause clauses))))

(defsyntax (match stx)
  (syntax-case stx (<> <...>)
    ((_ <> . clauses)
     (stx-list? #'clauses)
     (with-syntax* (($e (genident 'e))
                    (body
                     (syntax/loc stx
                       (match $e . clauses))))
       #'(lambda ($e) body)))
    ((_ <...> . clauses)
     (stx-list? #'clauses)
     (with-syntax* (($args (genident 'args))
                    (body
                     (syntax/loc stx
                       (match $args . clauses))))
       #'(lambda $args body)))
    ((_ e . clauses)
     (stx-list? #'clauses)
     (with-syntax* (($e (genident #'e))
                    (body (generate-match stx #'$e #'clauses)))
       #'(let (($e e))
           body)))))

(defsyntax (match* stx)
  (syntax-case stx ()
    ((_ (e ...) . clauses)
     (stx-list? #'clauses)
     (with-syntax* ((($e ...)
                     (gentemps #'(e ...)))
                    (body
                     (generate-match* stx #'($e ...) #'clauses)))
       #'(let (($e e) ...)
           body)))))

(defrules with ()
  ((_ () body ...)
   (let () body ...))
  ((recur (hd expr) body ...)
   (match-pattern? #'hd)
   (recur ((hd expr)) body ...))
  ((_ ((hd expr) ...) body ...)
   (match* (expr ...) ((hd ...) body ...))))

(defrules with* ()
  ((recur ((hd e) . rest) body ...)
   (with ((hd e))
     (recur rest body ...)))
  ((_ () body ...)
   (let () body ...)))

(defrules ? (and or not =>)
  ((recur (and pred ...) obj)
   (and (recur pred obj) ...))
  ((recur (or pred ...) obj)
   (or (recur pred obj) ...))
  ((recur (not pred) obj)
   (not (recur pred obj)))
  ((_ pred obj)
   (pred obj))
  ((recur pred)
   (lambda ($obj) (recur pred $obj)))
  ((recur pred => K)
   (lambda ($obj)
     (alet ($val (recur pred $obj))
       (K $val))))
  ((recur pred :: K)
   (lambda ($obj)
     (and (recur pred $obj)
          (K $obj))))
  ((recur pred :: proc => K)
   (lambda ($obj)
     (and (recur pred $obj)
          (K (proc $obj))))))

(defrules defsyntax-for-match ()
  ((_ id match-e macro-e)
   (identifier? #'id)
   (defsyntax id
     (make-match-macro
      macro:
      (let (($match-e match-e)
            ($macro-e macro-e))
        (lambda ($stx)
          (syntax-case $stx ()
            ((match: . body)
             (core-apply-expander $match-e
                                  (stx-wrap-source #'body (stx-source $stx))))
            (_ (core-apply-expander $macro-e $stx))))))))
  ((recur id match-e)
   (recur id match-e
          (lambda ($stx)
            (raise-syntax-error #f "bad syntax; no macro definition for defsyntax-for-match" $stx)))))

(defrules defrules-for-match ()
  ((_ id . body)
   (defsyntax-for-match id
     (syntax-rules . body))))
