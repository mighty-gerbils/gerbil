(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1756142015)
  (define replx
    (lambda ()
      (letrec ((_%write-reason122242%_
                (lambda (_%exn122248%_)
                  (lambda (_%cont122250%_ _%port122251%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn122248%_
                       _%cont122250%_
                       _%port122251%_))
                    '#f))))
        (let ((__tmp122252
               (lambda (_%exn122244%_)
                 (let ((__tmp122253
                        (lambda (_%cont122246%_)
                          (let ((__tmp122254
                                 (_%write-reason122242%_ _%exn122244%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont122246%_
                             __tmp122254
                             _%exn122244%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp122253)))))
          (declare (not safe))
          (with-exception-handler __tmp122252 ##repl))))))
