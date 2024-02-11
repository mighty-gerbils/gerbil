(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707651232)
  (define replx
    (lambda ()
      (letrec ((_write-reason114532_
                (lambda (_exn114538_)
                  (lambda (_cont114540_ _port114541_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn114538_
                       _cont114540_
                       _port114541_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn114534_)
           (let ((__tmp119010
                  (lambda (_cont114536_)
                    (let ((__tmp119011
                           (let ()
                             (declare (not safe))
                             (_write-reason114532_ _exn114534_))))
                      (declare (not safe))
                      (##repl-within _cont114536_ __tmp119011 _exn114534_)))))
             (declare (not safe))
             (##continuation-capture __tmp119010)))
         ##repl)))))
