(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710699091)
  (define replx
    (lambda ()
      (letrec ((_write-reason79479_
                (lambda (_exn79485_)
                  (lambda (_cont79487_ _port79488_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79485_
                       _cont79487_
                       _port79488_))
                    '#f))))
        (let ((__tmp79489
               (lambda (_exn79481_)
                 (let ((__tmp79490
                        (lambda (_cont79483_)
                          (let ((__tmp79491
                                 (let ()
                                   (declare (not safe))
                                   (_write-reason79479_ _exn79481_))))
                            (declare (not safe))
                            (##repl-within
                             _cont79483_
                             __tmp79491
                             _exn79481_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp79490)))))
          (declare (not safe))
          (with-exception-handler __tmp79489 ##repl))))))
