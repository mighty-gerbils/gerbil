(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1784471381)
  (define replx
    (lambda ()
      (letrec ((_%write-reason178011%_
                (lambda (_%exn178049%_)
                  (lambda (_%cont178051%_ _%port178052%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn178049%_
                       _%cont178051%_
                       _%port178052%_))
                    '#f))))
        (let* ((_%handler178017%_
                (lambda (_%exn178013%_)
                  (let ((__tmp178053
                         (lambda (_%cont178015%_)
                           (let ((__tmp178054
                                  (_%write-reason178011%_ _%exn178013%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont178015%_
                              __tmp178054
                              _%exn178013%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp178053))))
               (_%thunk178020%_ ##repl)
               (_%handler178025%_ _%handler178017%_))
          (if (procedure? _%thunk178020%_)
              (let ((_%thunk178039%_ _%thunk178020%_))
                (declare (not safe))
                (__with-exception-handler _%handler178025%_ _%thunk178039%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk178020%_)
                '#!void)))))))
