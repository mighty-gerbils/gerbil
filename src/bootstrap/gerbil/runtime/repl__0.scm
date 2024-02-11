(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707657569)
  (define replx
    (lambda ()
      (letrec ((_write-reason114602_
                (lambda (_exn114608_)
                  (lambda (_cont114610_ _port114611_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114608_
                       _cont114610_
                       _port114611_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114604_)
           (let ((__tmp119080
                  (lambda (_cont114606_)
                    (let ((__tmp119081
                           (let ()
                             (declare (not safe))
                             (_write-reason114602_ _exn114604_))))
                      (declare (not safe))
                      (##repl-within _cont114606_ __tmp119081 _exn114604_)))))
             (declare (not safe))
             (##continuation-capture __tmp119080)))
         ##repl)))))
