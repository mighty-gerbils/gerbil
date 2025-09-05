(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1756721295)
  (define replx
    (lambda ()
      (letrec ((_%write-reason123642%_
                (lambda (_%exn123648%_)
                  (lambda (_%cont123650%_ _%port123651%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn123648%_
                       _%cont123650%_
                       _%port123651%_))
                    '#f))))
        (let ((__tmp123652
               (lambda (_%exn123644%_)
                 (let ((__tmp123653
                        (lambda (_%cont123646%_)
                          (let ((__tmp123654
                                 (_%write-reason123642%_ _%exn123644%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont123646%_
                             __tmp123654
                             _%exn123644%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp123653)))))
          (declare (not safe))
          (with-exception-handler __tmp123652 ##repl))))))
