(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709111635)
  (define replx
    (lambda ()
      (letrec ((_write-reason77959_
                (lambda (_exn77965_)
                  (lambda (_cont77967_ _port77968_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn77965_
                       _cont77967_
                       _port77968_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn77961_)
           (let ((__tmp77969
                  (lambda (_cont77963_)
                    (let ((__tmp77970
                           (let ()
                             (declare (not safe))
                             (_write-reason77959_ _exn77961_))))
                      (declare (not safe))
                      (##repl-within _cont77963_ __tmp77970 _exn77961_)))))
             (declare (not safe))
             (##continuation-capture __tmp77969)))
         ##repl)))))
