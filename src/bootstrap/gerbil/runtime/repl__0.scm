(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707618264)
  (define replx
    (lambda ()
      (letrec ((_write-reason114948_
                (lambda (_exn114954_)
                  (lambda (_cont114956_ _port114957_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114954_
                       _cont114956_
                       _port114957_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114950_)
           (let ((__tmp119426
                  (lambda (_cont114952_)
                    (let ((__tmp119427
                           (let ()
                             (declare (not safe))
                             (_write-reason114948_ _exn114950_))))
                      (declare (not safe))
                      (##repl-within _cont114952_ __tmp119427 _exn114950_)))))
             (declare (not safe))
             (##continuation-capture __tmp119426)))
         ##repl)))))
