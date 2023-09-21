(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1695292370)
  (define replx
    (lambda ()
      (letrec ((_write-reason17596_
                (lambda (_exn17602_)
                  (lambda (_cont17604_ _port17605_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn17602_
                       _cont17604_
                       _port17605_))
                    '#f))))
        (let ((__tmp17606
               (lambda (_exn17598_)
                 (let ((__tmp17607
                        (lambda (_cont17600_)
                          (let ((__tmp17608
                                 (let ()
                                   (declare (not safe))
                                   (_write-reason17596_ _exn17598_))))
                            (declare (not safe))
                            (##repl-within
                             _cont17600_
                             __tmp17608
                             _exn17598_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp17607)))))
          (declare (not safe))
          (with-exception-handler __tmp17606 ##repl))))))
