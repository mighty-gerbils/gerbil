(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1713453199)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113839%_
                (lambda (_%exn113845%_)
                  (lambda (_%cont113847%_ _%port113848%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113845%_
                       _%cont113847%_
                       _%port113848%_))
                    '#f))))
        (let ((__tmp113849
               (lambda (_%exn113841%_)
                 (let ((__tmp113850
                        (lambda (_%cont113843%_)
                          (let ((__tmp113851
                                 (_%write-reason113839%_ _%exn113841%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113843%_
                             __tmp113851
                             _%exn113841%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113850)))))
          (declare (not safe))
          (with-exception-handler __tmp113849 ##repl))))))
