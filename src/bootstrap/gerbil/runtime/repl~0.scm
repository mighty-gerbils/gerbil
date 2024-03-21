(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710954836)
  (define replx
    (lambda ()
      (letrec ((_write-reason79843_
                (lambda (_exn79849_)
                  (lambda (_cont79851_ _port79852_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79849_
                       _cont79851_
                       _port79852_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn79845_)
           (let ((__tmp79853
                  (lambda (_cont79847_)
                    (let ((__tmp79854
                           (let ()
                             (declare (not safe))
                             (_write-reason79843_ _exn79845_))))
                      (declare (not safe))
                      (##repl-within _cont79847_ __tmp79854 _exn79845_)))))
             (declare (not safe))
             (##continuation-capture __tmp79853)))
         ##repl)))))
