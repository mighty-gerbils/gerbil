(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712251111)
  (define replx
    (lambda ()
      (letrec ((_%write-reason112008%_
                (lambda (_%exn112014%_)
                  (lambda (_%cont112016%_ _%port112017%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn112014%_
                       _%cont112016%_
                       _%port112017%_))
                    '#f))))
        (let ((__tmp112018
               (lambda (_%exn112010%_)
                 (let ((__tmp112019
                        (lambda (_%cont112012%_)
                          (let ((__tmp112020
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason112008%_ _%exn112010%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont112012%_
                             __tmp112020
                             _%exn112010%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp112019)))))
          (declare (not safe))
          (with-exception-handler __tmp112018 ##repl))))))
