(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1734280446)
  (define replx
    (lambda ()
      (letrec ((_%write-reason116122%_
                (lambda (_%exn116128%_)
                  (lambda (_%cont116130%_ _%port116131%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn116128%_
                       _%cont116130%_
                       _%port116131%_))
                    '#f))))
        (let ((__tmp116132
               (lambda (_%exn116124%_)
                 (let ((__tmp116133
                        (lambda (_%cont116126%_)
                          (let ((__tmp116134
                                 (_%write-reason116122%_ _%exn116124%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont116126%_
                             __tmp116134
                             _%exn116124%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp116133)))))
          (declare (not safe))
          (with-exception-handler __tmp116132 ##repl))))))
