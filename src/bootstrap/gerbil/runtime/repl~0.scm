(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1713000277)
  (define replx
    (lambda ()
      (letrec ((_%write-reason114533%_
                (lambda (_%exn114539%_)
                  (lambda (_%cont114541%_ _%port114542%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn114539%_
                       _%cont114541%_
                       _%port114542%_))
                    '#f))))
        (let ((__tmp114543
               (lambda (_%exn114535%_)
                 (let ((__tmp114544
                        (lambda (_%cont114537%_)
                          (let ((__tmp114545
                                 (_%write-reason114533%_ _%exn114535%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont114537%_
                             __tmp114545
                             _%exn114535%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp114544)))))
          (declare (not safe))
          (with-exception-handler __tmp114543 ##repl))))))
