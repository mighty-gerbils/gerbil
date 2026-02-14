(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771037608)
  (define replx
    (lambda ()
      (letrec ((_%write-reason177909%_
                (lambda (_%exn177947%_)
                  (lambda (_%cont177949%_ _%port177950%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn177947%_
                       _%cont177949%_
                       _%port177950%_))
                    '#f))))
        (let* ((_%handler177915%_
                (lambda (_%exn177911%_)
                  (let ((__tmp177951
                         (lambda (_%cont177913%_)
                           (let ((__tmp177952
                                  (_%write-reason177909%_ _%exn177911%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont177913%_
                              __tmp177952
                              _%exn177911%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp177951))))
               (_%thunk177918%_ ##repl)
               (_%handler177923%_ _%handler177915%_))
          (if (procedure? _%thunk177918%_)
              (let ((_%thunk177937%_ _%thunk177918%_))
                (declare (not safe))
                (__with-exception-handler _%handler177923%_ _%thunk177937%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk177918%_)
                '#!void)))))))
