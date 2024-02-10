(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707601715)
  (define replx
    (lambda ()
      (letrec ((_write-reason114909_
                (lambda (_exn114915_)
                  (lambda (_cont114917_ _port114918_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114915_
                       _cont114917_
                       _port114918_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114911_)
           (let ((__tmp119387
                  (lambda (_cont114913_)
                    (let ((__tmp119388
                           (let ()
                             (declare (not safe))
                             (_write-reason114909_ _exn114911_))))
                      (declare (not safe))
                      (##repl-within _cont114913_ __tmp119388 _exn114911_)))))
             (declare (not safe))
             (##continuation-capture __tmp119387)))
         ##repl)))))
