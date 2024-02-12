(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707740666)
  (define replx
    (lambda ()
      (letrec ((_write-reason115690_
                (lambda (_exn115696_)
                  (lambda (_cont115698_ _port115699_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn115696_
                       _cont115698_
                       _port115699_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn115692_)
           (let ((__tmp120268
                  (lambda (_cont115694_)
                    (let ((__tmp120269
                           (let ()
                             (declare (not safe))
                             (_write-reason115690_ _exn115692_))))
                      (declare (not safe))
                      (##repl-within _cont115694_ __tmp120269 _exn115692_)))))
             (declare (not safe))
             (##continuation-capture __tmp120268)))
         ##repl)))))
