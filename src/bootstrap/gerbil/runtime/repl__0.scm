(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708280333)
  (define replx
    (lambda ()
      (letrec ((_write-reason125948_
                (lambda (_exn125954_)
                  (lambda (_cont125956_ _port125957_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn125954_
                       _cont125956_
                       _port125957_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn125950_)
           (let ((__tmp130025
                  (lambda (_cont125952_)
                    (let ((__tmp130026
                           (let ()
                             (declare (not safe))
                             (_write-reason125948_ _exn125950_))))
                      (declare (not safe))
                      (##repl-within _cont125952_ __tmp130026 _exn125950_)))))
             (declare (not safe))
             (##continuation-capture __tmp130025)))
         ##repl)))))
