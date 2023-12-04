(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1701718632)
  (define replx
    (lambda ()
      (letrec ((_write-reason16139_
                (lambda (_exn16145_)
                  (lambda (_cont16147_ _port16148_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn16145_
                       _cont16147_
                       _port16148_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn16141_)
           (let ((__tmp16149
                  (lambda (_cont16143_)
                    (let ((__tmp16150
                           (let ()
                             (declare (not safe))
                             (_write-reason16139_ _exn16141_))))
                      (declare (not safe))
                      (##repl-within _cont16143_ __tmp16150 _exn16141_)))))
             (declare (not safe))
             (##continuation-capture __tmp16149)))
         ##repl)))))
