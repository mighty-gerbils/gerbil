(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707742539)
  (define replx
    (lambda ()
      (letrec ((_write-reason115688_
                (lambda (_exn115694_)
                  (lambda (_cont115696_ _port115697_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn115694_
                       _cont115696_
                       _port115697_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn115690_)
           (let ((__tmp120266
                  (lambda (_cont115692_)
                    (let ((__tmp120267
                           (let ()
                             (declare (not safe))
                             (_write-reason115688_ _exn115690_))))
                      (declare (not safe))
                      (##repl-within _cont115692_ __tmp120267 _exn115690_)))))
             (declare (not safe))
             (##continuation-capture __tmp120266)))
         ##repl)))))
