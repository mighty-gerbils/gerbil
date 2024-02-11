(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707674930)
  (define replx
    (lambda ()
      (letrec ((_write-reason115680_
                (lambda (_exn115686_)
                  (lambda (_cont115688_ _port115689_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn115686_
                       _cont115688_
                       _port115689_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn115682_)
           (let ((__tmp120258
                  (lambda (_cont115684_)
                    (let ((__tmp120259
                           (let ()
                             (declare (not safe))
                             (_write-reason115680_ _exn115682_))))
                      (declare (not safe))
                      (##repl-within _cont115684_ __tmp120259 _exn115682_)))))
             (declare (not safe))
             (##continuation-capture __tmp120258)))
         ##repl)))))
