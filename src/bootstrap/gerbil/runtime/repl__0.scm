(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708247273)
  (define replx
    (lambda ()
      (letrec ((_write-reason118841_
                (lambda (_exn118847_)
                  (lambda (_cont118849_ _port118850_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn118847_
                       _cont118849_
                       _port118850_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn118843_)
           (let ((__tmp122918
                  (lambda (_cont118845_)
                    (let ((__tmp122919
                           (let ()
                             (declare (not safe))
                             (_write-reason118841_ _exn118843_))))
                      (declare (not safe))
                      (##repl-within _cont118845_ __tmp122919 _exn118843_)))))
             (declare (not safe))
             (##continuation-capture __tmp122918)))
         ##repl)))))
