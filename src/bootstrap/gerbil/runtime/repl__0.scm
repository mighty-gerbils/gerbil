(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709159707)
  (define replx
    (lambda ()
      (letrec ((_write-reason78378_
                (lambda (_exn78384_)
                  (lambda (_cont78386_ _port78387_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78384_
                       _cont78386_
                       _port78387_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn78380_)
           (let ((__tmp78388
                  (lambda (_cont78382_)
                    (let ((__tmp78389
                           (let ()
                             (declare (not safe))
                             (_write-reason78378_ _exn78380_))))
                      (declare (not safe))
                      (##repl-within _cont78382_ __tmp78389 _exn78380_)))))
             (declare (not safe))
             (##continuation-capture __tmp78388)))
         ##repl)))))
