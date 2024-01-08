(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1704735467)
  (define replx
    (lambda ()
      (letrec ((_write-reason18123_
                (lambda (_exn18129_)
                  (lambda (_cont18131_ _port18132_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn18129_
                       _cont18131_
                       _port18132_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn18125_)
           (let ((__tmp18133
                  (lambda (_cont18127_)
                    (let ((__tmp18134
                           (let ()
                             (declare (not safe))
                             (_write-reason18123_ _exn18125_))))
                      (declare (not safe))
                      (##repl-within _cont18127_ __tmp18134 _exn18125_)))))
             (declare (not safe))
             (##continuation-capture __tmp18133)))
         ##repl)))))
