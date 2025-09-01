(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1756721294)
  (begin
    (define Exception::t
      (let ((__tmp111806 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp111806
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args111776%_
        (apply make-instance Exception::t _%$args111776%_)))
    (define StackTrace::t
      (let ((__tmp111807 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp111807
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args111773%_
        (apply make-instance StackTrace::t _%$args111773%_)))
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
      (let ((__tmp111808 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp111808
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args111770%_ (apply make-instance Error::t _%$args111770%_)))
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
      (let ((__tmp111809 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp111809
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args111767%_
        (apply make-instance ContractViolation::t _%$args111767%_)))
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
      (let ((__tmp111810 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp111810
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args111764%_
        (apply make-instance RuntimeException::t _%$args111764%_)))
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
      (lambda (_%exn111759%_ _%continue111760%_)
        (let ((_%exn111762%_ (wrap-runtime-exception _%exn111759%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn111762%_ _%continue111760%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn111755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn111755%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn111755%_ 'continuation))
                '#!void
                (let ((__tmp111811
                       (lambda (_%cont111757%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn111755%_
                            'continuation
                            _%cont111757%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp111811)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn111755%_))))
    (define error
      (lambda (_%message111752%_ . _%irritants111753%_)
        (raise (let ((__obj111803
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj111803
                  _%message111752%_
                  'irritants:
                  _%irritants111753%_)
                 __obj111803))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords111724%_
               _%ctx111719111725%_
               _%contract-expr111720111727%_
               _%value111721111729%_
               _%message111731%_)
        (let* ((_%ctx111733%_
                (if (eq? _%ctx111719111725%_ absent-value)
                    '#f
                    _%ctx111719111725%_))
               (_%contract-expr111735%_
                (if (eq? _%contract-expr111720111727%_ absent-value)
                    '#f
                    _%contract-expr111720111727%_))
               (_%value111737%_
                (if (eq? _%value111721111729%_ absent-value)
                    '#f
                    _%value111721111729%_)))
          (raise (let ((__obj111804
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj111804
                    _%message111731%_
                    'where:
                    _%ctx111733%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr111735%_
                                (cons 'value: (cons _%value111737%_ '())))))
                   __obj111804)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords111742%_ . _%args111743%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords111742%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111742%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111742%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111742%_
                  'value:
                  absent-value))
               _%args111743%_)))
    (define __raise-contract-violation-error
      (lambda _%args111722111749%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args111722111749%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler111693%_ _%thunk111694%_)
        (if (procedure? _%handler111693%_)
            (let ((_%handler111698%_ _%handler111693%_))
              (if (procedure? _%thunk111694%_)
                  (let ((_%thunk111708%_ _%thunk111694%_))
                    (__with-exception-handler
                     _%handler111698%_
                     _%thunk111708%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk111694%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler111693%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler111668%_ _%thunk111669%_)
        (let* ((_%handler111672%_ _%handler111668%_)
               (_%thunk111680%_ _%thunk111669%_)
               (__tmp111812
                (lambda (_%exn111689%_)
                  (let ((_%exn111691%_ (wrap-runtime-exception _%exn111689%_)))
                    (declare (not safe))
                    (_%handler111672%_ _%exn111691%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp111812 _%thunk111680%_))))
    (define with-catch
      (lambda (_%handler111643%_ _%thunk111644%_)
        (if (procedure? _%handler111643%_)
            (let ((_%handler111648%_ _%handler111643%_))
              (if (procedure? _%thunk111644%_)
                  (let ((_%thunk111658%_ _%thunk111644%_))
                    (__with-catch _%handler111648%_ _%thunk111658%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk111644%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler111643%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler111618%_ _%thunk111619%_)
        (let* ((_%handler111622%_ _%handler111618%_)
               (_%thunk111630%_ _%thunk111619%_)
               (__tmp111813
                (lambda (_%cont111639%_)
                  (__with-exception-handler
                   (lambda (_%exn111641%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont111639%_
                        _%handler111622%_
                        _%exn111641%_)))
                   _%thunk111630%_))))
          (declare (not safe))
          (##continuation-capture __tmp111813))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn111605%_)
        (if (or (heap-overflow-exception? _%exn111605%_)
                (stack-overflow-exception? _%exn111605%_))
            _%exn111605%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn111605%_))
                _%exn111605%_
                (if (macro-exception? _%exn111605%_)
                    (let ((_%rte111613%_
                           (let ((__obj111805
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj111805
                                _%exn111605%_
                                '2
                                '#f
                                '#f))
                             __obj111805)))
                      (let ((__tmp111814
                             (lambda (_%cont111615%_)
                               (let ((__tmp111815
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont111615%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte111613%_
                                  'continuation
                                  __tmp111815)))))
                        (declare (not safe))
                        (##continuation-capture __tmp111814))
                      _%rte111613%_)
                    _%exn111605%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj111600%_)
        (let ((_%$e111602%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj111600%_))))
          (if _%$e111602%_ _%$e111602%_ (error-exception? _%obj111600%_)))))
    (define error-message
      (lambda (_%obj111593%_)
        (let ((_%$e111595%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj111593%_ 'message false))))
          (if _%$e111595%_
              _%$e111595%_
              (if (error-exception? _%obj111593%_)
                  (error-exception-message _%obj111593%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj111588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj111588%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj111588%_ 'irritants))
            (if (error-exception? _%obj111588%_)
                (error-exception-parameters _%obj111588%_)
                '#f))))
    (define error-trace
      (lambda (_%obj111586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj111586%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj111586%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e111567%_ _%port111568%_)
        (let ((_%$e111570%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e111567%_ 'display-exception))))
          (if _%$e111570%_
              ((lambda (_%f111573%_) (_%f111573%_ _%e111567%_ _%port111568%_))
               _%$e111570%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e111567%_ _%port111568%_))))))
    (define display-exception__0
      (lambda (_%e111579%_)
        (let ((_%port111581%_ (current-error-port)))
          (display-exception__% _%e111579%_ _%port111581%_))))
    (define display-exception
      (lambda _g111816_
        (let ((_g111817_ (let () (declare (not safe)) (##length _g111816_))))
          (cond ((let () (declare (not safe)) (##fx= _g111817_ 1))
                 (apply display-exception__0 _g111816_))
                ((let () (declare (not safe)) (##fx= _g111817_ 2))
                 (apply display-exception__% _g111816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g111816_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self111545%_ _%message111546%_ . _%rest111547%_)
        (let* ((_%self111550%_ _%self111545%_)
               (_%message111564%_
                (if (string? _%message111546%_)
                    _%message111546%_
                    (call-with-output-string
                     '""
                     (lambda (_%g111559111561%_)
                       (display _%message111546%_ _%g111559111561%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self111550%_ 'message _%message111564%_))
          (apply class-instance-init! _%self111550%_ _%rest111547%_))))
    (define Error:::init!::specialize
      (lambda (__klass111778 __method-table111779)
        (let ((__message111780
               (let ((__slot111781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111778 'message))))
                 (if __slot111781
                     __slot111781
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self111545%_ _%message111546%_ . _%rest111547%_)
            (let* ((_%self111550%_ _%self111545%_)
                   (_%message111564%_
                    (if (string? _%message111546%_)
                        _%message111546%_
                        (call-with-output-string
                         '""
                         (lambda (_%g111559111561%_)
                           (display _%message111546%_ _%g111559111561%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self111550%_
                 _%message111564%_
                 __message111780
                 '#f
                 '#f))
              (apply class-instance-init! _%self111550%_ _%rest111547%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__% Error::t ':init! Error:::init! '#f))
    (define ContractViolation:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       ContractViolation::t
       ':init!
       ContractViolation:::init!
       '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_%self111269%_ _%port111270%_)
        (let ((_%self111273%_ _%self111269%_))
          (let ((_%tmp-port111283%_ (open-output-string))
                (_%display-error-newline111284%_
                 (> (output-port-column _%port111270%_) '0)))
            (fix-port-width! _%tmp-port111283%_)
            (let ((__tmp111818
                   (lambda ()
                     (if _%display-error-newline111284%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e111287%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self111273%_ 'where))))
                       (if _%$e111287%_ (display _%$e111287%_) (display '"?")))
                     (let ((__tmp111819
                            (let ((__tmp111820
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self111273%_))))
                              (declare (not safe))
                              (##type-name __tmp111820))))
                       (declare (not safe))
                       (display* '" [" __tmp111819 '"]: "))
                     (let ((__tmp111821
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self111273%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp111821))
                     (let ((_%irritants111291%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self111273%_ 'irritants))))
                       (if (null? _%irritants111291%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj111293%_)
                                (if (u8vector? _%obj111293%_)
                                    (let ((__tmp111822
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj111293%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp111822))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj111293%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants111291%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont111294111296%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self111273%_
                                   'continuation))))
                           (if _%cont111294111296%_
                               (let ((_%cont111299%_ _%cont111294111296%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont111299%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp111818
               current-output-port
               _%tmp-port111283%_))
            (let ((__tmp111823 (get-output-string _%tmp-port111283%_)))
              (declare (not safe))
              (##write-string __tmp111823 _%port111270%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass111782 __method-table111783)
        (let ((__continuation111784
               (let ((__slot111788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111782 'continuation))))
                 (if __slot111788
                     __slot111788
                     (error '"Unknown slot" 'continuation))))
              (__message111785
               (let ((__slot111789
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111782 'message))))
                 (if __slot111789
                     __slot111789
                     (error '"Unknown slot" 'message))))
              (__irritants111786
               (let ((__slot111790
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111782 'irritants))))
                 (if __slot111790
                     __slot111790
                     (error '"Unknown slot" 'irritants))))
              (__where111787
               (let ((__slot111791
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111782 'where))))
                 (if __slot111791
                     __slot111791
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self111269%_ _%port111270%_)
            (let ((_%self111273%_ _%self111269%_))
              (let ((_%tmp-port111283%_ (open-output-string))
                    (_%display-error-newline111284%_
                     (> (output-port-column _%port111270%_) '0)))
                (fix-port-width! _%tmp-port111283%_)
                (let ((__tmp111824
                       (lambda ()
                         (if _%display-error-newline111284%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e111287%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self111273%_
                                   __where111787
                                   '#f
                                   '#f))))
                           (if _%$e111287%_
                               (display _%$e111287%_)
                               (display '"?")))
                         (let ((__tmp111825
                                (let ((__tmp111826
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self111273%_))))
                                  (declare (not safe))
                                  (##type-name __tmp111826))))
                           (declare (not safe))
                           (display* '" [" __tmp111825 '"]: "))
                         (let ((__tmp111827
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self111273%_
                                   __message111785
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp111827))
                         (let ((_%irritants111291%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self111273%_
                                   __irritants111786
                                   '#f
                                   '#f))))
                           (if (null? _%irritants111291%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj111293%_)
                                    (if (u8vector? _%obj111293%_)
                                        (let ((__tmp111828
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj111293%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp111828))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj111293%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants111291%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont111294111296%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self111273%_
                                       __continuation111784
                                       '#f
                                       '#f))))
                               (if _%cont111294111296%_
                                   (let ((_%cont111299%_ _%cont111294111296%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont111299%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp111824
                   current-output-port
                   _%tmp-port111283%_))
                (let ((__tmp111829 (get-output-string _%tmp-port111283%_)))
                  (declare (not safe))
                  (##write-string __tmp111829 _%port111270%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self111125%_ _%port111126%_)
        (let* ((_%self111129%_ _%self111125%_)
               (_%tmp-port111139%_ (open-output-string)))
          (fix-port-width! _%tmp-port111139%_)
          (let ((__tmp111830
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self111129%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp111830 _%tmp-port111139%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont111140111142%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self111129%_ 'continuation))))
                (if _%cont111140111142%_
                    (let ((_%cont111145%_ _%cont111140111142%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port111139%_)
                      (newline _%tmp-port111139%_)
                      (display-continuation-backtrace
                       _%cont111145%_
                       _%tmp-port111139%_))
                    '#f))
              '#!void)
          (let ((__tmp111831 (get-output-string _%tmp-port111139%_)))
            (declare (not safe))
            (##write-string __tmp111831 _%port111126%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass111792 __method-table111793)
        (let ((__continuation111794
               (let ((__slot111796
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111792 'continuation))))
                 (if __slot111796
                     __slot111796
                     (error '"Unknown slot" 'continuation))))
              (__exception111795
               (let ((__slot111797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111792 'exception))))
                 (if __slot111797
                     __slot111797
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self111125%_ _%port111126%_)
            (let* ((_%self111129%_ _%self111125%_)
                   (_%tmp-port111139%_ (open-output-string)))
              (fix-port-width! _%tmp-port111139%_)
              (let ((__tmp111832
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self111129%_
                        __exception111795
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp111832 _%tmp-port111139%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont111140111142%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self111129%_
                            __continuation111794
                            '#f
                            '#f))))
                    (if _%cont111140111142%_
                        (let ((_%cont111145%_ _%cont111140111142%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port111139%_)
                          (newline _%tmp-port111139%_)
                          (display-continuation-backtrace
                           _%cont111145%_
                           _%tmp-port111139%_))
                        '#f))
                  '#!void)
              (let ((__tmp111833 (get-output-string _%tmp-port111139%_)))
                (declare (not safe))
                (##write-string __tmp111833 _%port111126%_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port110997%_)
        (if (macro-character-port? _%port110997%_)
            (let ((_%old-width110999%_
                   (macro-character-port-output-width _%port110997%_)))
              (macro-character-port-output-width-set!
               _%port110997%_
               (lambda (_%port111001%_) '256))
              _%old-width110999%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port110994%_ _%old-width110995%_)
        (if (macro-character-port? _%port110994%_)
            (macro-character-port-output-width-set!
             _%port110994%_
             _%old-width110995%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e110992%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e110992%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn110986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110986%_))
            (let ((_%e110989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110986%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e110989%_))
            (macro-abandoned-mutex-exception? _%exn110986%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn110982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110982%_))
            (let ((_%e110984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110982%_ 'exception))))
              (macro-cfun-conversion-exception? _%e110984%_))
            (macro-cfun-conversion-exception? _%exn110982%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn110978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110978%_))
            (let ((_%e110980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110978%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110980%_)
                  (macro-cfun-conversion-exception-arguments _%e110980%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e110980%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110978%_)
                (macro-cfun-conversion-exception-arguments _%exn110978%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn110978%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn110974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110974%_))
            (let ((_%e110976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110974%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110976%_)
                  (macro-cfun-conversion-exception-code _%e110976%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e110976%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110974%_)
                (macro-cfun-conversion-exception-code _%exn110974%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn110974%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn110970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110970%_))
            (let ((_%e110972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110970%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110972%_)
                  (macro-cfun-conversion-exception-message _%e110972%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e110972%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110970%_)
                (macro-cfun-conversion-exception-message _%exn110970%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn110970%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn110964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110964%_))
            (let ((_%e110967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110964%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110967%_)
                  (macro-cfun-conversion-exception-procedure _%e110967%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e110967%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110964%_)
                (macro-cfun-conversion-exception-procedure _%exn110964%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn110964%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn110960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110960%_))
            (let ((_%e110962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110960%_ 'exception))))
              (macro-datum-parsing-exception? _%e110962%_))
            (macro-datum-parsing-exception? _%exn110960%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn110956%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110956%_))
            (let ((_%e110958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110956%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110958%_)
                  (macro-datum-parsing-exception-kind _%e110958%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e110958%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110956%_)
                (macro-datum-parsing-exception-kind _%exn110956%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn110956%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn110952%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110952%_))
            (let ((_%e110954%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110952%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110954%_)
                  (macro-datum-parsing-exception-parameters _%e110954%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e110954%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110952%_)
                (macro-datum-parsing-exception-parameters _%exn110952%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn110952%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn110946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110946%_))
            (let ((_%e110949%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110946%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110949%_)
                  (macro-datum-parsing-exception-readenv _%e110949%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e110949%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110946%_)
                (macro-datum-parsing-exception-readenv _%exn110946%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn110946%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn110940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110940%_))
            (let ((_%e110943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110940%_ 'exception))))
              (macro-deadlock-exception? _%e110943%_))
            (macro-deadlock-exception? _%exn110940%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn110936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110936%_))
            (let ((_%e110938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110936%_ 'exception))))
              (macro-divide-by-zero-exception? _%e110938%_))
            (macro-divide-by-zero-exception? _%exn110936%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn110932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110932%_))
            (let ((_%e110934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110932%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e110934%_)
                  (macro-divide-by-zero-exception-arguments _%e110934%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e110934%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn110932%_)
                (macro-divide-by-zero-exception-arguments _%exn110932%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn110932%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn110926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110926%_))
            (let ((_%e110929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110926%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e110929%_)
                  (macro-divide-by-zero-exception-procedure _%e110929%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e110929%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn110926%_)
                (macro-divide-by-zero-exception-procedure _%exn110926%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn110926%_ '())))))))
    (define error-exception?
      (lambda (_%exn110922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110922%_))
            (let ((_%e110924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110922%_ 'exception))))
              (macro-error-exception? _%e110924%_))
            (macro-error-exception? _%exn110922%_))))
    (define error-exception-message
      (lambda (_%exn110918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110918%_))
            (let ((_%e110920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110918%_ 'exception))))
              (if (macro-error-exception? _%e110920%_)
                  (macro-error-exception-message _%e110920%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e110920%_ '())))))
            (if (macro-error-exception? _%exn110918%_)
                (macro-error-exception-message _%exn110918%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn110918%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn110912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110912%_))
            (let ((_%e110915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110912%_ 'exception))))
              (if (macro-error-exception? _%e110915%_)
                  (macro-error-exception-parameters _%e110915%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e110915%_ '())))))
            (if (macro-error-exception? _%exn110912%_)
                (macro-error-exception-parameters _%exn110912%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn110912%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn110908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110908%_))
            (let ((_%e110910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110908%_ 'exception))))
              (macro-expression-parsing-exception? _%e110910%_))
            (macro-expression-parsing-exception? _%exn110908%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn110904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110904%_))
            (let ((_%e110906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110904%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110906%_)
                  (macro-expression-parsing-exception-kind _%e110906%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e110906%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110904%_)
                (macro-expression-parsing-exception-kind _%exn110904%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn110904%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn110900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110900%_))
            (let ((_%e110902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110900%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110902%_)
                  (macro-expression-parsing-exception-parameters _%e110902%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e110902%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110900%_)
                (macro-expression-parsing-exception-parameters _%exn110900%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn110900%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn110894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110894%_))
            (let ((_%e110897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110894%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110897%_)
                  (macro-expression-parsing-exception-source _%e110897%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e110897%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110894%_)
                (macro-expression-parsing-exception-source _%exn110894%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn110894%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn110890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110890%_))
            (let ((_%e110892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110890%_ 'exception))))
              (macro-file-exists-exception? _%e110892%_))
            (macro-file-exists-exception? _%exn110890%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn110886%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110886%_))
            (let ((_%e110888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110886%_ 'exception))))
              (if (macro-file-exists-exception? _%e110888%_)
                  (macro-file-exists-exception-arguments _%e110888%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e110888%_ '())))))
            (if (macro-file-exists-exception? _%exn110886%_)
                (macro-file-exists-exception-arguments _%exn110886%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn110886%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn110880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110880%_))
            (let ((_%e110883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110880%_ 'exception))))
              (if (macro-file-exists-exception? _%e110883%_)
                  (macro-file-exists-exception-procedure _%e110883%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e110883%_ '())))))
            (if (macro-file-exists-exception? _%exn110880%_)
                (macro-file-exists-exception-procedure _%exn110880%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn110880%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn110876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110876%_))
            (let ((_%e110878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110876%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e110878%_))
            (macro-fixnum-overflow-exception? _%exn110876%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn110872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110872%_))
            (let ((_%e110874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110872%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e110874%_)
                  (macro-fixnum-overflow-exception-arguments _%e110874%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e110874%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn110872%_)
                (macro-fixnum-overflow-exception-arguments _%exn110872%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn110872%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn110866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110866%_))
            (let ((_%e110869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110866%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e110869%_)
                  (macro-fixnum-overflow-exception-procedure _%e110869%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e110869%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn110866%_)
                (macro-fixnum-overflow-exception-procedure _%exn110866%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn110866%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn110860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110860%_))
            (let ((_%e110863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110860%_ 'exception))))
              (macro-heap-overflow-exception? _%e110863%_))
            (macro-heap-overflow-exception? _%exn110860%_))))
    (define inactive-thread-exception?
      (lambda (_%exn110856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110856%_))
            (let ((_%e110858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110856%_ 'exception))))
              (macro-inactive-thread-exception? _%e110858%_))
            (macro-inactive-thread-exception? _%exn110856%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn110852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110852%_))
            (let ((_%e110854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110852%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e110854%_)
                  (macro-inactive-thread-exception-arguments _%e110854%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e110854%_ '())))))
            (if (macro-inactive-thread-exception? _%exn110852%_)
                (macro-inactive-thread-exception-arguments _%exn110852%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn110852%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn110846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110846%_))
            (let ((_%e110849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110846%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e110849%_)
                  (macro-inactive-thread-exception-procedure _%e110849%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e110849%_ '())))))
            (if (macro-inactive-thread-exception? _%exn110846%_)
                (macro-inactive-thread-exception-procedure _%exn110846%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn110846%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn110842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110842%_))
            (let ((_%e110844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110842%_ 'exception))))
              (macro-initialized-thread-exception? _%e110844%_))
            (macro-initialized-thread-exception? _%exn110842%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn110838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110838%_))
            (let ((_%e110840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110838%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e110840%_)
                  (macro-initialized-thread-exception-arguments _%e110840%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e110840%_ '())))))
            (if (macro-initialized-thread-exception? _%exn110838%_)
                (macro-initialized-thread-exception-arguments _%exn110838%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn110838%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn110832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110832%_))
            (let ((_%e110835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110832%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e110835%_)
                  (macro-initialized-thread-exception-procedure _%e110835%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e110835%_ '())))))
            (if (macro-initialized-thread-exception? _%exn110832%_)
                (macro-initialized-thread-exception-procedure _%exn110832%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn110832%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn110828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110828%_))
            (let ((_%e110830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110828%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e110830%_))
            (macro-invalid-hash-number-exception? _%exn110828%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn110824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110824%_))
            (let ((_%e110826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110824%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e110826%_)
                  (macro-invalid-hash-number-exception-arguments _%e110826%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e110826%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn110824%_)
                (macro-invalid-hash-number-exception-arguments _%exn110824%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn110824%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn110818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110818%_))
            (let ((_%e110821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110818%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e110821%_)
                  (macro-invalid-hash-number-exception-procedure _%e110821%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e110821%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn110818%_)
                (macro-invalid-hash-number-exception-procedure _%exn110818%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn110818%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn110814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110814%_))
            (let ((_%e110816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110814%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e110816%_))
            (macro-invalid-utf8-encoding-exception? _%exn110814%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn110810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110810%_))
            (let ((_%e110812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110810%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e110812%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e110812%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e110812%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn110810%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn110810%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn110810%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn110804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110804%_))
            (let ((_%e110807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110804%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e110807%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e110807%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e110807%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn110804%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn110804%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn110804%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn110800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110800%_))
            (let ((_%e110802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110800%_ 'exception))))
              (macro-join-timeout-exception? _%e110802%_))
            (macro-join-timeout-exception? _%exn110800%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn110796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110796%_))
            (let ((_%e110798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110796%_ 'exception))))
              (if (macro-join-timeout-exception? _%e110798%_)
                  (macro-join-timeout-exception-arguments _%e110798%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e110798%_ '())))))
            (if (macro-join-timeout-exception? _%exn110796%_)
                (macro-join-timeout-exception-arguments _%exn110796%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn110796%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn110790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110790%_))
            (let ((_%e110793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110790%_ 'exception))))
              (if (macro-join-timeout-exception? _%e110793%_)
                  (macro-join-timeout-exception-procedure _%e110793%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e110793%_ '())))))
            (if (macro-join-timeout-exception? _%exn110790%_)
                (macro-join-timeout-exception-procedure _%exn110790%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn110790%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn110786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110786%_))
            (let ((_%e110788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110786%_ 'exception))))
              (macro-keyword-expected-exception? _%e110788%_))
            (macro-keyword-expected-exception? _%exn110786%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn110782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110782%_))
            (let ((_%e110784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110782%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e110784%_)
                  (macro-keyword-expected-exception-arguments _%e110784%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e110784%_ '())))))
            (if (macro-keyword-expected-exception? _%exn110782%_)
                (macro-keyword-expected-exception-arguments _%exn110782%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn110782%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn110776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110776%_))
            (let ((_%e110779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110776%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e110779%_)
                  (macro-keyword-expected-exception-procedure _%e110779%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e110779%_ '())))))
            (if (macro-keyword-expected-exception? _%exn110776%_)
                (macro-keyword-expected-exception-procedure _%exn110776%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn110776%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn110772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110772%_))
            (let ((_%e110774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110772%_ 'exception))))
              (macro-length-mismatch-exception? _%e110774%_))
            (macro-length-mismatch-exception? _%exn110772%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn110768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110768%_))
            (let ((_%e110770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110768%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110770%_)
                  (macro-length-mismatch-exception-arg-id _%e110770%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e110770%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110768%_)
                (macro-length-mismatch-exception-arg-id _%exn110768%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn110768%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn110764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110764%_))
            (let ((_%e110766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110764%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110766%_)
                  (macro-length-mismatch-exception-arguments _%e110766%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e110766%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110764%_)
                (macro-length-mismatch-exception-arguments _%exn110764%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn110764%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn110758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110758%_))
            (let ((_%e110761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110758%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110761%_)
                  (macro-length-mismatch-exception-procedure _%e110761%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e110761%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110758%_)
                (macro-length-mismatch-exception-procedure _%exn110758%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn110758%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn110754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110754%_))
            (let ((_%e110756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110754%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e110756%_))
            (macro-mailbox-receive-timeout-exception? _%exn110754%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn110750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110750%_))
            (let ((_%e110752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110750%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e110752%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e110752%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e110752%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn110750%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn110750%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn110750%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn110744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110744%_))
            (let ((_%e110747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110744%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e110747%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e110747%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e110747%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn110744%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn110744%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn110744%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn110740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110740%_))
            (let ((_%e110742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110740%_ 'exception))))
              (macro-module-not-found-exception? _%e110742%_))
            (macro-module-not-found-exception? _%exn110740%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn110736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110736%_))
            (let ((_%e110738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110736%_ 'exception))))
              (if (macro-module-not-found-exception? _%e110738%_)
                  (macro-module-not-found-exception-arguments _%e110738%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e110738%_ '())))))
            (if (macro-module-not-found-exception? _%exn110736%_)
                (macro-module-not-found-exception-arguments _%exn110736%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn110736%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn110730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110730%_))
            (let ((_%e110733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110730%_ 'exception))))
              (if (macro-module-not-found-exception? _%e110733%_)
                  (macro-module-not-found-exception-procedure _%e110733%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e110733%_ '())))))
            (if (macro-module-not-found-exception? _%exn110730%_)
                (macro-module-not-found-exception-procedure _%exn110730%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn110730%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn110724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110724%_))
            (let ((_%e110727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110724%_ 'exception))))
              (macro-multiple-c-return-exception? _%e110727%_))
            (macro-multiple-c-return-exception? _%exn110724%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn110720%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110720%_))
            (let ((_%e110722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110720%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e110722%_))
            (macro-no-such-file-or-directory-exception? _%exn110720%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn110716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110716%_))
            (let ((_%e110718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110716%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e110718%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e110718%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e110718%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn110716%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn110716%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn110716%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn110710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110710%_))
            (let ((_%e110713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110710%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e110713%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e110713%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e110713%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn110710%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn110710%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn110710%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn110706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110706%_))
            (let ((_%e110708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110706%_ 'exception))))
              (macro-noncontinuable-exception? _%e110708%_))
            (macro-noncontinuable-exception? _%exn110706%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn110700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110700%_))
            (let ((_%e110703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110700%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e110703%_)
                  (macro-noncontinuable-exception-reason _%e110703%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e110703%_ '())))))
            (if (macro-noncontinuable-exception? _%exn110700%_)
                (macro-noncontinuable-exception-reason _%exn110700%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn110700%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn110696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110696%_))
            (let ((_%e110698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110696%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e110698%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn110696%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn110692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110692%_))
            (let ((_%e110694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110692%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e110694%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e110694%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e110694%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn110692%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn110692%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn110692%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn110686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110686%_))
            (let ((_%e110689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110686%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e110689%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e110689%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e110689%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn110686%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn110686%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn110686%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn110682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110682%_))
            (let ((_%e110684%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110682%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e110684%_))
            (macro-nonprocedure-operator-exception? _%exn110682%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn110678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110678%_))
            (let ((_%e110680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110678%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110680%_)
                  (macro-nonprocedure-operator-exception-arguments _%e110680%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e110680%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110678%_)
                (macro-nonprocedure-operator-exception-arguments _%exn110678%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn110678%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn110674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110674%_))
            (let ((_%e110676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110674%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110676%_)
                  (macro-nonprocedure-operator-exception-code _%e110676%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e110676%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110674%_)
                (macro-nonprocedure-operator-exception-code _%exn110674%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn110674%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn110670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110670%_))
            (let ((_%e110672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110670%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110672%_)
                  (macro-nonprocedure-operator-exception-operator _%e110672%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e110672%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110670%_)
                (macro-nonprocedure-operator-exception-operator _%exn110670%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn110670%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn110664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110664%_))
            (let ((_%e110667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110664%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110667%_)
                  (macro-nonprocedure-operator-exception-rte _%e110667%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e110667%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110664%_)
                (macro-nonprocedure-operator-exception-rte _%exn110664%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn110664%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn110660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110660%_))
            (let ((_%e110662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110660%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e110662%_))
            (macro-not-in-compilation-context-exception? _%exn110660%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn110656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110656%_))
            (let ((_%e110658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110656%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e110658%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e110658%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e110658%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn110656%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn110656%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn110656%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn110650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110650%_))
            (let ((_%e110653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110650%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e110653%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e110653%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e110653%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn110650%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn110650%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn110650%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn110646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110646%_))
            (let ((_%e110648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110646%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e110648%_))
            (macro-number-of-arguments-limit-exception? _%exn110646%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn110642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110642%_))
            (let ((_%e110644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110642%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e110644%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e110644%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e110644%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn110642%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn110642%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn110642%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn110636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110636%_))
            (let ((_%e110639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110636%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e110639%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e110639%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e110639%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn110636%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn110636%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn110636%_ '())))))))
    (define os-exception?
      (lambda (_%exn110632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110632%_))
            (let ((_%e110634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110632%_ 'exception))))
              (macro-os-exception? _%e110634%_))
            (macro-os-exception? _%exn110632%_))))
    (define os-exception-arguments
      (lambda (_%exn110628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110628%_))
            (let ((_%e110630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110628%_ 'exception))))
              (if (macro-os-exception? _%e110630%_)
                  (macro-os-exception-arguments _%e110630%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e110630%_ '())))))
            (if (macro-os-exception? _%exn110628%_)
                (macro-os-exception-arguments _%exn110628%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn110628%_ '())))))))
    (define os-exception-code
      (lambda (_%exn110624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110624%_))
            (let ((_%e110626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110624%_ 'exception))))
              (if (macro-os-exception? _%e110626%_)
                  (macro-os-exception-code _%e110626%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e110626%_ '())))))
            (if (macro-os-exception? _%exn110624%_)
                (macro-os-exception-code _%exn110624%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn110624%_ '())))))))
    (define os-exception-message
      (lambda (_%exn110620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110620%_))
            (let ((_%e110622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110620%_ 'exception))))
              (if (macro-os-exception? _%e110622%_)
                  (macro-os-exception-message _%e110622%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e110622%_ '())))))
            (if (macro-os-exception? _%exn110620%_)
                (macro-os-exception-message _%exn110620%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn110620%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn110614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110614%_))
            (let ((_%e110617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110614%_ 'exception))))
              (if (macro-os-exception? _%e110617%_)
                  (macro-os-exception-procedure _%e110617%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e110617%_ '())))))
            (if (macro-os-exception? _%exn110614%_)
                (macro-os-exception-procedure _%exn110614%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn110614%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn110610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110610%_))
            (let ((_%e110612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110610%_ 'exception))))
              (macro-permission-denied-exception? _%e110612%_))
            (macro-permission-denied-exception? _%exn110610%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn110606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110606%_))
            (let ((_%e110608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110606%_ 'exception))))
              (if (macro-permission-denied-exception? _%e110608%_)
                  (macro-permission-denied-exception-arguments _%e110608%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e110608%_ '())))))
            (if (macro-permission-denied-exception? _%exn110606%_)
                (macro-permission-denied-exception-arguments _%exn110606%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn110606%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn110600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110600%_))
            (let ((_%e110603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110600%_ 'exception))))
              (if (macro-permission-denied-exception? _%e110603%_)
                  (macro-permission-denied-exception-procedure _%e110603%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e110603%_ '())))))
            (if (macro-permission-denied-exception? _%exn110600%_)
                (macro-permission-denied-exception-procedure _%exn110600%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn110600%_ '())))))))
    (define range-exception?
      (lambda (_%exn110596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110596%_))
            (let ((_%e110598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110596%_ 'exception))))
              (macro-range-exception? _%e110598%_))
            (macro-range-exception? _%exn110596%_))))
    (define range-exception-arg-id
      (lambda (_%exn110592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110592%_))
            (let ((_%e110594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110592%_ 'exception))))
              (if (macro-range-exception? _%e110594%_)
                  (macro-range-exception-arg-id _%e110594%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e110594%_ '())))))
            (if (macro-range-exception? _%exn110592%_)
                (macro-range-exception-arg-id _%exn110592%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn110592%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn110588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110588%_))
            (let ((_%e110590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110588%_ 'exception))))
              (if (macro-range-exception? _%e110590%_)
                  (macro-range-exception-arguments _%e110590%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e110590%_ '())))))
            (if (macro-range-exception? _%exn110588%_)
                (macro-range-exception-arguments _%exn110588%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn110588%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn110582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110582%_))
            (let ((_%e110585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110582%_ 'exception))))
              (if (macro-range-exception? _%e110585%_)
                  (macro-range-exception-procedure _%e110585%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e110585%_ '())))))
            (if (macro-range-exception? _%exn110582%_)
                (macro-range-exception-procedure _%exn110582%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn110582%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn110578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110578%_))
            (let ((_%e110580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110578%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e110580%_))
            (macro-rpc-remote-error-exception? _%exn110578%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn110574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110574%_))
            (let ((_%e110576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110574%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110576%_)
                  (macro-rpc-remote-error-exception-arguments _%e110576%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e110576%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110574%_)
                (macro-rpc-remote-error-exception-arguments _%exn110574%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn110574%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn110570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110570%_))
            (let ((_%e110572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110570%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110572%_)
                  (macro-rpc-remote-error-exception-message _%e110572%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e110572%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110570%_)
                (macro-rpc-remote-error-exception-message _%exn110570%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn110570%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn110564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110564%_))
            (let ((_%e110567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110564%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110567%_)
                  (macro-rpc-remote-error-exception-procedure _%e110567%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e110567%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110564%_)
                (macro-rpc-remote-error-exception-procedure _%exn110564%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn110564%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn110560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110560%_))
            (let ((_%e110562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110560%_ 'exception))))
              (macro-scheduler-exception? _%e110562%_))
            (macro-scheduler-exception? _%exn110560%_))))
    (define scheduler-exception-reason
      (lambda (_%exn110554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110554%_))
            (let ((_%e110557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110554%_ 'exception))))
              (if (macro-scheduler-exception? _%e110557%_)
                  (macro-scheduler-exception-reason _%e110557%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e110557%_ '())))))
            (if (macro-scheduler-exception? _%exn110554%_)
                (macro-scheduler-exception-reason _%exn110554%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn110554%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn110550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110550%_))
            (let ((_%e110552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110550%_ 'exception))))
              (macro-sfun-conversion-exception? _%e110552%_))
            (macro-sfun-conversion-exception? _%exn110550%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn110546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110546%_))
            (let ((_%e110548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110546%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110548%_)
                  (macro-sfun-conversion-exception-arguments _%e110548%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e110548%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110546%_)
                (macro-sfun-conversion-exception-arguments _%exn110546%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn110546%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn110542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110542%_))
            (let ((_%e110544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110542%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110544%_)
                  (macro-sfun-conversion-exception-code _%e110544%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e110544%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110542%_)
                (macro-sfun-conversion-exception-code _%exn110542%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn110542%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn110538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110538%_))
            (let ((_%e110540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110538%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110540%_)
                  (macro-sfun-conversion-exception-message _%e110540%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e110540%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110538%_)
                (macro-sfun-conversion-exception-message _%exn110538%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn110538%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn110532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110532%_))
            (let ((_%e110535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110532%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110535%_)
                  (macro-sfun-conversion-exception-procedure _%e110535%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e110535%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110532%_)
                (macro-sfun-conversion-exception-procedure _%exn110532%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn110532%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn110526%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110526%_))
            (let ((_%e110529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110526%_ 'exception))))
              (macro-stack-overflow-exception? _%e110529%_))
            (macro-stack-overflow-exception? _%exn110526%_))))
    (define started-thread-exception?
      (lambda (_%exn110522%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110522%_))
            (let ((_%e110524%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110522%_ 'exception))))
              (macro-started-thread-exception? _%e110524%_))
            (macro-started-thread-exception? _%exn110522%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn110518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110518%_))
            (let ((_%e110520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110518%_ 'exception))))
              (if (macro-started-thread-exception? _%e110520%_)
                  (macro-started-thread-exception-arguments _%e110520%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e110520%_ '())))))
            (if (macro-started-thread-exception? _%exn110518%_)
                (macro-started-thread-exception-arguments _%exn110518%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn110518%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn110512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110512%_))
            (let ((_%e110515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110512%_ 'exception))))
              (if (macro-started-thread-exception? _%e110515%_)
                  (macro-started-thread-exception-procedure _%e110515%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e110515%_ '())))))
            (if (macro-started-thread-exception? _%exn110512%_)
                (macro-started-thread-exception-procedure _%exn110512%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn110512%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn110508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110508%_))
            (let ((_%e110510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110508%_ 'exception))))
              (macro-terminated-thread-exception? _%e110510%_))
            (macro-terminated-thread-exception? _%exn110508%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn110504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110504%_))
            (let ((_%e110506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110504%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e110506%_)
                  (macro-terminated-thread-exception-arguments _%e110506%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e110506%_ '())))))
            (if (macro-terminated-thread-exception? _%exn110504%_)
                (macro-terminated-thread-exception-arguments _%exn110504%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn110504%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn110498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110498%_))
            (let ((_%e110501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110498%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e110501%_)
                  (macro-terminated-thread-exception-procedure _%e110501%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e110501%_ '())))))
            (if (macro-terminated-thread-exception? _%exn110498%_)
                (macro-terminated-thread-exception-procedure _%exn110498%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn110498%_ '())))))))
    (define type-exception?
      (lambda (_%exn110494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110494%_))
            (let ((_%e110496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110494%_ 'exception))))
              (macro-type-exception? _%e110496%_))
            (macro-type-exception? _%exn110494%_))))
    (define type-exception-arg-id
      (lambda (_%exn110490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110490%_))
            (let ((_%e110492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110490%_ 'exception))))
              (if (macro-type-exception? _%e110492%_)
                  (macro-type-exception-arg-id _%e110492%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e110492%_ '())))))
            (if (macro-type-exception? _%exn110490%_)
                (macro-type-exception-arg-id _%exn110490%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn110490%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn110486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110486%_))
            (let ((_%e110488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110486%_ 'exception))))
              (if (macro-type-exception? _%e110488%_)
                  (macro-type-exception-arguments _%e110488%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e110488%_ '())))))
            (if (macro-type-exception? _%exn110486%_)
                (macro-type-exception-arguments _%exn110486%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn110486%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn110482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110482%_))
            (let ((_%e110484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110482%_ 'exception))))
              (if (macro-type-exception? _%e110484%_)
                  (macro-type-exception-procedure _%e110484%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e110484%_ '())))))
            (if (macro-type-exception? _%exn110482%_)
                (macro-type-exception-procedure _%exn110482%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn110482%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn110476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110476%_))
            (let ((_%e110479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110476%_ 'exception))))
              (if (macro-type-exception? _%e110479%_)
                  (macro-type-exception-type-id _%e110479%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e110479%_ '())))))
            (if (macro-type-exception? _%exn110476%_)
                (macro-type-exception-type-id _%exn110476%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn110476%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn110472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110472%_))
            (let ((_%e110474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110472%_ 'exception))))
              (macro-unbound-global-exception? _%e110474%_))
            (macro-unbound-global-exception? _%exn110472%_))))
    (define unbound-global-exception-code
      (lambda (_%exn110468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110468%_))
            (let ((_%e110470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110468%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110470%_)
                  (macro-unbound-global-exception-code _%e110470%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e110470%_ '())))))
            (if (macro-unbound-global-exception? _%exn110468%_)
                (macro-unbound-global-exception-code _%exn110468%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn110468%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn110464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110464%_))
            (let ((_%e110466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110464%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110466%_)
                  (macro-unbound-global-exception-rte _%e110466%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e110466%_ '())))))
            (if (macro-unbound-global-exception? _%exn110464%_)
                (macro-unbound-global-exception-rte _%exn110464%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn110464%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn110458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110458%_))
            (let ((_%e110461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110458%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110461%_)
                  (macro-unbound-global-exception-variable _%e110461%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e110461%_ '())))))
            (if (macro-unbound-global-exception? _%exn110458%_)
                (macro-unbound-global-exception-variable _%exn110458%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn110458%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn110454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110454%_))
            (let ((_%e110456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110454%_ 'exception))))
              (macro-unbound-key-exception? _%e110456%_))
            (macro-unbound-key-exception? _%exn110454%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn110450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110450%_))
            (let ((_%e110452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110450%_ 'exception))))
              (if (macro-unbound-key-exception? _%e110452%_)
                  (macro-unbound-key-exception-arguments _%e110452%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e110452%_ '())))))
            (if (macro-unbound-key-exception? _%exn110450%_)
                (macro-unbound-key-exception-arguments _%exn110450%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn110450%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn110444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110444%_))
            (let ((_%e110447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110444%_ 'exception))))
              (if (macro-unbound-key-exception? _%e110447%_)
                  (macro-unbound-key-exception-procedure _%e110447%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e110447%_ '())))))
            (if (macro-unbound-key-exception? _%exn110444%_)
                (macro-unbound-key-exception-procedure _%exn110444%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn110444%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn110440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110440%_))
            (let ((_%e110442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110440%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e110442%_))
            (macro-unbound-os-environment-variable-exception? _%exn110440%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn110436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110436%_))
            (let ((_%e110438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110436%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e110438%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e110438%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e110438%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn110436%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn110436%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn110436%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn110430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110430%_))
            (let ((_%e110433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110430%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e110433%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e110433%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e110433%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn110430%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn110430%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn110430%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn110426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110426%_))
            (let ((_%e110428%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110426%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e110428%_))
            (macro-unbound-serial-number-exception? _%exn110426%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn110422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110422%_))
            (let ((_%e110424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110422%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e110424%_)
                  (macro-unbound-serial-number-exception-arguments _%e110424%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e110424%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn110422%_)
                (macro-unbound-serial-number-exception-arguments _%exn110422%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn110422%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn110416%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110416%_))
            (let ((_%e110419%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110416%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e110419%_)
                  (macro-unbound-serial-number-exception-procedure _%e110419%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e110419%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn110416%_)
                (macro-unbound-serial-number-exception-procedure _%exn110416%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn110416%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn110412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110412%_))
            (let ((_%e110414%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110412%_ 'exception))))
              (macro-uncaught-exception? _%e110414%_))
            (macro-uncaught-exception? _%exn110412%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn110408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110408%_))
            (let ((_%e110410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110408%_ 'exception))))
              (if (macro-uncaught-exception? _%e110410%_)
                  (macro-uncaught-exception-arguments _%e110410%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e110410%_ '())))))
            (if (macro-uncaught-exception? _%exn110408%_)
                (macro-uncaught-exception-arguments _%exn110408%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn110408%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn110404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110404%_))
            (let ((_%e110406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110404%_ 'exception))))
              (if (macro-uncaught-exception? _%e110406%_)
                  (macro-uncaught-exception-procedure _%e110406%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e110406%_ '())))))
            (if (macro-uncaught-exception? _%exn110404%_)
                (macro-uncaught-exception-procedure _%exn110404%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn110404%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn110398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110398%_))
            (let ((_%e110401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110398%_ 'exception))))
              (if (macro-uncaught-exception? _%e110401%_)
                  (macro-uncaught-exception-reason _%e110401%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e110401%_ '())))))
            (if (macro-uncaught-exception? _%exn110398%_)
                (macro-uncaught-exception-reason _%exn110398%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn110398%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn110394%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110394%_))
            (let ((_%e110396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110394%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e110396%_))
            (macro-uninitialized-thread-exception? _%exn110394%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn110390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110390%_))
            (let ((_%e110392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110390%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e110392%_)
                  (macro-uninitialized-thread-exception-arguments _%e110392%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e110392%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn110390%_)
                (macro-uninitialized-thread-exception-arguments _%exn110390%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn110390%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn110384%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110384%_))
            (let ((_%e110387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110384%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e110387%_)
                  (macro-uninitialized-thread-exception-procedure _%e110387%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e110387%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn110384%_)
                (macro-uninitialized-thread-exception-procedure _%exn110384%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn110384%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn110380%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110380%_))
            (let ((_%e110382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110380%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e110382%_))
            (macro-unknown-keyword-argument-exception? _%exn110380%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn110376%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110376%_))
            (let ((_%e110378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110376%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e110378%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e110378%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e110378%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn110376%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn110376%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn110376%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn110370%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110370%_))
            (let ((_%e110373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110370%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e110373%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e110373%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e110373%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn110370%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn110370%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn110370%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn110366%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110366%_))
            (let ((_%e110368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110366%_ 'exception))))
              (macro-unterminated-process-exception? _%e110368%_))
            (macro-unterminated-process-exception? _%exn110366%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn110362%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110362%_))
            (let ((_%e110364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110362%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e110364%_)
                  (macro-unterminated-process-exception-arguments _%e110364%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e110364%_ '())))))
            (if (macro-unterminated-process-exception? _%exn110362%_)
                (macro-unterminated-process-exception-arguments _%exn110362%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn110362%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn110356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110356%_))
            (let ((_%e110359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110356%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e110359%_)
                  (macro-unterminated-process-exception-procedure _%e110359%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e110359%_ '())))))
            (if (macro-unterminated-process-exception? _%exn110356%_)
                (macro-unterminated-process-exception-procedure _%exn110356%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn110356%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn110352%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110352%_))
            (let ((_%e110354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110352%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e110354%_))
            (macro-wrong-number-of-arguments-exception? _%exn110352%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn110348%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110348%_))
            (let ((_%e110350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110348%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e110350%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e110350%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e110350%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn110348%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn110348%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn110348%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn110342%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110342%_))
            (let ((_%e110345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110342%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e110345%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e110345%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e110345%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn110342%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn110342%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn110342%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn110338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110338%_))
            (let ((_%e110340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110338%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e110340%_))
            (macro-wrong-number-of-values-exception? _%exn110338%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn110334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110334%_))
            (let ((_%e110336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110334%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e110336%_)
                  (macro-wrong-number-of-values-exception-code _%e110336%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e110336%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn110334%_)
                (macro-wrong-number-of-values-exception-code _%exn110334%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn110334%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn110330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110330%_))
            (let ((_%e110332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110330%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e110332%_)
                  (macro-wrong-number-of-values-exception-rte _%e110332%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e110332%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn110330%_)
                (macro-wrong-number-of-values-exception-rte _%exn110330%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn110330%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn110324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110324%_))
            (let ((_%e110327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110324%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e110327%_)
                  (macro-wrong-number-of-values-exception-vals _%e110327%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e110327%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn110324%_)
                (macro-wrong-number-of-values-exception-vals _%exn110324%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn110324%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn110318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110318%_))
            (let ((_%e110321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110318%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e110321%_))
            (macro-wrong-processor-c-return-exception? _%exn110318%_))))))
