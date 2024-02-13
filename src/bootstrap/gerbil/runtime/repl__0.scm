(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707844655)
  (define replx
    (lambda ()
      (letrec ((_write-reason117073_
                (lambda (_exn117079_)
                  (lambda (_cont117081_ _port117082_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn117079_
                       _cont117081_
                       _port117082_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn117075_)
           (let ((__tmp121651
                  (lambda (_cont117077_)
                    (let ((__tmp121652
                           (let ()
                             (declare (not safe))
                             (_write-reason117073_ _exn117075_))))
                      (declare (not safe))
                      (##repl-within _cont117077_ __tmp121652 _exn117075_)))))
             (declare (not safe))
             (##continuation-capture __tmp121651)))
         ##repl)))))
