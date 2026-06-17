(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1781697561)
  (define replx
    (lambda ()
      (letrec ((_%write-reason173820%_
                (lambda (_%exn173858%_)
                  (lambda (_%cont173860%_ _%port173861%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn173858%_
                       _%cont173860%_
                       _%port173861%_))
                    '#f))))
        (let* ((_%handler173826%_
                (lambda (_%exn173822%_)
                  (let ((__tmp173862
                         (lambda (_%cont173824%_)
                           (let ((__tmp173863
                                  (_%write-reason173820%_ _%exn173822%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont173824%_
                              __tmp173863
                              _%exn173822%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp173862))))
               (_%thunk173829%_ ##repl)
               (_%handler173834%_ _%handler173826%_))
          (if (procedure? _%thunk173829%_)
              (let ((_%thunk173848%_ _%thunk173829%_))
                (declare (not safe))
                (__with-exception-handler _%handler173834%_ _%thunk173848%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk173829%_)
                '#!void)))))))
