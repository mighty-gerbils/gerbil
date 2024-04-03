(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712146026)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111428%_
                (lambda (_%exn111434%_)
                  (lambda (_%cont111436%_ _%port111437%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111434%_
                       _%cont111436%_
                       _%port111437%_))
                    '#f))))
        (let ((__tmp111438
               (lambda (_%exn111430%_)
                 (let ((__tmp111439
                        (lambda (_%cont111432%_)
                          (let ((__tmp111440
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111428%_ _%exn111430%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111432%_
                             __tmp111440
                             _%exn111430%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111439)))))
          (declare (not safe))
          (with-exception-handler __tmp111438 ##repl))))))
