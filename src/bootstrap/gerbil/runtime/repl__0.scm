(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708352924)
  (define replx
    (lambda ()
      (letrec ((_write-reason77308_
                (lambda (_exn77314_)
                  (lambda (_cont77316_ _port77317_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77314_
                       _cont77316_
                       _port77317_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn77310_)
           (let ((__tmp77318
                  (lambda (_cont77312_)
                    (let ((__tmp77319
                           (let ()
                             (declare (not safe))
                             (_write-reason77308_ _exn77310_))))
                      (declare (not safe))
                      (##repl-within _cont77312_ __tmp77319 _exn77310_)))))
             (declare (not safe))
             (##continuation-capture __tmp77318)))
         ##repl)))))
