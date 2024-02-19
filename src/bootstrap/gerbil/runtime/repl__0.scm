(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708353891)
  (define replx
    (lambda ()
      (letrec ((_write-reason77307_
                (lambda (_exn77313_)
                  (lambda (_cont77315_ _port77316_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77313_
                       _cont77315_
                       _port77316_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn77309_)
           (let ((__tmp77317
                  (lambda (_cont77311_)
                    (let ((__tmp77318
                           (let ()
                             (declare (not safe))
                             (_write-reason77307_ _exn77309_))))
                      (declare (not safe))
                      (##repl-within _cont77311_ __tmp77318 _exn77309_)))))
             (declare (not safe))
             (##continuation-capture __tmp77317)))
         ##repl)))))
