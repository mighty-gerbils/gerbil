(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1779274770)
  (define replx
    (lambda ()
      (letrec ((_%write-reason170260%_
                (lambda (_%exn170298%_)
                  (lambda (_%cont170300%_ _%port170301%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn170298%_
                       _%cont170300%_
                       _%port170301%_))
                    '#f))))
        (let* ((_%handler170266%_
                (lambda (_%exn170262%_)
                  (let ((__tmp170302
                         (lambda (_%cont170264%_)
                           (let ((__tmp170303
                                  (_%write-reason170260%_ _%exn170262%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont170264%_
                              __tmp170303
                              _%exn170262%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp170302))))
               (_%thunk170269%_ ##repl)
               (_%handler170274%_ _%handler170266%_))
          (if (procedure? _%thunk170269%_)
              (let ((_%thunk170288%_ _%thunk170269%_))
                (declare (not safe))
                (__with-exception-handler _%handler170274%_ _%thunk170288%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk170269%_)
                '#!void)))))))
