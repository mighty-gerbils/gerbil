(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1755903075)
  (define replx
    (lambda ()
      (letrec ((_%write-reason119549%_
                (lambda (_%exn119555%_)
                  (lambda (_%cont119557%_ _%port119558%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn119555%_
                       _%cont119557%_
                       _%port119558%_))
                    '#f))))
        (let ((__tmp119559
               (lambda (_%exn119551%_)
                 (let ((__tmp119560
                        (lambda (_%cont119553%_)
                          (let ((__tmp119561
                                 (_%write-reason119549%_ _%exn119551%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont119553%_
                             __tmp119561
                             _%exn119551%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp119560)))))
          (declare (not safe))
          (with-exception-handler __tmp119559 ##repl))))))
