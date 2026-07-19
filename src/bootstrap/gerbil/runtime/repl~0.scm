(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1784279015)
  (define replx
    (lambda ()
      (letrec ((_%write-reason177878%_
                (lambda (_%exn177916%_)
                  (lambda (_%cont177918%_ _%port177919%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn177916%_
                       _%cont177918%_
                       _%port177919%_))
                    '#f))))
        (let* ((_%handler177884%_
                (lambda (_%exn177880%_)
                  (let ((__tmp177920
                         (lambda (_%cont177882%_)
                           (let ((__tmp177921
                                  (_%write-reason177878%_ _%exn177880%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont177882%_
                              __tmp177921
                              _%exn177880%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp177920))))
               (_%thunk177887%_ ##repl)
               (_%handler177892%_ _%handler177884%_))
          (if (procedure? _%thunk177887%_)
              (let ((_%thunk177906%_ _%thunk177887%_))
                (declare (not safe))
                (__with-exception-handler _%handler177892%_ _%thunk177906%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk177887%_)
                '#!void)))))))
