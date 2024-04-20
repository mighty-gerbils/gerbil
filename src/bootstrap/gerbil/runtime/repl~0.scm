(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1713631266)
  (define replx
    (lambda ()
      (letrec ((_%write-reason114971%_
                (lambda (_%exn114977%_)
                  (lambda (_%cont114979%_ _%port114980%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn114977%_
                       _%cont114979%_
                       _%port114980%_))
                    '#f))))
        (let ((__tmp114981
               (lambda (_%exn114973%_)
                 (let ((__tmp114982
                        (lambda (_%cont114975%_)
                          (let ((__tmp114983
                                 (_%write-reason114971%_ _%exn114973%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont114975%_
                             __tmp114983
                             _%exn114973%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp114982)))))
          (declare (not safe))
          (with-exception-handler __tmp114981 ##repl))))))
