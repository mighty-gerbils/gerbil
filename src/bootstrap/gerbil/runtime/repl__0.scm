(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1696542233)
  (define replx
    (lambda ()
      (letrec ((_write-reason18166_
                (lambda (_exn18172_)
                  (lambda (_cont18174_ _port18175_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18172_
                       _cont18174_
                       _port18175_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18168_)
           (let ((__tmp18176
                  (lambda (_cont18170_)
                    (let ((__tmp18177
                           (let ()
                             (declare (not safe))
                             (_write-reason18166_ _exn18168_))))
                      (declare (not safe))
                      (##repl-within _cont18170_ __tmp18177 _exn18168_)))))
             (declare (not safe))
             (##continuation-capture __tmp18176)))
         ##repl)))))
