(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1695337676)
  (define replx
    (lambda ()
      (letrec ((_write-reason18093_
                (lambda (_exn18099_)
                  (lambda (_cont18101_ _port18102_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18099_
                       _cont18101_
                       _port18102_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18095_)
           (let ((__tmp18103
                  (lambda (_cont18097_)
                    (let ((__tmp18104
                           (let ()
                             (declare (not safe))
                             (_write-reason18093_ _exn18095_))))
                      (declare (not safe))
                      (##repl-within _cont18097_ __tmp18104 _exn18095_)))))
             (declare (not safe))
             (##continuation-capture __tmp18103)))
         ##repl)))))
