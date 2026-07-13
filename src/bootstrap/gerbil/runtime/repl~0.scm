(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1783939348)
  (define replx
    (lambda ()
      (letrec ((_%write-reason175408%_
                (lambda (_%exn175446%_)
                  (lambda (_%cont175448%_ _%port175449%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn175446%_
                       _%cont175448%_
                       _%port175449%_))
                    '#f))))
        (let* ((_%handler175414%_
                (lambda (_%exn175410%_)
                  (let ((__tmp175450
                         (lambda (_%cont175412%_)
                           (let ((__tmp175451
                                  (_%write-reason175408%_ _%exn175410%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont175412%_
                              __tmp175451
                              _%exn175410%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp175450))))
               (_%thunk175417%_ ##repl)
               (_%handler175422%_ _%handler175414%_))
          (if (procedure? _%thunk175417%_)
              (let ((_%thunk175436%_ _%thunk175417%_))
                (declare (not safe))
                (__with-exception-handler _%handler175422%_ _%thunk175436%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk175417%_)
                '#!void)))))))
