(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709128371)
  (define replx
    (lambda ()
      (letrec ((_write-reason78376_
                (lambda (_exn78382_)
                  (lambda (_cont78384_ _port78385_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78382_
                       _cont78384_
                       _port78385_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn78378_)
           (let ((__tmp78386
                  (lambda (_cont78380_)
                    (let ((__tmp78387
                           (let ()
                             (declare (not safe))
                             (_write-reason78376_ _exn78378_))))
                      (declare (not safe))
                      (##repl-within _cont78380_ __tmp78387 _exn78378_)))))
             (declare (not safe))
             (##continuation-capture __tmp78386)))
         ##repl)))))
