(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1713001407)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113506%_
                (lambda (_%exn113512%_)
                  (lambda (_%cont113514%_ _%port113515%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113512%_
                       _%cont113514%_
                       _%port113515%_))
                    '#f))))
        (let ((__tmp113516
               (lambda (_%exn113508%_)
                 (let ((__tmp113517
                        (lambda (_%cont113510%_)
                          (let ((__tmp113518
                                 (_%write-reason113506%_ _%exn113508%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113510%_
                             __tmp113518
                             _%exn113508%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113517)))))
          (declare (not safe))
          (with-exception-handler __tmp113516 ##repl))))))
