(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771022575)
  (define replx
    (lambda ()
      (letrec ((_%write-reason168312%_
                (lambda (_%exn168350%_)
                  (lambda (_%cont168352%_ _%port168353%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn168350%_
                       _%cont168352%_
                       _%port168353%_))
                    '#f))))
        (let* ((_%handler168318%_
                (lambda (_%exn168314%_)
                  (let ((__tmp168354
                         (lambda (_%cont168316%_)
                           (let ((__tmp168355
                                  (_%write-reason168312%_ _%exn168314%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont168316%_
                              __tmp168355
                              _%exn168314%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp168354))))
               (_%thunk168321%_ ##repl)
               (_%handler168326%_ _%handler168318%_))
          (if (procedure? _%thunk168321%_)
              (let ((_%thunk168340%_ _%thunk168321%_))
                (declare (not safe))
                (__with-exception-handler _%handler168326%_ _%thunk168340%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk168321%_)
                '#!void)))))))
