(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707573211)
  (define replx
    (lambda ()
      (letrec ((_write-reason114734_
                (lambda (_exn114740_)
                  (lambda (_cont114742_ _port114743_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114740_
                       _cont114742_
                       _port114743_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114736_)
           (let ((__tmp119212
                  (lambda (_cont114738_)
                    (let ((__tmp119213
                           (let ()
                             (declare (not safe))
                             (_write-reason114734_ _exn114736_))))
                      (declare (not safe))
                      (##repl-within _cont114738_ __tmp119213 _exn114736_)))))
             (declare (not safe))
             (##continuation-capture __tmp119212)))
         ##repl)))))
