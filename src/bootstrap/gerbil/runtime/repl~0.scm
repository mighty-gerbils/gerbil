(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1734357961)
  (define replx
    (lambda ()
      (letrec ((_%write-reason116221%_
                (lambda (_%exn116227%_)
                  (lambda (_%cont116229%_ _%port116230%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn116227%_
                       _%cont116229%_
                       _%port116230%_))
                    '#f))))
        (let ((__tmp116231
               (lambda (_%exn116223%_)
                 (let ((__tmp116232
                        (lambda (_%cont116225%_)
                          (let ((__tmp116233
                                 (_%write-reason116221%_ _%exn116223%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont116225%_
                             __tmp116233
                             _%exn116223%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp116232)))))
          (declare (not safe))
          (with-exception-handler __tmp116231 ##repl))))))
