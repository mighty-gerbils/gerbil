(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1768863412)
  (define replx
    (lambda ()
      (letrec ((_%write-reason126905%_
                (lambda (_%exn126911%_)
                  (lambda (_%cont126913%_ _%port126914%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn126911%_
                       _%cont126913%_
                       _%port126914%_))
                    '#f))))
        (let ((__tmp126915
               (lambda (_%exn126907%_)
                 (let ((__tmp126916
                        (lambda (_%cont126909%_)
                          (let ((__tmp126917
                                 (_%write-reason126905%_ _%exn126907%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont126909%_
                             __tmp126917
                             _%exn126907%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp126916)))))
          (declare (not safe))
          (with-exception-handler __tmp126915 ##repl))))))
