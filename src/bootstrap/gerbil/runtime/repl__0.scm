(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707734702)
  (define replx
    (lambda ()
      (letrec ((_write-reason115689_
                (lambda (_exn115695_)
                  (lambda (_cont115697_ _port115698_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn115695_
                       _cont115697_
                       _port115698_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn115691_)
           (let ((__tmp120267
                  (lambda (_cont115693_)
                    (let ((__tmp120268
                           (let ()
                             (declare (not safe))
                             (_write-reason115689_ _exn115691_))))
                      (declare (not safe))
                      (##repl-within _cont115693_ __tmp120268 _exn115691_)))))
             (declare (not safe))
             (##continuation-capture __tmp120267)))
         ##repl)))))
