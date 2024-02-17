(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708210940)
  (define replx
    (lambda ()
      (letrec ((_write-reason113171_
                (lambda (_exn113177_)
                  (lambda (_cont113179_ _port113180_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn113177_
                       _cont113179_
                       _port113180_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn113173_)
           (let ((__tmp117248
                  (lambda (_cont113175_)
                    (let ((__tmp117249
                           (let ()
                             (declare (not safe))
                             (_write-reason113171_ _exn113173_))))
                      (declare (not safe))
                      (##repl-within _cont113175_ __tmp117249 _exn113173_)))))
             (declare (not safe))
             (##continuation-capture __tmp117248)))
         ##repl)))))
