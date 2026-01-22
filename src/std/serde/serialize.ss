;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization macro
(import :gerbil/runtime/mop
        ./scan)
(export #t)

(defrules do-write ()
  ((_ (wr 0) write-op rest ... end)
   (identifier? #'wr)
   (let* ((wr write-op)
          (wr (fx+ wr rest)) ...)
     end))
  ((_ (wr init) write-op rest ... end)
   (identifier? #'wr)
   (let* ((wr init)
          (wr (fx+ wr write-op))
          (wr (fx+ wr rest)) ...)
     end)))

(defsyntax (@serialize stx)
  (syntax-case stx ()
    ((_ obj senv do-object do-anchor do-reference)
     (with-syntax ((env (genident '$env #'senv)))
       #'(using (env senv :- ScanEnv)
           (defrule (has-cycle? obj)
             (and env.allow-cycles?
                  (hash-get env.cycles obj)))
           (cond
            ((or (not env) (immediate? obj))
             (do-object obj))
            ((hash-get env.written obj)
             => (lambda ((id :- :fixnum)) => :fixnum
                   (if (or env.compress? (has-cycle? obj))
                     (do-reference id)
                     (do-object obj))))
            ((has-cycle? obj)
             => (lambda ((id :- :fixunum)) => :fixnum
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
                     (using (id :- :fixnum)
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
                     (using ((e     (hash-get env.scanned obj) :- :pair)
                             (count (cdr e)                    :- :fixnum))
                       (if (fx> count 1)
                         (do-anchor obj id)
                         (do-object obj))))
                    (else
                     (do-object obj))))
                 (do-object obj))))))))))
