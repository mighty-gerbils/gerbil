(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1770405373)
  (define replx
    (lambda ()
      (letrec ((_%write-reason165846%_
                (lambda (_%exn165884%_)
                  (lambda (_%cont165886%_ _%port165887%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn165884%_
                       _%cont165886%_
                       _%port165887%_))
                    '#f))))
        (let* ((_%handler165852%_
                (lambda (_%exn165848%_)
                  (let ((__tmp165888
                         (lambda (_%cont165850%_)
                           (let ((__tmp165889
                                  (_%write-reason165846%_ _%exn165848%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont165850%_
                              __tmp165889
                              _%exn165848%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp165888))))
               (_%thunk165855%_ ##repl)
               (_%handler165860%_ _%handler165852%_))
          (if (procedure? _%thunk165855%_)
              (let ((_%thunk165874%_ _%thunk165855%_))
                (declare (not safe))
                (__with-exception-handler _%handler165860%_ _%thunk165874%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165855%_)
                '#!void)))))))
