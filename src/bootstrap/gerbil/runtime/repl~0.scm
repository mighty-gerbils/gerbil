(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1734278444)
  (define replx
    (lambda ()
      (letrec ((_%write-reason116128%_
                (lambda (_%exn116134%_)
                  (lambda (_%cont116136%_ _%port116137%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn116134%_
                       _%cont116136%_
                       _%port116137%_))
                    '#f))))
        (let ((__tmp116138
               (lambda (_%exn116130%_)
                 (let ((__tmp116139
                        (lambda (_%cont116132%_)
                          (let ((__tmp116140
                                 (_%write-reason116128%_ _%exn116130%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont116132%_
                             __tmp116140
                             _%exn116130%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp116139)))))
          (declare (not safe))
          (with-exception-handler __tmp116138 ##repl))))))
