(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771036674)
  (define replx
    (lambda ()
      (letrec ((_%write-reason351724%_
                (lambda (_%exn351762%_)
                  (lambda (_%cont351764%_ _%port351765%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn351762%_
                       _%cont351764%_
                       _%port351765%_))
                    '#f))))
        (let* ((_%handler351730%_
                (lambda (_%exn351726%_)
                  (let ((__tmp351766
                         (lambda (_%cont351728%_)
                           (let ((__tmp351767
                                  (_%write-reason351724%_ _%exn351726%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont351728%_
                              __tmp351767
                              _%exn351726%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp351766))))
               (_%thunk351733%_ ##repl)
               (_%handler351738%_ _%handler351730%_))
          (if (procedure? _%thunk351733%_)
              (let ((_%thunk351752%_ _%thunk351733%_))
                (declare (not safe))
                (__with-exception-handler _%handler351738%_ _%thunk351752%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk351733%_)
                '#!void)))))))
