(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707616237)
  (define replx
    (lambda ()
      (letrec ((_write-reason114945_
                (lambda (_exn114951_)
                  (lambda (_cont114953_ _port114954_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114951_
                       _cont114953_
                       _port114954_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114947_)
           (let ((__tmp119423
                  (lambda (_cont114949_)
                    (let ((__tmp119424
                           (let ()
                             (declare (not safe))
                             (_write-reason114945_ _exn114947_))))
                      (declare (not safe))
                      (##repl-within _cont114949_ __tmp119424 _exn114947_)))))
             (declare (not safe))
             (##continuation-capture __tmp119423)))
         ##repl)))))
