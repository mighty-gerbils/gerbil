(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1770513296)
  (define replx
    (lambda ()
      (letrec ((_%write-reason165938%_
                (lambda (_%exn165976%_)
                  (lambda (_%cont165978%_ _%port165979%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn165976%_
                       _%cont165978%_
                       _%port165979%_))
                    '#f))))
        (let* ((_%handler165944%_
                (lambda (_%exn165940%_)
                  (let ((__tmp165980
                         (lambda (_%cont165942%_)
                           (let ((__tmp165981
                                  (_%write-reason165938%_ _%exn165940%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont165942%_
                              __tmp165981
                              _%exn165940%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp165980))))
               (_%thunk165947%_ ##repl)
               (_%handler165952%_ _%handler165944%_))
          (if (procedure? _%thunk165947%_)
              (let ((_%thunk165966%_ _%thunk165947%_))
                (declare (not safe))
                (__with-exception-handler _%handler165952%_ _%thunk165966%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165947%_)
                '#!void)))))))
