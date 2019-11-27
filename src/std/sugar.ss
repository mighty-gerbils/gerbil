;;; -*- Gerbil -*-
;;; (C) vyzo
;;; some standard sugar

(export #t)

(defrules catch ())
(defrules finally ())

(defsyntax (try stx)
  (def (generate-thunk body)
    (if (null? body)
      (raise-syntax-error #f "Bad syntax; missing body" stx)
      (with-syntax (((e ...) (reverse body)))
        #'(lambda () e ...))))

  (def (generate-fini thunk fini)
    (with-syntax ((thunk thunk)
                  ((e ...) fini))
      #'(with-unwind-protect thunk (lambda () e ...))))

  (def (generate-catch handlers thunk)
    (with-syntax (($e (genident)))
      (let lp ((rest handlers) (clauses []))
        (match rest
          ([hd . rest]
           (syntax-case hd (=>)
             ((pred => K)
              (lp rest (cons #'(((? pred) $e) => K)
                             clauses)))
             (((pred var) body ...)
              (identifier? #'var)
              (lp rest (cons #'(((? pred) $e) (let ((var $e)) body ...))
                             clauses)))
             (((var) body ...)
              (identifier? #'var)
              (lp rest (cons #'(#t (let ((var $e)) body ...))
                             clauses)))
             ((us body ...)
              (underscore? #'us)
              (lp rest (cons #'(#t (begin body ...))
                             clauses)))))
          (else
           (with-syntax (((clause ...) clauses)
                         (thunk thunk))
             #'(with-catch
                (lambda ($e) (cond clause ... (else (raise $e))))
                thunk)))))))

  (syntax-case stx ()
    ((_ e ...)
     (let lp ((rest #'(e ...)) (body []))
       (syntax-case rest ()
         ((hd . rest)
          (syntax-case #'hd (catch finally)
            ((finally fini ...)
             (if (stx-null? #'rest)
               (generate-fini (generate-thunk body) #'(fini ...))
               (raise-syntax-error #f "Misplaced finally clause" stx)))
            ((catch handler ...)
             (let lp ((rest #'rest) (handlers [#'(handler ...)]))
               (syntax-case rest (catch finally)
                 (((catch handler ...) . rest)
                  (lp #'rest [#'(handler ...) . handlers]))
                 (((finally fini ...))
                  (with-syntax ((body (generate-catch handlers (generate-thunk body))))
                    (generate-fini #'(lambda () body) #'(fini ...))))
                 (()
                  (generate-catch handlers (generate-thunk body))))))
            (_ (lp #'rest (cons #'hd body)))))
         (() ; no clauses, just a begin
          (cons 'begin (reverse body))))))))

(defrules with-destroy ()
  ((_ obj body ...)
   (let ($obj obj)
     (try body ... (finally {destroy $obj})))))

(defsyntax (defmethod/alias stx)
  (syntax-case stx (@method)
    ((_ {method (alias ...) type} body ...)
     (and (identifier? #'method)
          (stx-andmap identifier? #'(alias ...))
          (syntax-local-type-info? #'type))
     (with-syntax* (((values klass) (syntax-local-value #'type))
                    (type::t (runtime-type-identifier klass))
                    (method-impl (stx-identifier #'method #'type "::" #'method)))
       #'(begin
           (defmethod {method type} body ...)
           (bind-method! type::t 'alias method-impl) ...)))))

(defrules using ()
  ((_ obj method ...)
   (begin (using-method obj method) ...)))

(defrules using-method ()
  ((_ obj method)
   (identifier? #'method)
   (def method (checked-bound-method-ref obj 'method)))
  ((_ obj (method method-id))
   (and (identifier? #'method) (identifier? #'method-id))
   (def method (checked-bound-method-ref obj 'method-id))))


(defrules with-methods ()
  ((_ o method ...)
   (begin
     (def $klass (object-type o))
     (with-class-methods $klass method ...))))

(defrules with-class-methods ()
  ((_ klass method ...)
   (begin (with-class-method klass method) ...)))

(defrules with-class-method ()
  ((_ klass (method method-id))
   (and (identifier? #'method) (identifier? #'method-id))
   (def method
     (cond
      ((find-method klass 'method-id))
      (else
       (error "Missing method" klass 'method-id)))))
  ((recur klass method)
   (identifier? #'method)
   (recur klass (method method))))

(defrules assert! ()
  ((_ expr)
   (begin-annotation @runtime-check
     (unless expr
       (error "Assertion failed" 'expr))))
  ((_ expr message)
   (begin-annotation @runtime-check
     (unless expr
       (error "Assertion failed" message 'expr)))))

(defrules while ()
  ((_ test body ...)
   (let lp ()
     (when test
       body ...
       (lp)))))

(defrules until ()
  ((_ test body ...)
   (let lp ()
     (unless test
       body ...
       (lp)))))

(defrules hash ()
  ((_ (key val) ...)
   (~hash-table make-hash-table (key val) ...)))

(defrules hash-eq ()
  ((_ (key val) ...)
   (~hash-table make-hash-table-eq (key val) ...)))

(defrules hash-eqv ()
  ((_ (key val) ...)
   (~hash-table make-hash-table-eqv (key val) ...)))

(defsyntax (~hash-table stx)
  (syntax-case stx ()
    ((_ make-ht clause ...)
     (with-syntax* ((size (stx-length #'(clause ...)))
                    (((key val) ...) #'(clause ...)))
       #'(let (ht (make-ht size: size))
           (hash-put! ht `key val) ...
           ht)))))

;; the hash deconstructor macro
;; usage: (let-hash a-hash body ...)
;; rebinds %%ref so that identifiers starting with a dot are looked up in the hash:
;;  .x  -> (hash-ref a-hash 'x) ; strong accessor
;;  .?x -> (hash-get a-hash 'x) ; weak accessor
;;  ..x -> (%%ref .x)           ; escape
(defsyntax (let-hash stx)
  (syntax-case stx ()
    ((macro expr body ...)
     (with-syntax ((@ref (stx-identifier #'macro '%%ref)))
       #'(let (ht expr)
           (let-syntax
               ((var-ref
                 (syntax-rules ()
                   ((_ id) (@ref id)))))
             (let-syntax
                 ((@ref
                   (lambda (stx)
                     (syntax-case stx ()
                       ((_ id)
                        (let (str (symbol->string (stx-e #'id)))
                          (def (str->symbol start)
                            (string->symbol (substring str start (string-length str))))
                          (if (eq? (string-ref str 0) #\.) ; hash accessor?
                            (cond
                             ((eq? (string-ref str 1) #\.) ; escape
                              (with-syntax ((sym (str->symbol 1)))
                                #'(var-ref sym)))
                             ((eq? (string-ref str 1) #\?) ; weak
                              (with-syntax ((sym (str->symbol 2)))
                                #'(hash-get ht 'sym)))
                             (else
                              (with-syntax ((sym (str->symbol 1)))
                                #'(hash-ref ht 'sym))))
                            #'(var-ref id))))))))
               body ...)))))))

(defrules awhen ()
  ((_ (id test) body ...)
   (let (id test)
     (when id body ...))))
