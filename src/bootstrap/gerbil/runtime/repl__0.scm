(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1697117311)
  (define replx
    (lambda ()
      (letrec ((_write-reason18218_
                (lambda (_exn18224_)
                  (lambda (_cont18226_ _port18227_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18224_
                       _cont18226_
                       _port18227_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18220_)
           (let ((__tmp18228
                  (lambda (_cont18222_)
                    (let ((__tmp18229
                           (let ()
                             (declare (not safe))
                             (_write-reason18218_ _exn18220_))))
                      (declare (not safe))
                      (##repl-within _cont18222_ __tmp18229 _exn18220_)))))
             (declare (not safe))
             (##continuation-capture __tmp18228)))
         ##repl)))))
