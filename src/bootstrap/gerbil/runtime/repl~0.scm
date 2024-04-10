(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712773525)
  (define replx
    (lambda ()
      (letrec ((_%write-reason112006%_
                (lambda (_%exn112012%_)
                  (lambda (_%cont112014%_ _%port112015%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn112012%_
                       _%cont112014%_
                       _%port112015%_))
                    '#f))))
        (let ((__tmp112016
               (lambda (_%exn112008%_)
                 (let ((__tmp112017
                        (lambda (_%cont112010%_)
                          (let ((__tmp112018
                                 (_%write-reason112006%_ _%exn112008%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont112010%_
                             __tmp112018
                             _%exn112008%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp112017)))))
          (declare (not safe))
          (with-exception-handler __tmp112016 ##repl))))))
