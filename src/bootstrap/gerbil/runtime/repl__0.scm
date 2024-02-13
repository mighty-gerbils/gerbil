(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707847727)
  (define replx
    (lambda ()
      (letrec ((_write-reason117074_
                (lambda (_exn117080_)
                  (lambda (_cont117082_ _port117083_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn117080_
                       _cont117082_
                       _port117083_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn117076_)
           (let ((__tmp121652
                  (lambda (_cont117078_)
                    (let ((__tmp121653
                           (let ()
                             (declare (not safe))
                             (_write-reason117074_ _exn117076_))))
                      (declare (not safe))
                      (##repl-within _cont117078_ __tmp121653 _exn117076_)))))
             (declare (not safe))
             (##continuation-capture __tmp121652)))
         ##repl)))))
