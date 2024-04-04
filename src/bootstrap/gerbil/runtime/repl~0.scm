(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712269045)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111942%_
                (lambda (_%exn111948%_)
                  (lambda (_%cont111950%_ _%port111951%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111948%_
                       _%cont111950%_
                       _%port111951%_))
                    '#f))))
        (let ((__tmp111952
               (lambda (_%exn111944%_)
                 (let ((__tmp111953
                        (lambda (_%cont111946%_)
                          (let ((__tmp111954
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111942%_ _%exn111944%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111946%_
                             __tmp111954
                             _%exn111944%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111953)))))
          (declare (not safe))
          (with-exception-handler __tmp111952 ##repl))))))
