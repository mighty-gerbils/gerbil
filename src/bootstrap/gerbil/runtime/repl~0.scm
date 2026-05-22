(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1779435580)
  (define replx
    (lambda ()
      (letrec ((_%write-reason170707%_
                (lambda (_%exn170745%_)
                  (lambda (_%cont170747%_ _%port170748%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn170745%_
                       _%cont170747%_
                       _%port170748%_))
                    '#f))))
        (let* ((_%handler170713%_
                (lambda (_%exn170709%_)
                  (let ((__tmp170749
                         (lambda (_%cont170711%_)
                           (let ((__tmp170750
                                  (_%write-reason170707%_ _%exn170709%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont170711%_
                              __tmp170750
                              _%exn170709%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp170749))))
               (_%thunk170716%_ ##repl)
               (_%handler170721%_ _%handler170713%_))
          (if (procedure? _%thunk170716%_)
              (let ((_%thunk170735%_ _%thunk170716%_))
                (declare (not safe))
                (__with-exception-handler _%handler170721%_ _%thunk170735%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk170716%_)
                '#!void)))))))
