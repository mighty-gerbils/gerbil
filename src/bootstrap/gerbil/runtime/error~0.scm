(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712121897)
  (begin
    (define Exception::t
      (let ((__tmp100053 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100053
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100043%_
        (apply make-instance Exception::t _%$args100043%_)))
    (define StackTrace::t
      (let ((__tmp100054 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100054
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100040%_
        (apply make-instance StackTrace::t _%$args100040%_)))
    (define StackTrace-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor StackTrace::t 'continuation)))
    (define StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator StackTrace::t 'continuation)))
    (define &StackTrace-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor StackTrace::t 'continuation)))
    (define &StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator StackTrace::t 'continuation)))
    (define Error::t
      (let ((__tmp100055 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100055
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100037%_ (apply make-instance Error::t _%$args100037%_)))
    (define Error-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'message)))
    (define Error-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'irritants)))
    (define Error-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'where)))
    (define Error-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'continuation)))
    (define Error-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'message)))
    (define Error-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'irritants)))
    (define Error-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'where)))
    (define Error-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'continuation)))
    (define &Error-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'message)))
    (define &Error-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'irritants)))
    (define &Error-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'where)))
    (define &Error-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'continuation)))
    (define &Error-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'message)))
    (define &Error-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'irritants)))
    (define &Error-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'where)))
    (define &Error-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'continuation)))
    (define ContractViolation::t
      (let ((__tmp100056 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100056
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100034%_
        (apply make-instance ContractViolation::t _%$args100034%_)))
    (define ContractViolation-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'message)))
    (define ContractViolation-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'irritants)))
    (define ContractViolation-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'where)))
    (define ContractViolation-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'continuation)))
    (define ContractViolation-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'message)))
    (define ContractViolation-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'irritants)))
    (define ContractViolation-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'where)))
    (define ContractViolation-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'continuation)))
    (define &ContractViolation-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor ContractViolation::t 'message)))
    (define &ContractViolation-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         ContractViolation::t
         'irritants)))
    (define &ContractViolation-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor ContractViolation::t 'where)))
    (define &ContractViolation-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         ContractViolation::t
         'continuation)))
    (define &ContractViolation-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator ContractViolation::t 'message)))
    (define &ContractViolation-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator ContractViolation::t 'irritants)))
    (define &ContractViolation-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator ContractViolation::t 'where)))
    (define &ContractViolation-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         ContractViolation::t
         'continuation)))
    (define RuntimeException::t
      (let ((__tmp100057 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100057
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100031%_
        (apply make-instance RuntimeException::t _%$args100031%_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor RuntimeException::t 'continuation)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator RuntimeException::t 'exception)))
    (define RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator RuntimeException::t 'continuation)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         RuntimeException::t
         'continuation)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         RuntimeException::t
         'continuation)))
    (define gerbil-exception-handler-hook
      (lambda (_%exn100026%_ _%continue100027%_)
        (let ((_%exn100029%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100026%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100029%_ _%continue100027%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100022%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100022%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100022%_ 'continuation))
                '#!void
                (let ((__tmp100058
                       (lambda (_%cont100024%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100022%_
                            'continuation
                            _%cont100024%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100058)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100022%_))))
    (define error
      (lambda (_%message100019%_ . _%irritants100020%_)
        (let ((__tmp100059
               (let ((__obj100050
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100050
                  _%message100019%_
                  'irritants:
                  _%irritants100020%_)
                 __obj100050)))
          (declare (not safe))
          (raise __tmp100059))))
    (define __raise-contract-violation-error__%
      (lambda (_%_99990%_
               _%ctx9998599992%_
               _%contract-expr9998699994%_
               _%value9998799996%_
               _%message99998%_)
        (let* ((_%ctx100000%_
                (if (eq? _%ctx9998599992%_ absent-value)
                    '#f
                    _%ctx9998599992%_))
               (_%contract-expr100002%_
                (if (eq? _%contract-expr9998699994%_ absent-value)
                    '#f
                    _%contract-expr9998699994%_))
               (_%value100004%_
                (if (eq? _%value9998799996%_ absent-value)
                    '#f
                    _%value9998799996%_))
               (__tmp100060
                (let ((__obj100051
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100051
                   _%message99998%_
                   'where:
                   _%ctx100000%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100002%_
                               (cons 'value: (cons _%value100004%_ '())))))
                  __obj100051)))
          (declare (not safe))
          (raise __tmp100060))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100009%_ . _%args100010%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100009%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100009%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100009%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100009%_
                  'value:
                  absent-value))
               _%args100010%_)))
    (define __raise-contract-violation-error
      (lambda _%args99988100016%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args99988100016%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler99959%_ _%thunk99960%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99959%_))
              (let ()
                (let ((_%handler99964%_ _%handler99959%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99960%_))
                      (let ()
                        (let ((_%thunk99974%_ _%thunk99960%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-handler
                               _%handler99964%_
                               _%thunk99974%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99960%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler99959%_)))))
    (define __with-exception-handler
      (lambda (_%handler99934%_ _%thunk99935%_)
        (let ()
          (let ((_%handler99938%_ _%handler99934%_))
            (let ((_%thunk99946%_ _%thunk99935%_))
              (let ()
                (let ((__tmp100061
                       (lambda (_%exn99955%_)
                         (let ((_%exn99957%_
                                (let ()
                                  (declare (not safe))
                                  (wrap-runtime-exception _%exn99955%_))))
                           (declare (not safe))
                           (_%handler99938%_ _%exn99957%_)))))
                  (declare (not safe))
                  (##with-exception-handler __tmp100061 _%thunk99946%_))))))))
    (define with-catch
      (lambda (_%handler99909%_ _%thunk99910%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99909%_))
              (let ()
                (let ((_%handler99914%_ _%handler99909%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99910%_))
                      (let ()
                        (let ((_%thunk99924%_ _%thunk99910%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-catch
                               _%handler99914%_
                               _%thunk99924%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99910%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler99909%_)))))
    (define __with-catch
      (lambda (_%handler99884%_ _%thunk99885%_)
        (let ()
          (let ((_%handler99888%_ _%handler99884%_))
            (let ((_%thunk99896%_ _%thunk99885%_))
              (let ()
                (let ((__tmp100062
                       (lambda (_%cont99905%_)
                         (let ((__tmp100063
                                (lambda (_%exn99907%_)
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-graft
                                     _%cont99905%_
                                     _%handler99888%_
                                     _%exn99907%_)))))
                           (declare (not safe))
                           (__with-exception-handler
                            __tmp100063
                            _%thunk99896%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100062))))))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn99871%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn99871%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn99871%_)))
            (let () _%exn99871%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn99871%_))
                (let () _%exn99871%_)
                (if (macro-exception? _%exn99871%_)
                    (let ()
                      (let ((_%rte99879%_
                             (let ((__obj100052
                                    (let ()
                                      (declare (not safe))
                                      (##structure
                                       RuntimeException::t
                                       '#f
                                       '#f))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  __obj100052
                                  _%exn99871%_
                                  '2
                                  '#f
                                  '#f))
                               __obj100052)))
                        (let ((__tmp100064
                               (lambda (_%cont99881%_)
                                 (let ((__tmp100065
                                        (let ()
                                          (declare (not safe))
                                          (##continuation-next
                                           _%cont99881%_))))
                                   (declare (not safe))
                                   (unchecked-slot-set!
                                    _%rte99879%_
                                    'continuation
                                    __tmp100065)))))
                          (declare (not safe))
                          (##continuation-capture __tmp100064))
                        _%rte99879%_))
                    (let () _%exn99871%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj99866%_)
        (let ((_%$e99868%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj99866%_))))
          (if _%$e99868%_
              _%$e99868%_
              (let () (declare (not safe)) (error-exception? _%obj99866%_))))))
    (define error-message
      (lambda (_%obj99861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99861%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99861%_ 'message)))
            (if (let () (declare (not safe)) (error-exception? _%obj99861%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj99861%_)))
                (let () '#f)))))
    (define error-irritants
      (lambda (_%obj99856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99856%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99856%_ 'irritants)))
            (if (let () (declare (not safe)) (error-exception? _%obj99856%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-parameters _%obj99856%_)))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj99854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99854%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99854%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e99835%_ _%port99836%_)
        (let ((_%$e99838%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e99835%_ 'display-exception))))
          (if _%$e99838%_
              ((lambda (_%f99841%_) (_%f99841%_ _%e99835%_ _%port99836%_))
               _%$e99838%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-display-exception _%e99835%_ _%port99836%_)))))))
    (define display-exception__0
      (lambda (_%e99847%_)
        (let ((_%port99849%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e99847%_ _%port99849%_))))
    (define display-exception
      (lambda _g100067_
        (let ((_g100066_ (let () (declare (not safe)) (##length _g100067_))))
          (cond ((let () (declare (not safe)) (##fx= _g100066_ 1))
                 (apply (lambda (_%e99847%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e99847%_)))
                        _g100067_))
                ((let () (declare (not safe)) (##fx= _g100066_ 2))
                 (apply (lambda (_%e99851%_ _%port99852%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e99851%_ _%port99852%_)))
                        _g100067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100067_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99813%_ _%message99814%_ . _%rest99815%_)
        (let ()
          (let ((_%self99818%_ _%self99813%_))
            (let ()
              (let ((_%message99832%_
                     (if (let ()
                           (declare (not safe))
                           (string? _%message99814%_))
                         _%message99814%_
                         (call-with-output-string
                          '""
                          (lambda (_%g9982799829%_)
                            (display _%message99814%_ _%g9982799829%_))))))
                (let ()
                  (declare (not safe))
                  (unchecked-slot-set!
                   _%self99818%_
                   'message
                   _%message99832%_))
                (apply class-instance-init! _%self99818%_ _%rest99815%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! Error::t ':init! Error:::init! '#f))
    (define ContractViolation:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       ContractViolation::t
       ':init!
       ContractViolation:::init!
       '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_%self99537%_ _%port99538%_)
        (let ()
          (let ((_%self99541%_ _%self99537%_))
            (let ()
              (let ((_%tmp-port99551%_ (open-output-string))
                    (_%display-error-newline99552%_
                     (> (output-port-column _%port99538%_) '0)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99551%_))
                (let ((__tmp100068
                       (lambda ()
                         (if _%display-error-newline99552%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e99555%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _%self99541%_ 'where))))
                           (if _%$e99555%_
                               (display _%$e99555%_)
                               (let () (display '"?"))))
                         (let ((__tmp100069
                                (let ((__tmp100070
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self99541%_))))
                                  (declare (not safe))
                                  (##type-name __tmp100070))))
                           (declare (not safe))
                           (display* '" [" __tmp100069 '"]: "))
                         (let ((__tmp100071
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99541%_
                                   'message))))
                           (declare (not safe))
                           (displayln __tmp100071))
                         (let ((_%irritants99559%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99541%_
                                   'irritants))))
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%irritants99559%_))
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj99561%_)
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj99561%_))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants99559%_)
                                 (newline))))
                         (if (and '#t
                                  (let ()
                                    (declare (not safe))
                                    (dump-stack-trace?)))
                             (let ((_%cont9956299564%_
                                    (let ()
                                      (declare (not safe))
                                      (unchecked-slot-ref
                                       _%self99541%_
                                       'continuation))))
                               (if _%cont9956299564%_
                                   (let ((_%cont99567%_ _%cont9956299564%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont99567%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp100068
                   current-output-port
                   _%tmp-port99551%_))
                (let ((__tmp100072 (get-output-string _%tmp-port99551%_)))
                  (declare (not safe))
                  (##write-string __tmp100072 _%port99538%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99393%_ _%port99394%_)
        (let ()
          (let ((_%self99397%_ _%self99393%_))
            (let ()
              (let ((_%tmp-port99407%_ (open-output-string)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99407%_))
                (let ((__tmp100073
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99397%_ 'exception))))
                  (declare (not safe))
                  (##default-display-exception __tmp100073 _%tmp-port99407%_))
                (if (let () (declare (not safe)) (dump-stack-trace?))
                    (let ((_%cont9940899410%_
                           (let ()
                             (declare (not safe))
                             (unchecked-slot-ref
                              _%self99397%_
                              'continuation))))
                      (if _%cont9940899410%_
                          (let ((_%cont99413%_ _%cont9940899410%_))
                            (display '"--- continuation backtrace:"
                                     _%tmp-port99407%_)
                            (newline _%tmp-port99407%_)
                            (display-continuation-backtrace
                             _%cont99413%_
                             _%tmp-port99407%_))
                          '#f))
                    '#!void)
                (let ((__tmp100074 (get-output-string _%tmp-port99407%_)))
                  (declare (not safe))
                  (##write-string __tmp100074 _%port99394%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99265%_)
        (if (macro-character-port? _%port99265%_)
            (let ((_%old-width99267%_
                   (macro-character-port-output-width _%port99265%_)))
              (macro-character-port-output-width-set!
               _%port99265%_
               (lambda (_%port99269%_) '256))
              _%old-width99267%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99262%_ _%old-width99263%_)
        (if (macro-character-port? _%port99262%_)
            (macro-character-port-output-width-set!
             _%port99262%_
             _%old-width99263%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99260%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99260%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99254%_))
            (let ((_%e99257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99254%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99257%_))
            (macro-abandoned-mutex-exception? _%exn99254%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99250%_))
            (let ((_%e99252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99250%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99252%_))
            (macro-cfun-conversion-exception? _%exn99250%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99246%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99246%_))
            (let ((_%e99248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99246%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99248%_)
                  (macro-cfun-conversion-exception-arguments _%e99248%_)
                  (let ((__tmp100075
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99248%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100075))))
            (if (macro-cfun-conversion-exception? _%exn99246%_)
                (macro-cfun-conversion-exception-arguments _%exn99246%_)
                (let ((__tmp100076
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99246%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100076))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99242%_))
            (let ((_%e99244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99242%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99244%_)
                  (macro-cfun-conversion-exception-code _%e99244%_)
                  (let ((__tmp100077
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99244%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100077))))
            (if (macro-cfun-conversion-exception? _%exn99242%_)
                (macro-cfun-conversion-exception-code _%exn99242%_)
                (let ((__tmp100078
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99242%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100078))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99238%_))
            (let ((_%e99240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99238%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99240%_)
                  (macro-cfun-conversion-exception-message _%e99240%_)
                  (let ((__tmp100079
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99240%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100079))))
            (if (macro-cfun-conversion-exception? _%exn99238%_)
                (macro-cfun-conversion-exception-message _%exn99238%_)
                (let ((__tmp100080
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99238%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100080))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99232%_))
            (let ((_%e99235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99232%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99235%_)
                  (macro-cfun-conversion-exception-procedure _%e99235%_)
                  (let ((__tmp100081
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99235%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100081))))
            (if (macro-cfun-conversion-exception? _%exn99232%_)
                (macro-cfun-conversion-exception-procedure _%exn99232%_)
                (let ((__tmp100082
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99232%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100082))))))
    (define datum-parsing-exception?
      (lambda (_%exn99228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99228%_))
            (let ((_%e99230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99228%_ 'exception))))
              (macro-datum-parsing-exception? _%e99230%_))
            (macro-datum-parsing-exception? _%exn99228%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99224%_))
            (let ((_%e99226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99224%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99226%_)
                  (macro-datum-parsing-exception-kind _%e99226%_)
                  (let ((__tmp100083
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99226%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100083))))
            (if (macro-datum-parsing-exception? _%exn99224%_)
                (macro-datum-parsing-exception-kind _%exn99224%_)
                (let ((__tmp100084
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99224%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100084))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99220%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99220%_))
            (let ((_%e99222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99220%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99222%_)
                  (macro-datum-parsing-exception-parameters _%e99222%_)
                  (let ((__tmp100085
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99222%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100085))))
            (if (macro-datum-parsing-exception? _%exn99220%_)
                (macro-datum-parsing-exception-parameters _%exn99220%_)
                (let ((__tmp100086
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99220%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100086))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99214%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99214%_))
            (let ((_%e99217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99214%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99217%_)
                  (macro-datum-parsing-exception-readenv _%e99217%_)
                  (let ((__tmp100087
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99217%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100087))))
            (if (macro-datum-parsing-exception? _%exn99214%_)
                (macro-datum-parsing-exception-readenv _%exn99214%_)
                (let ((__tmp100088
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99214%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100088))))))
    (define deadlock-exception?
      (lambda (_%exn99208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99208%_))
            (let ((_%e99211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99208%_ 'exception))))
              (macro-deadlock-exception? _%e99211%_))
            (macro-deadlock-exception? _%exn99208%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99204%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99204%_))
            (let ((_%e99206%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99204%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99206%_))
            (macro-divide-by-zero-exception? _%exn99204%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99200%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99200%_))
            (let ((_%e99202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99200%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99202%_)
                  (macro-divide-by-zero-exception-arguments _%e99202%_)
                  (let ((__tmp100089
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99202%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100089))))
            (if (macro-divide-by-zero-exception? _%exn99200%_)
                (macro-divide-by-zero-exception-arguments _%exn99200%_)
                (let ((__tmp100090
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99200%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100090))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99194%_))
            (let ((_%e99197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99194%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99197%_)
                  (macro-divide-by-zero-exception-procedure _%e99197%_)
                  (let ((__tmp100091
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99197%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100091))))
            (if (macro-divide-by-zero-exception? _%exn99194%_)
                (macro-divide-by-zero-exception-procedure _%exn99194%_)
                (let ((__tmp100092
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99194%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100092))))))
    (define error-exception?
      (lambda (_%exn99190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99190%_))
            (let ((_%e99192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99190%_ 'exception))))
              (macro-error-exception? _%e99192%_))
            (macro-error-exception? _%exn99190%_))))
    (define error-exception-message
      (lambda (_%exn99186%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99186%_))
            (let ((_%e99188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99186%_ 'exception))))
              (if (macro-error-exception? _%e99188%_)
                  (macro-error-exception-message _%e99188%_)
                  (let ((__tmp100093
                         (cons 'error-exception-message
                               (cons _%e99188%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100093))))
            (if (macro-error-exception? _%exn99186%_)
                (macro-error-exception-message _%exn99186%_)
                (let ((__tmp100094
                       (cons 'error-exception-message
                             (cons _%exn99186%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100094))))))
    (define error-exception-parameters
      (lambda (_%exn99180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99180%_))
            (let ((_%e99183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99180%_ 'exception))))
              (if (macro-error-exception? _%e99183%_)
                  (macro-error-exception-parameters _%e99183%_)
                  (let ((__tmp100095
                         (cons 'error-exception-parameters
                               (cons _%e99183%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100095))))
            (if (macro-error-exception? _%exn99180%_)
                (macro-error-exception-parameters _%exn99180%_)
                (let ((__tmp100096
                       (cons 'error-exception-parameters
                             (cons _%exn99180%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100096))))))
    (define expression-parsing-exception?
      (lambda (_%exn99176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99176%_))
            (let ((_%e99178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99176%_ 'exception))))
              (macro-expression-parsing-exception? _%e99178%_))
            (macro-expression-parsing-exception? _%exn99176%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99172%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99172%_))
            (let ((_%e99174%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99172%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99174%_)
                  (macro-expression-parsing-exception-kind _%e99174%_)
                  (let ((__tmp100097
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99174%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100097))))
            (if (macro-expression-parsing-exception? _%exn99172%_)
                (macro-expression-parsing-exception-kind _%exn99172%_)
                (let ((__tmp100098
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99172%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100098))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99168%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99168%_))
            (let ((_%e99170%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99168%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99170%_)
                  (macro-expression-parsing-exception-parameters _%e99170%_)
                  (let ((__tmp100099
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99170%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100099))))
            (if (macro-expression-parsing-exception? _%exn99168%_)
                (macro-expression-parsing-exception-parameters _%exn99168%_)
                (let ((__tmp100100
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99168%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100100))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99162%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99162%_))
            (let ((_%e99165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99162%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99165%_)
                  (macro-expression-parsing-exception-source _%e99165%_)
                  (let ((__tmp100101
                         (cons 'expression-parsing-exception-source
                               (cons _%e99165%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100101))))
            (if (macro-expression-parsing-exception? _%exn99162%_)
                (macro-expression-parsing-exception-source _%exn99162%_)
                (let ((__tmp100102
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99162%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100102))))))
    (define file-exists-exception?
      (lambda (_%exn99158%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99158%_))
            (let ((_%e99160%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99158%_ 'exception))))
              (macro-file-exists-exception? _%e99160%_))
            (macro-file-exists-exception? _%exn99158%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99154%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99154%_))
            (let ((_%e99156%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99154%_ 'exception))))
              (if (macro-file-exists-exception? _%e99156%_)
                  (macro-file-exists-exception-arguments _%e99156%_)
                  (let ((__tmp100103
                         (cons 'file-exists-exception-arguments
                               (cons _%e99156%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100103))))
            (if (macro-file-exists-exception? _%exn99154%_)
                (macro-file-exists-exception-arguments _%exn99154%_)
                (let ((__tmp100104
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99154%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100104))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99148%_))
            (let ((_%e99151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99148%_ 'exception))))
              (if (macro-file-exists-exception? _%e99151%_)
                  (macro-file-exists-exception-procedure _%e99151%_)
                  (let ((__tmp100105
                         (cons 'file-exists-exception-procedure
                               (cons _%e99151%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100105))))
            (if (macro-file-exists-exception? _%exn99148%_)
                (macro-file-exists-exception-procedure _%exn99148%_)
                (let ((__tmp100106
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99148%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100106))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99144%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99144%_))
            (let ((_%e99146%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99144%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99146%_))
            (macro-fixnum-overflow-exception? _%exn99144%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99140%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99140%_))
            (let ((_%e99142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99140%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99142%_)
                  (macro-fixnum-overflow-exception-arguments _%e99142%_)
                  (let ((__tmp100107
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99142%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100107))))
            (if (macro-fixnum-overflow-exception? _%exn99140%_)
                (macro-fixnum-overflow-exception-arguments _%exn99140%_)
                (let ((__tmp100108
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99140%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100108))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99134%_))
            (let ((_%e99137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99134%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99137%_)
                  (macro-fixnum-overflow-exception-procedure _%e99137%_)
                  (let ((__tmp100109
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99137%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100109))))
            (if (macro-fixnum-overflow-exception? _%exn99134%_)
                (macro-fixnum-overflow-exception-procedure _%exn99134%_)
                (let ((__tmp100110
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99134%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100110))))))
    (define heap-overflow-exception?
      (lambda (_%exn99128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99128%_))
            (let ((_%e99131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99128%_ 'exception))))
              (macro-heap-overflow-exception? _%e99131%_))
            (macro-heap-overflow-exception? _%exn99128%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99124%_))
            (let ((_%e99126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99124%_ 'exception))))
              (macro-inactive-thread-exception? _%e99126%_))
            (macro-inactive-thread-exception? _%exn99124%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99120%_))
            (let ((_%e99122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99120%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99122%_)
                  (macro-inactive-thread-exception-arguments _%e99122%_)
                  (let ((__tmp100111
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99122%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100111))))
            (if (macro-inactive-thread-exception? _%exn99120%_)
                (macro-inactive-thread-exception-arguments _%exn99120%_)
                (let ((__tmp100112
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99120%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100112))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99114%_))
            (let ((_%e99117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99114%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99117%_)
                  (macro-inactive-thread-exception-procedure _%e99117%_)
                  (let ((__tmp100113
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99117%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100113))))
            (if (macro-inactive-thread-exception? _%exn99114%_)
                (macro-inactive-thread-exception-procedure _%exn99114%_)
                (let ((__tmp100114
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99114%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100114))))))
    (define initialized-thread-exception?
      (lambda (_%exn99110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99110%_))
            (let ((_%e99112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99110%_ 'exception))))
              (macro-initialized-thread-exception? _%e99112%_))
            (macro-initialized-thread-exception? _%exn99110%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99106%_))
            (let ((_%e99108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99106%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99108%_)
                  (macro-initialized-thread-exception-arguments _%e99108%_)
                  (let ((__tmp100115
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99108%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100115))))
            (if (macro-initialized-thread-exception? _%exn99106%_)
                (macro-initialized-thread-exception-arguments _%exn99106%_)
                (let ((__tmp100116
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99106%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100116))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99100%_))
            (let ((_%e99103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99100%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99103%_)
                  (macro-initialized-thread-exception-procedure _%e99103%_)
                  (let ((__tmp100117
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99103%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100117))))
            (if (macro-initialized-thread-exception? _%exn99100%_)
                (macro-initialized-thread-exception-procedure _%exn99100%_)
                (let ((__tmp100118
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99100%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100118))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99096%_))
            (let ((_%e99098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99096%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99098%_))
            (macro-invalid-hash-number-exception? _%exn99096%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99092%_))
            (let ((_%e99094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99092%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99094%_)
                  (macro-invalid-hash-number-exception-arguments _%e99094%_)
                  (let ((__tmp100119
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99094%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100119))))
            (if (macro-invalid-hash-number-exception? _%exn99092%_)
                (macro-invalid-hash-number-exception-arguments _%exn99092%_)
                (let ((__tmp100120
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99092%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100120))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99086%_))
            (let ((_%e99089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99086%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99089%_)
                  (macro-invalid-hash-number-exception-procedure _%e99089%_)
                  (let ((__tmp100121
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99089%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100121))))
            (if (macro-invalid-hash-number-exception? _%exn99086%_)
                (macro-invalid-hash-number-exception-procedure _%exn99086%_)
                (let ((__tmp100122
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99086%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100122))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99082%_))
            (let ((_%e99084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99082%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99084%_))
            (macro-invalid-utf8-encoding-exception? _%exn99082%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99078%_))
            (let ((_%e99080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99078%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99080%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99080%_)
                  (let ((__tmp100123
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99080%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100123))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99078%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99078%_)
                (let ((__tmp100124
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99078%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100124))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99072%_))
            (let ((_%e99075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99072%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99075%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99075%_)
                  (let ((__tmp100125
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99075%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100125))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99072%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99072%_)
                (let ((__tmp100126
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99072%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100126))))))
    (define join-timeout-exception?
      (lambda (_%exn99068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99068%_))
            (let ((_%e99070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99068%_ 'exception))))
              (macro-join-timeout-exception? _%e99070%_))
            (macro-join-timeout-exception? _%exn99068%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99064%_))
            (let ((_%e99066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99064%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99066%_)
                  (macro-join-timeout-exception-arguments _%e99066%_)
                  (let ((__tmp100127
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99066%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100127))))
            (if (macro-join-timeout-exception? _%exn99064%_)
                (macro-join-timeout-exception-arguments _%exn99064%_)
                (let ((__tmp100128
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99064%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100128))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99058%_))
            (let ((_%e99061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99058%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99061%_)
                  (macro-join-timeout-exception-procedure _%e99061%_)
                  (let ((__tmp100129
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99061%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100129))))
            (if (macro-join-timeout-exception? _%exn99058%_)
                (macro-join-timeout-exception-procedure _%exn99058%_)
                (let ((__tmp100130
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99058%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100130))))))
    (define keyword-expected-exception?
      (lambda (_%exn99054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99054%_))
            (let ((_%e99056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99054%_ 'exception))))
              (macro-keyword-expected-exception? _%e99056%_))
            (macro-keyword-expected-exception? _%exn99054%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99050%_))
            (let ((_%e99052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99050%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99052%_)
                  (macro-keyword-expected-exception-arguments _%e99052%_)
                  (let ((__tmp100131
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99052%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100131))))
            (if (macro-keyword-expected-exception? _%exn99050%_)
                (macro-keyword-expected-exception-arguments _%exn99050%_)
                (let ((__tmp100132
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99050%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100132))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99044%_))
            (let ((_%e99047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99044%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99047%_)
                  (macro-keyword-expected-exception-procedure _%e99047%_)
                  (let ((__tmp100133
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99047%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100133))))
            (if (macro-keyword-expected-exception? _%exn99044%_)
                (macro-keyword-expected-exception-procedure _%exn99044%_)
                (let ((__tmp100134
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99044%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100134))))))
    (define length-mismatch-exception?
      (lambda (_%exn99040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99040%_))
            (let ((_%e99042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99040%_ 'exception))))
              (macro-length-mismatch-exception? _%e99042%_))
            (macro-length-mismatch-exception? _%exn99040%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99036%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99036%_))
            (let ((_%e99038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99036%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99038%_)
                  (macro-length-mismatch-exception-arg-id _%e99038%_)
                  (let ((__tmp100135
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99038%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100135))))
            (if (macro-length-mismatch-exception? _%exn99036%_)
                (macro-length-mismatch-exception-arg-id _%exn99036%_)
                (let ((__tmp100136
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99036%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100136))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99032%_))
            (let ((_%e99034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99032%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99034%_)
                  (macro-length-mismatch-exception-arguments _%e99034%_)
                  (let ((__tmp100137
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99034%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100137))))
            (if (macro-length-mismatch-exception? _%exn99032%_)
                (macro-length-mismatch-exception-arguments _%exn99032%_)
                (let ((__tmp100138
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99032%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100138))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99026%_))
            (let ((_%e99029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99026%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99029%_)
                  (macro-length-mismatch-exception-procedure _%e99029%_)
                  (let ((__tmp100139
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99029%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100139))))
            (if (macro-length-mismatch-exception? _%exn99026%_)
                (macro-length-mismatch-exception-procedure _%exn99026%_)
                (let ((__tmp100140
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99026%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100140))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99022%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99022%_))
            (let ((_%e99024%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99022%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99024%_))
            (macro-mailbox-receive-timeout-exception? _%exn99022%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99018%_))
            (let ((_%e99020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99018%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99020%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99020%_)
                  (let ((__tmp100141
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99020%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100141))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99018%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99018%_)
                (let ((__tmp100142
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99018%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100142))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99012%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99012%_))
            (let ((_%e99015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99012%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99015%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99015%_)
                  (let ((__tmp100143
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99015%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100143))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99012%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99012%_)
                (let ((__tmp100144
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99012%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100144))))))
    (define module-not-found-exception?
      (lambda (_%exn99008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99008%_))
            (let ((_%e99010%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99008%_ 'exception))))
              (macro-module-not-found-exception? _%e99010%_))
            (macro-module-not-found-exception? _%exn99008%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99004%_))
            (let ((_%e99006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99004%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99006%_)
                  (macro-module-not-found-exception-arguments _%e99006%_)
                  (let ((__tmp100145
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99006%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100145))))
            (if (macro-module-not-found-exception? _%exn99004%_)
                (macro-module-not-found-exception-arguments _%exn99004%_)
                (let ((__tmp100146
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99004%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100146))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn98998%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98998%_))
            (let ((_%e99001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98998%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99001%_)
                  (macro-module-not-found-exception-procedure _%e99001%_)
                  (let ((__tmp100147
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99001%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100147))))
            (if (macro-module-not-found-exception? _%exn98998%_)
                (macro-module-not-found-exception-procedure _%exn98998%_)
                (let ((__tmp100148
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn98998%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100148))))))
    (define multiple-c-return-exception?
      (lambda (_%exn98992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98992%_))
            (let ((_%e98995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98992%_ 'exception))))
              (macro-multiple-c-return-exception? _%e98995%_))
            (macro-multiple-c-return-exception? _%exn98992%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn98988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98988%_))
            (let ((_%e98990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98988%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e98990%_))
            (macro-no-such-file-or-directory-exception? _%exn98988%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn98984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98984%_))
            (let ((_%e98986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98984%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98986%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e98986%_)
                  (let ((__tmp100149
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e98986%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100149))))
            (if (macro-no-such-file-or-directory-exception? _%exn98984%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn98984%_)
                (let ((__tmp100150
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn98984%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100150))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn98978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98978%_))
            (let ((_%e98981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98978%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98981%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e98981%_)
                  (let ((__tmp100151
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e98981%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100151))))
            (if (macro-no-such-file-or-directory-exception? _%exn98978%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn98978%_)
                (let ((__tmp100152
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn98978%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100152))))))
    (define noncontinuable-exception?
      (lambda (_%exn98974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98974%_))
            (let ((_%e98976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98974%_ 'exception))))
              (macro-noncontinuable-exception? _%e98976%_))
            (macro-noncontinuable-exception? _%exn98974%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn98968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98968%_))
            (let ((_%e98971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98968%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e98971%_)
                  (macro-noncontinuable-exception-reason _%e98971%_)
                  (let ((__tmp100153
                         (cons 'noncontinuable-exception-reason
                               (cons _%e98971%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100153))))
            (if (macro-noncontinuable-exception? _%exn98968%_)
                (macro-noncontinuable-exception-reason _%exn98968%_)
                (let ((__tmp100154
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn98968%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100154))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn98964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98964%_))
            (let ((_%e98966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98964%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e98966%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn98964%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn98960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98960%_))
            (let ((_%e98962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98960%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98962%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e98962%_)
                  (let ((__tmp100155
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e98962%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100155))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98960%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn98960%_)
                (let ((__tmp100156
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn98960%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100156))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn98954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98954%_))
            (let ((_%e98957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98954%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98957%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e98957%_)
                  (let ((__tmp100157
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e98957%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100157))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98954%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn98954%_)
                (let ((__tmp100158
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn98954%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100158))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn98950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98950%_))
            (let ((_%e98952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98950%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e98952%_))
            (macro-nonprocedure-operator-exception? _%exn98950%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn98946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98946%_))
            (let ((_%e98948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98946%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98948%_)
                  (macro-nonprocedure-operator-exception-arguments _%e98948%_)
                  (let ((__tmp100159
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e98948%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100159))))
            (if (macro-nonprocedure-operator-exception? _%exn98946%_)
                (macro-nonprocedure-operator-exception-arguments _%exn98946%_)
                (let ((__tmp100160
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn98946%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100160))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn98942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98942%_))
            (let ((_%e98944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98942%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98944%_)
                  (macro-nonprocedure-operator-exception-code _%e98944%_)
                  (let ((__tmp100161
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e98944%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100161))))
            (if (macro-nonprocedure-operator-exception? _%exn98942%_)
                (macro-nonprocedure-operator-exception-code _%exn98942%_)
                (let ((__tmp100162
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn98942%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100162))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn98938%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98938%_))
            (let ((_%e98940%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98938%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98940%_)
                  (macro-nonprocedure-operator-exception-operator _%e98940%_)
                  (let ((__tmp100163
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e98940%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100163))))
            (if (macro-nonprocedure-operator-exception? _%exn98938%_)
                (macro-nonprocedure-operator-exception-operator _%exn98938%_)
                (let ((__tmp100164
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn98938%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100164))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn98932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98932%_))
            (let ((_%e98935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98932%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98935%_)
                  (macro-nonprocedure-operator-exception-rte _%e98935%_)
                  (let ((__tmp100165
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e98935%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100165))))
            (if (macro-nonprocedure-operator-exception? _%exn98932%_)
                (macro-nonprocedure-operator-exception-rte _%exn98932%_)
                (let ((__tmp100166
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn98932%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100166))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn98928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98928%_))
            (let ((_%e98930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98928%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e98930%_))
            (macro-not-in-compilation-context-exception? _%exn98928%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn98924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98924%_))
            (let ((_%e98926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98924%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98926%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e98926%_)
                  (let ((__tmp100167
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e98926%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100167))))
            (if (macro-not-in-compilation-context-exception? _%exn98924%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn98924%_)
                (let ((__tmp100168
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn98924%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100168))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn98918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98918%_))
            (let ((_%e98921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98918%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98921%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e98921%_)
                  (let ((__tmp100169
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e98921%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100169))))
            (if (macro-not-in-compilation-context-exception? _%exn98918%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn98918%_)
                (let ((__tmp100170
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn98918%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100170))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn98914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98914%_))
            (let ((_%e98916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98914%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e98916%_))
            (macro-number-of-arguments-limit-exception? _%exn98914%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn98910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98910%_))
            (let ((_%e98912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98910%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98912%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e98912%_)
                  (let ((__tmp100171
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e98912%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100171))))
            (if (macro-number-of-arguments-limit-exception? _%exn98910%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn98910%_)
                (let ((__tmp100172
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn98910%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100172))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn98904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98904%_))
            (let ((_%e98907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98904%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98907%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e98907%_)
                  (let ((__tmp100173
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e98907%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100173))))
            (if (macro-number-of-arguments-limit-exception? _%exn98904%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn98904%_)
                (let ((__tmp100174
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn98904%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100174))))))
    (define os-exception?
      (lambda (_%exn98900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98900%_))
            (let ((_%e98902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98900%_ 'exception))))
              (macro-os-exception? _%e98902%_))
            (macro-os-exception? _%exn98900%_))))
    (define os-exception-arguments
      (lambda (_%exn98896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98896%_))
            (let ((_%e98898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98896%_ 'exception))))
              (if (macro-os-exception? _%e98898%_)
                  (macro-os-exception-arguments _%e98898%_)
                  (let ((__tmp100175
                         (cons 'os-exception-arguments (cons _%e98898%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100175))))
            (if (macro-os-exception? _%exn98896%_)
                (macro-os-exception-arguments _%exn98896%_)
                (let ((__tmp100176
                       (cons 'os-exception-arguments (cons _%exn98896%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100176))))))
    (define os-exception-code
      (lambda (_%exn98892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98892%_))
            (let ((_%e98894%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98892%_ 'exception))))
              (if (macro-os-exception? _%e98894%_)
                  (macro-os-exception-code _%e98894%_)
                  (let ((__tmp100177
                         (cons 'os-exception-code (cons _%e98894%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100177))))
            (if (macro-os-exception? _%exn98892%_)
                (macro-os-exception-code _%exn98892%_)
                (let ((__tmp100178
                       (cons 'os-exception-code (cons _%exn98892%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100178))))))
    (define os-exception-message
      (lambda (_%exn98888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98888%_))
            (let ((_%e98890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98888%_ 'exception))))
              (if (macro-os-exception? _%e98890%_)
                  (macro-os-exception-message _%e98890%_)
                  (let ((__tmp100179
                         (cons 'os-exception-message (cons _%e98890%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100179))))
            (if (macro-os-exception? _%exn98888%_)
                (macro-os-exception-message _%exn98888%_)
                (let ((__tmp100180
                       (cons 'os-exception-message (cons _%exn98888%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100180))))))
    (define os-exception-procedure
      (lambda (_%exn98882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98882%_))
            (let ((_%e98885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98882%_ 'exception))))
              (if (macro-os-exception? _%e98885%_)
                  (macro-os-exception-procedure _%e98885%_)
                  (let ((__tmp100181
                         (cons 'os-exception-procedure (cons _%e98885%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100181))))
            (if (macro-os-exception? _%exn98882%_)
                (macro-os-exception-procedure _%exn98882%_)
                (let ((__tmp100182
                       (cons 'os-exception-procedure (cons _%exn98882%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100182))))))
    (define permission-denied-exception?
      (lambda (_%exn98878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98878%_))
            (let ((_%e98880%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98878%_ 'exception))))
              (macro-permission-denied-exception? _%e98880%_))
            (macro-permission-denied-exception? _%exn98878%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn98874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98874%_))
            (let ((_%e98876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98874%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98876%_)
                  (macro-permission-denied-exception-arguments _%e98876%_)
                  (let ((__tmp100183
                         (cons 'permission-denied-exception-arguments
                               (cons _%e98876%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100183))))
            (if (macro-permission-denied-exception? _%exn98874%_)
                (macro-permission-denied-exception-arguments _%exn98874%_)
                (let ((__tmp100184
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn98874%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100184))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn98868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98868%_))
            (let ((_%e98871%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98868%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98871%_)
                  (macro-permission-denied-exception-procedure _%e98871%_)
                  (let ((__tmp100185
                         (cons 'permission-denied-exception-procedure
                               (cons _%e98871%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100185))))
            (if (macro-permission-denied-exception? _%exn98868%_)
                (macro-permission-denied-exception-procedure _%exn98868%_)
                (let ((__tmp100186
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn98868%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100186))))))
    (define range-exception?
      (lambda (_%exn98864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98864%_))
            (let ((_%e98866%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98864%_ 'exception))))
              (macro-range-exception? _%e98866%_))
            (macro-range-exception? _%exn98864%_))))
    (define range-exception-arg-id
      (lambda (_%exn98860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98860%_))
            (let ((_%e98862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98860%_ 'exception))))
              (if (macro-range-exception? _%e98862%_)
                  (macro-range-exception-arg-id _%e98862%_)
                  (let ((__tmp100187
                         (cons 'range-exception-arg-id (cons _%e98862%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100187))))
            (if (macro-range-exception? _%exn98860%_)
                (macro-range-exception-arg-id _%exn98860%_)
                (let ((__tmp100188
                       (cons 'range-exception-arg-id (cons _%exn98860%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100188))))))
    (define range-exception-arguments
      (lambda (_%exn98856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98856%_))
            (let ((_%e98858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98856%_ 'exception))))
              (if (macro-range-exception? _%e98858%_)
                  (macro-range-exception-arguments _%e98858%_)
                  (let ((__tmp100189
                         (cons 'range-exception-arguments
                               (cons _%e98858%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100189))))
            (if (macro-range-exception? _%exn98856%_)
                (macro-range-exception-arguments _%exn98856%_)
                (let ((__tmp100190
                       (cons 'range-exception-arguments
                             (cons _%exn98856%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100190))))))
    (define range-exception-procedure
      (lambda (_%exn98850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98850%_))
            (let ((_%e98853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98850%_ 'exception))))
              (if (macro-range-exception? _%e98853%_)
                  (macro-range-exception-procedure _%e98853%_)
                  (let ((__tmp100191
                         (cons 'range-exception-procedure
                               (cons _%e98853%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100191))))
            (if (macro-range-exception? _%exn98850%_)
                (macro-range-exception-procedure _%exn98850%_)
                (let ((__tmp100192
                       (cons 'range-exception-procedure
                             (cons _%exn98850%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100192))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn98846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98846%_))
            (let ((_%e98848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98846%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e98848%_))
            (macro-rpc-remote-error-exception? _%exn98846%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn98842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98842%_))
            (let ((_%e98844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98842%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98844%_)
                  (macro-rpc-remote-error-exception-arguments _%e98844%_)
                  (let ((__tmp100193
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e98844%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100193))))
            (if (macro-rpc-remote-error-exception? _%exn98842%_)
                (macro-rpc-remote-error-exception-arguments _%exn98842%_)
                (let ((__tmp100194
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn98842%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100194))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn98838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98838%_))
            (let ((_%e98840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98838%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98840%_)
                  (macro-rpc-remote-error-exception-message _%e98840%_)
                  (let ((__tmp100195
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e98840%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100195))))
            (if (macro-rpc-remote-error-exception? _%exn98838%_)
                (macro-rpc-remote-error-exception-message _%exn98838%_)
                (let ((__tmp100196
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn98838%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100196))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn98832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98832%_))
            (let ((_%e98835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98832%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98835%_)
                  (macro-rpc-remote-error-exception-procedure _%e98835%_)
                  (let ((__tmp100197
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e98835%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100197))))
            (if (macro-rpc-remote-error-exception? _%exn98832%_)
                (macro-rpc-remote-error-exception-procedure _%exn98832%_)
                (let ((__tmp100198
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn98832%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100198))))))
    (define scheduler-exception?
      (lambda (_%exn98828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98828%_))
            (let ((_%e98830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98828%_ 'exception))))
              (macro-scheduler-exception? _%e98830%_))
            (macro-scheduler-exception? _%exn98828%_))))
    (define scheduler-exception-reason
      (lambda (_%exn98822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98822%_))
            (let ((_%e98825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98822%_ 'exception))))
              (if (macro-scheduler-exception? _%e98825%_)
                  (macro-scheduler-exception-reason _%e98825%_)
                  (let ((__tmp100199
                         (cons 'scheduler-exception-reason
                               (cons _%e98825%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100199))))
            (if (macro-scheduler-exception? _%exn98822%_)
                (macro-scheduler-exception-reason _%exn98822%_)
                (let ((__tmp100200
                       (cons 'scheduler-exception-reason
                             (cons _%exn98822%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100200))))))
    (define sfun-conversion-exception?
      (lambda (_%exn98818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98818%_))
            (let ((_%e98820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98818%_ 'exception))))
              (macro-sfun-conversion-exception? _%e98820%_))
            (macro-sfun-conversion-exception? _%exn98818%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn98814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98814%_))
            (let ((_%e98816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98814%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98816%_)
                  (macro-sfun-conversion-exception-arguments _%e98816%_)
                  (let ((__tmp100201
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e98816%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100201))))
            (if (macro-sfun-conversion-exception? _%exn98814%_)
                (macro-sfun-conversion-exception-arguments _%exn98814%_)
                (let ((__tmp100202
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn98814%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100202))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn98810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98810%_))
            (let ((_%e98812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98810%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98812%_)
                  (macro-sfun-conversion-exception-code _%e98812%_)
                  (let ((__tmp100203
                         (cons 'sfun-conversion-exception-code
                               (cons _%e98812%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100203))))
            (if (macro-sfun-conversion-exception? _%exn98810%_)
                (macro-sfun-conversion-exception-code _%exn98810%_)
                (let ((__tmp100204
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn98810%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100204))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn98806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98806%_))
            (let ((_%e98808%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98806%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98808%_)
                  (macro-sfun-conversion-exception-message _%e98808%_)
                  (let ((__tmp100205
                         (cons 'sfun-conversion-exception-message
                               (cons _%e98808%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100205))))
            (if (macro-sfun-conversion-exception? _%exn98806%_)
                (macro-sfun-conversion-exception-message _%exn98806%_)
                (let ((__tmp100206
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn98806%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100206))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn98800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98800%_))
            (let ((_%e98803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98800%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98803%_)
                  (macro-sfun-conversion-exception-procedure _%e98803%_)
                  (let ((__tmp100207
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e98803%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100207))))
            (if (macro-sfun-conversion-exception? _%exn98800%_)
                (macro-sfun-conversion-exception-procedure _%exn98800%_)
                (let ((__tmp100208
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn98800%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100208))))))
    (define stack-overflow-exception?
      (lambda (_%exn98794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98794%_))
            (let ((_%e98797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98794%_ 'exception))))
              (macro-stack-overflow-exception? _%e98797%_))
            (macro-stack-overflow-exception? _%exn98794%_))))
    (define started-thread-exception?
      (lambda (_%exn98790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98790%_))
            (let ((_%e98792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98790%_ 'exception))))
              (macro-started-thread-exception? _%e98792%_))
            (macro-started-thread-exception? _%exn98790%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn98786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98786%_))
            (let ((_%e98788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98786%_ 'exception))))
              (if (macro-started-thread-exception? _%e98788%_)
                  (macro-started-thread-exception-arguments _%e98788%_)
                  (let ((__tmp100209
                         (cons 'started-thread-exception-arguments
                               (cons _%e98788%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100209))))
            (if (macro-started-thread-exception? _%exn98786%_)
                (macro-started-thread-exception-arguments _%exn98786%_)
                (let ((__tmp100210
                       (cons 'started-thread-exception-arguments
                             (cons _%exn98786%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100210))))))
    (define started-thread-exception-procedure
      (lambda (_%exn98780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98780%_))
            (let ((_%e98783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98780%_ 'exception))))
              (if (macro-started-thread-exception? _%e98783%_)
                  (macro-started-thread-exception-procedure _%e98783%_)
                  (let ((__tmp100211
                         (cons 'started-thread-exception-procedure
                               (cons _%e98783%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100211))))
            (if (macro-started-thread-exception? _%exn98780%_)
                (macro-started-thread-exception-procedure _%exn98780%_)
                (let ((__tmp100212
                       (cons 'started-thread-exception-procedure
                             (cons _%exn98780%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100212))))))
    (define terminated-thread-exception?
      (lambda (_%exn98776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98776%_))
            (let ((_%e98778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98776%_ 'exception))))
              (macro-terminated-thread-exception? _%e98778%_))
            (macro-terminated-thread-exception? _%exn98776%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn98772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98772%_))
            (let ((_%e98774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98772%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98774%_)
                  (macro-terminated-thread-exception-arguments _%e98774%_)
                  (let ((__tmp100213
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e98774%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100213))))
            (if (macro-terminated-thread-exception? _%exn98772%_)
                (macro-terminated-thread-exception-arguments _%exn98772%_)
                (let ((__tmp100214
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn98772%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100214))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn98766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98766%_))
            (let ((_%e98769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98766%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98769%_)
                  (macro-terminated-thread-exception-procedure _%e98769%_)
                  (let ((__tmp100215
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e98769%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100215))))
            (if (macro-terminated-thread-exception? _%exn98766%_)
                (macro-terminated-thread-exception-procedure _%exn98766%_)
                (let ((__tmp100216
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn98766%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100216))))))
    (define type-exception?
      (lambda (_%exn98762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98762%_))
            (let ((_%e98764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98762%_ 'exception))))
              (macro-type-exception? _%e98764%_))
            (macro-type-exception? _%exn98762%_))))
    (define type-exception-arg-id
      (lambda (_%exn98758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98758%_))
            (let ((_%e98760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98758%_ 'exception))))
              (if (macro-type-exception? _%e98760%_)
                  (macro-type-exception-arg-id _%e98760%_)
                  (let ((__tmp100217
                         (cons 'type-exception-arg-id (cons _%e98760%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100217))))
            (if (macro-type-exception? _%exn98758%_)
                (macro-type-exception-arg-id _%exn98758%_)
                (let ((__tmp100218
                       (cons 'type-exception-arg-id (cons _%exn98758%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100218))))))
    (define type-exception-arguments
      (lambda (_%exn98754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98754%_))
            (let ((_%e98756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98754%_ 'exception))))
              (if (macro-type-exception? _%e98756%_)
                  (macro-type-exception-arguments _%e98756%_)
                  (let ((__tmp100219
                         (cons 'type-exception-arguments
                               (cons _%e98756%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100219))))
            (if (macro-type-exception? _%exn98754%_)
                (macro-type-exception-arguments _%exn98754%_)
                (let ((__tmp100220
                       (cons 'type-exception-arguments
                             (cons _%exn98754%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100220))))))
    (define type-exception-procedure
      (lambda (_%exn98750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98750%_))
            (let ((_%e98752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98750%_ 'exception))))
              (if (macro-type-exception? _%e98752%_)
                  (macro-type-exception-procedure _%e98752%_)
                  (let ((__tmp100221
                         (cons 'type-exception-procedure
                               (cons _%e98752%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100221))))
            (if (macro-type-exception? _%exn98750%_)
                (macro-type-exception-procedure _%exn98750%_)
                (let ((__tmp100222
                       (cons 'type-exception-procedure
                             (cons _%exn98750%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100222))))))
    (define type-exception-type-id
      (lambda (_%exn98744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98744%_))
            (let ((_%e98747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98744%_ 'exception))))
              (if (macro-type-exception? _%e98747%_)
                  (macro-type-exception-type-id _%e98747%_)
                  (let ((__tmp100223
                         (cons 'type-exception-type-id (cons _%e98747%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100223))))
            (if (macro-type-exception? _%exn98744%_)
                (macro-type-exception-type-id _%exn98744%_)
                (let ((__tmp100224
                       (cons 'type-exception-type-id (cons _%exn98744%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100224))))))
    (define unbound-global-exception?
      (lambda (_%exn98740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98740%_))
            (let ((_%e98742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98740%_ 'exception))))
              (macro-unbound-global-exception? _%e98742%_))
            (macro-unbound-global-exception? _%exn98740%_))))
    (define unbound-global-exception-code
      (lambda (_%exn98736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98736%_))
            (let ((_%e98738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98736%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98738%_)
                  (macro-unbound-global-exception-code _%e98738%_)
                  (let ((__tmp100225
                         (cons 'unbound-global-exception-code
                               (cons _%e98738%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100225))))
            (if (macro-unbound-global-exception? _%exn98736%_)
                (macro-unbound-global-exception-code _%exn98736%_)
                (let ((__tmp100226
                       (cons 'unbound-global-exception-code
                             (cons _%exn98736%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100226))))))
    (define unbound-global-exception-rte
      (lambda (_%exn98732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98732%_))
            (let ((_%e98734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98732%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98734%_)
                  (macro-unbound-global-exception-rte _%e98734%_)
                  (let ((__tmp100227
                         (cons 'unbound-global-exception-rte
                               (cons _%e98734%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100227))))
            (if (macro-unbound-global-exception? _%exn98732%_)
                (macro-unbound-global-exception-rte _%exn98732%_)
                (let ((__tmp100228
                       (cons 'unbound-global-exception-rte
                             (cons _%exn98732%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100228))))))
    (define unbound-global-exception-variable
      (lambda (_%exn98726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98726%_))
            (let ((_%e98729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98726%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98729%_)
                  (macro-unbound-global-exception-variable _%e98729%_)
                  (let ((__tmp100229
                         (cons 'unbound-global-exception-variable
                               (cons _%e98729%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100229))))
            (if (macro-unbound-global-exception? _%exn98726%_)
                (macro-unbound-global-exception-variable _%exn98726%_)
                (let ((__tmp100230
                       (cons 'unbound-global-exception-variable
                             (cons _%exn98726%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100230))))))
    (define unbound-key-exception?
      (lambda (_%exn98722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98722%_))
            (let ((_%e98724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98722%_ 'exception))))
              (macro-unbound-key-exception? _%e98724%_))
            (macro-unbound-key-exception? _%exn98722%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn98718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98718%_))
            (let ((_%e98720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98718%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98720%_)
                  (macro-unbound-key-exception-arguments _%e98720%_)
                  (let ((__tmp100231
                         (cons 'unbound-key-exception-arguments
                               (cons _%e98720%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100231))))
            (if (macro-unbound-key-exception? _%exn98718%_)
                (macro-unbound-key-exception-arguments _%exn98718%_)
                (let ((__tmp100232
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn98718%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100232))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn98712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98712%_))
            (let ((_%e98715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98712%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98715%_)
                  (macro-unbound-key-exception-procedure _%e98715%_)
                  (let ((__tmp100233
                         (cons 'unbound-key-exception-procedure
                               (cons _%e98715%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100233))))
            (if (macro-unbound-key-exception? _%exn98712%_)
                (macro-unbound-key-exception-procedure _%exn98712%_)
                (let ((__tmp100234
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn98712%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100234))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn98708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98708%_))
            (let ((_%e98710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98708%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e98710%_))
            (macro-unbound-os-environment-variable-exception? _%exn98708%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn98704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98704%_))
            (let ((_%e98706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98704%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98706%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e98706%_)
                  (let ((__tmp100235
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e98706%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100235))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98704%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn98704%_)
                (let ((__tmp100236
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn98704%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100236))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn98698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98698%_))
            (let ((_%e98701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98698%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98701%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e98701%_)
                  (let ((__tmp100237
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e98701%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100237))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98698%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn98698%_)
                (let ((__tmp100238
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn98698%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100238))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn98694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98694%_))
            (let ((_%e98696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98694%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e98696%_))
            (macro-unbound-serial-number-exception? _%exn98694%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn98690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98690%_))
            (let ((_%e98692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98690%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98692%_)
                  (macro-unbound-serial-number-exception-arguments _%e98692%_)
                  (let ((__tmp100239
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e98692%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100239))))
            (if (macro-unbound-serial-number-exception? _%exn98690%_)
                (macro-unbound-serial-number-exception-arguments _%exn98690%_)
                (let ((__tmp100240
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn98690%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100240))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn98684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98684%_))
            (let ((_%e98687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98684%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98687%_)
                  (macro-unbound-serial-number-exception-procedure _%e98687%_)
                  (let ((__tmp100241
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e98687%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100241))))
            (if (macro-unbound-serial-number-exception? _%exn98684%_)
                (macro-unbound-serial-number-exception-procedure _%exn98684%_)
                (let ((__tmp100242
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn98684%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100242))))))
    (define uncaught-exception?
      (lambda (_%exn98680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98680%_))
            (let ((_%e98682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98680%_ 'exception))))
              (macro-uncaught-exception? _%e98682%_))
            (macro-uncaught-exception? _%exn98680%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn98676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98676%_))
            (let ((_%e98678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98676%_ 'exception))))
              (if (macro-uncaught-exception? _%e98678%_)
                  (macro-uncaught-exception-arguments _%e98678%_)
                  (let ((__tmp100243
                         (cons 'uncaught-exception-arguments
                               (cons _%e98678%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100243))))
            (if (macro-uncaught-exception? _%exn98676%_)
                (macro-uncaught-exception-arguments _%exn98676%_)
                (let ((__tmp100244
                       (cons 'uncaught-exception-arguments
                             (cons _%exn98676%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100244))))))
    (define uncaught-exception-procedure
      (lambda (_%exn98672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98672%_))
            (let ((_%e98674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98672%_ 'exception))))
              (if (macro-uncaught-exception? _%e98674%_)
                  (macro-uncaught-exception-procedure _%e98674%_)
                  (let ((__tmp100245
                         (cons 'uncaught-exception-procedure
                               (cons _%e98674%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100245))))
            (if (macro-uncaught-exception? _%exn98672%_)
                (macro-uncaught-exception-procedure _%exn98672%_)
                (let ((__tmp100246
                       (cons 'uncaught-exception-procedure
                             (cons _%exn98672%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100246))))))
    (define uncaught-exception-reason
      (lambda (_%exn98666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98666%_))
            (let ((_%e98669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98666%_ 'exception))))
              (if (macro-uncaught-exception? _%e98669%_)
                  (macro-uncaught-exception-reason _%e98669%_)
                  (let ((__tmp100247
                         (cons 'uncaught-exception-reason
                               (cons _%e98669%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100247))))
            (if (macro-uncaught-exception? _%exn98666%_)
                (macro-uncaught-exception-reason _%exn98666%_)
                (let ((__tmp100248
                       (cons 'uncaught-exception-reason
                             (cons _%exn98666%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100248))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn98662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98662%_))
            (let ((_%e98664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98662%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e98664%_))
            (macro-uninitialized-thread-exception? _%exn98662%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn98658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98658%_))
            (let ((_%e98660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98658%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98660%_)
                  (macro-uninitialized-thread-exception-arguments _%e98660%_)
                  (let ((__tmp100249
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e98660%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100249))))
            (if (macro-uninitialized-thread-exception? _%exn98658%_)
                (macro-uninitialized-thread-exception-arguments _%exn98658%_)
                (let ((__tmp100250
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn98658%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100250))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn98652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98652%_))
            (let ((_%e98655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98652%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98655%_)
                  (macro-uninitialized-thread-exception-procedure _%e98655%_)
                  (let ((__tmp100251
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e98655%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100251))))
            (if (macro-uninitialized-thread-exception? _%exn98652%_)
                (macro-uninitialized-thread-exception-procedure _%exn98652%_)
                (let ((__tmp100252
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn98652%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100252))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn98648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98648%_))
            (let ((_%e98650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98648%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e98650%_))
            (macro-unknown-keyword-argument-exception? _%exn98648%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn98644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98644%_))
            (let ((_%e98646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98644%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98646%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e98646%_)
                  (let ((__tmp100253
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e98646%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100253))))
            (if (macro-unknown-keyword-argument-exception? _%exn98644%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn98644%_)
                (let ((__tmp100254
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn98644%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100254))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn98638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98638%_))
            (let ((_%e98641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98638%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98641%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e98641%_)
                  (let ((__tmp100255
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e98641%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100255))))
            (if (macro-unknown-keyword-argument-exception? _%exn98638%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn98638%_)
                (let ((__tmp100256
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn98638%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100256))))))
    (define unterminated-process-exception?
      (lambda (_%exn98634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98634%_))
            (let ((_%e98636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98634%_ 'exception))))
              (macro-unterminated-process-exception? _%e98636%_))
            (macro-unterminated-process-exception? _%exn98634%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn98630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98630%_))
            (let ((_%e98632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98630%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98632%_)
                  (macro-unterminated-process-exception-arguments _%e98632%_)
                  (let ((__tmp100257
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e98632%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100257))))
            (if (macro-unterminated-process-exception? _%exn98630%_)
                (macro-unterminated-process-exception-arguments _%exn98630%_)
                (let ((__tmp100258
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn98630%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100258))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn98624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98624%_))
            (let ((_%e98627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98624%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98627%_)
                  (macro-unterminated-process-exception-procedure _%e98627%_)
                  (let ((__tmp100259
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e98627%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100259))))
            (if (macro-unterminated-process-exception? _%exn98624%_)
                (macro-unterminated-process-exception-procedure _%exn98624%_)
                (let ((__tmp100260
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn98624%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100260))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn98620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98620%_))
            (let ((_%e98622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98620%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e98622%_))
            (macro-wrong-number-of-arguments-exception? _%exn98620%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn98616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98616%_))
            (let ((_%e98618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98616%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98618%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e98618%_)
                  (let ((__tmp100261
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e98618%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100261))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98616%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn98616%_)
                (let ((__tmp100262
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn98616%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100262))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn98610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98610%_))
            (let ((_%e98613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98610%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98613%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e98613%_)
                  (let ((__tmp100263
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e98613%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100263))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98610%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn98610%_)
                (let ((__tmp100264
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn98610%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100264))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn98606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98606%_))
            (let ((_%e98608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98606%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e98608%_))
            (macro-wrong-number-of-values-exception? _%exn98606%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn98602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98602%_))
            (let ((_%e98604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98602%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98604%_)
                  (macro-wrong-number-of-values-exception-code _%e98604%_)
                  (let ((__tmp100265
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e98604%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100265))))
            (if (macro-wrong-number-of-values-exception? _%exn98602%_)
                (macro-wrong-number-of-values-exception-code _%exn98602%_)
                (let ((__tmp100266
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn98602%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100266))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn98598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98598%_))
            (let ((_%e98600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98598%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98600%_)
                  (macro-wrong-number-of-values-exception-rte _%e98600%_)
                  (let ((__tmp100267
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e98600%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100267))))
            (if (macro-wrong-number-of-values-exception? _%exn98598%_)
                (macro-wrong-number-of-values-exception-rte _%exn98598%_)
                (let ((__tmp100268
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn98598%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100268))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn98592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98592%_))
            (let ((_%e98595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98592%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98595%_)
                  (macro-wrong-number-of-values-exception-vals _%e98595%_)
                  (let ((__tmp100269
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e98595%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100269))))
            (if (macro-wrong-number-of-values-exception? _%exn98592%_)
                (macro-wrong-number-of-values-exception-vals _%exn98592%_)
                (let ((__tmp100270
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn98592%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100270))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn98586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98586%_))
            (let ((_%e98589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98586%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e98589%_))
            (macro-wrong-processor-c-return-exception? _%exn98586%_))))))
