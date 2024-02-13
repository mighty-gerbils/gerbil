(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707842371)
  (define replx
    (lambda ()
      (letrec ((_write-reason117069_
                (lambda (_exn117075_)
                  (lambda (_cont117077_ _port117078_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn117075_
                       _cont117077_
                       _port117078_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn117071_)
           (let ((__tmp121647
                  (lambda (_cont117073_)
                    (let ((__tmp121648
                           (let ()
                             (declare (not safe))
                             (_write-reason117069_ _exn117071_))))
                      (declare (not safe))
                      (##repl-within _cont117073_ __tmp121648 _exn117071_)))))
             (declare (not safe))
             (##continuation-capture __tmp121647)))
         ##repl)))))
