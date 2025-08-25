(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1756156300)
  (define replx
    (lambda ()
      (letrec ((_%write-reason123224%_
                (lambda (_%exn123230%_)
                  (lambda (_%cont123232%_ _%port123233%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn123230%_
                       _%cont123232%_
                       _%port123233%_))
                    '#f))))
        (let ((__tmp123234
               (lambda (_%exn123226%_)
                 (let ((__tmp123235
                        (lambda (_%cont123228%_)
                          (let ((__tmp123236
                                 (_%write-reason123224%_ _%exn123226%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont123228%_
                             __tmp123236
                             _%exn123226%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp123235)))))
          (declare (not safe))
          (with-exception-handler __tmp123234 ##repl))))))
