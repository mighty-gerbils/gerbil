(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712823026)
  (define replx
    (lambda ()
      (letrec ((_%write-reason113159%_
                (lambda (_%exn113165%_)
                  (lambda (_%cont113167%_ _%port113168%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn113165%_
                       _%cont113167%_
                       _%port113168%_))
                    '#f))))
        (let ((__tmp113169
               (lambda (_%exn113161%_)
                 (let ((__tmp113170
                        (lambda (_%cont113163%_)
                          (let ((__tmp113171
                                 (_%write-reason113159%_ _%exn113161%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont113163%_
                             __tmp113171
                             _%exn113161%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp113170)))))
          (declare (not safe))
          (with-exception-handler __tmp113169 ##repl))))))
