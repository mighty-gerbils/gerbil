(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707773068)
  (define replx
    (lambda ()
      (letrec ((_write-reason115913_
                (lambda (_exn115919_)
                  (lambda (_cont115921_ _port115922_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn115919_
                       _cont115921_
                       _port115922_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn115915_)
           (let ((__tmp120491
                  (lambda (_cont115917_)
                    (let ((__tmp120492
                           (let ()
                             (declare (not safe))
                             (_write-reason115913_ _exn115915_))))
                      (declare (not safe))
                      (##repl-within _cont115917_ __tmp120492 _exn115915_)))))
             (declare (not safe))
             (##continuation-capture __tmp120491)))
         ##repl)))))
