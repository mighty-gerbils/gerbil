(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708334574)
  (define replx
    (lambda ()
      (letrec ((_write-reason127617_
                (lambda (_exn127623_)
                  (lambda (_cont127625_ _port127626_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn127623_
                       _cont127625_
                       _port127626_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn127619_)
           (let ((__tmp131694
                  (lambda (_cont127621_)
                    (let ((__tmp131695
                           (let ()
                             (declare (not safe))
                             (_write-reason127617_ _exn127619_))))
                      (declare (not safe))
                      (##repl-within _cont127621_ __tmp131695 _exn127619_)))))
             (declare (not safe))
             (##continuation-capture __tmp131694)))
         ##repl)))))
