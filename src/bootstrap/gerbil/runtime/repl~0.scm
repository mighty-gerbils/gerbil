(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1710776831)
  (define replx
    (lambda ()
      (letrec ((_write-reason79810_
                (lambda (_exn79816_)
                  (lambda (_cont79818_ _port79819_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn79816_
                       _cont79818_
                       _port79819_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn79812_)
           (let ((__tmp79820
                  (lambda (_cont79814_)
                    (let ((__tmp79821
                           (let ()
                             (declare (not safe))
                             (_write-reason79810_ _exn79812_))))
                      (declare (not safe))
                      (##repl-within _cont79814_ __tmp79821 _exn79812_)))))
             (declare (not safe))
             (##continuation-capture __tmp79820)))
         ##repl)))))
