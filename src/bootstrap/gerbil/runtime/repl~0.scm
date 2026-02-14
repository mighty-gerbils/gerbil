(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1771101400)
  (define replx
    (lambda ()
      (letrec ((_%write-reason169329%_
                (lambda (_%exn169367%_)
                  (lambda (_%cont169369%_ _%port169370%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn169367%_
                       _%cont169369%_
                       _%port169370%_))
                    '#f))))
        (let* ((_%handler169335%_
                (lambda (_%exn169331%_)
                  (let ((__tmp169371
                         (lambda (_%cont169333%_)
                           (let ((__tmp169372
                                  (_%write-reason169329%_ _%exn169331%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont169333%_
                              __tmp169372
                              _%exn169331%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp169371))))
               (_%thunk169338%_ ##repl)
               (_%handler169343%_ _%handler169335%_))
          (if (procedure? _%thunk169338%_)
              (let ((_%thunk169357%_ _%thunk169338%_))
                (declare (not safe))
                (__with-exception-handler _%handler169343%_ _%thunk169357%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169338%_)
                '#!void)))))))
