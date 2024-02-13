(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707830011)
  (define replx
    (lambda ()
      (letrec ((_write-reason116422_
                (lambda (_exn116428_)
                  (lambda (_cont116430_ _port116431_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn116428_
                       _cont116430_
                       _port116431_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn116424_)
           (let ((__tmp121000
                  (lambda (_cont116426_)
                    (let ((__tmp121001
                           (let ()
                             (declare (not safe))
                             (_write-reason116422_ _exn116424_))))
                      (declare (not safe))
                      (##repl-within _cont116426_ __tmp121001 _exn116424_)))))
             (declare (not safe))
             (##continuation-capture __tmp121000)))
         ##repl)))))
