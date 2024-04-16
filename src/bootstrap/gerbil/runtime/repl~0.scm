(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1713044315)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113565%_
                (lambda (_%exn113571%_)
                  (lambda (_%cont113573%_ _%port113574%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113571%_
                       _%cont113573%_
                       _%port113574%_))
                    '#f))))
        (let ((__tmp113575
               (lambda (_%exn113567%_)
                 (let ((__tmp113576
                        (lambda (_%cont113569%_)
                          (let ((__tmp113577
                                 (_%write-reason113565%_ _%exn113567%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113569%_
                             __tmp113577
                             _%exn113567%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113576)))))
          (declare (not safe))
          (with-exception-handler __tmp113575 ##repl))))))
