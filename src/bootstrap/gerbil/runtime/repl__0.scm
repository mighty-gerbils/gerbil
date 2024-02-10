(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707556025)
  (define replx
    (lambda ()
      (letrec ((_write-reason111436_
                (lambda (_exn111442_)
                  (lambda (_cont111444_ _port111445_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn111442_
                       _cont111444_
                       _port111445_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn111438_)
           (let ((__tmp115640
                  (lambda (_cont111440_)
                    (let ((__tmp115641
                           (let ()
                             (declare (not safe))
                             (_write-reason111436_ _exn111438_))))
                      (declare (not safe))
                      (##repl-within _cont111440_ __tmp115641 _exn111438_)))))
             (declare (not safe))
             (##continuation-capture __tmp115640)))
         ##repl)))))
