(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1781119045)
  (define replx
    (lambda ()
      (letrec ((_%write-reason149114%_
                (lambda (_%exn149152%_)
                  (lambda (_%cont149154%_ _%port149155%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn149152%_
                       _%cont149154%_
                       _%port149155%_))
                    '#f))))
        (let* ((_%handler149120%_
                (lambda (_%exn149116%_)
                  (let ((__tmp149156
                         (lambda (_%cont149118%_)
                           (let ((__tmp149157
                                  (_%write-reason149114%_ _%exn149116%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont149118%_
                              __tmp149157
                              _%exn149116%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp149156))))
               (_%thunk149123%_ ##repl))
          (if (procedure? _%handler149120%_)
              (let ((_%handler149128%_ _%handler149120%_))
                (if (procedure? _%thunk149123%_)
                    (let ((_%thunk149142%_ _%thunk149123%_))
                      (__with-exception-handler
                       _%handler149128%_
                       _%thunk149142%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/repl
                       'contract:
                       'procedure?
                       'value:
                       _%thunk149123%_)
                      (void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%handler149120%_)
                (void))))))))
