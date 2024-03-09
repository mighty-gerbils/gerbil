(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709994213)
  (define replx
    (lambda ()
      (letrec ((_write-reason78635_
                (lambda (_exn78641_)
                  (lambda (_cont78643_ _port78644_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78641_
                       _cont78643_
                       _port78644_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn78637_)
           (let ((__tmp78645
                  (lambda (_cont78639_)
                    (let ((__tmp78646
                           (let ()
                             (declare (not safe))
                             (_write-reason78635_ _exn78637_))))
                      (declare (not safe))
                      (##repl-within _cont78639_ __tmp78646 _exn78637_)))))
             (declare (not safe))
             (##continuation-capture __tmp78645)))
         ##repl)))))
