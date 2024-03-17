(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710694203)
  (define replx
    (lambda ()
      (letrec ((_write-reason76840_
                (lambda (_exn76846_)
                  (lambda (_cont76848_ _port76849_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn76846_
                       _cont76848_
                       _port76849_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn76842_)
           (let ((__tmp76850
                  (lambda (_cont76844_)
                    (let ((__tmp76851
                           (let ()
                             (declare (not safe))
                             (_write-reason76840_ _exn76842_))))
                      (declare (not safe))
                      (##repl-within _cont76844_ __tmp76851 _exn76842_)))))
             (declare (not safe))
             (##continuation-capture __tmp76850)))
         ##repl)))))
