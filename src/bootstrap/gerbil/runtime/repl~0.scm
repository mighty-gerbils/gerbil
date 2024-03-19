(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710833424)
  (define replx
    (lambda ()
      (letrec ((_write-reason79861_
                (lambda (_exn79867_)
                  (lambda (_cont79869_ _port79870_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79867_
                       _cont79869_
                       _port79870_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn79863_)
           (let ((__tmp79871
                  (lambda (_cont79865_)
                    (let ((__tmp79872
                           (let ()
                             (declare (not safe))
                             (_write-reason79861_ _exn79863_))))
                      (declare (not safe))
                      (##repl-within _cont79865_ __tmp79872 _exn79863_)))))
             (declare (not safe))
             (##continuation-capture __tmp79871)))
         ##repl)))))
