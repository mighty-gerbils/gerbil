;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
(import ./base-etc
        ./base-vectors
        ./base-ports
        :gerbil/gambit/continuations
        (phi: +1 :gerbil/expander :gerbil/gambit))
(export #t
        (import: ./base-etc)
        (import: ./base-vectors)
        (import: ./base-ports))

;; macros
;; R7RS spec:
(defsyntax (r7rs-cond-expand stx)
  (def (satisfy clauses)
    (match clauses
      ([hd . rest]
       (syntax-case hd (else)
         ((else body ...)
          (if (null? rest)
            #'(body ...)
            (raise-syntax-error #f "Bad syntax; misplaced else" stx hd)))
         ((condition body ...)
          (if (satisfied? #'condition)
            #'(body ...)
            (satisfy rest)))))
      (else [])))

  (def (satisfied? condition)
    (syntax-case condition ()
      (id
       (identifier? #'id)
       (core-bound-identifier? #'id feature-binding?))
      ((combinator body ...)
       (let (body #'(body ...))
         (case (stx-e #'combinator)
           ((not)
            (not (ormap satisfied? body)))
           ((and)
            (andmap satisfied? body))
           ((or)
            (ormap satisfied? body))
           ((|library|)  ; the bars to avoid confusing emacs font-lock
            (andmap library? body))
           (else
            (raise-syntax-error #f "Bad sytnax" stx #'combinator)))))))

  (def (library? lib)
    (syntax-case lib ()
      ((id ids ...)
       (identifier? #'id)
       (let* ((spath (map stx-e #'(id ids ...)))
              (spath (map string-e spath))
              (spath (string-join spath #\/))
              (spath (string-append ":" spath))
              (mpath (string->symbol spath))
              (mid   (datum->syntax #'id mpath)))
         (cond
          ((core-bound-module? mid)
           #t)
          ((with-catch false (cut import-module mpath))
           #t)
          (else #f))))))

  (def (string-e e)
    (cond
     ((symbol? e)
      (symbol->string e))
     ((number? e)
      (number->string e))
     (else
      (raise-syntax-error #f "Bad syntax; illlegal token" stx e))))

  (syntax-case stx ()
    ((_ clause ...)
     (cons 'begin (satisfy #'(clause ...))))))

(defsyntax (features stx)
  (syntax-case stx ()
    ((_)
     (let* ((feats (make-hash-table-eq))
            (add-feature!
             (rec (add bind)
               (cond
                ((import-binding? bind)
                 (add (import-binding-e bind)))
                ((alias-binding? bind)
                 (add (resolve-identifier (alias-binding-e bind))))
                ((syntax-binding? bind)
                 (let (expander (syntax-binding-e bind))
                   (when (feature-expander? expander)
                     (hash-put! feats (expander-e expander) #t))))))))
       (let lp ((ctx (core-context-shift (core-context-top) (current-expander-phi))))
         (when ctx
           (hash-for-each
            (lambda (_ bind)
              (add-feature! bind))
            (expander-context-table ctx))
           (when (phi-context? ctx)
             (lp (phi-context-super ctx)))))
       (with-syntax (((feat ...) (hash-keys feats)))
         #'(quote (feat ...)))))))

;;; R7RS exceptions
;; with-exception-handler installs the previous exception handler during handler
;; dispatch; this is unspecified by r7rs and is what allows us to actually implement
;; raise-continuable as raise with the same semantics of switching the exception handler.
(def (r7rs-with-exception-handler handler thunk)
  (with-exception-handler
   (let (E (current-exception-handler))
     (lambda (exn)
       (with-exception-handler E (cut handler exn))))
   thunk))

;; All exceptions are continuable in gambit, so raise is always continuable.
(def (raise-continuable exn)
  (raise exn))

;; the intention in r7rs raise is to give up and not return. so what gives? simply put,
;; if the exception handler returns we have to terminate the thread -- but it would be
;; rude to bypass the primordial exception handler hook in doing so.
(def (r7rs-raise exn)
  (raise exn)
  ;; per spec: If the handler returns, a secondary exception is raised in the
  ;; same dynamic environment as the handler.
  (error "Exception handler returned in non continuable exception" exn)
  ;; this normally terminates the thread, unless primordial-exception-handler-hook
  ;; objects
  (##primordial-exception-handler exn)
  ;; no really, we can't continue
  (##thread-end-with-uncaught-exception! exn))

;; guard has rather insane semantics of jumping back when there is no else clause
(defrules guard (else)
  ((_ (exn) body ...)
   (identifier? #'exn)
   (let () body ...))
  ((_ (exn clause ... (else else-body ...)) body ...)
   (identifier? #'exn)
   (with-catch
    (lambda (exn)
      (cond clause ... (else else-body ...)))
    (lambda () body ...)))
  ((_ (exn clause ...) body ...)
   (identifier? #'exn)
   (continuation-capture
    (lambda (cont)
      (with-exception-handler
       (let (handler (current-exception-handler))
         (lambda (exn)
           (with-exception-handler
            handler
            (lambda () (~guard (exn cont) clause ...)))))
       (lambda () body ...))))))

(defrules ~guard (=>)
  ((_ (exn cont))
   (raise exn))
  ((recur (exn cont) (test) rest ...)
   (let (val test)
     (if val
       (continuation-return cont val)
       (recur (exn cont) rest ...))))
  ((recur (exn cont) (test => K) rest ...)
   (let (val test)
     (if val
       (continuation-graft cont K val)
       (recur (exn cont) rest ...))))
  ((recur (exn cont) (test body ...) rest ...)
   (if test
     (continuation-graft cont (lambda () body ...))
     (recur (exn cont) rest ...))))

;; Gerbil on Gambit is fundamentally case sensitivie, so there
;; is no concept of of case-insensitive symbols
;; the best we can do is include with downcase conversion.
(defsyntax (include-ci stx)
  (syntax-case stx()
    ((_ path)
     (stx-string? #'path)
     (let* ((rpath (core-resolve-path #'path (stx-source stx)))
            (body
             (parameterize ((current-readtable
                             (readtable-case-conversion?-set
                              (current-readtable)
                              't)))
               (read-syntax-from-file rpath))))
       (syntax-local-introduce
        (stx-wrap-source
         (cons 'begin body)
         (stx-source stx)))))))

;; this differs from Gerbil include in that it admits multiple paths
(defrules r7rs-include ()
  ((_ path)
   (include path))
  ((_ path ...)
   (begin (include path) ...)))

;; assoc and member: these accept an optional comparator procedure per spec
(cond-expand
  (,(> (system-version) 409001)
   (defalias r7rs-assoc assoc)
   (defalias r7rs-member member))
  (else
   (def* r7rs-assoc
     ((x lst)
      (assoc x lst))
     ((x lst cmpf)
      (assoc3 x lst cmpf)))

   (def (assoc3 x lst cmpf)
     (let lp ((rest lst))
       (match rest
         ([hd . rest]
          (if (cmpf (car hd) x)
            hd
            (lp rest)))
         (else #f))))

   (def* r7rs-member
     ((x lst)
      (member x lst))
     ((x lst cmpf)
      (member3 x lst cmpf)))

   (def (member3 x lst cmpf)
     (let lp ((lst lst))
       (match lst
         ([hd . rest]
          (if (cmpf hd x)
            lst
            (lp rest)))
         (else #f))))))

;; map and for-each: these accept lists of different lengths
(cond-expand
  (,(> (system-version) 409001)
   (defalias r7rs-map map)
   (defalias r7rs-for-each for-each))
  (else
   (def* r7rs-map
     ((f lst)
      (map f lst))
     ((f lst1 lst2)
      (map2 f lst1 lst2))
     ((f lst1 lst2 . rest)
      (apply mapN f lst1 lst2 rest)))

   (def (map2 f lst1 lst2)
     (let recur ((rest-x lst1) (rest-y lst2))
       (match* (rest-x rest-y)
         (([x . rest-x] [y . rest-y])
          (cons (f x y) (recur rest-x rest-y)))
         (else []))))

   (def (mapN f . lsts)
     (let recur ((rest lsts))
       (if (andmap pair? rest)
         (cons (apply f (map car rest))
               (recur (map cdr rest)))
         [])))

   (def* r7rs-for-each
     ((f lst)
      (for-each f lst))
     ((f lst1 lst2)
      (for-each2 f lst1 lst2))
     ((f lst1 lst2 . rest)
      (apply for-eachN f lst1 lst2 rest)))

   (def (for-each2 f lst1 lst2)
     (let lp ((rest-x lst1) (rest-y lst2))
       (match* (rest-x rest-y)
         (([x . rest-x] [y . rest-y])
          (f x y)
          (lp rest-x rest-y))
         (else (void)))))

   (def (for-eachN f . lsts)
     (let lp ((rest lsts))
       (when (andmap pair? rest)
         (apply f (map car rest))
         (lp (map cdr rest)))))))

;; mathematical functions
(def (floor/ n divisor)
  (if (and (<= 0 n) (<= 0 divisor))
    (values (quotient n divisor) (remainder n divisor))
    (let ((m (modulo n divisor)))
      (values (quotient (- n m) divisor) m))))
(def (floor-quotient n divisor)
  (if (eq? (<= 0 n) (<= 0 divisor))
    (quotient n divisor)
    (quotient (- n (modulo n divisor)) divisor)))
(def floor-remainder modulo)
(def (truncate/ x y) (values (quotient x y) (remainder x y)))
(def truncate-quotient quotient)
(def truncate-remainder remainder)

;; these accept optional range arguments
(cond-expand
  (,(> (system-version) 409001)
   (defalias r7rs-string-copy string-copy)
   (defalias r7rs-string-fill! string-fill!)
   (defalias r7rs-string->list string->list)
   (defalias r7rs-vector-copy vector-copy)
   (defalias r7rs-vector-fill! vector-fill!)
   (defalias r7rs-vector-map vector-map)
   (defalias r7rs-vector->list vector->list))
  (else
   (def* r7rs-string->list
     ((str)
      (string->list str))
     ((str start)
      (string->list* str start (string-length str)))
     ((str start end)
      (string->list* str start end)))

   (def* r7rs-vector->list
     ((vec)
      (vector->list vec))
     ((vec start)
      (vector->list* vec start (vector-length vec)))
     ((vec start end)
      (vector->list* vec start end)))

   (def* r7rs-string-fill!
     ((str val)
      (string-fill! str val))
     ((str val start)
      (string-fill!* str val start (string-length str)))
     ((str val start end)
      (string-fill!* str val start end)))

   (def* r7rs-vector-fill!
     ((vec val)
      (vector-fill! vec val))
     ((vec val start)
      (vector-fill!* vec val start (vector-length vec)))
     ((vec val start end)
      (vector-fill!* vec val start end)))))
