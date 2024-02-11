(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707610213)
  (define replx
    (lambda ()
      (letrec ((_write-reason114941_
                (lambda (_exn114947_)
                  (lambda (_cont114949_ _port114950_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114947_
                       _cont114949_
                       _port114950_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114943_)
           (let ((__tmp119419
                  (lambda (_cont114945_)
                    (let ((__tmp119420
                           (let ()
                             (declare (not safe))
                             (_write-reason114941_ _exn114943_))))
                      (declare (not safe))
                      (##repl-within _cont114945_ __tmp119420 _exn114943_)))))
             (declare (not safe))
             (##continuation-capture __tmp119419)))
         ##repl)))))
