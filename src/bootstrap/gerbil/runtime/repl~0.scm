(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1770338921)
  (define replx
    (lambda ()
      (letrec ((_%write-reason137397%_
                (lambda (_%exn137403%_)
                  (lambda (_%cont137405%_ _%port137406%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn137403%_
                       _%cont137405%_
                       _%port137406%_))
                    '#f))))
        (let ((__tmp137407
               (lambda (_%exn137399%_)
                 (let ((__tmp137408
                        (lambda (_%cont137401%_)
                          (let ((__tmp137409
                                 (_%write-reason137397%_ _%exn137399%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont137401%_
                             __tmp137409
                             _%exn137399%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp137408)))))
          (declare (not safe))
          (with-exception-handler __tmp137407 ##repl))))))
