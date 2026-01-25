(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1769382894)
  (define replx
    (lambda ()
      (letrec ((_%write-reason127354%_
                (lambda (_%exn127360%_)
                  (lambda (_%cont127362%_ _%port127363%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn127360%_
                       _%cont127362%_
                       _%port127363%_))
                    '#f))))
        (let ((__tmp127364
               (lambda (_%exn127356%_)
                 (let ((__tmp127365
                        (lambda (_%cont127358%_)
                          (let ((__tmp127366
                                 (_%write-reason127354%_ _%exn127356%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont127358%_
                             __tmp127366
                             _%exn127356%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp127365)))))
          (declare (not safe))
          (with-exception-handler __tmp127364 ##repl))))))
