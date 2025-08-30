(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1756224515)
  (define replx
    (lambda ()
      (letrec ((_%write-reason123227%_
                (lambda (_%exn123233%_)
                  (lambda (_%cont123235%_ _%port123236%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn123233%_
                       _%cont123235%_
                       _%port123236%_))
                    '#f))))
        (let ((__tmp123237
               (lambda (_%exn123229%_)
                 (let ((__tmp123238
                        (lambda (_%cont123231%_)
                          (let ((__tmp123239
                                 (_%write-reason123227%_ _%exn123229%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont123231%_
                             __tmp123239
                             _%exn123229%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp123238)))))
          (declare (not safe))
          (with-exception-handler __tmp123237 ##repl))))))
