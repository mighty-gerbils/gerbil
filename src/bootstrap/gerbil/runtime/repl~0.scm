(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1742223872)
  (define replx
    (lambda ()
      (letrec ((_%write-reason116157%_
                (lambda (_%exn116163%_)
                  (lambda (_%cont116165%_ _%port116166%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn116163%_
                       _%cont116165%_
                       _%port116166%_))
                    '#f))))
        (let ((__tmp116167
               (lambda (_%exn116159%_)
                 (let ((__tmp116168
                        (lambda (_%cont116161%_)
                          (let ((__tmp116169
                                 (_%write-reason116157%_ _%exn116159%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont116161%_
                             __tmp116169
                             _%exn116159%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp116168)))))
          (declare (not safe))
          (with-exception-handler __tmp116167 ##repl))))))
