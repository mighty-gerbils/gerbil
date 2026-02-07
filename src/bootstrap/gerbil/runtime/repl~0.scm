(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1770505716)
  (define replx
    (lambda ()
      (letrec ((_%write-reason165854%_
                (lambda (_%exn165892%_)
                  (lambda (_%cont165894%_ _%port165895%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn165892%_
                       _%cont165894%_
                       _%port165895%_))
                    '#f))))
        (let* ((_%handler165860%_
                (lambda (_%exn165856%_)
                  (let ((__tmp165896
                         (lambda (_%cont165858%_)
                           (let ((__tmp165897
                                  (_%write-reason165854%_ _%exn165856%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont165858%_
                              __tmp165897
                              _%exn165856%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp165896))))
               (_%thunk165863%_ ##repl)
               (_%handler165868%_ _%handler165860%_))
          (if (procedure? _%thunk165863%_)
              (let ((_%thunk165882%_ _%thunk165863%_))
                (declare (not safe))
                (__with-exception-handler _%handler165868%_ _%thunk165882%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165863%_)
                '#!void)))))))
