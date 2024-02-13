(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707840754)
  (define replx
    (lambda ()
      (letrec ((_write-reason117175_
                (lambda (_exn117181_)
                  (lambda (_cont117183_ _port117184_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn117181_
                       _cont117183_
                       _port117184_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn117177_)
           (let ((__tmp121753
                  (lambda (_cont117179_)
                    (let ((__tmp121754
                           (let ()
                             (declare (not safe))
                             (_write-reason117175_ _exn117177_))))
                      (declare (not safe))
                      (##repl-within _cont117179_ __tmp121754 _exn117177_)))))
             (declare (not safe))
             (##continuation-capture __tmp121753)))
         ##repl)))))
