(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1733687559)
  (define replx
    (lambda ()
      (letrec ((_%write-reason115130%_
                (lambda (_%exn115136%_)
                  (lambda (_%cont115138%_ _%port115139%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn115136%_
                       _%cont115138%_
                       _%port115139%_))
                    '#f))))
        (let ((__tmp115140
               (lambda (_%exn115132%_)
                 (let ((__tmp115141
                        (lambda (_%cont115134%_)
                          (let ((__tmp115142
                                 (_%write-reason115130%_ _%exn115132%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont115134%_
                             __tmp115142
                             _%exn115132%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp115141)))))
          (declare (not safe))
          (with-exception-handler __tmp115140 ##repl))))))
