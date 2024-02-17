(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708165429)
  (define replx
    (lambda ()
      (letrec ((_write-reason123324_
                (lambda (_exn123330_)
                  (lambda (_cont123332_ _port123333_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn123330_
                       _cont123332_
                       _port123333_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn123326_)
           (let ((__tmp127902
                  (lambda (_cont123328_)
                    (let ((__tmp127903
                           (let ()
                             (declare (not safe))
                             (_write-reason123324_ _exn123326_))))
                      (declare (not safe))
                      (##repl-within _cont123328_ __tmp127903 _exn123326_)))))
             (declare (not safe))
             (##continuation-capture __tmp127902)))
         ##repl)))))
