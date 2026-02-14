(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771104506)
  (define replx
    (lambda ()
      (letrec ((_%write-reason169433%_
                (lambda (_%exn169471%_)
                  (lambda (_%cont169473%_ _%port169474%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn169471%_
                       _%cont169473%_
                       _%port169474%_))
                    '#f))))
        (let* ((_%handler169439%_
                (lambda (_%exn169435%_)
                  (let ((__tmp169475
                         (lambda (_%cont169437%_)
                           (let ((__tmp169476
                                  (_%write-reason169433%_ _%exn169435%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont169437%_
                              __tmp169476
                              _%exn169435%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp169475))))
               (_%thunk169442%_ ##repl)
               (_%handler169447%_ _%handler169439%_))
          (if (procedure? _%thunk169442%_)
              (let ((_%thunk169461%_ _%thunk169442%_))
                (declare (not safe))
                (__with-exception-handler _%handler169447%_ _%thunk169461%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169442%_)
                '#!void)))))))
