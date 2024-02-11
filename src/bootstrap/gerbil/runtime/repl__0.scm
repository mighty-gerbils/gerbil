(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707647932)
  (define replx
    (lambda ()
      (letrec ((_write-reason114653_
                (lambda (_exn114659_)
                  (lambda (_cont114661_ _port114662_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114659_
                       _cont114661_
                       _port114662_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114655_)
           (let ((__tmp119131
                  (lambda (_cont114657_)
                    (let ((__tmp119132
                           (let ()
                             (declare (not safe))
                             (_write-reason114653_ _exn114655_))))
                      (declare (not safe))
                      (##repl-within _cont114657_ __tmp119132 _exn114655_)))))
             (declare (not safe))
             (##continuation-capture __tmp119131)))
         ##repl)))))
