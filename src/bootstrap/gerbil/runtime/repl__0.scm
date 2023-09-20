(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1695206877)
  (define replx
    (lambda ()
      (letrec ((_write-reason15895_
                (lambda (_exn15901_)
                  (lambda (_cont15903_ _port15904_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn15901_
                       _cont15903_
                       _port15904_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn15897_)
           (let ((__tmp15905
                  (lambda (_cont15899_)
                    (let ((__tmp15906 (_write-reason15895_ _exn15897_)))
                      (declare (not safe))
                      (##repl-within _cont15899_ __tmp15906 _exn15897_)))))
             (declare (not safe))
             (##continuation-capture __tmp15905)))
         ##repl)))))
