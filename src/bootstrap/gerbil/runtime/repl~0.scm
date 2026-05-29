(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1779967242)
  (define replx
    (lambda ()
      (letrec ((_%write-reason171038%_
                (lambda (_%exn171076%_)
                  (lambda (_%cont171078%_ _%port171079%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn171076%_
                       _%cont171078%_
                       _%port171079%_))
                    '#f))))
        (let* ((_%handler171044%_
                (lambda (_%exn171040%_)
                  (let ((__tmp171080
                         (lambda (_%cont171042%_)
                           (let ((__tmp171081
                                  (_%write-reason171038%_ _%exn171040%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont171042%_
                              __tmp171081
                              _%exn171040%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp171080))))
               (_%thunk171047%_ ##repl)
               (_%handler171052%_ _%handler171044%_))
          (if (procedure? _%thunk171047%_)
              (let ((_%thunk171066%_ _%thunk171047%_))
                (declare (not safe))
                (__with-exception-handler _%handler171052%_ _%thunk171066%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk171047%_)
                '#!void)))))))
