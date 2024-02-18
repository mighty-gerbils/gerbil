(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1708289480)
  (define replx
    (lambda ()
      (letrec ((_write-reason127463_
                (lambda (_exn127469_)
                  (lambda (_cont127471_ _port127472_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn127469_
                       _cont127471_
                       _port127472_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn127465_)
           (let ((__tmp131540
                  (lambda (_cont127467_)
                    (let ((__tmp131541
                           (let ()
                             (declare (not safe))
                             (_write-reason127463_ _exn127465_))))
                      (declare (not safe))
                      (##repl-within _cont127467_ __tmp131541 _exn127465_)))))
             (declare (not safe))
             (##continuation-capture __tmp131540)))
         ##repl)))))
