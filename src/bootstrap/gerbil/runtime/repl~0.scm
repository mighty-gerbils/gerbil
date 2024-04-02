(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712093476)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111498%_
                (lambda (_%exn111504%_)
                  (lambda (_%cont111506%_ _%port111507%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111504%_
                       _%cont111506%_
                       _%port111507%_))
                    '#f))))
        (let ((__tmp111508
               (lambda (_%exn111500%_)
                 (let ((__tmp111509
                        (lambda (_%cont111502%_)
                          (let ((__tmp111510
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111498%_ _%exn111500%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111502%_
                             __tmp111510
                             _%exn111500%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111509)))))
          (declare (not safe))
          (with-exception-handler __tmp111508 ##repl))))))
