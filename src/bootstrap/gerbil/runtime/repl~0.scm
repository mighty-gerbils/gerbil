(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771093448)
  (define replx
    (lambda ()
      (letrec ((_%write-reason168906%_
                (lambda (_%exn168944%_)
                  (lambda (_%cont168946%_ _%port168947%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn168944%_
                       _%cont168946%_
                       _%port168947%_))
                    '#f))))
        (let* ((_%handler168912%_
                (lambda (_%exn168908%_)
                  (let ((__tmp168948
                         (lambda (_%cont168910%_)
                           (let ((__tmp168949
                                  (_%write-reason168906%_ _%exn168908%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont168910%_
                              __tmp168949
                              _%exn168908%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp168948))))
               (_%thunk168915%_ ##repl)
               (_%handler168920%_ _%handler168912%_))
          (if (procedure? _%thunk168915%_)
              (let ((_%thunk168934%_ _%thunk168915%_))
                (declare (not safe))
                (__with-exception-handler _%handler168920%_ _%thunk168934%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk168915%_)
                '#!void)))))))
