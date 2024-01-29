(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1706556807)
  (define replx
    (lambda ()
      (letrec ((_write-reason18121_
                (lambda (_exn18127_)
                  (lambda (_cont18129_ _port18130_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18127_
                       _cont18129_
                       _port18130_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18123_)
           (let ((__tmp18131
                  (lambda (_cont18125_)
                    (let ((__tmp18132
                           (let ()
                             (declare (not safe))
                             (_write-reason18121_ _exn18123_))))
                      (declare (not safe))
                      (##repl-within _cont18125_ __tmp18132 _exn18123_)))))
             (declare (not safe))
             (##continuation-capture __tmp18131)))
         ##repl)))))
