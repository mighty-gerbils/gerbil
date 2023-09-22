(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1695392653)
  (define replx
    (lambda ()
      (letrec ((_write-reason18105_
                (lambda (_exn18111_)
                  (lambda (_cont18113_ _port18114_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18111_
                       _cont18113_
                       _port18114_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18107_)
           (let ((__tmp18115
                  (lambda (_cont18109_)
                    (let ((__tmp18116
                           (let ()
                             (declare (not safe))
                             (_write-reason18105_ _exn18107_))))
                      (declare (not safe))
                      (##repl-within _cont18109_ __tmp18116 _exn18107_)))))
             (declare (not safe))
             (##continuation-capture __tmp18115)))
         ##repl)))))
