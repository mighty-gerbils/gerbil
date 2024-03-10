(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710064746)
  (define replx
    (lambda ()
      (letrec ((_write-reason75336_
                (lambda (_exn75342_)
                  (lambda (_cont75344_ _port75345_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn75342_
                       _cont75344_
                       _port75345_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn75338_)
           (let ((__tmp75346
                  (lambda (_cont75340_)
                    (let ((__tmp75347
                           (let ()
                             (declare (not safe))
                             (_write-reason75336_ _exn75338_))))
                      (declare (not safe))
                      (##repl-within _cont75340_ __tmp75347 _exn75338_)))))
             (declare (not safe))
             (##continuation-capture __tmp75346)))
         ##repl)))))
