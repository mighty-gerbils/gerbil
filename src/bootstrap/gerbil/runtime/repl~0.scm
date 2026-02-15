(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771178564)
  (define replx
    (lambda ()
      (letrec ((_%write-reason169382%_
                (lambda (_%exn169420%_)
                  (lambda (_%cont169422%_ _%port169423%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn169420%_
                       _%cont169422%_
                       _%port169423%_))
                    '#f))))
        (let* ((_%handler169388%_
                (lambda (_%exn169384%_)
                  (let ((__tmp169424
                         (lambda (_%cont169386%_)
                           (let ((__tmp169425
                                  (_%write-reason169382%_ _%exn169384%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont169386%_
                              __tmp169425
                              _%exn169384%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp169424))))
               (_%thunk169391%_ ##repl)
               (_%handler169396%_ _%handler169388%_))
          (if (procedure? _%thunk169391%_)
              (let ((_%thunk169410%_ _%thunk169391%_))
                (declare (not safe))
                (__with-exception-handler _%handler169396%_ _%thunk169410%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169391%_)
                '#!void)))))))
