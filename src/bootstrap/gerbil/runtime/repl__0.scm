(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709375797)
  (define replx
    (lambda ()
      (letrec ((_write-reason78373_
                (lambda (_exn78379_)
                  (lambda (_cont78381_ _port78382_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78379_
                       _cont78381_
                       _port78382_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn78375_)
           (let ((__tmp78383
                  (lambda (_cont78377_)
                    (let ((__tmp78384
                           (let ()
                             (declare (not safe))
                             (_write-reason78373_ _exn78375_))))
                      (declare (not safe))
                      (##repl-within _cont78377_ __tmp78384 _exn78375_)))))
             (declare (not safe))
             (##continuation-capture __tmp78383)))
         ##repl)))))
