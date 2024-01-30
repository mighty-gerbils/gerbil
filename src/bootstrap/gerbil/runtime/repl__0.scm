(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1706581965)
  (define replx
    (lambda ()
      (letrec ((_write-reason18119_
                (lambda (_exn18125_)
                  (lambda (_cont18127_ _port18128_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18125_
                       _cont18127_
                       _port18128_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18121_)
           (let ((__tmp18129
                  (lambda (_cont18123_)
                    (let ((__tmp18130
                           (let ()
                             (declare (not safe))
                             (_write-reason18119_ _exn18121_))))
                      (declare (not safe))
                      (##repl-within _cont18123_ __tmp18130 _exn18121_)))))
             (declare (not safe))
             (##continuation-capture __tmp18129)))
         ##repl)))))
