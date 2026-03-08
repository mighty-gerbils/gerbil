;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization macro
(import :gerbil/runtime/mop
        ./scan)
(export #t)

(defrules do-write ()
  ((_ (wr init) write-op rest ... end)
   (identifier? #'wr)
   (let* ((wr init)
          (wr (fx+ wr write-op))
          (wr (fx+ wr rest)) ...)
     end)))

(defsyntax (@serialize stx)
  (syntax-case stx ()
    ((_ obj senv do-object do-anchor do-reference)
     (with-identifiers ((env             '$env)
                        (env.written     #'env #'env ".written")
                        (env.scanned     #'env #'env ".scanned")
                        (env.scanned.ref #'env #'env ".scanned.ref")
                        (env.cycles      #'env #'env ".cycles")
                        (env.cycles.ref  #'env #'env ".cycles.ref")
                        (env.compress?   #'env #'env ".compress?"))
       #'(using (env senv :- ScanEnv)
           (defrule (has-cycle? obj)
             (env.cycles.ref obj #f))
           (cond
            ((or (not env) (immediate? obj))
             (do-object obj))
            ((hash-get env.written obj)
             => (lambda ((id :- :fixnum)) => :fixnum
                   (if (or env.compress? (has-cycle? obj))
                     (do-reference id)
                     (do-object obj))))
            ((has-cycle? obj)
             => (lambda ((id :- :fixnum)) => :fixnum
                   (hash-put! env.written obj id)
                   (do-anchor obj id)))
            ((hash-get env.scanned obj)
             => (lambda (e) => :fixnum
                   (if env.compress?
                     (using ((e             :- :pair)
                             (id    (car e) :- :fixnum)
                             (count (cdr e) :- :fixnum))
                       (hash-put! env.written obj id)
                       (if (fx> count 1)
                         (do-anchor obj id)
                         (do-object obj)))
                     (using (id e :- :fixnum)
                       (hash-put! env.written obj id)
                       (do-object obj)))))
            (else
             (let (id (scan-object! obj env))
               (if (fx> id 0)
                 (begin
                   (hash-put! env.written obj id)
                   (cond
                    ((has-cycle? obj)
                     (do-anchor obj id))
                    (env.compress?
                     (using ((e     (env.scanned.ref obj #f) :- :pair)
                             (count (cdr e)                  :- :fixnum))
                       (if (fx> count 1)
                         (do-anchor obj id)
                         (do-object obj))))
                    (else
                     (do-object obj))))
                 (do-object obj))))))))))
