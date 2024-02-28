(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1709125254)
  (define replx
    (lambda ()
      (letrec ((_write-reason78366_
                (lambda (_exn78372_)
                  (lambda (_cont78374_ _port78375_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _exn78372_
                       _cont78374_
                       _port78375_))
                    '#f))))
        (with-exception-handler
         (lambda (_exn78368_)
           (let ((__tmp78376
                  (lambda (_cont78370_)
                    (let ((__tmp78377
                           (let ()
                             (declare (not safe))
                             (_write-reason78366_ _exn78368_))))
                      (declare (not safe))
                      (##repl-within _cont78370_ __tmp78377 _exn78368_)))))
             (declare (not safe))
             (##continuation-capture __tmp78376)))
         ##repl)))))
