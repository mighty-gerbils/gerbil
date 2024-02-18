(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708271170)
  (define replx
    (lambda ()
      (letrec ((_write-reason126497_
                (lambda (_exn126503_)
                  (lambda (_cont126505_ _port126506_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn126503_
                       _cont126505_
                       _port126506_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn126499_)
           (let ((__tmp130574
                  (lambda (_cont126501_)
                    (let ((__tmp130575
                           (let ()
                             (declare (not safe))
                             (_write-reason126497_ _exn126499_))))
                      (declare (not safe))
                      (##repl-within _cont126501_ __tmp130575 _exn126499_)))))
             (declare (not safe))
             (##continuation-capture __tmp130574)))
         ##repl)))))
