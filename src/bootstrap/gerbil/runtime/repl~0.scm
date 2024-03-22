(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1711108655)
  (define replx
    (lambda ()
      (letrec ((_write-reason79852_
                (lambda (_exn79858_)
                  (lambda (_cont79860_ _port79861_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79858_
                       _cont79860_
                       _port79861_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn79854_)
           (let ((__tmp79862
                  (lambda (_cont79856_)
                    (let ((__tmp79863
                           (let ()
                             (declare (not safe))
                             (_write-reason79852_ _exn79854_))))
                      (declare (not safe))
                      (##repl-within _cont79856_ __tmp79863 _exn79854_)))))
             (declare (not safe))
             (##continuation-capture __tmp79862)))
         ##repl)))))
