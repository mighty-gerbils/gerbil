(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1773012985)
  (define replx
    (lambda ()
      (letrec ((_%write-reason169981%_
                (lambda (_%exn170019%_)
                  (lambda (_%cont170021%_ _%port170022%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn170019%_
                       _%cont170021%_
                       _%port170022%_))
                    '#f))))
        (let* ((_%handler169987%_
                (lambda (_%exn169983%_)
                  (let ((__tmp170023
                         (lambda (_%cont169985%_)
                           (let ((__tmp170024
                                  (_%write-reason169981%_ _%exn169983%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont169985%_
                              __tmp170024
                              _%exn169983%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp170023))))
               (_%thunk169990%_ ##repl)
               (_%handler169995%_ _%handler169987%_))
          (if (procedure? _%thunk169990%_)
              (let ((_%thunk170009%_ _%thunk169990%_))
                (declare (not safe))
                (__with-exception-handler _%handler169995%_ _%thunk170009%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169990%_)
                '#!void)))))))
