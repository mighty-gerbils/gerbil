(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712299484)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111943%_
                (lambda (_%exn111949%_)
                  (lambda (_%cont111951%_ _%port111952%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111949%_
                       _%cont111951%_
                       _%port111952%_))
                    '#f))))
        (let ((__tmp111953
               (lambda (_%exn111945%_)
                 (let ((__tmp111954
                        (lambda (_%cont111947%_)
                          (let ((__tmp111955
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason111943%_ _%exn111945%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont111947%_
                             __tmp111955
                             _%exn111945%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111954)))))
          (declare (not safe))
          (with-exception-handler __tmp111953 ##repl))))))
