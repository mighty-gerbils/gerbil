(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1712757954)
  (define replx
    (lambda ()
      (letrec ((_%write-reason111676%_
                (lambda (_%exn111682%_)
                  (lambda (_%cont111684%_ _%port111685%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn111682%_
                       _%cont111684%_
                       _%port111685%_))
                    '#f))))
        (let ((__tmp111686
               (lambda (_%exn111678%_)
                 (let ((__tmp111687
                        (lambda (_%cont111680%_)
                          (let ((__tmp111688
                                 (_%write-reason111676%_ _%exn111678%_)))
                            (declare (not safe))
                            (##repl-within
                             _%cont111680%_
                             __tmp111688
                             _%exn111678%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp111687)))))
          (declare (not safe))
          (with-exception-handler __tmp111686 ##repl))))))
