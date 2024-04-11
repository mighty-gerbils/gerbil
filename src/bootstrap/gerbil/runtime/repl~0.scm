(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712836657)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113161%_
                (lambda (_%exn113167%_)
                  (lambda (_%cont113169%_ _%port113170%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113167%_
                       _%cont113169%_
                       _%port113170%_))
                    '#f))))
        (let ((__tmp113171
               (lambda (_%exn113163%_)
                 (let ((__tmp113172
                        (lambda (_%cont113165%_)
                          (let ((__tmp113173
                                 (_%write-reason113161%_ _%exn113163%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113165%_
                             __tmp113173
                             _%exn113163%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113172)))))
          (declare (not safe))
          (with-exception-handler __tmp113171 ##repl))))))
