(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708337964)
  (define replx
    (lambda ()
      (letrec ((_write-reason126417_
                (lambda (_exn126423_)
                  (lambda (_cont126425_ _port126426_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn126423_
                       _cont126425_
                       _port126426_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn126419_)
           (let ((__tmp130413
                  (lambda (_cont126421_)
                    (let ((__tmp130414
                           (let ()
                             (declare (not safe))
                             (_write-reason126417_ _exn126419_))))
                      (declare (not safe))
                      (##repl-within _cont126421_ __tmp130414 _exn126419_)))))
             (declare (not safe))
             (##continuation-capture __tmp130413)))
         ##repl)))))
