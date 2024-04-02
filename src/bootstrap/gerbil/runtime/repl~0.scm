(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712084085)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111303%_
                (lambda (_%exn111309%_)
                  (lambda (_%cont111311%_ _%port111312%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111309%_
                       _%cont111311%_
                       _%port111312%_))
                    '#f))))
        (let ((__tmp111313
               (lambda (_%exn111305%_)
                 (let ((__tmp111314
                        (lambda (_%cont111307%_)
                          (let ((__tmp111315
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111303%_ _%exn111305%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111307%_
                             __tmp111315
                             _%exn111305%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111314)))))
          (declare (not safe))
          (with-exception-handler __tmp111313 ##repl))))))
