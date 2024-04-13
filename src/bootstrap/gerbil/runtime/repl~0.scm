(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1713004410)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113617%_
                (lambda (_%exn113623%_)
                  (lambda (_%cont113625%_ _%port113626%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113623%_
                       _%cont113625%_
                       _%port113626%_))
                    '#f))))
        (let ((__tmp113627
               (lambda (_%exn113619%_)
                 (let ((__tmp113628
                        (lambda (_%cont113621%_)
                          (let ((__tmp113629
                                 (_%write-reason113617%_ _%exn113619%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113621%_
                             __tmp113629
                             _%exn113619%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113628)))))
          (declare (not safe))
          (with-exception-handler __tmp113627 ##repl))))))
