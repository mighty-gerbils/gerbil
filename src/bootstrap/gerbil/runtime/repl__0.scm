(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710677337)
  (define replx
    (lambda ()
      (letrec ((_write-reason79472_
                (lambda (_exn79478_)
                  (lambda (_cont79480_ _port79481_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79478_
                       _cont79480_
                       _port79481_))
                    '#f))))
        (let ((__tmp79482
               (lambda (_exn79474_)
                 (let ((__tmp79483
                        (lambda (_cont79476_)
                          (let ((__tmp79484
                                 (let ()
                                   (declare (not safe))
                                   (_write-reason79472_ _exn79474_))))
                            (declare (not safe))
                            (##repl-within
                             _cont79476_
                             __tmp79484
                             _exn79474_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp79483)))))
          (declare (not safe))
          (with-exception-handler __tmp79482 ##repl))))))
