(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1783878476)
  (define replx
    (lambda ()
      (letrec ((_%write-reason175086%_
                (lambda (_%exn175124%_)
                  (lambda (_%cont175126%_ _%port175127%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn175124%_
                       _%cont175126%_
                       _%port175127%_))
                    '#f))))
        (let* ((_%handler175092%_
                (lambda (_%exn175088%_)
                  (let ((__tmp175128
                         (lambda (_%cont175090%_)
                           (let ((__tmp175129
                                  (_%write-reason175086%_ _%exn175088%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont175090%_
                              __tmp175129
                              _%exn175088%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp175128))))
               (_%thunk175095%_ ##repl)
               (_%handler175100%_ _%handler175092%_))
          (if (procedure? _%thunk175095%_)
              (let ((_%thunk175114%_ _%thunk175095%_))
                (declare (not safe))
                (__with-exception-handler _%handler175100%_ _%thunk175114%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk175095%_)
                '#!void)))))))
