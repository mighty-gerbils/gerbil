(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712084994)
  (begin
    (define Exception::t
      (let ((__tmp99939 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp99939
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args99929%_
        (apply make-instance Exception::t _%$args99929%_)))
    (define StackTrace::t
      (let ((__tmp99940 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp99940
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args99926%_
        (apply make-instance StackTrace::t _%$args99926%_)))
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
      (let ((__tmp99941 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp99941
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args99923%_ (apply make-instance Error::t _%$args99923%_)))
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
      (let ((__tmp99942 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp99942
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args99920%_
        (apply make-instance ContractViolation::t _%$args99920%_)))
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
      (let ((__tmp99943 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp99943
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args99917%_
        (apply make-instance RuntimeException::t _%$args99917%_)))
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
      (lambda (_%exn99912%_ _%continue99913%_)
        (let ((_%exn99915%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn99912%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn99915%_ _%continue99913%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn99908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn99908%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn99908%_ 'continuation))
                '#!void
                (let ((__tmp99944
                       (lambda (_%cont99910%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn99908%_
                            'continuation
                            _%cont99910%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp99944)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn99908%_))))
    (define error
      (lambda (_%message99905%_ . _%irritants99906%_)
        (let ((__tmp99945
               (let ((__obj99936
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj99936
                  _%message99905%_
                  'irritants:
                  _%irritants99906%_)
                 __obj99936)))
          (declare (not safe))
          (raise __tmp99945))))
    (define __raise-contract-violation-error__%
      (lambda (_%_99876%_
               _%ctx9987199878%_
               _%contract-expr9987299880%_
               _%value9987399882%_
               _%message99884%_)
        (let* ((_%ctx99886%_
                (if (eq? _%ctx9987199878%_ absent-value)
                    '#f
                    _%ctx9987199878%_))
               (_%contract-expr99888%_
                (if (eq? _%contract-expr9987299880%_ absent-value)
                    '#f
                    _%contract-expr9987299880%_))
               (_%value99890%_
                (if (eq? _%value9987399882%_ absent-value)
                    '#f
                    _%value9987399882%_))
               (__tmp99946
                (let ((__obj99937
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj99937
                   _%message99884%_
                   'where:
                   _%ctx99886%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr99888%_
                               (cons 'value: (cons _%value99890%_ '())))))
                  __obj99937)))
          (declare (not safe))
          (raise __tmp99946))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords99895%_ . _%args99896%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords99895%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99895%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords99895%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords99895%_ 'value: absent-value))
               _%args99896%_)))
    (define __raise-contract-violation-error
      (lambda _%args9987499902%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args9987499902%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler99845%_ _%thunk99846%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99845%_))
              (let ()
                (let ((_%handler99850%_ _%handler99845%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99846%_))
                      (let ()
                        (let ((_%thunk99860%_ _%thunk99846%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-handler
                               _%handler99850%_
                               _%thunk99860%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99846%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler99845%_)))))
    (define __with-exception-handler
      (lambda (_%handler99820%_ _%thunk99821%_)
        (let ()
          (let ((_%handler99824%_ _%handler99820%_))
            (let ((_%thunk99832%_ _%thunk99821%_))
              (let ()
                (let ((__tmp99947
                       (lambda (_%exn99841%_)
                         (let ((_%exn99843%_
                                (let ()
                                  (declare (not safe))
                                  (wrap-runtime-exception _%exn99841%_))))
                           (declare (not safe))
                           (_%handler99824%_ _%exn99843%_)))))
                  (declare (not safe))
                  (##with-exception-handler __tmp99947 _%thunk99832%_))))))))
    (define with-catch
      (lambda (_%handler99795%_ _%thunk99796%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99795%_))
              (let ()
                (let ((_%handler99800%_ _%handler99795%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99796%_))
                      (let ()
                        (let ((_%thunk99810%_ _%thunk99796%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-catch
                               _%handler99800%_
                               _%thunk99810%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99796%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler99795%_)))))
    (define __with-catch
      (lambda (_%handler99770%_ _%thunk99771%_)
        (let ()
          (let ((_%handler99774%_ _%handler99770%_))
            (let ((_%thunk99782%_ _%thunk99771%_))
              (let ()
                (let ((__tmp99948
                       (lambda (_%cont99791%_)
                         (let ((__tmp99949
                                (lambda (_%exn99793%_)
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-graft
                                     _%cont99791%_
                                     _%handler99774%_
                                     _%exn99793%_)))))
                           (declare (not safe))
                           (__with-exception-handler
                            __tmp99949
                            _%thunk99782%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp99948))))))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn99757%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn99757%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn99757%_)))
            (let () _%exn99757%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn99757%_))
                (let () _%exn99757%_)
                (if (macro-exception? _%exn99757%_)
                    (let ()
                      (let ((_%rte99765%_
                             (let ((__obj99938
                                    (let ()
                                      (declare (not safe))
                                      (##structure
                                       RuntimeException::t
                                       '#f
                                       '#f))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  __obj99938
                                  _%exn99757%_
                                  '2
                                  '#f
                                  '#f))
                               __obj99938)))
                        (let ((__tmp99950
                               (lambda (_%cont99767%_)
                                 (let ((__tmp99951
                                        (let ()
                                          (declare (not safe))
                                          (##continuation-next
                                           _%cont99767%_))))
                                   (declare (not safe))
                                   (unchecked-slot-set!
                                    _%rte99765%_
                                    'continuation
                                    __tmp99951)))))
                          (declare (not safe))
                          (##continuation-capture __tmp99950))
                        _%rte99765%_))
                    (let () _%exn99757%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj99752%_)
        (let ((_%$e99754%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj99752%_))))
          (if _%$e99754%_
              _%$e99754%_
              (let () (declare (not safe)) (error-exception? _%obj99752%_))))))
    (define error-message
      (lambda (_%obj99747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99747%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99747%_ 'message)))
            (if (let () (declare (not safe)) (error-exception? _%obj99747%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj99747%_)))
                (let () '#f)))))
    (define error-irritants
      (lambda (_%obj99742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99742%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99742%_ 'irritants)))
            (if (let () (declare (not safe)) (error-exception? _%obj99742%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-parameters _%obj99742%_)))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj99740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99740%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99740%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e99721%_ _%port99722%_)
        (let ((_%$e99724%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e99721%_ 'display-exception))))
          (if _%$e99724%_
              ((lambda (_%f99727%_) (_%f99727%_ _%e99721%_ _%port99722%_))
               _%$e99724%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-display-exception _%e99721%_ _%port99722%_)))))))
    (define display-exception__0
      (lambda (_%e99733%_)
        (let ((_%port99735%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e99733%_ _%port99735%_))))
    (define display-exception
      (lambda _g99953_
        (let ((_g99952_ (let () (declare (not safe)) (##length _g99953_))))
          (cond ((let () (declare (not safe)) (##fx= _g99952_ 1))
                 (apply (lambda (_%e99733%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e99733%_)))
                        _g99953_))
                ((let () (declare (not safe)) (##fx= _g99952_ 2))
                 (apply (lambda (_%e99737%_ _%port99738%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e99737%_ _%port99738%_)))
                        _g99953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g99953_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99699%_ _%message99700%_ . _%rest99701%_)
        (let ()
          (let ((_%self99704%_ _%self99699%_))
            (let ()
              (let ((_%message99718%_
                     (if (let ()
                           (declare (not safe))
                           (string? _%message99700%_))
                         _%message99700%_
                         (call-with-output-string
                          '""
                          (lambda (_%g9971399715%_)
                            (display _%message99700%_ _%g9971399715%_))))))
                (let ()
                  (declare (not safe))
                  (unchecked-slot-set!
                   _%self99704%_
                   'message
                   _%message99718%_))
                (apply class-instance-init! _%self99704%_ _%rest99701%_)))))))
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
      (lambda (_%self99423%_ _%port99424%_)
        (let ()
          (let ((_%self99427%_ _%self99423%_))
            (let ()
              (let ((_%tmp-port99437%_ (open-output-string))
                    (_%display-error-newline99438%_
                     (> (output-port-column _%port99424%_) '0)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99437%_))
                (let ((__tmp99954
                       (lambda ()
                         (if _%display-error-newline99438%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e99441%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _%self99427%_ 'where))))
                           (if _%$e99441%_
                               (display _%$e99441%_)
                               (let () (display '"?"))))
                         (let ((__tmp99955
                                (let ((__tmp99956
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self99427%_))))
                                  (declare (not safe))
                                  (##type-name __tmp99956))))
                           (declare (not safe))
                           (display* '" [" __tmp99955 '"]: "))
                         (let ((__tmp99957
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99427%_
                                   'message))))
                           (declare (not safe))
                           (displayln __tmp99957))
                         (let ((_%irritants99445%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99427%_
                                   'irritants))))
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%irritants99445%_))
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj99447%_)
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj99447%_))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants99445%_)
                                 (newline))))
                         (if (and '#t
                                  (let ()
                                    (declare (not safe))
                                    (dump-stack-trace?)))
                             (let ((_%cont9944899450%_
                                    (let ()
                                      (declare (not safe))
                                      (unchecked-slot-ref
                                       _%self99427%_
                                       'continuation))))
                               (if _%cont9944899450%_
                                   (let ((_%cont99453%_ _%cont9944899450%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont99453%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp99954
                   current-output-port
                   _%tmp-port99437%_))
                (let ((__tmp99958 (get-output-string _%tmp-port99437%_)))
                  (declare (not safe))
                  (##write-string __tmp99958 _%port99424%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99279%_ _%port99280%_)
        (let ()
          (let ((_%self99283%_ _%self99279%_))
            (let ()
              (let ((_%tmp-port99293%_ (open-output-string)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99293%_))
                (let ((__tmp99959
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99283%_ 'exception))))
                  (declare (not safe))
                  (##default-display-exception __tmp99959 _%tmp-port99293%_))
                (if (let () (declare (not safe)) (dump-stack-trace?))
                    (let ((_%cont9929499296%_
                           (let ()
                             (declare (not safe))
                             (unchecked-slot-ref
                              _%self99283%_
                              'continuation))))
                      (if _%cont9929499296%_
                          (let ((_%cont99299%_ _%cont9929499296%_))
                            (display '"--- continuation backtrace:"
                                     _%tmp-port99293%_)
                            (newline _%tmp-port99293%_)
                            (display-continuation-backtrace
                             _%cont99299%_
                             _%tmp-port99293%_))
                          '#f))
                    '#!void)
                (let ((__tmp99960 (get-output-string _%tmp-port99293%_)))
                  (declare (not safe))
                  (##write-string __tmp99960 _%port99280%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99151%_)
        (if (macro-character-port? _%port99151%_)
            (let ((_%old-width99153%_
                   (macro-character-port-output-width _%port99151%_)))
              (macro-character-port-output-width-set!
               _%port99151%_
               (lambda (_%port99155%_) '256))
              _%old-width99153%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99148%_ _%old-width99149%_)
        (if (macro-character-port? _%port99148%_)
            (macro-character-port-output-width-set!
             _%port99148%_
             _%old-width99149%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99146%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99146%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99140%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99140%_))
            (let ((_%e99143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99140%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99143%_))
            (macro-abandoned-mutex-exception? _%exn99140%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99136%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99136%_))
            (let ((_%e99138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99136%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99138%_))
            (macro-cfun-conversion-exception? _%exn99136%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99132%_))
            (let ((_%e99134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99132%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99134%_)
                  (macro-cfun-conversion-exception-arguments _%e99134%_)
                  (let ((__tmp99961
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99134%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp99961))))
            (if (macro-cfun-conversion-exception? _%exn99132%_)
                (macro-cfun-conversion-exception-arguments _%exn99132%_)
                (let ((__tmp99962
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99132%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp99962))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99128%_))
            (let ((_%e99130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99128%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99130%_)
                  (macro-cfun-conversion-exception-code _%e99130%_)
                  (let ((__tmp99963
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99130%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp99963))))
            (if (macro-cfun-conversion-exception? _%exn99128%_)
                (macro-cfun-conversion-exception-code _%exn99128%_)
                (let ((__tmp99964
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99128%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp99964))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99124%_))
            (let ((_%e99126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99124%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99126%_)
                  (macro-cfun-conversion-exception-message _%e99126%_)
                  (let ((__tmp99965
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99126%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp99965))))
            (if (macro-cfun-conversion-exception? _%exn99124%_)
                (macro-cfun-conversion-exception-message _%exn99124%_)
                (let ((__tmp99966
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99124%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp99966))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99118%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99118%_))
            (let ((_%e99121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99118%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99121%_)
                  (macro-cfun-conversion-exception-procedure _%e99121%_)
                  (let ((__tmp99967
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99121%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp99967))))
            (if (macro-cfun-conversion-exception? _%exn99118%_)
                (macro-cfun-conversion-exception-procedure _%exn99118%_)
                (let ((__tmp99968
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99118%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp99968))))))
    (define datum-parsing-exception?
      (lambda (_%exn99114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99114%_))
            (let ((_%e99116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99114%_ 'exception))))
              (macro-datum-parsing-exception? _%e99116%_))
            (macro-datum-parsing-exception? _%exn99114%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99110%_))
            (let ((_%e99112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99110%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99112%_)
                  (macro-datum-parsing-exception-kind _%e99112%_)
                  (let ((__tmp99969
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99112%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp99969))))
            (if (macro-datum-parsing-exception? _%exn99110%_)
                (macro-datum-parsing-exception-kind _%exn99110%_)
                (let ((__tmp99970
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99110%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp99970))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99106%_))
            (let ((_%e99108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99106%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99108%_)
                  (macro-datum-parsing-exception-parameters _%e99108%_)
                  (let ((__tmp99971
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99108%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp99971))))
            (if (macro-datum-parsing-exception? _%exn99106%_)
                (macro-datum-parsing-exception-parameters _%exn99106%_)
                (let ((__tmp99972
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99106%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp99972))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99100%_))
            (let ((_%e99103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99100%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99103%_)
                  (macro-datum-parsing-exception-readenv _%e99103%_)
                  (let ((__tmp99973
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99103%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp99973))))
            (if (macro-datum-parsing-exception? _%exn99100%_)
                (macro-datum-parsing-exception-readenv _%exn99100%_)
                (let ((__tmp99974
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99100%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp99974))))))
    (define deadlock-exception?
      (lambda (_%exn99094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99094%_))
            (let ((_%e99097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99094%_ 'exception))))
              (macro-deadlock-exception? _%e99097%_))
            (macro-deadlock-exception? _%exn99094%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99090%_))
            (let ((_%e99092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99090%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99092%_))
            (macro-divide-by-zero-exception? _%exn99090%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99086%_))
            (let ((_%e99088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99086%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99088%_)
                  (macro-divide-by-zero-exception-arguments _%e99088%_)
                  (let ((__tmp99975
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99088%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp99975))))
            (if (macro-divide-by-zero-exception? _%exn99086%_)
                (macro-divide-by-zero-exception-arguments _%exn99086%_)
                (let ((__tmp99976
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99086%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp99976))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99080%_))
            (let ((_%e99083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99080%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99083%_)
                  (macro-divide-by-zero-exception-procedure _%e99083%_)
                  (let ((__tmp99977
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99083%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp99977))))
            (if (macro-divide-by-zero-exception? _%exn99080%_)
                (macro-divide-by-zero-exception-procedure _%exn99080%_)
                (let ((__tmp99978
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99080%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp99978))))))
    (define error-exception?
      (lambda (_%exn99076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99076%_))
            (let ((_%e99078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99076%_ 'exception))))
              (macro-error-exception? _%e99078%_))
            (macro-error-exception? _%exn99076%_))))
    (define error-exception-message
      (lambda (_%exn99072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99072%_))
            (let ((_%e99074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99072%_ 'exception))))
              (if (macro-error-exception? _%e99074%_)
                  (macro-error-exception-message _%e99074%_)
                  (let ((__tmp99979
                         (cons 'error-exception-message
                               (cons _%e99074%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp99979))))
            (if (macro-error-exception? _%exn99072%_)
                (macro-error-exception-message _%exn99072%_)
                (let ((__tmp99980
                       (cons 'error-exception-message
                             (cons _%exn99072%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp99980))))))
    (define error-exception-parameters
      (lambda (_%exn99066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99066%_))
            (let ((_%e99069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99066%_ 'exception))))
              (if (macro-error-exception? _%e99069%_)
                  (macro-error-exception-parameters _%e99069%_)
                  (let ((__tmp99981
                         (cons 'error-exception-parameters
                               (cons _%e99069%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp99981))))
            (if (macro-error-exception? _%exn99066%_)
                (macro-error-exception-parameters _%exn99066%_)
                (let ((__tmp99982
                       (cons 'error-exception-parameters
                             (cons _%exn99066%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp99982))))))
    (define expression-parsing-exception?
      (lambda (_%exn99062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99062%_))
            (let ((_%e99064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99062%_ 'exception))))
              (macro-expression-parsing-exception? _%e99064%_))
            (macro-expression-parsing-exception? _%exn99062%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99058%_))
            (let ((_%e99060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99058%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99060%_)
                  (macro-expression-parsing-exception-kind _%e99060%_)
                  (let ((__tmp99983
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99060%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp99983))))
            (if (macro-expression-parsing-exception? _%exn99058%_)
                (macro-expression-parsing-exception-kind _%exn99058%_)
                (let ((__tmp99984
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99058%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp99984))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99054%_))
            (let ((_%e99056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99054%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99056%_)
                  (macro-expression-parsing-exception-parameters _%e99056%_)
                  (let ((__tmp99985
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99056%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp99985))))
            (if (macro-expression-parsing-exception? _%exn99054%_)
                (macro-expression-parsing-exception-parameters _%exn99054%_)
                (let ((__tmp99986
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99054%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp99986))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99048%_))
            (let ((_%e99051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99048%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99051%_)
                  (macro-expression-parsing-exception-source _%e99051%_)
                  (let ((__tmp99987
                         (cons 'expression-parsing-exception-source
                               (cons _%e99051%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp99987))))
            (if (macro-expression-parsing-exception? _%exn99048%_)
                (macro-expression-parsing-exception-source _%exn99048%_)
                (let ((__tmp99988
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99048%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp99988))))))
    (define file-exists-exception?
      (lambda (_%exn99044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99044%_))
            (let ((_%e99046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99044%_ 'exception))))
              (macro-file-exists-exception? _%e99046%_))
            (macro-file-exists-exception? _%exn99044%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99040%_))
            (let ((_%e99042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99040%_ 'exception))))
              (if (macro-file-exists-exception? _%e99042%_)
                  (macro-file-exists-exception-arguments _%e99042%_)
                  (let ((__tmp99989
                         (cons 'file-exists-exception-arguments
                               (cons _%e99042%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp99989))))
            (if (macro-file-exists-exception? _%exn99040%_)
                (macro-file-exists-exception-arguments _%exn99040%_)
                (let ((__tmp99990
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99040%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp99990))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99034%_))
            (let ((_%e99037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99034%_ 'exception))))
              (if (macro-file-exists-exception? _%e99037%_)
                  (macro-file-exists-exception-procedure _%e99037%_)
                  (let ((__tmp99991
                         (cons 'file-exists-exception-procedure
                               (cons _%e99037%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp99991))))
            (if (macro-file-exists-exception? _%exn99034%_)
                (macro-file-exists-exception-procedure _%exn99034%_)
                (let ((__tmp99992
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99034%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp99992))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99030%_))
            (let ((_%e99032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99030%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99032%_))
            (macro-fixnum-overflow-exception? _%exn99030%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99026%_))
            (let ((_%e99028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99026%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99028%_)
                  (macro-fixnum-overflow-exception-arguments _%e99028%_)
                  (let ((__tmp99993
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99028%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp99993))))
            (if (macro-fixnum-overflow-exception? _%exn99026%_)
                (macro-fixnum-overflow-exception-arguments _%exn99026%_)
                (let ((__tmp99994
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99026%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp99994))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99020%_))
            (let ((_%e99023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99020%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99023%_)
                  (macro-fixnum-overflow-exception-procedure _%e99023%_)
                  (let ((__tmp99995
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99023%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp99995))))
            (if (macro-fixnum-overflow-exception? _%exn99020%_)
                (macro-fixnum-overflow-exception-procedure _%exn99020%_)
                (let ((__tmp99996
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99020%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp99996))))))
    (define heap-overflow-exception?
      (lambda (_%exn99014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99014%_))
            (let ((_%e99017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99014%_ 'exception))))
              (macro-heap-overflow-exception? _%e99017%_))
            (macro-heap-overflow-exception? _%exn99014%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99010%_))
            (let ((_%e99012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99010%_ 'exception))))
              (macro-inactive-thread-exception? _%e99012%_))
            (macro-inactive-thread-exception? _%exn99010%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99006%_))
            (let ((_%e99008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99006%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99008%_)
                  (macro-inactive-thread-exception-arguments _%e99008%_)
                  (let ((__tmp99997
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99008%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp99997))))
            (if (macro-inactive-thread-exception? _%exn99006%_)
                (macro-inactive-thread-exception-arguments _%exn99006%_)
                (let ((__tmp99998
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99006%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp99998))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99000%_))
            (let ((_%e99003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99000%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99003%_)
                  (macro-inactive-thread-exception-procedure _%e99003%_)
                  (let ((__tmp99999
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99003%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp99999))))
            (if (macro-inactive-thread-exception? _%exn99000%_)
                (macro-inactive-thread-exception-procedure _%exn99000%_)
                (let ((__tmp100000
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99000%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100000))))))
    (define initialized-thread-exception?
      (lambda (_%exn98996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98996%_))
            (let ((_%e98998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98996%_ 'exception))))
              (macro-initialized-thread-exception? _%e98998%_))
            (macro-initialized-thread-exception? _%exn98996%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn98992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98992%_))
            (let ((_%e98994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98992%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e98994%_)
                  (macro-initialized-thread-exception-arguments _%e98994%_)
                  (let ((__tmp100001
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e98994%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100001))))
            (if (macro-initialized-thread-exception? _%exn98992%_)
                (macro-initialized-thread-exception-arguments _%exn98992%_)
                (let ((__tmp100002
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn98992%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100002))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn98986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98986%_))
            (let ((_%e98989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98986%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e98989%_)
                  (macro-initialized-thread-exception-procedure _%e98989%_)
                  (let ((__tmp100003
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e98989%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100003))))
            (if (macro-initialized-thread-exception? _%exn98986%_)
                (macro-initialized-thread-exception-procedure _%exn98986%_)
                (let ((__tmp100004
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn98986%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100004))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn98982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98982%_))
            (let ((_%e98984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98982%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e98984%_))
            (macro-invalid-hash-number-exception? _%exn98982%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn98978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98978%_))
            (let ((_%e98980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98978%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e98980%_)
                  (macro-invalid-hash-number-exception-arguments _%e98980%_)
                  (let ((__tmp100005
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e98980%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100005))))
            (if (macro-invalid-hash-number-exception? _%exn98978%_)
                (macro-invalid-hash-number-exception-arguments _%exn98978%_)
                (let ((__tmp100006
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn98978%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100006))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn98972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98972%_))
            (let ((_%e98975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98972%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e98975%_)
                  (macro-invalid-hash-number-exception-procedure _%e98975%_)
                  (let ((__tmp100007
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e98975%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100007))))
            (if (macro-invalid-hash-number-exception? _%exn98972%_)
                (macro-invalid-hash-number-exception-procedure _%exn98972%_)
                (let ((__tmp100008
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn98972%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100008))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn98968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98968%_))
            (let ((_%e98970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98968%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e98970%_))
            (macro-invalid-utf8-encoding-exception? _%exn98968%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn98964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98964%_))
            (let ((_%e98966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98964%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e98966%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e98966%_)
                  (let ((__tmp100009
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e98966%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100009))))
            (if (macro-invalid-utf8-encoding-exception? _%exn98964%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn98964%_)
                (let ((__tmp100010
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn98964%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100010))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn98958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98958%_))
            (let ((_%e98961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98958%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e98961%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e98961%_)
                  (let ((__tmp100011
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e98961%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100011))))
            (if (macro-invalid-utf8-encoding-exception? _%exn98958%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn98958%_)
                (let ((__tmp100012
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn98958%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100012))))))
    (define join-timeout-exception?
      (lambda (_%exn98954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98954%_))
            (let ((_%e98956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98954%_ 'exception))))
              (macro-join-timeout-exception? _%e98956%_))
            (macro-join-timeout-exception? _%exn98954%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn98950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98950%_))
            (let ((_%e98952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98950%_ 'exception))))
              (if (macro-join-timeout-exception? _%e98952%_)
                  (macro-join-timeout-exception-arguments _%e98952%_)
                  (let ((__tmp100013
                         (cons 'join-timeout-exception-arguments
                               (cons _%e98952%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100013))))
            (if (macro-join-timeout-exception? _%exn98950%_)
                (macro-join-timeout-exception-arguments _%exn98950%_)
                (let ((__tmp100014
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn98950%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100014))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn98944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98944%_))
            (let ((_%e98947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98944%_ 'exception))))
              (if (macro-join-timeout-exception? _%e98947%_)
                  (macro-join-timeout-exception-procedure _%e98947%_)
                  (let ((__tmp100015
                         (cons 'join-timeout-exception-procedure
                               (cons _%e98947%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100015))))
            (if (macro-join-timeout-exception? _%exn98944%_)
                (macro-join-timeout-exception-procedure _%exn98944%_)
                (let ((__tmp100016
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn98944%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100016))))))
    (define keyword-expected-exception?
      (lambda (_%exn98940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98940%_))
            (let ((_%e98942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98940%_ 'exception))))
              (macro-keyword-expected-exception? _%e98942%_))
            (macro-keyword-expected-exception? _%exn98940%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn98936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98936%_))
            (let ((_%e98938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98936%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e98938%_)
                  (macro-keyword-expected-exception-arguments _%e98938%_)
                  (let ((__tmp100017
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e98938%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100017))))
            (if (macro-keyword-expected-exception? _%exn98936%_)
                (macro-keyword-expected-exception-arguments _%exn98936%_)
                (let ((__tmp100018
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn98936%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100018))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn98930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98930%_))
            (let ((_%e98933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98930%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e98933%_)
                  (macro-keyword-expected-exception-procedure _%e98933%_)
                  (let ((__tmp100019
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e98933%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100019))))
            (if (macro-keyword-expected-exception? _%exn98930%_)
                (macro-keyword-expected-exception-procedure _%exn98930%_)
                (let ((__tmp100020
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn98930%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100020))))))
    (define length-mismatch-exception?
      (lambda (_%exn98926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98926%_))
            (let ((_%e98928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98926%_ 'exception))))
              (macro-length-mismatch-exception? _%e98928%_))
            (macro-length-mismatch-exception? _%exn98926%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn98922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98922%_))
            (let ((_%e98924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98922%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e98924%_)
                  (macro-length-mismatch-exception-arg-id _%e98924%_)
                  (let ((__tmp100021
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e98924%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100021))))
            (if (macro-length-mismatch-exception? _%exn98922%_)
                (macro-length-mismatch-exception-arg-id _%exn98922%_)
                (let ((__tmp100022
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn98922%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100022))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn98918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98918%_))
            (let ((_%e98920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98918%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e98920%_)
                  (macro-length-mismatch-exception-arguments _%e98920%_)
                  (let ((__tmp100023
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e98920%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100023))))
            (if (macro-length-mismatch-exception? _%exn98918%_)
                (macro-length-mismatch-exception-arguments _%exn98918%_)
                (let ((__tmp100024
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn98918%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100024))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn98912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98912%_))
            (let ((_%e98915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98912%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e98915%_)
                  (macro-length-mismatch-exception-procedure _%e98915%_)
                  (let ((__tmp100025
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e98915%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100025))))
            (if (macro-length-mismatch-exception? _%exn98912%_)
                (macro-length-mismatch-exception-procedure _%exn98912%_)
                (let ((__tmp100026
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn98912%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100026))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn98908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98908%_))
            (let ((_%e98910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98908%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e98910%_))
            (macro-mailbox-receive-timeout-exception? _%exn98908%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn98904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98904%_))
            (let ((_%e98906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98904%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e98906%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e98906%_)
                  (let ((__tmp100027
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e98906%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100027))))
            (if (macro-mailbox-receive-timeout-exception? _%exn98904%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn98904%_)
                (let ((__tmp100028
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn98904%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100028))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn98898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98898%_))
            (let ((_%e98901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98898%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e98901%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e98901%_)
                  (let ((__tmp100029
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e98901%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100029))))
            (if (macro-mailbox-receive-timeout-exception? _%exn98898%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn98898%_)
                (let ((__tmp100030
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn98898%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100030))))))
    (define module-not-found-exception?
      (lambda (_%exn98894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98894%_))
            (let ((_%e98896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98894%_ 'exception))))
              (macro-module-not-found-exception? _%e98896%_))
            (macro-module-not-found-exception? _%exn98894%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn98890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98890%_))
            (let ((_%e98892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98890%_ 'exception))))
              (if (macro-module-not-found-exception? _%e98892%_)
                  (macro-module-not-found-exception-arguments _%e98892%_)
                  (let ((__tmp100031
                         (cons 'module-not-found-exception-arguments
                               (cons _%e98892%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100031))))
            (if (macro-module-not-found-exception? _%exn98890%_)
                (macro-module-not-found-exception-arguments _%exn98890%_)
                (let ((__tmp100032
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn98890%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100032))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn98884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98884%_))
            (let ((_%e98887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98884%_ 'exception))))
              (if (macro-module-not-found-exception? _%e98887%_)
                  (macro-module-not-found-exception-procedure _%e98887%_)
                  (let ((__tmp100033
                         (cons 'module-not-found-exception-procedure
                               (cons _%e98887%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100033))))
            (if (macro-module-not-found-exception? _%exn98884%_)
                (macro-module-not-found-exception-procedure _%exn98884%_)
                (let ((__tmp100034
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn98884%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100034))))))
    (define multiple-c-return-exception?
      (lambda (_%exn98878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98878%_))
            (let ((_%e98881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98878%_ 'exception))))
              (macro-multiple-c-return-exception? _%e98881%_))
            (macro-multiple-c-return-exception? _%exn98878%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn98874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98874%_))
            (let ((_%e98876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98874%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e98876%_))
            (macro-no-such-file-or-directory-exception? _%exn98874%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn98870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98870%_))
            (let ((_%e98872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98870%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98872%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e98872%_)
                  (let ((__tmp100035
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e98872%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100035))))
            (if (macro-no-such-file-or-directory-exception? _%exn98870%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn98870%_)
                (let ((__tmp100036
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn98870%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100036))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn98864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98864%_))
            (let ((_%e98867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98864%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98867%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e98867%_)
                  (let ((__tmp100037
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e98867%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100037))))
            (if (macro-no-such-file-or-directory-exception? _%exn98864%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn98864%_)
                (let ((__tmp100038
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn98864%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100038))))))
    (define noncontinuable-exception?
      (lambda (_%exn98860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98860%_))
            (let ((_%e98862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98860%_ 'exception))))
              (macro-noncontinuable-exception? _%e98862%_))
            (macro-noncontinuable-exception? _%exn98860%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn98854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98854%_))
            (let ((_%e98857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98854%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e98857%_)
                  (macro-noncontinuable-exception-reason _%e98857%_)
                  (let ((__tmp100039
                         (cons 'noncontinuable-exception-reason
                               (cons _%e98857%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100039))))
            (if (macro-noncontinuable-exception? _%exn98854%_)
                (macro-noncontinuable-exception-reason _%exn98854%_)
                (let ((__tmp100040
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn98854%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100040))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn98850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98850%_))
            (let ((_%e98852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98850%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e98852%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn98850%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn98846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98846%_))
            (let ((_%e98848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98846%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98848%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e98848%_)
                  (let ((__tmp100041
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e98848%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100041))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98846%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn98846%_)
                (let ((__tmp100042
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn98846%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100042))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn98840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98840%_))
            (let ((_%e98843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98840%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98843%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e98843%_)
                  (let ((__tmp100043
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e98843%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100043))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98840%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn98840%_)
                (let ((__tmp100044
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn98840%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100044))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn98836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98836%_))
            (let ((_%e98838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98836%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e98838%_))
            (macro-nonprocedure-operator-exception? _%exn98836%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn98832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98832%_))
            (let ((_%e98834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98832%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98834%_)
                  (macro-nonprocedure-operator-exception-arguments _%e98834%_)
                  (let ((__tmp100045
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e98834%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100045))))
            (if (macro-nonprocedure-operator-exception? _%exn98832%_)
                (macro-nonprocedure-operator-exception-arguments _%exn98832%_)
                (let ((__tmp100046
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn98832%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100046))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn98828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98828%_))
            (let ((_%e98830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98828%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98830%_)
                  (macro-nonprocedure-operator-exception-code _%e98830%_)
                  (let ((__tmp100047
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e98830%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100047))))
            (if (macro-nonprocedure-operator-exception? _%exn98828%_)
                (macro-nonprocedure-operator-exception-code _%exn98828%_)
                (let ((__tmp100048
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn98828%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100048))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn98824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98824%_))
            (let ((_%e98826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98824%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98826%_)
                  (macro-nonprocedure-operator-exception-operator _%e98826%_)
                  (let ((__tmp100049
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e98826%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100049))))
            (if (macro-nonprocedure-operator-exception? _%exn98824%_)
                (macro-nonprocedure-operator-exception-operator _%exn98824%_)
                (let ((__tmp100050
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn98824%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100050))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn98818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98818%_))
            (let ((_%e98821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98818%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98821%_)
                  (macro-nonprocedure-operator-exception-rte _%e98821%_)
                  (let ((__tmp100051
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e98821%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100051))))
            (if (macro-nonprocedure-operator-exception? _%exn98818%_)
                (macro-nonprocedure-operator-exception-rte _%exn98818%_)
                (let ((__tmp100052
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn98818%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100052))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn98814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98814%_))
            (let ((_%e98816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98814%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e98816%_))
            (macro-not-in-compilation-context-exception? _%exn98814%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn98810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98810%_))
            (let ((_%e98812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98810%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98812%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e98812%_)
                  (let ((__tmp100053
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e98812%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100053))))
            (if (macro-not-in-compilation-context-exception? _%exn98810%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn98810%_)
                (let ((__tmp100054
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn98810%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100054))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn98804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98804%_))
            (let ((_%e98807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98804%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98807%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e98807%_)
                  (let ((__tmp100055
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e98807%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100055))))
            (if (macro-not-in-compilation-context-exception? _%exn98804%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn98804%_)
                (let ((__tmp100056
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn98804%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100056))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn98800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98800%_))
            (let ((_%e98802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98800%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e98802%_))
            (macro-number-of-arguments-limit-exception? _%exn98800%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn98796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98796%_))
            (let ((_%e98798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98796%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98798%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e98798%_)
                  (let ((__tmp100057
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e98798%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100057))))
            (if (macro-number-of-arguments-limit-exception? _%exn98796%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn98796%_)
                (let ((__tmp100058
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn98796%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100058))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn98790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98790%_))
            (let ((_%e98793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98790%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98793%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e98793%_)
                  (let ((__tmp100059
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e98793%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100059))))
            (if (macro-number-of-arguments-limit-exception? _%exn98790%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn98790%_)
                (let ((__tmp100060
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn98790%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100060))))))
    (define os-exception?
      (lambda (_%exn98786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98786%_))
            (let ((_%e98788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98786%_ 'exception))))
              (macro-os-exception? _%e98788%_))
            (macro-os-exception? _%exn98786%_))))
    (define os-exception-arguments
      (lambda (_%exn98782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98782%_))
            (let ((_%e98784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98782%_ 'exception))))
              (if (macro-os-exception? _%e98784%_)
                  (macro-os-exception-arguments _%e98784%_)
                  (let ((__tmp100061
                         (cons 'os-exception-arguments (cons _%e98784%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100061))))
            (if (macro-os-exception? _%exn98782%_)
                (macro-os-exception-arguments _%exn98782%_)
                (let ((__tmp100062
                       (cons 'os-exception-arguments (cons _%exn98782%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100062))))))
    (define os-exception-code
      (lambda (_%exn98778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98778%_))
            (let ((_%e98780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98778%_ 'exception))))
              (if (macro-os-exception? _%e98780%_)
                  (macro-os-exception-code _%e98780%_)
                  (let ((__tmp100063
                         (cons 'os-exception-code (cons _%e98780%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100063))))
            (if (macro-os-exception? _%exn98778%_)
                (macro-os-exception-code _%exn98778%_)
                (let ((__tmp100064
                       (cons 'os-exception-code (cons _%exn98778%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100064))))))
    (define os-exception-message
      (lambda (_%exn98774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98774%_))
            (let ((_%e98776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98774%_ 'exception))))
              (if (macro-os-exception? _%e98776%_)
                  (macro-os-exception-message _%e98776%_)
                  (let ((__tmp100065
                         (cons 'os-exception-message (cons _%e98776%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100065))))
            (if (macro-os-exception? _%exn98774%_)
                (macro-os-exception-message _%exn98774%_)
                (let ((__tmp100066
                       (cons 'os-exception-message (cons _%exn98774%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100066))))))
    (define os-exception-procedure
      (lambda (_%exn98768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98768%_))
            (let ((_%e98771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98768%_ 'exception))))
              (if (macro-os-exception? _%e98771%_)
                  (macro-os-exception-procedure _%e98771%_)
                  (let ((__tmp100067
                         (cons 'os-exception-procedure (cons _%e98771%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100067))))
            (if (macro-os-exception? _%exn98768%_)
                (macro-os-exception-procedure _%exn98768%_)
                (let ((__tmp100068
                       (cons 'os-exception-procedure (cons _%exn98768%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100068))))))
    (define permission-denied-exception?
      (lambda (_%exn98764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98764%_))
            (let ((_%e98766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98764%_ 'exception))))
              (macro-permission-denied-exception? _%e98766%_))
            (macro-permission-denied-exception? _%exn98764%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn98760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98760%_))
            (let ((_%e98762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98760%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98762%_)
                  (macro-permission-denied-exception-arguments _%e98762%_)
                  (let ((__tmp100069
                         (cons 'permission-denied-exception-arguments
                               (cons _%e98762%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100069))))
            (if (macro-permission-denied-exception? _%exn98760%_)
                (macro-permission-denied-exception-arguments _%exn98760%_)
                (let ((__tmp100070
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn98760%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100070))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn98754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98754%_))
            (let ((_%e98757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98754%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98757%_)
                  (macro-permission-denied-exception-procedure _%e98757%_)
                  (let ((__tmp100071
                         (cons 'permission-denied-exception-procedure
                               (cons _%e98757%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100071))))
            (if (macro-permission-denied-exception? _%exn98754%_)
                (macro-permission-denied-exception-procedure _%exn98754%_)
                (let ((__tmp100072
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn98754%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100072))))))
    (define range-exception?
      (lambda (_%exn98750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98750%_))
            (let ((_%e98752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98750%_ 'exception))))
              (macro-range-exception? _%e98752%_))
            (macro-range-exception? _%exn98750%_))))
    (define range-exception-arg-id
      (lambda (_%exn98746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98746%_))
            (let ((_%e98748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98746%_ 'exception))))
              (if (macro-range-exception? _%e98748%_)
                  (macro-range-exception-arg-id _%e98748%_)
                  (let ((__tmp100073
                         (cons 'range-exception-arg-id (cons _%e98748%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100073))))
            (if (macro-range-exception? _%exn98746%_)
                (macro-range-exception-arg-id _%exn98746%_)
                (let ((__tmp100074
                       (cons 'range-exception-arg-id (cons _%exn98746%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100074))))))
    (define range-exception-arguments
      (lambda (_%exn98742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98742%_))
            (let ((_%e98744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98742%_ 'exception))))
              (if (macro-range-exception? _%e98744%_)
                  (macro-range-exception-arguments _%e98744%_)
                  (let ((__tmp100075
                         (cons 'range-exception-arguments
                               (cons _%e98744%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100075))))
            (if (macro-range-exception? _%exn98742%_)
                (macro-range-exception-arguments _%exn98742%_)
                (let ((__tmp100076
                       (cons 'range-exception-arguments
                             (cons _%exn98742%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100076))))))
    (define range-exception-procedure
      (lambda (_%exn98736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98736%_))
            (let ((_%e98739%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98736%_ 'exception))))
              (if (macro-range-exception? _%e98739%_)
                  (macro-range-exception-procedure _%e98739%_)
                  (let ((__tmp100077
                         (cons 'range-exception-procedure
                               (cons _%e98739%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100077))))
            (if (macro-range-exception? _%exn98736%_)
                (macro-range-exception-procedure _%exn98736%_)
                (let ((__tmp100078
                       (cons 'range-exception-procedure
                             (cons _%exn98736%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100078))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn98732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98732%_))
            (let ((_%e98734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98732%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e98734%_))
            (macro-rpc-remote-error-exception? _%exn98732%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn98728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98728%_))
            (let ((_%e98730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98728%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98730%_)
                  (macro-rpc-remote-error-exception-arguments _%e98730%_)
                  (let ((__tmp100079
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e98730%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100079))))
            (if (macro-rpc-remote-error-exception? _%exn98728%_)
                (macro-rpc-remote-error-exception-arguments _%exn98728%_)
                (let ((__tmp100080
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn98728%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100080))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn98724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98724%_))
            (let ((_%e98726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98724%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98726%_)
                  (macro-rpc-remote-error-exception-message _%e98726%_)
                  (let ((__tmp100081
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e98726%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100081))))
            (if (macro-rpc-remote-error-exception? _%exn98724%_)
                (macro-rpc-remote-error-exception-message _%exn98724%_)
                (let ((__tmp100082
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn98724%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100082))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn98718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98718%_))
            (let ((_%e98721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98718%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98721%_)
                  (macro-rpc-remote-error-exception-procedure _%e98721%_)
                  (let ((__tmp100083
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e98721%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100083))))
            (if (macro-rpc-remote-error-exception? _%exn98718%_)
                (macro-rpc-remote-error-exception-procedure _%exn98718%_)
                (let ((__tmp100084
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn98718%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100084))))))
    (define scheduler-exception?
      (lambda (_%exn98714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98714%_))
            (let ((_%e98716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98714%_ 'exception))))
              (macro-scheduler-exception? _%e98716%_))
            (macro-scheduler-exception? _%exn98714%_))))
    (define scheduler-exception-reason
      (lambda (_%exn98708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98708%_))
            (let ((_%e98711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98708%_ 'exception))))
              (if (macro-scheduler-exception? _%e98711%_)
                  (macro-scheduler-exception-reason _%e98711%_)
                  (let ((__tmp100085
                         (cons 'scheduler-exception-reason
                               (cons _%e98711%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100085))))
            (if (macro-scheduler-exception? _%exn98708%_)
                (macro-scheduler-exception-reason _%exn98708%_)
                (let ((__tmp100086
                       (cons 'scheduler-exception-reason
                             (cons _%exn98708%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100086))))))
    (define sfun-conversion-exception?
      (lambda (_%exn98704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98704%_))
            (let ((_%e98706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98704%_ 'exception))))
              (macro-sfun-conversion-exception? _%e98706%_))
            (macro-sfun-conversion-exception? _%exn98704%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn98700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98700%_))
            (let ((_%e98702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98700%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98702%_)
                  (macro-sfun-conversion-exception-arguments _%e98702%_)
                  (let ((__tmp100087
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e98702%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100087))))
            (if (macro-sfun-conversion-exception? _%exn98700%_)
                (macro-sfun-conversion-exception-arguments _%exn98700%_)
                (let ((__tmp100088
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn98700%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100088))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn98696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98696%_))
            (let ((_%e98698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98696%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98698%_)
                  (macro-sfun-conversion-exception-code _%e98698%_)
                  (let ((__tmp100089
                         (cons 'sfun-conversion-exception-code
                               (cons _%e98698%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100089))))
            (if (macro-sfun-conversion-exception? _%exn98696%_)
                (macro-sfun-conversion-exception-code _%exn98696%_)
                (let ((__tmp100090
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn98696%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100090))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn98692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98692%_))
            (let ((_%e98694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98692%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98694%_)
                  (macro-sfun-conversion-exception-message _%e98694%_)
                  (let ((__tmp100091
                         (cons 'sfun-conversion-exception-message
                               (cons _%e98694%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100091))))
            (if (macro-sfun-conversion-exception? _%exn98692%_)
                (macro-sfun-conversion-exception-message _%exn98692%_)
                (let ((__tmp100092
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn98692%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100092))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn98686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98686%_))
            (let ((_%e98689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98686%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98689%_)
                  (macro-sfun-conversion-exception-procedure _%e98689%_)
                  (let ((__tmp100093
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e98689%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100093))))
            (if (macro-sfun-conversion-exception? _%exn98686%_)
                (macro-sfun-conversion-exception-procedure _%exn98686%_)
                (let ((__tmp100094
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn98686%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100094))))))
    (define stack-overflow-exception?
      (lambda (_%exn98680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98680%_))
            (let ((_%e98683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98680%_ 'exception))))
              (macro-stack-overflow-exception? _%e98683%_))
            (macro-stack-overflow-exception? _%exn98680%_))))
    (define started-thread-exception?
      (lambda (_%exn98676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98676%_))
            (let ((_%e98678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98676%_ 'exception))))
              (macro-started-thread-exception? _%e98678%_))
            (macro-started-thread-exception? _%exn98676%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn98672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98672%_))
            (let ((_%e98674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98672%_ 'exception))))
              (if (macro-started-thread-exception? _%e98674%_)
                  (macro-started-thread-exception-arguments _%e98674%_)
                  (let ((__tmp100095
                         (cons 'started-thread-exception-arguments
                               (cons _%e98674%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100095))))
            (if (macro-started-thread-exception? _%exn98672%_)
                (macro-started-thread-exception-arguments _%exn98672%_)
                (let ((__tmp100096
                       (cons 'started-thread-exception-arguments
                             (cons _%exn98672%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100096))))))
    (define started-thread-exception-procedure
      (lambda (_%exn98666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98666%_))
            (let ((_%e98669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98666%_ 'exception))))
              (if (macro-started-thread-exception? _%e98669%_)
                  (macro-started-thread-exception-procedure _%e98669%_)
                  (let ((__tmp100097
                         (cons 'started-thread-exception-procedure
                               (cons _%e98669%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100097))))
            (if (macro-started-thread-exception? _%exn98666%_)
                (macro-started-thread-exception-procedure _%exn98666%_)
                (let ((__tmp100098
                       (cons 'started-thread-exception-procedure
                             (cons _%exn98666%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100098))))))
    (define terminated-thread-exception?
      (lambda (_%exn98662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98662%_))
            (let ((_%e98664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98662%_ 'exception))))
              (macro-terminated-thread-exception? _%e98664%_))
            (macro-terminated-thread-exception? _%exn98662%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn98658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98658%_))
            (let ((_%e98660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98658%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98660%_)
                  (macro-terminated-thread-exception-arguments _%e98660%_)
                  (let ((__tmp100099
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e98660%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100099))))
            (if (macro-terminated-thread-exception? _%exn98658%_)
                (macro-terminated-thread-exception-arguments _%exn98658%_)
                (let ((__tmp100100
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn98658%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100100))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn98652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98652%_))
            (let ((_%e98655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98652%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98655%_)
                  (macro-terminated-thread-exception-procedure _%e98655%_)
                  (let ((__tmp100101
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e98655%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100101))))
            (if (macro-terminated-thread-exception? _%exn98652%_)
                (macro-terminated-thread-exception-procedure _%exn98652%_)
                (let ((__tmp100102
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn98652%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100102))))))
    (define type-exception?
      (lambda (_%exn98648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98648%_))
            (let ((_%e98650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98648%_ 'exception))))
              (macro-type-exception? _%e98650%_))
            (macro-type-exception? _%exn98648%_))))
    (define type-exception-arg-id
      (lambda (_%exn98644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98644%_))
            (let ((_%e98646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98644%_ 'exception))))
              (if (macro-type-exception? _%e98646%_)
                  (macro-type-exception-arg-id _%e98646%_)
                  (let ((__tmp100103
                         (cons 'type-exception-arg-id (cons _%e98646%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100103))))
            (if (macro-type-exception? _%exn98644%_)
                (macro-type-exception-arg-id _%exn98644%_)
                (let ((__tmp100104
                       (cons 'type-exception-arg-id (cons _%exn98644%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100104))))))
    (define type-exception-arguments
      (lambda (_%exn98640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98640%_))
            (let ((_%e98642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98640%_ 'exception))))
              (if (macro-type-exception? _%e98642%_)
                  (macro-type-exception-arguments _%e98642%_)
                  (let ((__tmp100105
                         (cons 'type-exception-arguments
                               (cons _%e98642%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100105))))
            (if (macro-type-exception? _%exn98640%_)
                (macro-type-exception-arguments _%exn98640%_)
                (let ((__tmp100106
                       (cons 'type-exception-arguments
                             (cons _%exn98640%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100106))))))
    (define type-exception-procedure
      (lambda (_%exn98636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98636%_))
            (let ((_%e98638%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98636%_ 'exception))))
              (if (macro-type-exception? _%e98638%_)
                  (macro-type-exception-procedure _%e98638%_)
                  (let ((__tmp100107
                         (cons 'type-exception-procedure
                               (cons _%e98638%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100107))))
            (if (macro-type-exception? _%exn98636%_)
                (macro-type-exception-procedure _%exn98636%_)
                (let ((__tmp100108
                       (cons 'type-exception-procedure
                             (cons _%exn98636%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100108))))))
    (define type-exception-type-id
      (lambda (_%exn98630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98630%_))
            (let ((_%e98633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98630%_ 'exception))))
              (if (macro-type-exception? _%e98633%_)
                  (macro-type-exception-type-id _%e98633%_)
                  (let ((__tmp100109
                         (cons 'type-exception-type-id (cons _%e98633%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100109))))
            (if (macro-type-exception? _%exn98630%_)
                (macro-type-exception-type-id _%exn98630%_)
                (let ((__tmp100110
                       (cons 'type-exception-type-id (cons _%exn98630%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100110))))))
    (define unbound-global-exception?
      (lambda (_%exn98626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98626%_))
            (let ((_%e98628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98626%_ 'exception))))
              (macro-unbound-global-exception? _%e98628%_))
            (macro-unbound-global-exception? _%exn98626%_))))
    (define unbound-global-exception-code
      (lambda (_%exn98622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98622%_))
            (let ((_%e98624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98622%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98624%_)
                  (macro-unbound-global-exception-code _%e98624%_)
                  (let ((__tmp100111
                         (cons 'unbound-global-exception-code
                               (cons _%e98624%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100111))))
            (if (macro-unbound-global-exception? _%exn98622%_)
                (macro-unbound-global-exception-code _%exn98622%_)
                (let ((__tmp100112
                       (cons 'unbound-global-exception-code
                             (cons _%exn98622%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100112))))))
    (define unbound-global-exception-rte
      (lambda (_%exn98618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98618%_))
            (let ((_%e98620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98618%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98620%_)
                  (macro-unbound-global-exception-rte _%e98620%_)
                  (let ((__tmp100113
                         (cons 'unbound-global-exception-rte
                               (cons _%e98620%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100113))))
            (if (macro-unbound-global-exception? _%exn98618%_)
                (macro-unbound-global-exception-rte _%exn98618%_)
                (let ((__tmp100114
                       (cons 'unbound-global-exception-rte
                             (cons _%exn98618%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100114))))))
    (define unbound-global-exception-variable
      (lambda (_%exn98612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98612%_))
            (let ((_%e98615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98612%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98615%_)
                  (macro-unbound-global-exception-variable _%e98615%_)
                  (let ((__tmp100115
                         (cons 'unbound-global-exception-variable
                               (cons _%e98615%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100115))))
            (if (macro-unbound-global-exception? _%exn98612%_)
                (macro-unbound-global-exception-variable _%exn98612%_)
                (let ((__tmp100116
                       (cons 'unbound-global-exception-variable
                             (cons _%exn98612%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100116))))))
    (define unbound-key-exception?
      (lambda (_%exn98608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98608%_))
            (let ((_%e98610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98608%_ 'exception))))
              (macro-unbound-key-exception? _%e98610%_))
            (macro-unbound-key-exception? _%exn98608%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn98604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98604%_))
            (let ((_%e98606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98604%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98606%_)
                  (macro-unbound-key-exception-arguments _%e98606%_)
                  (let ((__tmp100117
                         (cons 'unbound-key-exception-arguments
                               (cons _%e98606%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100117))))
            (if (macro-unbound-key-exception? _%exn98604%_)
                (macro-unbound-key-exception-arguments _%exn98604%_)
                (let ((__tmp100118
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn98604%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100118))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn98598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98598%_))
            (let ((_%e98601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98598%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98601%_)
                  (macro-unbound-key-exception-procedure _%e98601%_)
                  (let ((__tmp100119
                         (cons 'unbound-key-exception-procedure
                               (cons _%e98601%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100119))))
            (if (macro-unbound-key-exception? _%exn98598%_)
                (macro-unbound-key-exception-procedure _%exn98598%_)
                (let ((__tmp100120
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn98598%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100120))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn98594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98594%_))
            (let ((_%e98596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98594%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e98596%_))
            (macro-unbound-os-environment-variable-exception? _%exn98594%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn98590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98590%_))
            (let ((_%e98592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98590%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98592%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e98592%_)
                  (let ((__tmp100121
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e98592%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100121))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98590%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn98590%_)
                (let ((__tmp100122
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn98590%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100122))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn98584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98584%_))
            (let ((_%e98587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98584%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98587%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e98587%_)
                  (let ((__tmp100123
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e98587%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100123))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98584%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn98584%_)
                (let ((__tmp100124
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn98584%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100124))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn98580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98580%_))
            (let ((_%e98582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98580%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e98582%_))
            (macro-unbound-serial-number-exception? _%exn98580%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn98576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98576%_))
            (let ((_%e98578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98576%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98578%_)
                  (macro-unbound-serial-number-exception-arguments _%e98578%_)
                  (let ((__tmp100125
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e98578%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100125))))
            (if (macro-unbound-serial-number-exception? _%exn98576%_)
                (macro-unbound-serial-number-exception-arguments _%exn98576%_)
                (let ((__tmp100126
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn98576%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100126))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn98570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98570%_))
            (let ((_%e98573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98570%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98573%_)
                  (macro-unbound-serial-number-exception-procedure _%e98573%_)
                  (let ((__tmp100127
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e98573%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100127))))
            (if (macro-unbound-serial-number-exception? _%exn98570%_)
                (macro-unbound-serial-number-exception-procedure _%exn98570%_)
                (let ((__tmp100128
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn98570%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100128))))))
    (define uncaught-exception?
      (lambda (_%exn98566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98566%_))
            (let ((_%e98568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98566%_ 'exception))))
              (macro-uncaught-exception? _%e98568%_))
            (macro-uncaught-exception? _%exn98566%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn98562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98562%_))
            (let ((_%e98564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98562%_ 'exception))))
              (if (macro-uncaught-exception? _%e98564%_)
                  (macro-uncaught-exception-arguments _%e98564%_)
                  (let ((__tmp100129
                         (cons 'uncaught-exception-arguments
                               (cons _%e98564%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100129))))
            (if (macro-uncaught-exception? _%exn98562%_)
                (macro-uncaught-exception-arguments _%exn98562%_)
                (let ((__tmp100130
                       (cons 'uncaught-exception-arguments
                             (cons _%exn98562%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100130))))))
    (define uncaught-exception-procedure
      (lambda (_%exn98558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98558%_))
            (let ((_%e98560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98558%_ 'exception))))
              (if (macro-uncaught-exception? _%e98560%_)
                  (macro-uncaught-exception-procedure _%e98560%_)
                  (let ((__tmp100131
                         (cons 'uncaught-exception-procedure
                               (cons _%e98560%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100131))))
            (if (macro-uncaught-exception? _%exn98558%_)
                (macro-uncaught-exception-procedure _%exn98558%_)
                (let ((__tmp100132
                       (cons 'uncaught-exception-procedure
                             (cons _%exn98558%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100132))))))
    (define uncaught-exception-reason
      (lambda (_%exn98552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98552%_))
            (let ((_%e98555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98552%_ 'exception))))
              (if (macro-uncaught-exception? _%e98555%_)
                  (macro-uncaught-exception-reason _%e98555%_)
                  (let ((__tmp100133
                         (cons 'uncaught-exception-reason
                               (cons _%e98555%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100133))))
            (if (macro-uncaught-exception? _%exn98552%_)
                (macro-uncaught-exception-reason _%exn98552%_)
                (let ((__tmp100134
                       (cons 'uncaught-exception-reason
                             (cons _%exn98552%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100134))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn98548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98548%_))
            (let ((_%e98550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98548%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e98550%_))
            (macro-uninitialized-thread-exception? _%exn98548%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn98544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98544%_))
            (let ((_%e98546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98544%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98546%_)
                  (macro-uninitialized-thread-exception-arguments _%e98546%_)
                  (let ((__tmp100135
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e98546%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100135))))
            (if (macro-uninitialized-thread-exception? _%exn98544%_)
                (macro-uninitialized-thread-exception-arguments _%exn98544%_)
                (let ((__tmp100136
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn98544%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100136))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn98538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98538%_))
            (let ((_%e98541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98538%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98541%_)
                  (macro-uninitialized-thread-exception-procedure _%e98541%_)
                  (let ((__tmp100137
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e98541%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100137))))
            (if (macro-uninitialized-thread-exception? _%exn98538%_)
                (macro-uninitialized-thread-exception-procedure _%exn98538%_)
                (let ((__tmp100138
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn98538%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100138))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn98534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98534%_))
            (let ((_%e98536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98534%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e98536%_))
            (macro-unknown-keyword-argument-exception? _%exn98534%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn98530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98530%_))
            (let ((_%e98532%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98530%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98532%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e98532%_)
                  (let ((__tmp100139
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e98532%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100139))))
            (if (macro-unknown-keyword-argument-exception? _%exn98530%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn98530%_)
                (let ((__tmp100140
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn98530%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100140))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn98524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98524%_))
            (let ((_%e98527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98524%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98527%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e98527%_)
                  (let ((__tmp100141
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e98527%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100141))))
            (if (macro-unknown-keyword-argument-exception? _%exn98524%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn98524%_)
                (let ((__tmp100142
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn98524%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100142))))))
    (define unterminated-process-exception?
      (lambda (_%exn98520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98520%_))
            (let ((_%e98522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98520%_ 'exception))))
              (macro-unterminated-process-exception? _%e98522%_))
            (macro-unterminated-process-exception? _%exn98520%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn98516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98516%_))
            (let ((_%e98518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98516%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98518%_)
                  (macro-unterminated-process-exception-arguments _%e98518%_)
                  (let ((__tmp100143
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e98518%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100143))))
            (if (macro-unterminated-process-exception? _%exn98516%_)
                (macro-unterminated-process-exception-arguments _%exn98516%_)
                (let ((__tmp100144
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn98516%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100144))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn98510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98510%_))
            (let ((_%e98513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98510%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98513%_)
                  (macro-unterminated-process-exception-procedure _%e98513%_)
                  (let ((__tmp100145
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e98513%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100145))))
            (if (macro-unterminated-process-exception? _%exn98510%_)
                (macro-unterminated-process-exception-procedure _%exn98510%_)
                (let ((__tmp100146
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn98510%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100146))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn98506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98506%_))
            (let ((_%e98508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98506%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e98508%_))
            (macro-wrong-number-of-arguments-exception? _%exn98506%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn98502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98502%_))
            (let ((_%e98504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98502%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98504%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e98504%_)
                  (let ((__tmp100147
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e98504%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100147))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98502%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn98502%_)
                (let ((__tmp100148
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn98502%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100148))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn98496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98496%_))
            (let ((_%e98499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98496%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98499%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e98499%_)
                  (let ((__tmp100149
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e98499%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100149))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98496%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn98496%_)
                (let ((__tmp100150
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn98496%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100150))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn98492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98492%_))
            (let ((_%e98494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98492%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e98494%_))
            (macro-wrong-number-of-values-exception? _%exn98492%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn98488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98488%_))
            (let ((_%e98490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98488%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98490%_)
                  (macro-wrong-number-of-values-exception-code _%e98490%_)
                  (let ((__tmp100151
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e98490%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100151))))
            (if (macro-wrong-number-of-values-exception? _%exn98488%_)
                (macro-wrong-number-of-values-exception-code _%exn98488%_)
                (let ((__tmp100152
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn98488%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100152))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn98484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98484%_))
            (let ((_%e98486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98484%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98486%_)
                  (macro-wrong-number-of-values-exception-rte _%e98486%_)
                  (let ((__tmp100153
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e98486%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100153))))
            (if (macro-wrong-number-of-values-exception? _%exn98484%_)
                (macro-wrong-number-of-values-exception-rte _%exn98484%_)
                (let ((__tmp100154
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn98484%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100154))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn98478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98478%_))
            (let ((_%e98481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98478%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98481%_)
                  (macro-wrong-number-of-values-exception-vals _%e98481%_)
                  (let ((__tmp100155
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e98481%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100155))))
            (if (macro-wrong-number-of-values-exception? _%exn98478%_)
                (macro-wrong-number-of-values-exception-vals _%exn98478%_)
                (let ((__tmp100156
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn98478%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100156))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn98472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98472%_))
            (let ((_%e98475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98472%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e98475%_))
            (macro-wrong-processor-c-return-exception? _%exn98472%_))))))
