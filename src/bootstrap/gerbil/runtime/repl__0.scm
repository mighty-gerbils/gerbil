(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708168068)
  (define replx
    (lambda ()
      (letrec ((_write-reason123765_
                (lambda (_exn123771_)
                  (lambda (_cont123773_ _port123774_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn123771_
                       _cont123773_
                       _port123774_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn123767_)
           (let ((__tmp128343
                  (lambda (_cont123769_)
                    (let ((__tmp128344
                           (let ()
                             (declare (not safe))
                             (_write-reason123765_ _exn123767_))))
                      (declare (not safe))
                      (##repl-within _cont123769_ __tmp128344 _exn123767_)))))
             (declare (not safe))
             (##continuation-capture __tmp128343)))
         ##repl)))))
