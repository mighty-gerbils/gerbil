(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708451992)
  (define replx
    (lambda ()
      (letrec ((_write-reason74955_
                (lambda (_exn74961_)
                  (lambda (_cont74963_ _port74964_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn74961_
                       _cont74963_
                       _port74964_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn74957_)
           (let ((__tmp74965
                  (lambda (_cont74959_)
                    (let ((__tmp74966
                           (let ()
                             (declare (not safe))
                             (_write-reason74955_ _exn74957_))))
                      (declare (not safe))
                      (##repl-within _cont74959_ __tmp74966 _exn74957_)))))
             (declare (not safe))
             (##continuation-capture __tmp74965)))
         ##repl)))))
