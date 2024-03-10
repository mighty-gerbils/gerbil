(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710106261)
  (define replx
    (lambda ()
      (letrec ((_write-reason77975_
                (lambda (_exn77981_)
                  (lambda (_cont77983_ _port77984_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77981_
                       _cont77983_
                       _port77984_))
                    '#f))))
        (let ((__tmp77985
               (lambda (_exn77977_)
                 (let ((__tmp77986
                        (lambda (_cont77979_)
                          (let ((__tmp77987
                                 (let ()
                                   (declare (not safe))
                                   (_write-reason77975_ _exn77977_))))
                            (declare (not safe))
                            (##repl-within
                             _cont77979_
                             __tmp77987
                             _exn77977_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp77986)))))
          (declare (not safe))
          (with-exception-handler __tmp77985 ##repl))))))
