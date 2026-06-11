(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1781138353)
  (define replx
    (lambda ()
      (letrec ((_%write-reason171134%_
                (lambda (_%exn171172%_)
                  (lambda (_%cont171174%_ _%port171175%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn171172%_
                       _%cont171174%_
                       _%port171175%_))
                    '#f))))
        (let* ((_%handler171140%_
                (lambda (_%exn171136%_)
                  (let ((__tmp171176
                         (lambda (_%cont171138%_)
                           (let ((__tmp171177
                                  (_%write-reason171134%_ _%exn171136%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont171138%_
                              __tmp171177
                              _%exn171136%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp171176))))
               (_%thunk171143%_ ##repl)
               (_%handler171148%_ _%handler171140%_))
          (if (procedure? _%thunk171143%_)
              (let ((_%thunk171162%_ _%thunk171143%_))
                (declare (not safe))
                (__with-exception-handler _%handler171148%_ _%thunk171162%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk171143%_)
                '#!void)))))))
