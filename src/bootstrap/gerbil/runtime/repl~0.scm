(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1768864948)
  (define replx
    (lambda ()
      (letrec ((_%write-reason126932%_
                (lambda (_%exn126938%_)
                  (lambda (_%cont126940%_ _%port126941%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn126938%_
                       _%cont126940%_
                       _%port126941%_))
                    '#f))))
        (let ((__tmp126942
               (lambda (_%exn126934%_)
                 (let ((__tmp126943
                        (lambda (_%cont126936%_)
                          (let ((__tmp126944
                                 (_%write-reason126932%_ _%exn126934%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont126936%_
                             __tmp126944
                             _%exn126934%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp126943)))))
          (declare (not safe))
          (with-exception-handler __tmp126942 ##repl))))))
