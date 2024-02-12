(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707767843)
  (define replx
    (lambda ()
      (letrec ((_write-reason115717_
                (lambda (_exn115723_)
                  (lambda (_cont115725_ _port115726_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn115723_
                       _cont115725_
                       _port115726_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn115719_)
           (let ((__tmp120295
                  (lambda (_cont115721_)
                    (let ((__tmp120296
                           (let ()
                             (declare (not safe))
                             (_write-reason115717_ _exn115719_))))
                      (declare (not safe))
                      (##repl-within _cont115721_ __tmp120296 _exn115719_)))))
             (declare (not safe))
             (##continuation-capture __tmp120295)))
         ##repl)))))
