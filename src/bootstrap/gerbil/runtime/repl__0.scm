(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709038442)
  (define replx
    (lambda ()
      (letrec ((_write-reason77716_
                (lambda (_exn77722_)
                  (lambda (_cont77724_ _port77725_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77722_
                       _cont77724_
                       _port77725_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn77718_)
           (let ((__tmp77726
                  (lambda (_cont77720_)
                    (let ((__tmp77727
                           (let ()
                             (declare (not safe))
                             (_write-reason77716_ _exn77718_))))
                      (declare (not safe))
                      (##repl-within _cont77720_ __tmp77727 _exn77718_)))))
             (declare (not safe))
             (##continuation-capture __tmp77726)))
         ##repl)))))
