(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1770342548)
  (define replx
    (lambda ()
      (letrec ((_%write-reason159108%_
                (lambda (_%exn159114%_)
                  (lambda (_%cont159116%_ _%port159117%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn159114%_
                       _%cont159116%_
                       _%port159117%_))
                    '#f))))
        (let ((__tmp159118
               (lambda (_%exn159110%_)
                 (let ((__tmp159119
                        (lambda (_%cont159112%_)
                          (let ((__tmp159120
                                 (_%write-reason159108%_ _%exn159110%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont159112%_
                             __tmp159120
                             _%exn159110%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp159119)))))
          (declare (not safe))
          (with-exception-handler __tmp159118 ##repl))))))
