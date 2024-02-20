(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708418154)
  (define replx
    (lambda ()
      (letrec ((_write-reason77388_
                (lambda (_exn77394_)
                  (lambda (_cont77396_ _port77397_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77394_
                       _cont77396_
                       _port77397_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn77390_)
           (let ((__tmp77398
                  (lambda (_cont77392_)
                    (let ((__tmp77399
                           (let ()
                             (declare (not safe))
                             (_write-reason77388_ _exn77390_))))
                      (declare (not safe))
                      (##repl-within _cont77392_ __tmp77399 _exn77390_)))))
             (declare (not safe))
             (##continuation-capture __tmp77398)))
         ##repl)))))
