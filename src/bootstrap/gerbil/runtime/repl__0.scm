(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709213449)
  (define replx
    (lambda ()
      (letrec ((_write-reason78386_
                (lambda (_exn78392_)
                  (lambda (_cont78394_ _port78395_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78392_
                       _cont78394_
                       _port78395_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn78388_)
           (let ((__tmp78396
                  (lambda (_cont78390_)
                    (let ((__tmp78397
                           (let ()
                             (declare (not safe))
                             (_write-reason78386_ _exn78388_))))
                      (declare (not safe))
                      (##repl-within _cont78390_ __tmp78397 _exn78388_)))))
             (declare (not safe))
             (##continuation-capture __tmp78396)))
         ##repl)))))
