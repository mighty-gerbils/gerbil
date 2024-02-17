(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708202846)
  (define replx
    (lambda ()
      (letrec ((_write-reason113168_
                (lambda (_exn113174_)
                  (lambda (_cont113176_ _port113177_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn113174_
                       _cont113176_
                       _port113177_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn113170_)
           (let ((__tmp117245
                  (lambda (_cont113172_)
                    (let ((__tmp117246
                           (let ()
                             (declare (not safe))
                             (_write-reason113168_ _exn113170_))))
                      (declare (not safe))
                      (##repl-within _cont113172_ __tmp117246 _exn113170_)))))
             (declare (not safe))
             (##continuation-capture __tmp117245)))
         ##repl)))))
