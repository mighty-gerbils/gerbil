(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1773009266)
  (define replx
    (lambda ()
      (letrec ((_%write-reason169971%_
                (lambda (_%exn170009%_)
                  (lambda (_%cont170011%_ _%port170012%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn170009%_
                       _%cont170011%_
                       _%port170012%_))
                    '#f))))
        (let* ((_%handler169977%_
                (lambda (_%exn169973%_)
                  (let ((__tmp170013
                         (lambda (_%cont169975%_)
                           (let ((__tmp170014
                                  (_%write-reason169971%_ _%exn169973%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont169975%_
                              __tmp170014
                              _%exn169973%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp170013))))
               (_%thunk169980%_ ##repl)
               (_%handler169985%_ _%handler169977%_))
          (if (procedure? _%thunk169980%_)
              (let ((_%thunk169999%_ _%thunk169980%_))
                (declare (not safe))
                (__with-exception-handler _%handler169985%_ _%thunk169999%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169980%_)
                '#!void)))))))
