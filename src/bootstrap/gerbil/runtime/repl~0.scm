(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1769384628)
  (define replx
    (lambda ()
      (letrec ((_%write-reason127410%_
                (lambda (_%exn127416%_)
                  (lambda (_%cont127418%_ _%port127419%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn127416%_
                       _%cont127418%_
                       _%port127419%_))
                    '#f))))
        (let ((__tmp127420
               (lambda (_%exn127412%_)
                 (let ((__tmp127421
                        (lambda (_%cont127414%_)
                          (let ((__tmp127422
                                 (_%write-reason127410%_ _%exn127412%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont127414%_
                             __tmp127422
                             _%exn127412%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp127421)))))
          (declare (not safe))
          (with-exception-handler __tmp127420 ##repl))))))
