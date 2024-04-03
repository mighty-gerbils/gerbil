(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712121898)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111409%_
                (lambda (_%exn111415%_)
                  (lambda (_%cont111417%_ _%port111418%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111415%_
                       _%cont111417%_
                       _%port111418%_))
                    '#f))))
        (let ((__tmp111419
               (lambda (_%exn111411%_)
                 (let ((__tmp111420
                        (lambda (_%cont111413%_)
                          (let ((__tmp111421
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111409%_ _%exn111411%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111413%_
                             __tmp111421
                             _%exn111411%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111420)))))
          (declare (not safe))
          (with-exception-handler __tmp111419 ##repl))))))
