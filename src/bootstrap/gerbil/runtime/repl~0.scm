(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1734131746)
  (define replx
    (lambda ()
      (letrec ((_%write-reason115236%_
                (lambda (_%exn115242%_)
                  (lambda (_%cont115244%_ _%port115245%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn115242%_
                       _%cont115244%_
                       _%port115245%_))
                    '#f))))
        (let ((__tmp115246
               (lambda (_%exn115238%_)
                 (let ((__tmp115247
                        (lambda (_%cont115240%_)
                          (let ((__tmp115248
                                 (_%write-reason115236%_ _%exn115238%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont115240%_
                             __tmp115248
                             _%exn115238%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp115247)))))
          (declare (not safe))
          (with-exception-handler __tmp115246 ##repl))))))
