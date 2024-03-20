(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710943025)
  (define replx
    (lambda ()
      (letrec ((_write-reason79862_
                (lambda (_exn79868_)
                  (lambda (_cont79870_ _port79871_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79868_
                       _cont79870_
                       _port79871_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn79864_)
           (let ((__tmp79872
                  (lambda (_cont79866_)
                    (let ((__tmp79873
                           (let ()
                             (declare (not safe))
                             (_write-reason79862_ _exn79864_))))
                      (declare (not safe))
                      (##repl-within _cont79866_ __tmp79873 _exn79864_)))))
             (declare (not safe))
             (##continuation-capture __tmp79872)))
         ##repl)))))
