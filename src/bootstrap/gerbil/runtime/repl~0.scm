(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1734225193)
  (define replx
    (lambda ()
      (letrec ((_%write-reason116132%_
                (lambda (_%exn116138%_)
                  (lambda (_%cont116140%_ _%port116141%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn116138%_
                       _%cont116140%_
                       _%port116141%_))
                    '#f))))
        (let ((__tmp116142
               (lambda (_%exn116134%_)
                 (let ((__tmp116143
                        (lambda (_%cont116136%_)
                          (let ((__tmp116144
                                 (_%write-reason116132%_ _%exn116134%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont116136%_
                             __tmp116144
                             _%exn116134%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp116143)))))
          (declare (not safe))
          (with-exception-handler __tmp116142 ##repl))))))
