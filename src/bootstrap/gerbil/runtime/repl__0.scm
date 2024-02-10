(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707554637)
  (define replx
    (lambda ()
      (letrec ((_write-reason111442_
                (lambda (_exn111448_)
                  (lambda (_cont111450_ _port111451_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn111448_
                       _cont111450_
                       _port111451_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn111444_)
           (let ((__tmp115646
                  (lambda (_cont111446_)
                    (let ((__tmp115647
                           (let ()
                             (declare (not safe))
                             (_write-reason111442_ _exn111444_))))
                      (declare (not safe))
                      (##repl-within _cont111446_ __tmp115647 _exn111444_)))))
             (declare (not safe))
             (##continuation-capture __tmp115646)))
         ##repl)))))
