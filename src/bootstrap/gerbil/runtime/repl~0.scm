(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771092628)
  (define replx
    (lambda ()
      (letrec ((_%write-reason168902%_
                (lambda (_%exn168940%_)
                  (lambda (_%cont168942%_ _%port168943%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn168940%_
                       _%cont168942%_
                       _%port168943%_))
                    '#f))))
        (let* ((_%handler168908%_
                (lambda (_%exn168904%_)
                  (let ((__tmp168944
                         (lambda (_%cont168906%_)
                           (let ((__tmp168945
                                  (_%write-reason168902%_ _%exn168904%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont168906%_
                              __tmp168945
                              _%exn168904%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp168944))))
               (_%thunk168911%_ ##repl)
               (_%handler168916%_ _%handler168908%_))
          (if (procedure? _%thunk168911%_)
              (let ((_%thunk168930%_ _%thunk168911%_))
                (declare (not safe))
                (__with-exception-handler _%handler168916%_ _%thunk168930%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk168911%_)
                '#!void)))))))
