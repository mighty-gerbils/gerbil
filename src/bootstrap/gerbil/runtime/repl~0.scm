(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1770607522)
  (define replx
    (lambda ()
      (letrec ((_%write-reason167008%_
                (lambda (_%exn167046%_)
                  (lambda (_%cont167048%_ _%port167049%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn167046%_
                       _%cont167048%_
                       _%port167049%_))
                    '#f))))
        (let* ((_%handler167014%_
                (lambda (_%exn167010%_)
                  (let ((__tmp167050
                         (lambda (_%cont167012%_)
                           (let ((__tmp167051
                                  (_%write-reason167008%_ _%exn167010%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont167012%_
                              __tmp167051
                              _%exn167010%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp167050))))
               (_%thunk167017%_ ##repl)
               (_%handler167022%_ _%handler167014%_))
          (if (procedure? _%thunk167017%_)
              (let ((_%thunk167036%_ _%thunk167017%_))
                (declare (not safe))
                (__with-exception-handler _%handler167022%_ _%thunk167036%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk167017%_)
                '#!void)))))))
