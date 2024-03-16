(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710617601)
  (define replx
    (lambda ()
      (letrec ((_write-reason76786_
                (lambda (_exn76792_)
                  (lambda (_cont76794_ _port76795_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn76792_
                       _cont76794_
                       _port76795_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn76788_)
           (let ((__tmp76796
                  (lambda (_cont76790_)
                    (let ((__tmp76797
                           (let ()
                             (declare (not safe))
                             (_write-reason76786_ _exn76788_))))
                      (declare (not safe))
                      (##repl-within _cont76790_ __tmp76797 _exn76788_)))))
             (declare (not safe))
             (##continuation-capture __tmp76796)))
         ##repl)))))
