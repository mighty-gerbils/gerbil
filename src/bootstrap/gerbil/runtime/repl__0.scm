(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1695201399)
  (define replx
    (lambda ()
      (letrec ((_write-reason9868_
                (lambda (_exn9874_)
                  (lambda (_cont9876_ _port9877_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn9874_
                       _cont9876_
                       _port9877_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn9870_)
           (let ((__tmp9878
                  (lambda (_cont9872_)
                    (let ((__tmp9879 (_write-reason9868_ _exn9870_)))
                      (declare (not safe))
                      (##repl-within _cont9872_ __tmp9879 _exn9870_)))))
             (declare (not safe))
             (##continuation-capture __tmp9878)))
         ##repl)))))
