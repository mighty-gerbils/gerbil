(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712784665)
  (define replx
    (lambda ()
      (letrec ((_%write-reason112443%_
                (lambda (_%exn112449%_)
                  (lambda (_%cont112451%_ _%port112452%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn112449%_
                       _%cont112451%_
                       _%port112452%_))
                    '#f))))
        (let ((__tmp112453
               (lambda (_%exn112445%_)
                 (let ((__tmp112454
                        (lambda (_%cont112447%_)
                          (let ((__tmp112455
                                 (_%write-reason112443%_ _%exn112445%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont112447%_
                             __tmp112455
                             _%exn112445%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp112454)))))
          (declare (not safe))
          (with-exception-handler __tmp112453 ##repl))))))
