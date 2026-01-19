(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1768865823)
  (define replx
    (lambda ()
      (letrec ((_%write-reason126947%_
                (lambda (_%exn126953%_)
                  (lambda (_%cont126955%_ _%port126956%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn126953%_
                       _%cont126955%_
                       _%port126956%_))
                    '#f))))
        (let ((__tmp126957
               (lambda (_%exn126949%_)
                 (let ((__tmp126958
                        (lambda (_%cont126951%_)
                          (let ((__tmp126959
                                 (_%write-reason126947%_ _%exn126949%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont126951%_
                             __tmp126959
                             _%exn126949%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp126958)))))
          (declare (not safe))
          (with-exception-handler __tmp126957 ##repl))))))
