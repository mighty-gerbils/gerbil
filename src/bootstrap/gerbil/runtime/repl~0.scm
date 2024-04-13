(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712997786)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113219%_
                (lambda (_%exn113225%_)
                  (lambda (_%cont113227%_ _%port113228%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113225%_
                       _%cont113227%_
                       _%port113228%_))
                    '#f))))
        (let ((__tmp113229
               (lambda (_%exn113221%_)
                 (let ((__tmp113230
                        (lambda (_%cont113223%_)
                          (let ((__tmp113231
                                 (_%write-reason113219%_ _%exn113221%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113223%_
                             __tmp113231
                             _%exn113221%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113230)))))
          (declare (not safe))
          (with-exception-handler __tmp113229 ##repl))))))
