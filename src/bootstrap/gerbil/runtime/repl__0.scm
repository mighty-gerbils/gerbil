(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1707416389)
  (define replx
    (lambda ()
      (letrec ((_write-reason111506_
                (lambda (_exn111512_)
                  (lambda (_cont111514_ _port111515_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn111512_
                       _cont111514_
                       _port111515_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn111508_)
           (let ((__tmp115710
                  (lambda (_cont111510_)
                    (let ((__tmp115711
                           (let ()
                             (declare (not safe))
                             (_write-reason111506_ _exn111508_))))
                      (declare (not safe))
                      (##repl-within _cont111510_ __tmp115711 _exn111508_)))))
             (declare (not safe))
             (##continuation-capture __tmp115710)))
         ##repl)))))
