(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707552286)
  (define replx
    (lambda ()
      (letrec ((_write-reason111437_
                (lambda (_exn111443_)
                  (lambda (_cont111445_ _port111446_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn111443_
                       _cont111445_
                       _port111446_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn111439_)
           (let ((__tmp115641
                  (lambda (_cont111441_)
                    (let ((__tmp115642
                           (let ()
                             (declare (not safe))
                             (_write-reason111437_ _exn111439_))))
                      (declare (not safe))
                      (##repl-within _cont111441_ __tmp115642 _exn111439_)))))
             (declare (not safe))
             (##continuation-capture __tmp115641)))
         ##repl)))))
