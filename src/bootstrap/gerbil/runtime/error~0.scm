(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712093475)
  (begin
    (define Exception::t
      (let ((__tmp100019 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100019
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100009%_
        (apply make-instance Exception::t _%$args100009%_)))
    (define StackTrace::t
      (let ((__tmp100020 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100020
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100006%_
        (apply make-instance StackTrace::t _%$args100006%_)))
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
      (let ((__tmp100021 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100021
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100003%_ (apply make-instance Error::t _%$args100003%_)))
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
      (let ((__tmp100022 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100022
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100000%_
        (apply make-instance ContractViolation::t _%$args100000%_)))
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
      (let ((__tmp100023 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100023
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args99997%_
        (apply make-instance RuntimeException::t _%$args99997%_)))
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
      (lambda (_%exn99992%_ _%continue99993%_)
        (let ((_%exn99995%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn99992%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn99995%_ _%continue99993%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn99988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn99988%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn99988%_ 'continuation))
                '#!void
                (let ((__tmp100024
                       (lambda (_%cont99990%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn99988%_
                            'continuation
                            _%cont99990%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100024)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn99988%_))))
    (define error
      (lambda (_%message99985%_ . _%irritants99986%_)
        (let ((__tmp100025
               (let ((__obj100016
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100016
                  _%message99985%_
                  'irritants:
                  _%irritants99986%_)
                 __obj100016)))
          (declare (not safe))
          (raise __tmp100025))))
    (define __raise-contract-violation-error__%
      (lambda (_%_99956%_
               _%ctx9995199958%_
               _%contract-expr9995299960%_
               _%value9995399962%_
               _%message99964%_)
        (let* ((_%ctx99966%_
                (if (eq? _%ctx9995199958%_ absent-value)
                    '#f
                    _%ctx9995199958%_))
               (_%contract-expr99968%_
                (if (eq? _%contract-expr9995299960%_ absent-value)
                    '#f
                    _%contract-expr9995299960%_))
               (_%value99970%_
                (if (eq? _%value9995399962%_ absent-value)
                    '#f
                    _%value9995399962%_))
               (__tmp100026
                (let ((__obj100017
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100017
                   _%message99964%_
                   'where:
                   _%ctx99966%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr99968%_
                               (cons 'value: (cons _%value99970%_ '())))))
                  __obj100017)))
          (declare (not safe))
          (raise __tmp100026))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords99975%_ . _%args99976%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords99975%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99975%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99975%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords99975%_ 'value: absent-value))
               _%args99976%_)))
    (define __raise-contract-violation-error
      (lambda _%args9995499982%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args9995499982%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler99925%_ _%thunk99926%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99925%_))
              (let ()
                (let ((_%handler99930%_ _%handler99925%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99926%_))
                      (let ()
                        (let ((_%thunk99940%_ _%thunk99926%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-handler
                               _%handler99930%_
                               _%thunk99940%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99926%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler99925%_)))))
    (define __with-exception-handler
      (lambda (_%handler99900%_ _%thunk99901%_)
        (let ()
          (let ((_%handler99904%_ _%handler99900%_))
            (let ((_%thunk99912%_ _%thunk99901%_))
              (let ()
                (let ((__tmp100027
                       (lambda (_%exn99921%_)
                         (let ((_%exn99923%_
                                (let ()
                                  (declare (not safe))
                                  (wrap-runtime-exception _%exn99921%_))))
                           (declare (not safe))
                           (_%handler99904%_ _%exn99923%_)))))
                  (declare (not safe))
                  (##with-exception-handler __tmp100027 _%thunk99912%_))))))))
    (define with-catch
      (lambda (_%handler99875%_ _%thunk99876%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99875%_))
              (let ()
                (let ((_%handler99880%_ _%handler99875%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99876%_))
                      (let ()
                        (let ((_%thunk99890%_ _%thunk99876%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-catch
                               _%handler99880%_
                               _%thunk99890%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99876%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler99875%_)))))
    (define __with-catch
      (lambda (_%handler99850%_ _%thunk99851%_)
        (let ()
          (let ((_%handler99854%_ _%handler99850%_))
            (let ((_%thunk99862%_ _%thunk99851%_))
              (let ()
                (let ((__tmp100028
                       (lambda (_%cont99871%_)
                         (let ((__tmp100029
                                (lambda (_%exn99873%_)
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-graft
                                     _%cont99871%_
                                     _%handler99854%_
                                     _%exn99873%_)))))
                           (declare (not safe))
                           (__with-exception-handler
                            __tmp100029
                            _%thunk99862%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100028))))))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn99837%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn99837%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn99837%_)))
            (let () _%exn99837%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn99837%_))
                (let () _%exn99837%_)
                (if (macro-exception? _%exn99837%_)
                    (let ()
                      (let ((_%rte99845%_
                             (let ((__obj100018
                                    (let ()
                                      (declare (not safe))
                                      (##structure
                                       RuntimeException::t
                                       '#f
                                       '#f))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  __obj100018
                                  _%exn99837%_
                                  '2
                                  '#f
                                  '#f))
                               __obj100018)))
                        (let ((__tmp100030
                               (lambda (_%cont99847%_)
                                 (let ((__tmp100031
                                        (let ()
                                          (declare (not safe))
                                          (##continuation-next
                                           _%cont99847%_))))
                                   (declare (not safe))
                                   (unchecked-slot-set!
                                    _%rte99845%_
                                    'continuation
                                    __tmp100031)))))
                          (declare (not safe))
                          (##continuation-capture __tmp100030))
                        _%rte99845%_))
                    (let () _%exn99837%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj99832%_)
        (let ((_%$e99834%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj99832%_))))
          (if _%$e99834%_
              _%$e99834%_
              (let () (declare (not safe)) (error-exception? _%obj99832%_))))))
    (define error-message
      (lambda (_%obj99827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99827%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99827%_ 'message)))
            (if (let () (declare (not safe)) (error-exception? _%obj99827%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj99827%_)))
                (let () '#f)))))
    (define error-irritants
      (lambda (_%obj99822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99822%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99822%_ 'irritants)))
            (if (let () (declare (not safe)) (error-exception? _%obj99822%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-parameters _%obj99822%_)))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj99820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99820%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99820%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e99801%_ _%port99802%_)
        (let ((_%$e99804%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e99801%_ 'display-exception))))
          (if _%$e99804%_
              ((lambda (_%f99807%_) (_%f99807%_ _%e99801%_ _%port99802%_))
               _%$e99804%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-display-exception _%e99801%_ _%port99802%_)))))))
    (define display-exception__0
      (lambda (_%e99813%_)
        (let ((_%port99815%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e99813%_ _%port99815%_))))
    (define display-exception
      (lambda _g100033_
        (let ((_g100032_ (let () (declare (not safe)) (##length _g100033_))))
          (cond ((let () (declare (not safe)) (##fx= _g100032_ 1))
                 (apply (lambda (_%e99813%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e99813%_)))
                        _g100033_))
                ((let () (declare (not safe)) (##fx= _g100032_ 2))
                 (apply (lambda (_%e99817%_ _%port99818%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e99817%_ _%port99818%_)))
                        _g100033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100033_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99779%_ _%message99780%_ . _%rest99781%_)
        (let ()
          (let ((_%self99784%_ _%self99779%_))
            (let ()
              (let ((_%message99798%_
                     (if (let ()
                           (declare (not safe))
                           (string? _%message99780%_))
                         _%message99780%_
                         (call-with-output-string
                          '""
                          (lambda (_%g9979399795%_)
                            (display _%message99780%_ _%g9979399795%_))))))
                (let ()
                  (declare (not safe))
                  (unchecked-slot-set!
                   _%self99784%_
                   'message
                   _%message99798%_))
                (apply class-instance-init! _%self99784%_ _%rest99781%_)))))))
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
      (lambda (_%self99503%_ _%port99504%_)
        (let ()
          (let ((_%self99507%_ _%self99503%_))
            (let ()
              (let ((_%tmp-port99517%_ (open-output-string))
                    (_%display-error-newline99518%_
                     (> (output-port-column _%port99504%_) '0)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99517%_))
                (let ((__tmp100034
                       (lambda ()
                         (if _%display-error-newline99518%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e99521%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _%self99507%_ 'where))))
                           (if _%$e99521%_
                               (display _%$e99521%_)
                               (let () (display '"?"))))
                         (let ((__tmp100035
                                (let ((__tmp100036
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self99507%_))))
                                  (declare (not safe))
                                  (##type-name __tmp100036))))
                           (declare (not safe))
                           (display* '" [" __tmp100035 '"]: "))
                         (let ((__tmp100037
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99507%_
                                   'message))))
                           (declare (not safe))
                           (displayln __tmp100037))
                         (let ((_%irritants99525%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99507%_
                                   'irritants))))
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%irritants99525%_))
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj99527%_)
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj99527%_))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants99525%_)
                                 (newline))))
                         (if (and '#t
                                  (let ()
                                    (declare (not safe))
                                    (dump-stack-trace?)))
                             (let ((_%cont9952899530%_
                                    (let ()
                                      (declare (not safe))
                                      (unchecked-slot-ref
                                       _%self99507%_
                                       'continuation))))
                               (if _%cont9952899530%_
                                   (let ((_%cont99533%_ _%cont9952899530%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont99533%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp100034
                   current-output-port
                   _%tmp-port99517%_))
                (let ((__tmp100038 (get-output-string _%tmp-port99517%_)))
                  (declare (not safe))
                  (##write-string __tmp100038 _%port99504%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99359%_ _%port99360%_)
        (let ()
          (let ((_%self99363%_ _%self99359%_))
            (let ()
              (let ((_%tmp-port99373%_ (open-output-string)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99373%_))
                (let ((__tmp100039
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99363%_ 'exception))))
                  (declare (not safe))
                  (##default-display-exception __tmp100039 _%tmp-port99373%_))
                (if (let () (declare (not safe)) (dump-stack-trace?))
                    (let ((_%cont9937499376%_
                           (let ()
                             (declare (not safe))
                             (unchecked-slot-ref
                              _%self99363%_
                              'continuation))))
                      (if _%cont9937499376%_
                          (let ((_%cont99379%_ _%cont9937499376%_))
                            (display '"--- continuation backtrace:"
                                     _%tmp-port99373%_)
                            (newline _%tmp-port99373%_)
                            (display-continuation-backtrace
                             _%cont99379%_
                             _%tmp-port99373%_))
                          '#f))
                    '#!void)
                (let ((__tmp100040 (get-output-string _%tmp-port99373%_)))
                  (declare (not safe))
                  (##write-string __tmp100040 _%port99360%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99231%_)
        (if (macro-character-port? _%port99231%_)
            (let ((_%old-width99233%_
                   (macro-character-port-output-width _%port99231%_)))
              (macro-character-port-output-width-set!
               _%port99231%_
               (lambda (_%port99235%_) '256))
              _%old-width99233%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99228%_ _%old-width99229%_)
        (if (macro-character-port? _%port99228%_)
            (macro-character-port-output-width-set!
             _%port99228%_
             _%old-width99229%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99226%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99226%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99220%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99220%_))
            (let ((_%e99223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99220%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99223%_))
            (macro-abandoned-mutex-exception? _%exn99220%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99216%_))
            (let ((_%e99218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99216%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99218%_))
            (macro-cfun-conversion-exception? _%exn99216%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99212%_))
            (let ((_%e99214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99212%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99214%_)
                  (macro-cfun-conversion-exception-arguments _%e99214%_)
                  (let ((__tmp100041
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99214%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100041))))
            (if (macro-cfun-conversion-exception? _%exn99212%_)
                (macro-cfun-conversion-exception-arguments _%exn99212%_)
                (let ((__tmp100042
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99212%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100042))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99208%_))
            (let ((_%e99210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99208%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99210%_)
                  (macro-cfun-conversion-exception-code _%e99210%_)
                  (let ((__tmp100043
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99210%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100043))))
            (if (macro-cfun-conversion-exception? _%exn99208%_)
                (macro-cfun-conversion-exception-code _%exn99208%_)
                (let ((__tmp100044
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99208%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100044))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99204%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99204%_))
            (let ((_%e99206%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99204%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99206%_)
                  (macro-cfun-conversion-exception-message _%e99206%_)
                  (let ((__tmp100045
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99206%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100045))))
            (if (macro-cfun-conversion-exception? _%exn99204%_)
                (macro-cfun-conversion-exception-message _%exn99204%_)
                (let ((__tmp100046
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99204%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100046))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99198%_))
            (let ((_%e99201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99198%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99201%_)
                  (macro-cfun-conversion-exception-procedure _%e99201%_)
                  (let ((__tmp100047
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99201%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100047))))
            (if (macro-cfun-conversion-exception? _%exn99198%_)
                (macro-cfun-conversion-exception-procedure _%exn99198%_)
                (let ((__tmp100048
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99198%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100048))))))
    (define datum-parsing-exception?
      (lambda (_%exn99194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99194%_))
            (let ((_%e99196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99194%_ 'exception))))
              (macro-datum-parsing-exception? _%e99196%_))
            (macro-datum-parsing-exception? _%exn99194%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99190%_))
            (let ((_%e99192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99190%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99192%_)
                  (macro-datum-parsing-exception-kind _%e99192%_)
                  (let ((__tmp100049
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99192%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100049))))
            (if (macro-datum-parsing-exception? _%exn99190%_)
                (macro-datum-parsing-exception-kind _%exn99190%_)
                (let ((__tmp100050
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99190%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100050))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99186%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99186%_))
            (let ((_%e99188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99186%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99188%_)
                  (macro-datum-parsing-exception-parameters _%e99188%_)
                  (let ((__tmp100051
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99188%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100051))))
            (if (macro-datum-parsing-exception? _%exn99186%_)
                (macro-datum-parsing-exception-parameters _%exn99186%_)
                (let ((__tmp100052
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99186%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100052))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99180%_))
            (let ((_%e99183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99180%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99183%_)
                  (macro-datum-parsing-exception-readenv _%e99183%_)
                  (let ((__tmp100053
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99183%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100053))))
            (if (macro-datum-parsing-exception? _%exn99180%_)
                (macro-datum-parsing-exception-readenv _%exn99180%_)
                (let ((__tmp100054
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99180%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100054))))))
    (define deadlock-exception?
      (lambda (_%exn99174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99174%_))
            (let ((_%e99177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99174%_ 'exception))))
              (macro-deadlock-exception? _%e99177%_))
            (macro-deadlock-exception? _%exn99174%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99170%_))
            (let ((_%e99172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99170%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99172%_))
            (macro-divide-by-zero-exception? _%exn99170%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99166%_))
            (let ((_%e99168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99166%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99168%_)
                  (macro-divide-by-zero-exception-arguments _%e99168%_)
                  (let ((__tmp100055
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99168%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100055))))
            (if (macro-divide-by-zero-exception? _%exn99166%_)
                (macro-divide-by-zero-exception-arguments _%exn99166%_)
                (let ((__tmp100056
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99166%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100056))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99160%_))
            (let ((_%e99163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99160%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99163%_)
                  (macro-divide-by-zero-exception-procedure _%e99163%_)
                  (let ((__tmp100057
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99163%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100057))))
            (if (macro-divide-by-zero-exception? _%exn99160%_)
                (macro-divide-by-zero-exception-procedure _%exn99160%_)
                (let ((__tmp100058
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99160%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100058))))))
    (define error-exception?
      (lambda (_%exn99156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99156%_))
            (let ((_%e99158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99156%_ 'exception))))
              (macro-error-exception? _%e99158%_))
            (macro-error-exception? _%exn99156%_))))
    (define error-exception-message
      (lambda (_%exn99152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99152%_))
            (let ((_%e99154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99152%_ 'exception))))
              (if (macro-error-exception? _%e99154%_)
                  (macro-error-exception-message _%e99154%_)
                  (let ((__tmp100059
                         (cons 'error-exception-message
                               (cons _%e99154%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100059))))
            (if (macro-error-exception? _%exn99152%_)
                (macro-error-exception-message _%exn99152%_)
                (let ((__tmp100060
                       (cons 'error-exception-message
                             (cons _%exn99152%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100060))))))
    (define error-exception-parameters
      (lambda (_%exn99146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99146%_))
            (let ((_%e99149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99146%_ 'exception))))
              (if (macro-error-exception? _%e99149%_)
                  (macro-error-exception-parameters _%e99149%_)
                  (let ((__tmp100061
                         (cons 'error-exception-parameters
                               (cons _%e99149%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100061))))
            (if (macro-error-exception? _%exn99146%_)
                (macro-error-exception-parameters _%exn99146%_)
                (let ((__tmp100062
                       (cons 'error-exception-parameters
                             (cons _%exn99146%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100062))))))
    (define expression-parsing-exception?
      (lambda (_%exn99142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99142%_))
            (let ((_%e99144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99142%_ 'exception))))
              (macro-expression-parsing-exception? _%e99144%_))
            (macro-expression-parsing-exception? _%exn99142%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99138%_))
            (let ((_%e99140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99138%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99140%_)
                  (macro-expression-parsing-exception-kind _%e99140%_)
                  (let ((__tmp100063
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99140%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100063))))
            (if (macro-expression-parsing-exception? _%exn99138%_)
                (macro-expression-parsing-exception-kind _%exn99138%_)
                (let ((__tmp100064
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99138%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100064))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99134%_))
            (let ((_%e99136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99134%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99136%_)
                  (macro-expression-parsing-exception-parameters _%e99136%_)
                  (let ((__tmp100065
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99136%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100065))))
            (if (macro-expression-parsing-exception? _%exn99134%_)
                (macro-expression-parsing-exception-parameters _%exn99134%_)
                (let ((__tmp100066
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99134%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100066))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99128%_))
            (let ((_%e99131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99128%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99131%_)
                  (macro-expression-parsing-exception-source _%e99131%_)
                  (let ((__tmp100067
                         (cons 'expression-parsing-exception-source
                               (cons _%e99131%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100067))))
            (if (macro-expression-parsing-exception? _%exn99128%_)
                (macro-expression-parsing-exception-source _%exn99128%_)
                (let ((__tmp100068
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99128%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100068))))))
    (define file-exists-exception?
      (lambda (_%exn99124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99124%_))
            (let ((_%e99126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99124%_ 'exception))))
              (macro-file-exists-exception? _%e99126%_))
            (macro-file-exists-exception? _%exn99124%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99120%_))
            (let ((_%e99122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99120%_ 'exception))))
              (if (macro-file-exists-exception? _%e99122%_)
                  (macro-file-exists-exception-arguments _%e99122%_)
                  (let ((__tmp100069
                         (cons 'file-exists-exception-arguments
                               (cons _%e99122%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100069))))
            (if (macro-file-exists-exception? _%exn99120%_)
                (macro-file-exists-exception-arguments _%exn99120%_)
                (let ((__tmp100070
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99120%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100070))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99114%_))
            (let ((_%e99117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99114%_ 'exception))))
              (if (macro-file-exists-exception? _%e99117%_)
                  (macro-file-exists-exception-procedure _%e99117%_)
                  (let ((__tmp100071
                         (cons 'file-exists-exception-procedure
                               (cons _%e99117%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100071))))
            (if (macro-file-exists-exception? _%exn99114%_)
                (macro-file-exists-exception-procedure _%exn99114%_)
                (let ((__tmp100072
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99114%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100072))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99110%_))
            (let ((_%e99112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99110%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99112%_))
            (macro-fixnum-overflow-exception? _%exn99110%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99106%_))
            (let ((_%e99108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99106%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99108%_)
                  (macro-fixnum-overflow-exception-arguments _%e99108%_)
                  (let ((__tmp100073
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99108%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100073))))
            (if (macro-fixnum-overflow-exception? _%exn99106%_)
                (macro-fixnum-overflow-exception-arguments _%exn99106%_)
                (let ((__tmp100074
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99106%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100074))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99100%_))
            (let ((_%e99103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99100%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99103%_)
                  (macro-fixnum-overflow-exception-procedure _%e99103%_)
                  (let ((__tmp100075
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99103%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100075))))
            (if (macro-fixnum-overflow-exception? _%exn99100%_)
                (macro-fixnum-overflow-exception-procedure _%exn99100%_)
                (let ((__tmp100076
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99100%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100076))))))
    (define heap-overflow-exception?
      (lambda (_%exn99094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99094%_))
            (let ((_%e99097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99094%_ 'exception))))
              (macro-heap-overflow-exception? _%e99097%_))
            (macro-heap-overflow-exception? _%exn99094%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99090%_))
            (let ((_%e99092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99090%_ 'exception))))
              (macro-inactive-thread-exception? _%e99092%_))
            (macro-inactive-thread-exception? _%exn99090%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99086%_))
            (let ((_%e99088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99086%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99088%_)
                  (macro-inactive-thread-exception-arguments _%e99088%_)
                  (let ((__tmp100077
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99088%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100077))))
            (if (macro-inactive-thread-exception? _%exn99086%_)
                (macro-inactive-thread-exception-arguments _%exn99086%_)
                (let ((__tmp100078
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99086%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100078))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99080%_))
            (let ((_%e99083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99080%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99083%_)
                  (macro-inactive-thread-exception-procedure _%e99083%_)
                  (let ((__tmp100079
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99083%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100079))))
            (if (macro-inactive-thread-exception? _%exn99080%_)
                (macro-inactive-thread-exception-procedure _%exn99080%_)
                (let ((__tmp100080
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99080%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100080))))))
    (define initialized-thread-exception?
      (lambda (_%exn99076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99076%_))
            (let ((_%e99078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99076%_ 'exception))))
              (macro-initialized-thread-exception? _%e99078%_))
            (macro-initialized-thread-exception? _%exn99076%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99072%_))
            (let ((_%e99074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99072%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99074%_)
                  (macro-initialized-thread-exception-arguments _%e99074%_)
                  (let ((__tmp100081
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99074%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100081))))
            (if (macro-initialized-thread-exception? _%exn99072%_)
                (macro-initialized-thread-exception-arguments _%exn99072%_)
                (let ((__tmp100082
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99072%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100082))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99066%_))
            (let ((_%e99069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99066%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99069%_)
                  (macro-initialized-thread-exception-procedure _%e99069%_)
                  (let ((__tmp100083
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99069%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100083))))
            (if (macro-initialized-thread-exception? _%exn99066%_)
                (macro-initialized-thread-exception-procedure _%exn99066%_)
                (let ((__tmp100084
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99066%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100084))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99062%_))
            (let ((_%e99064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99062%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99064%_))
            (macro-invalid-hash-number-exception? _%exn99062%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99058%_))
            (let ((_%e99060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99058%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99060%_)
                  (macro-invalid-hash-number-exception-arguments _%e99060%_)
                  (let ((__tmp100085
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99060%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100085))))
            (if (macro-invalid-hash-number-exception? _%exn99058%_)
                (macro-invalid-hash-number-exception-arguments _%exn99058%_)
                (let ((__tmp100086
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99058%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100086))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99052%_))
            (let ((_%e99055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99052%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99055%_)
                  (macro-invalid-hash-number-exception-procedure _%e99055%_)
                  (let ((__tmp100087
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99055%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100087))))
            (if (macro-invalid-hash-number-exception? _%exn99052%_)
                (macro-invalid-hash-number-exception-procedure _%exn99052%_)
                (let ((__tmp100088
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99052%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100088))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99048%_))
            (let ((_%e99050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99048%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99050%_))
            (macro-invalid-utf8-encoding-exception? _%exn99048%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99044%_))
            (let ((_%e99046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99044%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99046%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99046%_)
                  (let ((__tmp100089
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99046%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100089))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99044%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99044%_)
                (let ((__tmp100090
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99044%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100090))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99038%_))
            (let ((_%e99041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99038%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99041%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99041%_)
                  (let ((__tmp100091
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99041%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100091))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99038%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99038%_)
                (let ((__tmp100092
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99038%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100092))))))
    (define join-timeout-exception?
      (lambda (_%exn99034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99034%_))
            (let ((_%e99036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99034%_ 'exception))))
              (macro-join-timeout-exception? _%e99036%_))
            (macro-join-timeout-exception? _%exn99034%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99030%_))
            (let ((_%e99032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99030%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99032%_)
                  (macro-join-timeout-exception-arguments _%e99032%_)
                  (let ((__tmp100093
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99032%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100093))))
            (if (macro-join-timeout-exception? _%exn99030%_)
                (macro-join-timeout-exception-arguments _%exn99030%_)
                (let ((__tmp100094
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99030%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100094))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99024%_))
            (let ((_%e99027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99024%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99027%_)
                  (macro-join-timeout-exception-procedure _%e99027%_)
                  (let ((__tmp100095
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99027%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100095))))
            (if (macro-join-timeout-exception? _%exn99024%_)
                (macro-join-timeout-exception-procedure _%exn99024%_)
                (let ((__tmp100096
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99024%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100096))))))
    (define keyword-expected-exception?
      (lambda (_%exn99020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99020%_))
            (let ((_%e99022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99020%_ 'exception))))
              (macro-keyword-expected-exception? _%e99022%_))
            (macro-keyword-expected-exception? _%exn99020%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99016%_))
            (let ((_%e99018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99016%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99018%_)
                  (macro-keyword-expected-exception-arguments _%e99018%_)
                  (let ((__tmp100097
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99018%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100097))))
            (if (macro-keyword-expected-exception? _%exn99016%_)
                (macro-keyword-expected-exception-arguments _%exn99016%_)
                (let ((__tmp100098
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99016%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100098))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99010%_))
            (let ((_%e99013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99010%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99013%_)
                  (macro-keyword-expected-exception-procedure _%e99013%_)
                  (let ((__tmp100099
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99013%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100099))))
            (if (macro-keyword-expected-exception? _%exn99010%_)
                (macro-keyword-expected-exception-procedure _%exn99010%_)
                (let ((__tmp100100
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99010%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100100))))))
    (define length-mismatch-exception?
      (lambda (_%exn99006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99006%_))
            (let ((_%e99008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99006%_ 'exception))))
              (macro-length-mismatch-exception? _%e99008%_))
            (macro-length-mismatch-exception? _%exn99006%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99002%_))
            (let ((_%e99004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99002%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99004%_)
                  (macro-length-mismatch-exception-arg-id _%e99004%_)
                  (let ((__tmp100101
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99004%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100101))))
            (if (macro-length-mismatch-exception? _%exn99002%_)
                (macro-length-mismatch-exception-arg-id _%exn99002%_)
                (let ((__tmp100102
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99002%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100102))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn98998%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98998%_))
            (let ((_%e99000%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98998%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99000%_)
                  (macro-length-mismatch-exception-arguments _%e99000%_)
                  (let ((__tmp100103
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99000%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100103))))
            (if (macro-length-mismatch-exception? _%exn98998%_)
                (macro-length-mismatch-exception-arguments _%exn98998%_)
                (let ((__tmp100104
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn98998%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100104))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn98992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98992%_))
            (let ((_%e98995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98992%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e98995%_)
                  (macro-length-mismatch-exception-procedure _%e98995%_)
                  (let ((__tmp100105
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e98995%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100105))))
            (if (macro-length-mismatch-exception? _%exn98992%_)
                (macro-length-mismatch-exception-procedure _%exn98992%_)
                (let ((__tmp100106
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn98992%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100106))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn98988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98988%_))
            (let ((_%e98990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98988%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e98990%_))
            (macro-mailbox-receive-timeout-exception? _%exn98988%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn98984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98984%_))
            (let ((_%e98986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98984%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e98986%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e98986%_)
                  (let ((__tmp100107
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e98986%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100107))))
            (if (macro-mailbox-receive-timeout-exception? _%exn98984%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn98984%_)
                (let ((__tmp100108
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn98984%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100108))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn98978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98978%_))
            (let ((_%e98981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98978%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e98981%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e98981%_)
                  (let ((__tmp100109
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e98981%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100109))))
            (if (macro-mailbox-receive-timeout-exception? _%exn98978%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn98978%_)
                (let ((__tmp100110
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn98978%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100110))))))
    (define module-not-found-exception?
      (lambda (_%exn98974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98974%_))
            (let ((_%e98976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98974%_ 'exception))))
              (macro-module-not-found-exception? _%e98976%_))
            (macro-module-not-found-exception? _%exn98974%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn98970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98970%_))
            (let ((_%e98972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98970%_ 'exception))))
              (if (macro-module-not-found-exception? _%e98972%_)
                  (macro-module-not-found-exception-arguments _%e98972%_)
                  (let ((__tmp100111
                         (cons 'module-not-found-exception-arguments
                               (cons _%e98972%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100111))))
            (if (macro-module-not-found-exception? _%exn98970%_)
                (macro-module-not-found-exception-arguments _%exn98970%_)
                (let ((__tmp100112
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn98970%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100112))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn98964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98964%_))
            (let ((_%e98967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98964%_ 'exception))))
              (if (macro-module-not-found-exception? _%e98967%_)
                  (macro-module-not-found-exception-procedure _%e98967%_)
                  (let ((__tmp100113
                         (cons 'module-not-found-exception-procedure
                               (cons _%e98967%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100113))))
            (if (macro-module-not-found-exception? _%exn98964%_)
                (macro-module-not-found-exception-procedure _%exn98964%_)
                (let ((__tmp100114
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn98964%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100114))))))
    (define multiple-c-return-exception?
      (lambda (_%exn98958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98958%_))
            (let ((_%e98961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98958%_ 'exception))))
              (macro-multiple-c-return-exception? _%e98961%_))
            (macro-multiple-c-return-exception? _%exn98958%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn98954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98954%_))
            (let ((_%e98956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98954%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e98956%_))
            (macro-no-such-file-or-directory-exception? _%exn98954%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn98950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98950%_))
            (let ((_%e98952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98950%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98952%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e98952%_)
                  (let ((__tmp100115
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e98952%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100115))))
            (if (macro-no-such-file-or-directory-exception? _%exn98950%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn98950%_)
                (let ((__tmp100116
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn98950%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100116))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn98944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98944%_))
            (let ((_%e98947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98944%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98947%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e98947%_)
                  (let ((__tmp100117
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e98947%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100117))))
            (if (macro-no-such-file-or-directory-exception? _%exn98944%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn98944%_)
                (let ((__tmp100118
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn98944%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100118))))))
    (define noncontinuable-exception?
      (lambda (_%exn98940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98940%_))
            (let ((_%e98942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98940%_ 'exception))))
              (macro-noncontinuable-exception? _%e98942%_))
            (macro-noncontinuable-exception? _%exn98940%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn98934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98934%_))
            (let ((_%e98937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98934%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e98937%_)
                  (macro-noncontinuable-exception-reason _%e98937%_)
                  (let ((__tmp100119
                         (cons 'noncontinuable-exception-reason
                               (cons _%e98937%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100119))))
            (if (macro-noncontinuable-exception? _%exn98934%_)
                (macro-noncontinuable-exception-reason _%exn98934%_)
                (let ((__tmp100120
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn98934%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100120))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn98930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98930%_))
            (let ((_%e98932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98930%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e98932%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn98930%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn98926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98926%_))
            (let ((_%e98928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98926%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98928%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e98928%_)
                  (let ((__tmp100121
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e98928%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100121))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98926%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn98926%_)
                (let ((__tmp100122
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn98926%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100122))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn98920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98920%_))
            (let ((_%e98923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98920%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98923%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e98923%_)
                  (let ((__tmp100123
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e98923%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100123))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98920%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn98920%_)
                (let ((__tmp100124
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn98920%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100124))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn98916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98916%_))
            (let ((_%e98918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98916%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e98918%_))
            (macro-nonprocedure-operator-exception? _%exn98916%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn98912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98912%_))
            (let ((_%e98914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98912%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98914%_)
                  (macro-nonprocedure-operator-exception-arguments _%e98914%_)
                  (let ((__tmp100125
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e98914%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100125))))
            (if (macro-nonprocedure-operator-exception? _%exn98912%_)
                (macro-nonprocedure-operator-exception-arguments _%exn98912%_)
                (let ((__tmp100126
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn98912%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100126))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn98908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98908%_))
            (let ((_%e98910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98908%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98910%_)
                  (macro-nonprocedure-operator-exception-code _%e98910%_)
                  (let ((__tmp100127
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e98910%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100127))))
            (if (macro-nonprocedure-operator-exception? _%exn98908%_)
                (macro-nonprocedure-operator-exception-code _%exn98908%_)
                (let ((__tmp100128
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn98908%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100128))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn98904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98904%_))
            (let ((_%e98906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98904%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98906%_)
                  (macro-nonprocedure-operator-exception-operator _%e98906%_)
                  (let ((__tmp100129
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e98906%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100129))))
            (if (macro-nonprocedure-operator-exception? _%exn98904%_)
                (macro-nonprocedure-operator-exception-operator _%exn98904%_)
                (let ((__tmp100130
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn98904%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100130))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn98898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98898%_))
            (let ((_%e98901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98898%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98901%_)
                  (macro-nonprocedure-operator-exception-rte _%e98901%_)
                  (let ((__tmp100131
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e98901%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100131))))
            (if (macro-nonprocedure-operator-exception? _%exn98898%_)
                (macro-nonprocedure-operator-exception-rte _%exn98898%_)
                (let ((__tmp100132
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn98898%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100132))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn98894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98894%_))
            (let ((_%e98896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98894%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e98896%_))
            (macro-not-in-compilation-context-exception? _%exn98894%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn98890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98890%_))
            (let ((_%e98892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98890%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98892%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e98892%_)
                  (let ((__tmp100133
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e98892%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100133))))
            (if (macro-not-in-compilation-context-exception? _%exn98890%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn98890%_)
                (let ((__tmp100134
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn98890%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100134))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn98884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98884%_))
            (let ((_%e98887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98884%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98887%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e98887%_)
                  (let ((__tmp100135
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e98887%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100135))))
            (if (macro-not-in-compilation-context-exception? _%exn98884%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn98884%_)
                (let ((__tmp100136
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn98884%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100136))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn98880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98880%_))
            (let ((_%e98882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98880%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e98882%_))
            (macro-number-of-arguments-limit-exception? _%exn98880%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn98876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98876%_))
            (let ((_%e98878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98876%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98878%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e98878%_)
                  (let ((__tmp100137
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e98878%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100137))))
            (if (macro-number-of-arguments-limit-exception? _%exn98876%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn98876%_)
                (let ((__tmp100138
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn98876%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100138))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn98870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98870%_))
            (let ((_%e98873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98870%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98873%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e98873%_)
                  (let ((__tmp100139
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e98873%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100139))))
            (if (macro-number-of-arguments-limit-exception? _%exn98870%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn98870%_)
                (let ((__tmp100140
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn98870%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100140))))))
    (define os-exception?
      (lambda (_%exn98866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98866%_))
            (let ((_%e98868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98866%_ 'exception))))
              (macro-os-exception? _%e98868%_))
            (macro-os-exception? _%exn98866%_))))
    (define os-exception-arguments
      (lambda (_%exn98862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98862%_))
            (let ((_%e98864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98862%_ 'exception))))
              (if (macro-os-exception? _%e98864%_)
                  (macro-os-exception-arguments _%e98864%_)
                  (let ((__tmp100141
                         (cons 'os-exception-arguments (cons _%e98864%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100141))))
            (if (macro-os-exception? _%exn98862%_)
                (macro-os-exception-arguments _%exn98862%_)
                (let ((__tmp100142
                       (cons 'os-exception-arguments (cons _%exn98862%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100142))))))
    (define os-exception-code
      (lambda (_%exn98858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98858%_))
            (let ((_%e98860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98858%_ 'exception))))
              (if (macro-os-exception? _%e98860%_)
                  (macro-os-exception-code _%e98860%_)
                  (let ((__tmp100143
                         (cons 'os-exception-code (cons _%e98860%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100143))))
            (if (macro-os-exception? _%exn98858%_)
                (macro-os-exception-code _%exn98858%_)
                (let ((__tmp100144
                       (cons 'os-exception-code (cons _%exn98858%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100144))))))
    (define os-exception-message
      (lambda (_%exn98854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98854%_))
            (let ((_%e98856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98854%_ 'exception))))
              (if (macro-os-exception? _%e98856%_)
                  (macro-os-exception-message _%e98856%_)
                  (let ((__tmp100145
                         (cons 'os-exception-message (cons _%e98856%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100145))))
            (if (macro-os-exception? _%exn98854%_)
                (macro-os-exception-message _%exn98854%_)
                (let ((__tmp100146
                       (cons 'os-exception-message (cons _%exn98854%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100146))))))
    (define os-exception-procedure
      (lambda (_%exn98848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98848%_))
            (let ((_%e98851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98848%_ 'exception))))
              (if (macro-os-exception? _%e98851%_)
                  (macro-os-exception-procedure _%e98851%_)
                  (let ((__tmp100147
                         (cons 'os-exception-procedure (cons _%e98851%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100147))))
            (if (macro-os-exception? _%exn98848%_)
                (macro-os-exception-procedure _%exn98848%_)
                (let ((__tmp100148
                       (cons 'os-exception-procedure (cons _%exn98848%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100148))))))
    (define permission-denied-exception?
      (lambda (_%exn98844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98844%_))
            (let ((_%e98846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98844%_ 'exception))))
              (macro-permission-denied-exception? _%e98846%_))
            (macro-permission-denied-exception? _%exn98844%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn98840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98840%_))
            (let ((_%e98842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98840%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98842%_)
                  (macro-permission-denied-exception-arguments _%e98842%_)
                  (let ((__tmp100149
                         (cons 'permission-denied-exception-arguments
                               (cons _%e98842%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100149))))
            (if (macro-permission-denied-exception? _%exn98840%_)
                (macro-permission-denied-exception-arguments _%exn98840%_)
                (let ((__tmp100150
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn98840%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100150))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn98834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98834%_))
            (let ((_%e98837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98834%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98837%_)
                  (macro-permission-denied-exception-procedure _%e98837%_)
                  (let ((__tmp100151
                         (cons 'permission-denied-exception-procedure
                               (cons _%e98837%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100151))))
            (if (macro-permission-denied-exception? _%exn98834%_)
                (macro-permission-denied-exception-procedure _%exn98834%_)
                (let ((__tmp100152
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn98834%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100152))))))
    (define range-exception?
      (lambda (_%exn98830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98830%_))
            (let ((_%e98832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98830%_ 'exception))))
              (macro-range-exception? _%e98832%_))
            (macro-range-exception? _%exn98830%_))))
    (define range-exception-arg-id
      (lambda (_%exn98826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98826%_))
            (let ((_%e98828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98826%_ 'exception))))
              (if (macro-range-exception? _%e98828%_)
                  (macro-range-exception-arg-id _%e98828%_)
                  (let ((__tmp100153
                         (cons 'range-exception-arg-id (cons _%e98828%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100153))))
            (if (macro-range-exception? _%exn98826%_)
                (macro-range-exception-arg-id _%exn98826%_)
                (let ((__tmp100154
                       (cons 'range-exception-arg-id (cons _%exn98826%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100154))))))
    (define range-exception-arguments
      (lambda (_%exn98822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98822%_))
            (let ((_%e98824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98822%_ 'exception))))
              (if (macro-range-exception? _%e98824%_)
                  (macro-range-exception-arguments _%e98824%_)
                  (let ((__tmp100155
                         (cons 'range-exception-arguments
                               (cons _%e98824%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100155))))
            (if (macro-range-exception? _%exn98822%_)
                (macro-range-exception-arguments _%exn98822%_)
                (let ((__tmp100156
                       (cons 'range-exception-arguments
                             (cons _%exn98822%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100156))))))
    (define range-exception-procedure
      (lambda (_%exn98816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98816%_))
            (let ((_%e98819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98816%_ 'exception))))
              (if (macro-range-exception? _%e98819%_)
                  (macro-range-exception-procedure _%e98819%_)
                  (let ((__tmp100157
                         (cons 'range-exception-procedure
                               (cons _%e98819%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100157))))
            (if (macro-range-exception? _%exn98816%_)
                (macro-range-exception-procedure _%exn98816%_)
                (let ((__tmp100158
                       (cons 'range-exception-procedure
                             (cons _%exn98816%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100158))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn98812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98812%_))
            (let ((_%e98814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98812%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e98814%_))
            (macro-rpc-remote-error-exception? _%exn98812%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn98808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98808%_))
            (let ((_%e98810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98808%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98810%_)
                  (macro-rpc-remote-error-exception-arguments _%e98810%_)
                  (let ((__tmp100159
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e98810%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100159))))
            (if (macro-rpc-remote-error-exception? _%exn98808%_)
                (macro-rpc-remote-error-exception-arguments _%exn98808%_)
                (let ((__tmp100160
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn98808%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100160))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn98804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98804%_))
            (let ((_%e98806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98804%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98806%_)
                  (macro-rpc-remote-error-exception-message _%e98806%_)
                  (let ((__tmp100161
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e98806%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100161))))
            (if (macro-rpc-remote-error-exception? _%exn98804%_)
                (macro-rpc-remote-error-exception-message _%exn98804%_)
                (let ((__tmp100162
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn98804%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100162))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn98798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98798%_))
            (let ((_%e98801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98798%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98801%_)
                  (macro-rpc-remote-error-exception-procedure _%e98801%_)
                  (let ((__tmp100163
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e98801%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100163))))
            (if (macro-rpc-remote-error-exception? _%exn98798%_)
                (macro-rpc-remote-error-exception-procedure _%exn98798%_)
                (let ((__tmp100164
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn98798%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100164))))))
    (define scheduler-exception?
      (lambda (_%exn98794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98794%_))
            (let ((_%e98796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98794%_ 'exception))))
              (macro-scheduler-exception? _%e98796%_))
            (macro-scheduler-exception? _%exn98794%_))))
    (define scheduler-exception-reason
      (lambda (_%exn98788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98788%_))
            (let ((_%e98791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98788%_ 'exception))))
              (if (macro-scheduler-exception? _%e98791%_)
                  (macro-scheduler-exception-reason _%e98791%_)
                  (let ((__tmp100165
                         (cons 'scheduler-exception-reason
                               (cons _%e98791%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100165))))
            (if (macro-scheduler-exception? _%exn98788%_)
                (macro-scheduler-exception-reason _%exn98788%_)
                (let ((__tmp100166
                       (cons 'scheduler-exception-reason
                             (cons _%exn98788%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100166))))))
    (define sfun-conversion-exception?
      (lambda (_%exn98784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98784%_))
            (let ((_%e98786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98784%_ 'exception))))
              (macro-sfun-conversion-exception? _%e98786%_))
            (macro-sfun-conversion-exception? _%exn98784%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn98780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98780%_))
            (let ((_%e98782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98780%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98782%_)
                  (macro-sfun-conversion-exception-arguments _%e98782%_)
                  (let ((__tmp100167
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e98782%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100167))))
            (if (macro-sfun-conversion-exception? _%exn98780%_)
                (macro-sfun-conversion-exception-arguments _%exn98780%_)
                (let ((__tmp100168
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn98780%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100168))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn98776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98776%_))
            (let ((_%e98778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98776%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98778%_)
                  (macro-sfun-conversion-exception-code _%e98778%_)
                  (let ((__tmp100169
                         (cons 'sfun-conversion-exception-code
                               (cons _%e98778%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100169))))
            (if (macro-sfun-conversion-exception? _%exn98776%_)
                (macro-sfun-conversion-exception-code _%exn98776%_)
                (let ((__tmp100170
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn98776%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100170))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn98772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98772%_))
            (let ((_%e98774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98772%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98774%_)
                  (macro-sfun-conversion-exception-message _%e98774%_)
                  (let ((__tmp100171
                         (cons 'sfun-conversion-exception-message
                               (cons _%e98774%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100171))))
            (if (macro-sfun-conversion-exception? _%exn98772%_)
                (macro-sfun-conversion-exception-message _%exn98772%_)
                (let ((__tmp100172
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn98772%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100172))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn98766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98766%_))
            (let ((_%e98769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98766%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98769%_)
                  (macro-sfun-conversion-exception-procedure _%e98769%_)
                  (let ((__tmp100173
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e98769%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100173))))
            (if (macro-sfun-conversion-exception? _%exn98766%_)
                (macro-sfun-conversion-exception-procedure _%exn98766%_)
                (let ((__tmp100174
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn98766%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100174))))))
    (define stack-overflow-exception?
      (lambda (_%exn98760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98760%_))
            (let ((_%e98763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98760%_ 'exception))))
              (macro-stack-overflow-exception? _%e98763%_))
            (macro-stack-overflow-exception? _%exn98760%_))))
    (define started-thread-exception?
      (lambda (_%exn98756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98756%_))
            (let ((_%e98758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98756%_ 'exception))))
              (macro-started-thread-exception? _%e98758%_))
            (macro-started-thread-exception? _%exn98756%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn98752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98752%_))
            (let ((_%e98754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98752%_ 'exception))))
              (if (macro-started-thread-exception? _%e98754%_)
                  (macro-started-thread-exception-arguments _%e98754%_)
                  (let ((__tmp100175
                         (cons 'started-thread-exception-arguments
                               (cons _%e98754%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100175))))
            (if (macro-started-thread-exception? _%exn98752%_)
                (macro-started-thread-exception-arguments _%exn98752%_)
                (let ((__tmp100176
                       (cons 'started-thread-exception-arguments
                             (cons _%exn98752%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100176))))))
    (define started-thread-exception-procedure
      (lambda (_%exn98746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98746%_))
            (let ((_%e98749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98746%_ 'exception))))
              (if (macro-started-thread-exception? _%e98749%_)
                  (macro-started-thread-exception-procedure _%e98749%_)
                  (let ((__tmp100177
                         (cons 'started-thread-exception-procedure
                               (cons _%e98749%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100177))))
            (if (macro-started-thread-exception? _%exn98746%_)
                (macro-started-thread-exception-procedure _%exn98746%_)
                (let ((__tmp100178
                       (cons 'started-thread-exception-procedure
                             (cons _%exn98746%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100178))))))
    (define terminated-thread-exception?
      (lambda (_%exn98742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98742%_))
            (let ((_%e98744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98742%_ 'exception))))
              (macro-terminated-thread-exception? _%e98744%_))
            (macro-terminated-thread-exception? _%exn98742%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn98738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98738%_))
            (let ((_%e98740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98738%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98740%_)
                  (macro-terminated-thread-exception-arguments _%e98740%_)
                  (let ((__tmp100179
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e98740%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100179))))
            (if (macro-terminated-thread-exception? _%exn98738%_)
                (macro-terminated-thread-exception-arguments _%exn98738%_)
                (let ((__tmp100180
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn98738%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100180))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn98732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98732%_))
            (let ((_%e98735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98732%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98735%_)
                  (macro-terminated-thread-exception-procedure _%e98735%_)
                  (let ((__tmp100181
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e98735%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100181))))
            (if (macro-terminated-thread-exception? _%exn98732%_)
                (macro-terminated-thread-exception-procedure _%exn98732%_)
                (let ((__tmp100182
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn98732%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100182))))))
    (define type-exception?
      (lambda (_%exn98728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98728%_))
            (let ((_%e98730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98728%_ 'exception))))
              (macro-type-exception? _%e98730%_))
            (macro-type-exception? _%exn98728%_))))
    (define type-exception-arg-id
      (lambda (_%exn98724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98724%_))
            (let ((_%e98726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98724%_ 'exception))))
              (if (macro-type-exception? _%e98726%_)
                  (macro-type-exception-arg-id _%e98726%_)
                  (let ((__tmp100183
                         (cons 'type-exception-arg-id (cons _%e98726%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100183))))
            (if (macro-type-exception? _%exn98724%_)
                (macro-type-exception-arg-id _%exn98724%_)
                (let ((__tmp100184
                       (cons 'type-exception-arg-id (cons _%exn98724%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100184))))))
    (define type-exception-arguments
      (lambda (_%exn98720%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98720%_))
            (let ((_%e98722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98720%_ 'exception))))
              (if (macro-type-exception? _%e98722%_)
                  (macro-type-exception-arguments _%e98722%_)
                  (let ((__tmp100185
                         (cons 'type-exception-arguments
                               (cons _%e98722%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100185))))
            (if (macro-type-exception? _%exn98720%_)
                (macro-type-exception-arguments _%exn98720%_)
                (let ((__tmp100186
                       (cons 'type-exception-arguments
                             (cons _%exn98720%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100186))))))
    (define type-exception-procedure
      (lambda (_%exn98716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98716%_))
            (let ((_%e98718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98716%_ 'exception))))
              (if (macro-type-exception? _%e98718%_)
                  (macro-type-exception-procedure _%e98718%_)
                  (let ((__tmp100187
                         (cons 'type-exception-procedure
                               (cons _%e98718%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100187))))
            (if (macro-type-exception? _%exn98716%_)
                (macro-type-exception-procedure _%exn98716%_)
                (let ((__tmp100188
                       (cons 'type-exception-procedure
                             (cons _%exn98716%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100188))))))
    (define type-exception-type-id
      (lambda (_%exn98710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98710%_))
            (let ((_%e98713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98710%_ 'exception))))
              (if (macro-type-exception? _%e98713%_)
                  (macro-type-exception-type-id _%e98713%_)
                  (let ((__tmp100189
                         (cons 'type-exception-type-id (cons _%e98713%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100189))))
            (if (macro-type-exception? _%exn98710%_)
                (macro-type-exception-type-id _%exn98710%_)
                (let ((__tmp100190
                       (cons 'type-exception-type-id (cons _%exn98710%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100190))))))
    (define unbound-global-exception?
      (lambda (_%exn98706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98706%_))
            (let ((_%e98708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98706%_ 'exception))))
              (macro-unbound-global-exception? _%e98708%_))
            (macro-unbound-global-exception? _%exn98706%_))))
    (define unbound-global-exception-code
      (lambda (_%exn98702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98702%_))
            (let ((_%e98704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98702%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98704%_)
                  (macro-unbound-global-exception-code _%e98704%_)
                  (let ((__tmp100191
                         (cons 'unbound-global-exception-code
                               (cons _%e98704%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100191))))
            (if (macro-unbound-global-exception? _%exn98702%_)
                (macro-unbound-global-exception-code _%exn98702%_)
                (let ((__tmp100192
                       (cons 'unbound-global-exception-code
                             (cons _%exn98702%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100192))))))
    (define unbound-global-exception-rte
      (lambda (_%exn98698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98698%_))
            (let ((_%e98700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98698%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98700%_)
                  (macro-unbound-global-exception-rte _%e98700%_)
                  (let ((__tmp100193
                         (cons 'unbound-global-exception-rte
                               (cons _%e98700%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100193))))
            (if (macro-unbound-global-exception? _%exn98698%_)
                (macro-unbound-global-exception-rte _%exn98698%_)
                (let ((__tmp100194
                       (cons 'unbound-global-exception-rte
                             (cons _%exn98698%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100194))))))
    (define unbound-global-exception-variable
      (lambda (_%exn98692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98692%_))
            (let ((_%e98695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98692%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98695%_)
                  (macro-unbound-global-exception-variable _%e98695%_)
                  (let ((__tmp100195
                         (cons 'unbound-global-exception-variable
                               (cons _%e98695%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100195))))
            (if (macro-unbound-global-exception? _%exn98692%_)
                (macro-unbound-global-exception-variable _%exn98692%_)
                (let ((__tmp100196
                       (cons 'unbound-global-exception-variable
                             (cons _%exn98692%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100196))))))
    (define unbound-key-exception?
      (lambda (_%exn98688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98688%_))
            (let ((_%e98690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98688%_ 'exception))))
              (macro-unbound-key-exception? _%e98690%_))
            (macro-unbound-key-exception? _%exn98688%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn98684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98684%_))
            (let ((_%e98686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98684%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98686%_)
                  (macro-unbound-key-exception-arguments _%e98686%_)
                  (let ((__tmp100197
                         (cons 'unbound-key-exception-arguments
                               (cons _%e98686%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100197))))
            (if (macro-unbound-key-exception? _%exn98684%_)
                (macro-unbound-key-exception-arguments _%exn98684%_)
                (let ((__tmp100198
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn98684%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100198))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn98678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98678%_))
            (let ((_%e98681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98678%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98681%_)
                  (macro-unbound-key-exception-procedure _%e98681%_)
                  (let ((__tmp100199
                         (cons 'unbound-key-exception-procedure
                               (cons _%e98681%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100199))))
            (if (macro-unbound-key-exception? _%exn98678%_)
                (macro-unbound-key-exception-procedure _%exn98678%_)
                (let ((__tmp100200
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn98678%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100200))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn98674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98674%_))
            (let ((_%e98676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98674%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e98676%_))
            (macro-unbound-os-environment-variable-exception? _%exn98674%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn98670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98670%_))
            (let ((_%e98672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98670%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98672%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e98672%_)
                  (let ((__tmp100201
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e98672%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100201))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98670%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn98670%_)
                (let ((__tmp100202
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn98670%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100202))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn98664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98664%_))
            (let ((_%e98667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98664%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98667%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e98667%_)
                  (let ((__tmp100203
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e98667%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100203))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98664%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn98664%_)
                (let ((__tmp100204
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn98664%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100204))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn98660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98660%_))
            (let ((_%e98662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98660%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e98662%_))
            (macro-unbound-serial-number-exception? _%exn98660%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn98656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98656%_))
            (let ((_%e98658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98656%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98658%_)
                  (macro-unbound-serial-number-exception-arguments _%e98658%_)
                  (let ((__tmp100205
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e98658%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100205))))
            (if (macro-unbound-serial-number-exception? _%exn98656%_)
                (macro-unbound-serial-number-exception-arguments _%exn98656%_)
                (let ((__tmp100206
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn98656%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100206))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn98650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98650%_))
            (let ((_%e98653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98650%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98653%_)
                  (macro-unbound-serial-number-exception-procedure _%e98653%_)
                  (let ((__tmp100207
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e98653%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100207))))
            (if (macro-unbound-serial-number-exception? _%exn98650%_)
                (macro-unbound-serial-number-exception-procedure _%exn98650%_)
                (let ((__tmp100208
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn98650%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100208))))))
    (define uncaught-exception?
      (lambda (_%exn98646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98646%_))
            (let ((_%e98648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98646%_ 'exception))))
              (macro-uncaught-exception? _%e98648%_))
            (macro-uncaught-exception? _%exn98646%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn98642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98642%_))
            (let ((_%e98644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98642%_ 'exception))))
              (if (macro-uncaught-exception? _%e98644%_)
                  (macro-uncaught-exception-arguments _%e98644%_)
                  (let ((__tmp100209
                         (cons 'uncaught-exception-arguments
                               (cons _%e98644%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100209))))
            (if (macro-uncaught-exception? _%exn98642%_)
                (macro-uncaught-exception-arguments _%exn98642%_)
                (let ((__tmp100210
                       (cons 'uncaught-exception-arguments
                             (cons _%exn98642%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100210))))))
    (define uncaught-exception-procedure
      (lambda (_%exn98638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98638%_))
            (let ((_%e98640%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98638%_ 'exception))))
              (if (macro-uncaught-exception? _%e98640%_)
                  (macro-uncaught-exception-procedure _%e98640%_)
                  (let ((__tmp100211
                         (cons 'uncaught-exception-procedure
                               (cons _%e98640%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100211))))
            (if (macro-uncaught-exception? _%exn98638%_)
                (macro-uncaught-exception-procedure _%exn98638%_)
                (let ((__tmp100212
                       (cons 'uncaught-exception-procedure
                             (cons _%exn98638%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100212))))))
    (define uncaught-exception-reason
      (lambda (_%exn98632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98632%_))
            (let ((_%e98635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98632%_ 'exception))))
              (if (macro-uncaught-exception? _%e98635%_)
                  (macro-uncaught-exception-reason _%e98635%_)
                  (let ((__tmp100213
                         (cons 'uncaught-exception-reason
                               (cons _%e98635%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100213))))
            (if (macro-uncaught-exception? _%exn98632%_)
                (macro-uncaught-exception-reason _%exn98632%_)
                (let ((__tmp100214
                       (cons 'uncaught-exception-reason
                             (cons _%exn98632%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100214))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn98628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98628%_))
            (let ((_%e98630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98628%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e98630%_))
            (macro-uninitialized-thread-exception? _%exn98628%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn98624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98624%_))
            (let ((_%e98626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98624%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98626%_)
                  (macro-uninitialized-thread-exception-arguments _%e98626%_)
                  (let ((__tmp100215
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e98626%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100215))))
            (if (macro-uninitialized-thread-exception? _%exn98624%_)
                (macro-uninitialized-thread-exception-arguments _%exn98624%_)
                (let ((__tmp100216
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn98624%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100216))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn98618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98618%_))
            (let ((_%e98621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98618%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98621%_)
                  (macro-uninitialized-thread-exception-procedure _%e98621%_)
                  (let ((__tmp100217
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e98621%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100217))))
            (if (macro-uninitialized-thread-exception? _%exn98618%_)
                (macro-uninitialized-thread-exception-procedure _%exn98618%_)
                (let ((__tmp100218
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn98618%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100218))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn98614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98614%_))
            (let ((_%e98616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98614%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e98616%_))
            (macro-unknown-keyword-argument-exception? _%exn98614%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn98610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98610%_))
            (let ((_%e98612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98610%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98612%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e98612%_)
                  (let ((__tmp100219
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e98612%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100219))))
            (if (macro-unknown-keyword-argument-exception? _%exn98610%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn98610%_)
                (let ((__tmp100220
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn98610%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100220))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn98604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98604%_))
            (let ((_%e98607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98604%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98607%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e98607%_)
                  (let ((__tmp100221
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e98607%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100221))))
            (if (macro-unknown-keyword-argument-exception? _%exn98604%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn98604%_)
                (let ((__tmp100222
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn98604%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100222))))))
    (define unterminated-process-exception?
      (lambda (_%exn98600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98600%_))
            (let ((_%e98602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98600%_ 'exception))))
              (macro-unterminated-process-exception? _%e98602%_))
            (macro-unterminated-process-exception? _%exn98600%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn98596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98596%_))
            (let ((_%e98598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98596%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98598%_)
                  (macro-unterminated-process-exception-arguments _%e98598%_)
                  (let ((__tmp100223
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e98598%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100223))))
            (if (macro-unterminated-process-exception? _%exn98596%_)
                (macro-unterminated-process-exception-arguments _%exn98596%_)
                (let ((__tmp100224
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn98596%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100224))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn98590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98590%_))
            (let ((_%e98593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98590%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98593%_)
                  (macro-unterminated-process-exception-procedure _%e98593%_)
                  (let ((__tmp100225
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e98593%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100225))))
            (if (macro-unterminated-process-exception? _%exn98590%_)
                (macro-unterminated-process-exception-procedure _%exn98590%_)
                (let ((__tmp100226
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn98590%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100226))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn98586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98586%_))
            (let ((_%e98588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98586%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e98588%_))
            (macro-wrong-number-of-arguments-exception? _%exn98586%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn98582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98582%_))
            (let ((_%e98584%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98582%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98584%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e98584%_)
                  (let ((__tmp100227
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e98584%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100227))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98582%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn98582%_)
                (let ((__tmp100228
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn98582%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100228))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn98576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98576%_))
            (let ((_%e98579%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98576%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98579%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e98579%_)
                  (let ((__tmp100229
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e98579%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100229))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98576%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn98576%_)
                (let ((__tmp100230
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn98576%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100230))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn98572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98572%_))
            (let ((_%e98574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98572%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e98574%_))
            (macro-wrong-number-of-values-exception? _%exn98572%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn98568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98568%_))
            (let ((_%e98570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98568%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98570%_)
                  (macro-wrong-number-of-values-exception-code _%e98570%_)
                  (let ((__tmp100231
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e98570%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100231))))
            (if (macro-wrong-number-of-values-exception? _%exn98568%_)
                (macro-wrong-number-of-values-exception-code _%exn98568%_)
                (let ((__tmp100232
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn98568%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100232))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn98564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98564%_))
            (let ((_%e98566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98564%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98566%_)
                  (macro-wrong-number-of-values-exception-rte _%e98566%_)
                  (let ((__tmp100233
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e98566%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100233))))
            (if (macro-wrong-number-of-values-exception? _%exn98564%_)
                (macro-wrong-number-of-values-exception-rte _%exn98564%_)
                (let ((__tmp100234
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn98564%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100234))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn98558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98558%_))
            (let ((_%e98561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98558%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98561%_)
                  (macro-wrong-number-of-values-exception-vals _%e98561%_)
                  (let ((__tmp100235
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e98561%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100235))))
            (if (macro-wrong-number-of-values-exception? _%exn98558%_)
                (macro-wrong-number-of-values-exception-vals _%exn98558%_)
                (let ((__tmp100236
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn98558%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100236))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn98552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98552%_))
            (let ((_%e98555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98552%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e98555%_))
            (macro-wrong-processor-c-return-exception? _%exn98552%_))))))
