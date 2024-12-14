(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1734215269)
  (define replx
    (lambda ()
      (letrec ((_%write-reason115338%_
                (lambda (_%exn115344%_)
                  (lambda (_%cont115346%_ _%port115347%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn115344%_
                       _%cont115346%_
                       _%port115347%_))
                    '#f))))
        (let ((__tmp115348
               (lambda (_%exn115340%_)
                 (let ((__tmp115349
                        (lambda (_%cont115342%_)
                          (let ((__tmp115350
                                 (_%write-reason115338%_ _%exn115340%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont115342%_
                             __tmp115350
                             _%exn115340%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp115349)))))
          (declare (not safe))
          (with-exception-handler __tmp115348 ##repl))))))
