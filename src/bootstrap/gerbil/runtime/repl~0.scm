(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1742226231)
  (define replx
    (lambda ()
      (letrec ((_%write-reason116176%_
                (lambda (_%exn116182%_)
                  (lambda (_%cont116184%_ _%port116185%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn116182%_
                       _%cont116184%_
                       _%port116185%_))
                    '#f))))
        (let ((__tmp116186
               (lambda (_%exn116178%_)
                 (let ((__tmp116187
                        (lambda (_%cont116180%_)
                          (let ((__tmp116188
                                 (_%write-reason116176%_ _%exn116178%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont116180%_
                             __tmp116188
                             _%exn116178%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp116187)))))
          (declare (not safe))
          (with-exception-handler __tmp116186 ##repl))))))
