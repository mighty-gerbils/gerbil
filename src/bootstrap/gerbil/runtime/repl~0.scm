(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710781149)
  (define replx
    (lambda ()
      (letrec ((_write-reason79857_
                (lambda (_exn79863_)
                  (lambda (_cont79865_ _port79866_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79863_
                       _cont79865_
                       _port79866_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn79859_)
           (let ((__tmp79867
                  (lambda (_cont79861_)
                    (let ((__tmp79868
                           (let ()
                             (declare (not safe))
                             (_write-reason79857_ _exn79859_))))
                      (declare (not safe))
                      (##repl-within _cont79861_ __tmp79868 _exn79859_)))))
             (declare (not safe))
             (##continuation-capture __tmp79867)))
         ##repl)))))
