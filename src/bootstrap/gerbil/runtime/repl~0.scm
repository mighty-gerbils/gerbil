(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712124234)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111444%_
                (lambda (_%exn111450%_)
                  (lambda (_%cont111452%_ _%port111453%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111450%_
                       _%cont111452%_
                       _%port111453%_))
                    '#f))))
        (let ((__tmp111454
               (lambda (_%exn111446%_)
                 (let ((__tmp111455
                        (lambda (_%cont111448%_)
                          (let ((__tmp111456
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111444%_ _%exn111446%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111448%_
                             __tmp111456
                             _%exn111446%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111455)))))
          (declare (not safe))
          (with-exception-handler __tmp111454 ##repl))))))
