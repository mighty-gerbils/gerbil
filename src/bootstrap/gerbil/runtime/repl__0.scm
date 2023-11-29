(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1701931848)
  (define replx
    (lambda ()
      (letrec ((_write-reason18167_
                (lambda (_exn18173_)
                  (lambda (_cont18175_ _port18176_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18173_
                       _cont18175_
                       _port18176_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18169_)
           (let ((__tmp18177
                  (lambda (_cont18171_)
                    (let ((__tmp18178
                           (let ()
                             (declare (not safe))
                             (_write-reason18167_ _exn18169_))))
                      (declare (not safe))
                      (##repl-within _cont18171_ __tmp18178 _exn18169_)))))
             (declare (not safe))
             (##continuation-capture __tmp18177)))
         ##repl)))))
