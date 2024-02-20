(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708387688)
  (define replx
    (lambda ()
      (letrec ((_write-reason77319_
                (lambda (_exn77325_)
                  (lambda (_cont77327_ _port77328_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77325_
                       _cont77327_
                       _port77328_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn77321_)
           (let ((__tmp77329
                  (lambda (_cont77323_)
                    (let ((__tmp77330
                           (let ()
                             (declare (not safe))
                             (_write-reason77319_ _exn77321_))))
                      (declare (not safe))
                      (##repl-within _cont77323_ __tmp77330 _exn77321_)))))
             (declare (not safe))
             (##continuation-capture __tmp77329)))
         ##repl)))))
