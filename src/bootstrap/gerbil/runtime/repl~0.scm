(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712602655)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111191%_
                (lambda (_%exn111197%_)
                  (lambda (_%cont111199%_ _%port111200%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111197%_
                       _%cont111199%_
                       _%port111200%_))
                    '#f))))
        (let ((__tmp111201
               (lambda (_%exn111193%_)
                 (let ((__tmp111202
                        (lambda (_%cont111195%_)
                          (let ((__tmp111203
                                 (_%write-reason111191%_ _%exn111193%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont111195%_
                             __tmp111203
                             _%exn111193%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111202)))))
          (declare (not safe))
          (with-exception-handler __tmp111201 ##repl))))))
