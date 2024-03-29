(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1711709197)
  (define replx
    (lambda ()
      (letrec ((_write-reason78046_
                (lambda (_exn78052_)
                  (lambda (_cont78054_ _port78055_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78052_
                       _cont78054_
                       _port78055_))
                    '#f))))
        (let ((__tmp78056
               (lambda (_exn78048_)
                 (let ((__tmp78057
                        (lambda (_cont78050_)
                          (let ((__tmp78058
                                 (let ()
                                   (declare (not safe))
                                   (_write-reason78046_ _exn78048_))))
                            (declare (not safe))
                            (##repl-within
                             _cont78050_
                             __tmp78058
                             _exn78048_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp78057)))))
          (declare (not safe))
          (with-exception-handler __tmp78056 ##repl))))))
