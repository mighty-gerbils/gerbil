(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712256086)
  (define replx
    (lambda ()
      (letrec ((_%write-reason112016%_
                (lambda (_%exn112022%_)
                  (lambda (_%cont112024%_ _%port112025%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn112022%_
                       _%cont112024%_
                       _%port112025%_))
                    '#f))))
        (let ((__tmp112026
               (lambda (_%exn112018%_)
                 (let ((__tmp112027
                        (lambda (_%cont112020%_)
                          (let ((__tmp112028
                                 (let ()
                                   (declare (not safe))
                                   (_%write-reason112016%_ _%exn112018%_))))
                            (declare (not safe))
                            (##repl-within
                             _%cont112020%_
                             __tmp112028
                             _%exn112018%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp112027)))))
          (declare (not safe))
          (with-exception-handler __tmp112026 ##repl))))))
