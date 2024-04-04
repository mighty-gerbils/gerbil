(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712246555)
  (define replx
    (lambda ()
      (letrec ((_%write-reason112033%_
                (lambda (_%exn112039%_)
                  (lambda (_%cont112041%_ _%port112042%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn112039%_
                       _%cont112041%_
                       _%port112042%_))
                    '#f))))
        (let ((__tmp112043
               (lambda (_%exn112035%_)
                 (let ((__tmp112044
                        (lambda (_%cont112037%_)
                          (let ((__tmp112045
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason112033%_ _%exn112035%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont112037%_
                             __tmp112045
                             _%exn112035%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp112044)))))
          (declare (not safe))
          (with-exception-handler __tmp112043 ##repl))))))
