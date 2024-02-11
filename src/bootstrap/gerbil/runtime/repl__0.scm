(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707659878)
  (define replx
    (lambda ()
      (letrec ((_write-reason114475_
                (lambda (_exn114481_)
                  (lambda (_cont114483_ _port114484_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114481_
                       _cont114483_
                       _port114484_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114477_)
           (let ((__tmp118953
                  (lambda (_cont114479_)
                    (let ((__tmp118954
                           (let ()
                             (declare (not safe))
                             (_write-reason114475_ _exn114477_))))
                      (declare (not safe))
                      (##repl-within _cont114479_ __tmp118954 _exn114477_)))))
             (declare (not safe))
             (##continuation-capture __tmp118953)))
         ##repl)))))
