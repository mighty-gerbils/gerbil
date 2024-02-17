(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708194420)
  (define replx
    (lambda ()
      (letrec ((_write-reason112996_
                (lambda (_exn113002_)
                  (lambda (_cont113004_ _port113005_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn113002_
                       _cont113004_
                       _port113005_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn112998_)
           (let ((__tmp117073
                  (lambda (_cont113000_)
                    (let ((__tmp117074
                           (let ()
                             (declare (not safe))
                             (_write-reason112996_ _exn112998_))))
                      (declare (not safe))
                      (##repl-within _cont113000_ __tmp117074 _exn112998_)))))
             (declare (not safe))
             (##continuation-capture __tmp117073)))
         ##repl)))))
