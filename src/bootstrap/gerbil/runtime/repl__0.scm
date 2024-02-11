(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707620170)
  (define replx
    (lambda ()
      (letrec ((_write-reason114955_
                (lambda (_exn114961_)
                  (lambda (_cont114963_ _port114964_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114961_
                       _cont114963_
                       _port114964_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114957_)
           (let ((__tmp119433
                  (lambda (_cont114959_)
                    (let ((__tmp119434
                           (let ()
                             (declare (not safe))
                             (_write-reason114955_ _exn114957_))))
                      (declare (not safe))
                      (##repl-within _cont114959_ __tmp119434 _exn114957_)))))
             (declare (not safe))
             (##continuation-capture __tmp119433)))
         ##repl)))))
