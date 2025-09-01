(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1756715352)
  (define replx
    (lambda ()
      (letrec ((_%write-reason123644%_
                (lambda (_%exn123650%_)
                  (lambda (_%cont123652%_ _%port123653%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn123650%_
                       _%cont123652%_
                       _%port123653%_))
                    '#f))))
        (let ((__tmp123654
               (lambda (_%exn123646%_)
                 (let ((__tmp123655
                        (lambda (_%cont123648%_)
                          (let ((__tmp123656
                                 (_%write-reason123644%_ _%exn123646%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont123648%_
                             __tmp123656
                             _%exn123646%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp123655)))))
          (declare (not safe))
          (with-exception-handler __tmp123654 ##repl))))))
