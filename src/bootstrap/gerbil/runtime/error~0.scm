(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1756715351)
  (begin
    (define Exception::t
      (let ((__tmp111808 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp111808
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args111778%_
        (apply make-instance Exception::t _%$args111778%_)))
    (define StackTrace::t
      (let ((__tmp111809 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp111809
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args111775%_
        (apply make-instance StackTrace::t _%$args111775%_)))
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
      (let ((__tmp111810 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp111810
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args111772%_ (apply make-instance Error::t _%$args111772%_)))
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
      (let ((__tmp111811 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp111811
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args111769%_
        (apply make-instance ContractViolation::t _%$args111769%_)))
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
      (let ((__tmp111812 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp111812
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args111766%_
        (apply make-instance RuntimeException::t _%$args111766%_)))
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
      (lambda (_%exn111761%_ _%continue111762%_)
        (let ((_%exn111764%_ (wrap-runtime-exception _%exn111761%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn111764%_ _%continue111762%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn111757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn111757%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn111757%_ 'continuation))
                '#!void
                (let ((__tmp111813
                       (lambda (_%cont111759%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn111757%_
                            'continuation
                            _%cont111759%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp111813)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn111757%_))))
    (define error
      (lambda (_%message111754%_ . _%irritants111755%_)
        (raise (let ((__obj111805
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj111805
                  _%message111754%_
                  'irritants:
                  _%irritants111755%_)
                 __obj111805))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords111726%_
               _%ctx111721111727%_
               _%contract-expr111722111729%_
               _%value111723111731%_
               _%message111733%_)
        (let* ((_%ctx111735%_
                (if (eq? _%ctx111721111727%_ absent-value)
                    '#f
                    _%ctx111721111727%_))
               (_%contract-expr111737%_
                (if (eq? _%contract-expr111722111729%_ absent-value)
                    '#f
                    _%contract-expr111722111729%_))
               (_%value111739%_
                (if (eq? _%value111723111731%_ absent-value)
                    '#f
                    _%value111723111731%_)))
          (raise (let ((__obj111806
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj111806
                    _%message111733%_
                    'where:
                    _%ctx111735%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr111737%_
                                (cons 'value: (cons _%value111739%_ '())))))
                   __obj111806)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords111744%_ . _%args111745%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords111744%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111744%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111744%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111744%_
                  'value:
                  absent-value))
               _%args111745%_)))
    (define __raise-contract-violation-error
      (lambda _%args111724111751%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args111724111751%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler111695%_ _%thunk111696%_)
        (if (procedure? _%handler111695%_)
            (let ((_%handler111700%_ _%handler111695%_))
              (if (procedure? _%thunk111696%_)
                  (let ((_%thunk111710%_ _%thunk111696%_))
                    (__with-exception-handler
                     _%handler111700%_
                     _%thunk111710%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk111696%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler111695%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler111670%_ _%thunk111671%_)
        (let* ((_%handler111674%_ _%handler111670%_)
               (_%thunk111682%_ _%thunk111671%_)
               (__tmp111814
                (lambda (_%exn111691%_)
                  (let ((_%exn111693%_ (wrap-runtime-exception _%exn111691%_)))
                    (declare (not safe))
                    (_%handler111674%_ _%exn111693%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp111814 _%thunk111682%_))))
    (define with-catch
      (lambda (_%handler111645%_ _%thunk111646%_)
        (if (procedure? _%handler111645%_)
            (let ((_%handler111650%_ _%handler111645%_))
              (if (procedure? _%thunk111646%_)
                  (let ((_%thunk111660%_ _%thunk111646%_))
                    (__with-catch _%handler111650%_ _%thunk111660%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk111646%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler111645%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler111620%_ _%thunk111621%_)
        (let* ((_%handler111624%_ _%handler111620%_)
               (_%thunk111632%_ _%thunk111621%_)
               (__tmp111815
                (lambda (_%cont111641%_)
                  (__with-exception-handler
                   (lambda (_%exn111643%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont111641%_
                        _%handler111624%_
                        _%exn111643%_)))
                   _%thunk111632%_))))
          (declare (not safe))
          (##continuation-capture __tmp111815))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn111607%_)
        (if (or (heap-overflow-exception? _%exn111607%_)
                (stack-overflow-exception? _%exn111607%_))
            _%exn111607%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn111607%_))
                _%exn111607%_
                (if (macro-exception? _%exn111607%_)
                    (let ((_%rte111615%_
                           (let ((__obj111807
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj111807
                                _%exn111607%_
                                '2
                                '#f
                                '#f))
                             __obj111807)))
                      (let ((__tmp111816
                             (lambda (_%cont111617%_)
                               (let ((__tmp111817
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont111617%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte111615%_
                                  'continuation
                                  __tmp111817)))))
                        (declare (not safe))
                        (##continuation-capture __tmp111816))
                      _%rte111615%_)
                    _%exn111607%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj111602%_)
        (let ((_%$e111604%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj111602%_))))
          (if _%$e111604%_ _%$e111604%_ (error-exception? _%obj111602%_)))))
    (define error-message
      (lambda (_%obj111595%_)
        (let ((_%$e111597%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj111595%_ 'message false))))
          (if _%$e111597%_
              _%$e111597%_
              (if (error-exception? _%obj111595%_)
                  (error-exception-message _%obj111595%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj111590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj111590%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj111590%_ 'irritants))
            (if (error-exception? _%obj111590%_)
                (error-exception-parameters _%obj111590%_)
                '#f))))
    (define error-trace
      (lambda (_%obj111588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj111588%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj111588%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e111569%_ _%port111570%_)
        (let ((_%$e111572%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e111569%_ 'display-exception))))
          (if _%$e111572%_
              ((lambda (_%f111575%_) (_%f111575%_ _%e111569%_ _%port111570%_))
               _%$e111572%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e111569%_ _%port111570%_))))))
    (define display-exception__0
      (lambda (_%e111581%_)
        (let ((_%port111583%_ (current-error-port)))
          (display-exception__% _%e111581%_ _%port111583%_))))
    (define display-exception
      (lambda _g111818_
        (let ((_g111819_ (let () (declare (not safe)) (##length _g111818_))))
          (cond ((let () (declare (not safe)) (##fx= _g111819_ 1))
                 (apply display-exception__0 _g111818_))
                ((let () (declare (not safe)) (##fx= _g111819_ 2))
                 (apply display-exception__% _g111818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g111818_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self111547%_ _%message111548%_ . _%rest111549%_)
        (let* ((_%self111552%_ _%self111547%_)
               (_%message111566%_
                (if (string? _%message111548%_)
                    _%message111548%_
                    (call-with-output-string
                     '""
                     (lambda (_%g111561111563%_)
                       (display _%message111548%_ _%g111561111563%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self111552%_ 'message _%message111566%_))
          (apply class-instance-init! _%self111552%_ _%rest111549%_))))
    (define Error:::init!::specialize
      (lambda (__klass111780 __method-table111781)
        (let ((__message111782
               (let ((__slot111783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111780 'message))))
                 (if __slot111783
                     __slot111783
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self111547%_ _%message111548%_ . _%rest111549%_)
            (let* ((_%self111552%_ _%self111547%_)
                   (_%message111566%_
                    (if (string? _%message111548%_)
                        _%message111548%_
                        (call-with-output-string
                         '""
                         (lambda (_%g111561111563%_)
                           (display _%message111548%_ _%g111561111563%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self111552%_
                 _%message111566%_
                 __message111782
                 '#f
                 '#f))
              (apply class-instance-init! _%self111552%_ _%rest111549%_))))))
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
      (lambda (_%self111271%_ _%port111272%_)
        (let ((_%self111275%_ _%self111271%_))
          (let ((_%tmp-port111285%_ (open-output-string))
                (_%display-error-newline111286%_
                 (> (output-port-column _%port111272%_) '0)))
            (fix-port-width! _%tmp-port111285%_)
            (let ((__tmp111820
                   (lambda ()
                     (if _%display-error-newline111286%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e111289%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self111275%_ 'where))))
                       (if _%$e111289%_ (display _%$e111289%_) (display '"?")))
                     (let ((__tmp111821
                            (let ((__tmp111822
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self111275%_))))
                              (declare (not safe))
                              (##type-name __tmp111822))))
                       (declare (not safe))
                       (display* '" [" __tmp111821 '"]: "))
                     (let ((__tmp111823
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self111275%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp111823))
                     (let ((_%irritants111293%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self111275%_ 'irritants))))
                       (if (null? _%irritants111293%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj111295%_)
                                (if (u8vector? _%obj111295%_)
                                    (let ((__tmp111824
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj111295%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp111824))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj111295%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants111293%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont111296111298%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self111275%_
                                   'continuation))))
                           (if _%cont111296111298%_
                               (let ((_%cont111301%_ _%cont111296111298%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont111301%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp111820
               current-output-port
               _%tmp-port111285%_))
            (let ((__tmp111825 (get-output-string _%tmp-port111285%_)))
              (declare (not safe))
              (##write-string __tmp111825 _%port111272%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass111784 __method-table111785)
        (let ((__message111786
               (let ((__slot111790
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111784 'message))))
                 (if __slot111790
                     __slot111790
                     (error '"Unknown slot" 'message))))
              (__continuation111787
               (let ((__slot111791
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111784 'continuation))))
                 (if __slot111791
                     __slot111791
                     (error '"Unknown slot" 'continuation))))
              (__irritants111788
               (let ((__slot111792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111784 'irritants))))
                 (if __slot111792
                     __slot111792
                     (error '"Unknown slot" 'irritants))))
              (__where111789
               (let ((__slot111793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111784 'where))))
                 (if __slot111793
                     __slot111793
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self111271%_ _%port111272%_)
            (let ((_%self111275%_ _%self111271%_))
              (let ((_%tmp-port111285%_ (open-output-string))
                    (_%display-error-newline111286%_
                     (> (output-port-column _%port111272%_) '0)))
                (fix-port-width! _%tmp-port111285%_)
                (let ((__tmp111826
                       (lambda ()
                         (if _%display-error-newline111286%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e111289%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self111275%_
                                   __where111789
                                   '#f
                                   '#f))))
                           (if _%$e111289%_
                               (display _%$e111289%_)
                               (display '"?")))
                         (let ((__tmp111827
                                (let ((__tmp111828
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self111275%_))))
                                  (declare (not safe))
                                  (##type-name __tmp111828))))
                           (declare (not safe))
                           (display* '" [" __tmp111827 '"]: "))
                         (let ((__tmp111829
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self111275%_
                                   __message111786
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp111829))
                         (let ((_%irritants111293%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self111275%_
                                   __irritants111788
                                   '#f
                                   '#f))))
                           (if (null? _%irritants111293%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj111295%_)
                                    (if (u8vector? _%obj111295%_)
                                        (let ((__tmp111830
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj111295%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp111830))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj111295%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants111293%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont111296111298%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self111275%_
                                       __continuation111787
                                       '#f
                                       '#f))))
                               (if _%cont111296111298%_
                                   (let ((_%cont111301%_ _%cont111296111298%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont111301%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp111826
                   current-output-port
                   _%tmp-port111285%_))
                (let ((__tmp111831 (get-output-string _%tmp-port111285%_)))
                  (declare (not safe))
                  (##write-string __tmp111831 _%port111272%_))))))))
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
      (lambda (_%self111127%_ _%port111128%_)
        (let* ((_%self111131%_ _%self111127%_)
               (_%tmp-port111141%_ (open-output-string)))
          (fix-port-width! _%tmp-port111141%_)
          (let ((__tmp111832
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self111131%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp111832 _%tmp-port111141%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont111142111144%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self111131%_ 'continuation))))
                (if _%cont111142111144%_
                    (let ((_%cont111147%_ _%cont111142111144%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port111141%_)
                      (newline _%tmp-port111141%_)
                      (display-continuation-backtrace
                       _%cont111147%_
                       _%tmp-port111141%_))
                    '#f))
              '#!void)
          (let ((__tmp111833 (get-output-string _%tmp-port111141%_)))
            (declare (not safe))
            (##write-string __tmp111833 _%port111128%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass111794 __method-table111795)
        (let ((__continuation111796
               (let ((__slot111798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111794 'continuation))))
                 (if __slot111798
                     __slot111798
                     (error '"Unknown slot" 'continuation))))
              (__exception111797
               (let ((__slot111799
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111794 'exception))))
                 (if __slot111799
                     __slot111799
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self111127%_ _%port111128%_)
            (let* ((_%self111131%_ _%self111127%_)
                   (_%tmp-port111141%_ (open-output-string)))
              (fix-port-width! _%tmp-port111141%_)
              (let ((__tmp111834
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self111131%_
                        __exception111797
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp111834 _%tmp-port111141%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont111142111144%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self111131%_
                            __continuation111796
                            '#f
                            '#f))))
                    (if _%cont111142111144%_
                        (let ((_%cont111147%_ _%cont111142111144%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port111141%_)
                          (newline _%tmp-port111141%_)
                          (display-continuation-backtrace
                           _%cont111147%_
                           _%tmp-port111141%_))
                        '#f))
                  '#!void)
              (let ((__tmp111835 (get-output-string _%tmp-port111141%_)))
                (declare (not safe))
                (##write-string __tmp111835 _%port111128%_)))))))
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
      (lambda (_%port110999%_)
        (if (macro-character-port? _%port110999%_)
            (let ((_%old-width111001%_
                   (macro-character-port-output-width _%port110999%_)))
              (macro-character-port-output-width-set!
               _%port110999%_
               (lambda (_%port111003%_) '256))
              _%old-width111001%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port110996%_ _%old-width110997%_)
        (if (macro-character-port? _%port110996%_)
            (macro-character-port-output-width-set!
             _%port110996%_
             _%old-width110997%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e110994%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e110994%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn110988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110988%_))
            (let ((_%e110991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110988%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e110991%_))
            (macro-abandoned-mutex-exception? _%exn110988%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn110984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110984%_))
            (let ((_%e110986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110984%_ 'exception))))
              (macro-cfun-conversion-exception? _%e110986%_))
            (macro-cfun-conversion-exception? _%exn110984%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn110980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110980%_))
            (let ((_%e110982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110980%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110982%_)
                  (macro-cfun-conversion-exception-arguments _%e110982%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e110982%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110980%_)
                (macro-cfun-conversion-exception-arguments _%exn110980%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn110980%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn110976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110976%_))
            (let ((_%e110978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110976%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110978%_)
                  (macro-cfun-conversion-exception-code _%e110978%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e110978%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110976%_)
                (macro-cfun-conversion-exception-code _%exn110976%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn110976%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn110972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110972%_))
            (let ((_%e110974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110972%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110974%_)
                  (macro-cfun-conversion-exception-message _%e110974%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e110974%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110972%_)
                (macro-cfun-conversion-exception-message _%exn110972%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn110972%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn110966%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110966%_))
            (let ((_%e110969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110966%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110969%_)
                  (macro-cfun-conversion-exception-procedure _%e110969%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e110969%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110966%_)
                (macro-cfun-conversion-exception-procedure _%exn110966%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn110966%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn110962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110962%_))
            (let ((_%e110964%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110962%_ 'exception))))
              (macro-datum-parsing-exception? _%e110964%_))
            (macro-datum-parsing-exception? _%exn110962%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn110958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110958%_))
            (let ((_%e110960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110958%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110960%_)
                  (macro-datum-parsing-exception-kind _%e110960%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e110960%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110958%_)
                (macro-datum-parsing-exception-kind _%exn110958%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn110958%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn110954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110954%_))
            (let ((_%e110956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110954%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110956%_)
                  (macro-datum-parsing-exception-parameters _%e110956%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e110956%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110954%_)
                (macro-datum-parsing-exception-parameters _%exn110954%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn110954%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn110948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110948%_))
            (let ((_%e110951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110948%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110951%_)
                  (macro-datum-parsing-exception-readenv _%e110951%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e110951%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110948%_)
                (macro-datum-parsing-exception-readenv _%exn110948%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn110948%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn110942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110942%_))
            (let ((_%e110945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110942%_ 'exception))))
              (macro-deadlock-exception? _%e110945%_))
            (macro-deadlock-exception? _%exn110942%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn110938%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110938%_))
            (let ((_%e110940%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110938%_ 'exception))))
              (macro-divide-by-zero-exception? _%e110940%_))
            (macro-divide-by-zero-exception? _%exn110938%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn110934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110934%_))
            (let ((_%e110936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110934%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e110936%_)
                  (macro-divide-by-zero-exception-arguments _%e110936%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e110936%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn110934%_)
                (macro-divide-by-zero-exception-arguments _%exn110934%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn110934%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn110928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110928%_))
            (let ((_%e110931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110928%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e110931%_)
                  (macro-divide-by-zero-exception-procedure _%e110931%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e110931%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn110928%_)
                (macro-divide-by-zero-exception-procedure _%exn110928%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn110928%_ '())))))))
    (define error-exception?
      (lambda (_%exn110924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110924%_))
            (let ((_%e110926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110924%_ 'exception))))
              (macro-error-exception? _%e110926%_))
            (macro-error-exception? _%exn110924%_))))
    (define error-exception-message
      (lambda (_%exn110920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110920%_))
            (let ((_%e110922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110920%_ 'exception))))
              (if (macro-error-exception? _%e110922%_)
                  (macro-error-exception-message _%e110922%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e110922%_ '())))))
            (if (macro-error-exception? _%exn110920%_)
                (macro-error-exception-message _%exn110920%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn110920%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn110914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110914%_))
            (let ((_%e110917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110914%_ 'exception))))
              (if (macro-error-exception? _%e110917%_)
                  (macro-error-exception-parameters _%e110917%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e110917%_ '())))))
            (if (macro-error-exception? _%exn110914%_)
                (macro-error-exception-parameters _%exn110914%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn110914%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn110910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110910%_))
            (let ((_%e110912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110910%_ 'exception))))
              (macro-expression-parsing-exception? _%e110912%_))
            (macro-expression-parsing-exception? _%exn110910%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn110906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110906%_))
            (let ((_%e110908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110906%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110908%_)
                  (macro-expression-parsing-exception-kind _%e110908%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e110908%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110906%_)
                (macro-expression-parsing-exception-kind _%exn110906%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn110906%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn110902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110902%_))
            (let ((_%e110904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110902%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110904%_)
                  (macro-expression-parsing-exception-parameters _%e110904%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e110904%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110902%_)
                (macro-expression-parsing-exception-parameters _%exn110902%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn110902%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn110896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110896%_))
            (let ((_%e110899%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110896%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110899%_)
                  (macro-expression-parsing-exception-source _%e110899%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e110899%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110896%_)
                (macro-expression-parsing-exception-source _%exn110896%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn110896%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn110892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110892%_))
            (let ((_%e110894%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110892%_ 'exception))))
              (macro-file-exists-exception? _%e110894%_))
            (macro-file-exists-exception? _%exn110892%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn110888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110888%_))
            (let ((_%e110890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110888%_ 'exception))))
              (if (macro-file-exists-exception? _%e110890%_)
                  (macro-file-exists-exception-arguments _%e110890%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e110890%_ '())))))
            (if (macro-file-exists-exception? _%exn110888%_)
                (macro-file-exists-exception-arguments _%exn110888%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn110888%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn110882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110882%_))
            (let ((_%e110885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110882%_ 'exception))))
              (if (macro-file-exists-exception? _%e110885%_)
                  (macro-file-exists-exception-procedure _%e110885%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e110885%_ '())))))
            (if (macro-file-exists-exception? _%exn110882%_)
                (macro-file-exists-exception-procedure _%exn110882%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn110882%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn110878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110878%_))
            (let ((_%e110880%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110878%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e110880%_))
            (macro-fixnum-overflow-exception? _%exn110878%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn110874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110874%_))
            (let ((_%e110876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110874%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e110876%_)
                  (macro-fixnum-overflow-exception-arguments _%e110876%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e110876%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn110874%_)
                (macro-fixnum-overflow-exception-arguments _%exn110874%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn110874%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn110868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110868%_))
            (let ((_%e110871%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110868%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e110871%_)
                  (macro-fixnum-overflow-exception-procedure _%e110871%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e110871%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn110868%_)
                (macro-fixnum-overflow-exception-procedure _%exn110868%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn110868%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn110862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110862%_))
            (let ((_%e110865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110862%_ 'exception))))
              (macro-heap-overflow-exception? _%e110865%_))
            (macro-heap-overflow-exception? _%exn110862%_))))
    (define inactive-thread-exception?
      (lambda (_%exn110858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110858%_))
            (let ((_%e110860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110858%_ 'exception))))
              (macro-inactive-thread-exception? _%e110860%_))
            (macro-inactive-thread-exception? _%exn110858%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn110854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110854%_))
            (let ((_%e110856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110854%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e110856%_)
                  (macro-inactive-thread-exception-arguments _%e110856%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e110856%_ '())))))
            (if (macro-inactive-thread-exception? _%exn110854%_)
                (macro-inactive-thread-exception-arguments _%exn110854%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn110854%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn110848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110848%_))
            (let ((_%e110851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110848%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e110851%_)
                  (macro-inactive-thread-exception-procedure _%e110851%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e110851%_ '())))))
            (if (macro-inactive-thread-exception? _%exn110848%_)
                (macro-inactive-thread-exception-procedure _%exn110848%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn110848%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn110844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110844%_))
            (let ((_%e110846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110844%_ 'exception))))
              (macro-initialized-thread-exception? _%e110846%_))
            (macro-initialized-thread-exception? _%exn110844%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn110840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110840%_))
            (let ((_%e110842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110840%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e110842%_)
                  (macro-initialized-thread-exception-arguments _%e110842%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e110842%_ '())))))
            (if (macro-initialized-thread-exception? _%exn110840%_)
                (macro-initialized-thread-exception-arguments _%exn110840%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn110840%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn110834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110834%_))
            (let ((_%e110837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110834%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e110837%_)
                  (macro-initialized-thread-exception-procedure _%e110837%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e110837%_ '())))))
            (if (macro-initialized-thread-exception? _%exn110834%_)
                (macro-initialized-thread-exception-procedure _%exn110834%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn110834%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn110830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110830%_))
            (let ((_%e110832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110830%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e110832%_))
            (macro-invalid-hash-number-exception? _%exn110830%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn110826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110826%_))
            (let ((_%e110828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110826%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e110828%_)
                  (macro-invalid-hash-number-exception-arguments _%e110828%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e110828%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn110826%_)
                (macro-invalid-hash-number-exception-arguments _%exn110826%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn110826%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn110820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110820%_))
            (let ((_%e110823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110820%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e110823%_)
                  (macro-invalid-hash-number-exception-procedure _%e110823%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e110823%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn110820%_)
                (macro-invalid-hash-number-exception-procedure _%exn110820%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn110820%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn110816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110816%_))
            (let ((_%e110818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110816%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e110818%_))
            (macro-invalid-utf8-encoding-exception? _%exn110816%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn110812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110812%_))
            (let ((_%e110814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110812%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e110814%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e110814%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e110814%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn110812%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn110812%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn110812%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn110806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110806%_))
            (let ((_%e110809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110806%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e110809%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e110809%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e110809%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn110806%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn110806%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn110806%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn110802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110802%_))
            (let ((_%e110804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110802%_ 'exception))))
              (macro-join-timeout-exception? _%e110804%_))
            (macro-join-timeout-exception? _%exn110802%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn110798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110798%_))
            (let ((_%e110800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110798%_ 'exception))))
              (if (macro-join-timeout-exception? _%e110800%_)
                  (macro-join-timeout-exception-arguments _%e110800%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e110800%_ '())))))
            (if (macro-join-timeout-exception? _%exn110798%_)
                (macro-join-timeout-exception-arguments _%exn110798%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn110798%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn110792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110792%_))
            (let ((_%e110795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110792%_ 'exception))))
              (if (macro-join-timeout-exception? _%e110795%_)
                  (macro-join-timeout-exception-procedure _%e110795%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e110795%_ '())))))
            (if (macro-join-timeout-exception? _%exn110792%_)
                (macro-join-timeout-exception-procedure _%exn110792%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn110792%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn110788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110788%_))
            (let ((_%e110790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110788%_ 'exception))))
              (macro-keyword-expected-exception? _%e110790%_))
            (macro-keyword-expected-exception? _%exn110788%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn110784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110784%_))
            (let ((_%e110786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110784%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e110786%_)
                  (macro-keyword-expected-exception-arguments _%e110786%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e110786%_ '())))))
            (if (macro-keyword-expected-exception? _%exn110784%_)
                (macro-keyword-expected-exception-arguments _%exn110784%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn110784%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn110778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110778%_))
            (let ((_%e110781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110778%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e110781%_)
                  (macro-keyword-expected-exception-procedure _%e110781%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e110781%_ '())))))
            (if (macro-keyword-expected-exception? _%exn110778%_)
                (macro-keyword-expected-exception-procedure _%exn110778%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn110778%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn110774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110774%_))
            (let ((_%e110776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110774%_ 'exception))))
              (macro-length-mismatch-exception? _%e110776%_))
            (macro-length-mismatch-exception? _%exn110774%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn110770%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110770%_))
            (let ((_%e110772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110770%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110772%_)
                  (macro-length-mismatch-exception-arg-id _%e110772%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e110772%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110770%_)
                (macro-length-mismatch-exception-arg-id _%exn110770%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn110770%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn110766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110766%_))
            (let ((_%e110768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110766%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110768%_)
                  (macro-length-mismatch-exception-arguments _%e110768%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e110768%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110766%_)
                (macro-length-mismatch-exception-arguments _%exn110766%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn110766%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn110760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110760%_))
            (let ((_%e110763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110760%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110763%_)
                  (macro-length-mismatch-exception-procedure _%e110763%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e110763%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110760%_)
                (macro-length-mismatch-exception-procedure _%exn110760%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn110760%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn110756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110756%_))
            (let ((_%e110758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110756%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e110758%_))
            (macro-mailbox-receive-timeout-exception? _%exn110756%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn110752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110752%_))
            (let ((_%e110754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110752%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e110754%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e110754%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e110754%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn110752%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn110752%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn110752%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn110746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110746%_))
            (let ((_%e110749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110746%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e110749%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e110749%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e110749%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn110746%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn110746%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn110746%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn110742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110742%_))
            (let ((_%e110744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110742%_ 'exception))))
              (macro-module-not-found-exception? _%e110744%_))
            (macro-module-not-found-exception? _%exn110742%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn110738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110738%_))
            (let ((_%e110740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110738%_ 'exception))))
              (if (macro-module-not-found-exception? _%e110740%_)
                  (macro-module-not-found-exception-arguments _%e110740%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e110740%_ '())))))
            (if (macro-module-not-found-exception? _%exn110738%_)
                (macro-module-not-found-exception-arguments _%exn110738%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn110738%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn110732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110732%_))
            (let ((_%e110735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110732%_ 'exception))))
              (if (macro-module-not-found-exception? _%e110735%_)
                  (macro-module-not-found-exception-procedure _%e110735%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e110735%_ '())))))
            (if (macro-module-not-found-exception? _%exn110732%_)
                (macro-module-not-found-exception-procedure _%exn110732%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn110732%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn110726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110726%_))
            (let ((_%e110729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110726%_ 'exception))))
              (macro-multiple-c-return-exception? _%e110729%_))
            (macro-multiple-c-return-exception? _%exn110726%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn110722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110722%_))
            (let ((_%e110724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110722%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e110724%_))
            (macro-no-such-file-or-directory-exception? _%exn110722%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn110718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110718%_))
            (let ((_%e110720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110718%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e110720%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e110720%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e110720%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn110718%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn110718%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn110718%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn110712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110712%_))
            (let ((_%e110715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110712%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e110715%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e110715%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e110715%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn110712%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn110712%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn110712%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn110708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110708%_))
            (let ((_%e110710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110708%_ 'exception))))
              (macro-noncontinuable-exception? _%e110710%_))
            (macro-noncontinuable-exception? _%exn110708%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn110702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110702%_))
            (let ((_%e110705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110702%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e110705%_)
                  (macro-noncontinuable-exception-reason _%e110705%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e110705%_ '())))))
            (if (macro-noncontinuable-exception? _%exn110702%_)
                (macro-noncontinuable-exception-reason _%exn110702%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn110702%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn110698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110698%_))
            (let ((_%e110700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110698%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e110700%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn110698%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn110694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110694%_))
            (let ((_%e110696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110694%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e110696%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e110696%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e110696%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn110694%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn110694%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn110694%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn110688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110688%_))
            (let ((_%e110691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110688%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e110691%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e110691%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e110691%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn110688%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn110688%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn110688%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn110684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110684%_))
            (let ((_%e110686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110684%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e110686%_))
            (macro-nonprocedure-operator-exception? _%exn110684%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn110680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110680%_))
            (let ((_%e110682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110680%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110682%_)
                  (macro-nonprocedure-operator-exception-arguments _%e110682%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e110682%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110680%_)
                (macro-nonprocedure-operator-exception-arguments _%exn110680%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn110680%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn110676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110676%_))
            (let ((_%e110678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110676%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110678%_)
                  (macro-nonprocedure-operator-exception-code _%e110678%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e110678%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110676%_)
                (macro-nonprocedure-operator-exception-code _%exn110676%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn110676%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn110672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110672%_))
            (let ((_%e110674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110672%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110674%_)
                  (macro-nonprocedure-operator-exception-operator _%e110674%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e110674%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110672%_)
                (macro-nonprocedure-operator-exception-operator _%exn110672%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn110672%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn110666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110666%_))
            (let ((_%e110669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110666%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110669%_)
                  (macro-nonprocedure-operator-exception-rte _%e110669%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e110669%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110666%_)
                (macro-nonprocedure-operator-exception-rte _%exn110666%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn110666%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn110662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110662%_))
            (let ((_%e110664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110662%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e110664%_))
            (macro-not-in-compilation-context-exception? _%exn110662%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn110658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110658%_))
            (let ((_%e110660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110658%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e110660%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e110660%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e110660%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn110658%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn110658%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn110658%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn110652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110652%_))
            (let ((_%e110655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110652%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e110655%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e110655%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e110655%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn110652%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn110652%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn110652%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn110648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110648%_))
            (let ((_%e110650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110648%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e110650%_))
            (macro-number-of-arguments-limit-exception? _%exn110648%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn110644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110644%_))
            (let ((_%e110646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110644%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e110646%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e110646%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e110646%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn110644%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn110644%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn110644%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn110638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110638%_))
            (let ((_%e110641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110638%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e110641%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e110641%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e110641%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn110638%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn110638%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn110638%_ '())))))))
    (define os-exception?
      (lambda (_%exn110634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110634%_))
            (let ((_%e110636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110634%_ 'exception))))
              (macro-os-exception? _%e110636%_))
            (macro-os-exception? _%exn110634%_))))
    (define os-exception-arguments
      (lambda (_%exn110630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110630%_))
            (let ((_%e110632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110630%_ 'exception))))
              (if (macro-os-exception? _%e110632%_)
                  (macro-os-exception-arguments _%e110632%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e110632%_ '())))))
            (if (macro-os-exception? _%exn110630%_)
                (macro-os-exception-arguments _%exn110630%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn110630%_ '())))))))
    (define os-exception-code
      (lambda (_%exn110626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110626%_))
            (let ((_%e110628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110626%_ 'exception))))
              (if (macro-os-exception? _%e110628%_)
                  (macro-os-exception-code _%e110628%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e110628%_ '())))))
            (if (macro-os-exception? _%exn110626%_)
                (macro-os-exception-code _%exn110626%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn110626%_ '())))))))
    (define os-exception-message
      (lambda (_%exn110622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110622%_))
            (let ((_%e110624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110622%_ 'exception))))
              (if (macro-os-exception? _%e110624%_)
                  (macro-os-exception-message _%e110624%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e110624%_ '())))))
            (if (macro-os-exception? _%exn110622%_)
                (macro-os-exception-message _%exn110622%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn110622%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn110616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110616%_))
            (let ((_%e110619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110616%_ 'exception))))
              (if (macro-os-exception? _%e110619%_)
                  (macro-os-exception-procedure _%e110619%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e110619%_ '())))))
            (if (macro-os-exception? _%exn110616%_)
                (macro-os-exception-procedure _%exn110616%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn110616%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn110612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110612%_))
            (let ((_%e110614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110612%_ 'exception))))
              (macro-permission-denied-exception? _%e110614%_))
            (macro-permission-denied-exception? _%exn110612%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn110608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110608%_))
            (let ((_%e110610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110608%_ 'exception))))
              (if (macro-permission-denied-exception? _%e110610%_)
                  (macro-permission-denied-exception-arguments _%e110610%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e110610%_ '())))))
            (if (macro-permission-denied-exception? _%exn110608%_)
                (macro-permission-denied-exception-arguments _%exn110608%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn110608%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn110602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110602%_))
            (let ((_%e110605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110602%_ 'exception))))
              (if (macro-permission-denied-exception? _%e110605%_)
                  (macro-permission-denied-exception-procedure _%e110605%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e110605%_ '())))))
            (if (macro-permission-denied-exception? _%exn110602%_)
                (macro-permission-denied-exception-procedure _%exn110602%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn110602%_ '())))))))
    (define range-exception?
      (lambda (_%exn110598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110598%_))
            (let ((_%e110600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110598%_ 'exception))))
              (macro-range-exception? _%e110600%_))
            (macro-range-exception? _%exn110598%_))))
    (define range-exception-arg-id
      (lambda (_%exn110594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110594%_))
            (let ((_%e110596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110594%_ 'exception))))
              (if (macro-range-exception? _%e110596%_)
                  (macro-range-exception-arg-id _%e110596%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e110596%_ '())))))
            (if (macro-range-exception? _%exn110594%_)
                (macro-range-exception-arg-id _%exn110594%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn110594%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn110590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110590%_))
            (let ((_%e110592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110590%_ 'exception))))
              (if (macro-range-exception? _%e110592%_)
                  (macro-range-exception-arguments _%e110592%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e110592%_ '())))))
            (if (macro-range-exception? _%exn110590%_)
                (macro-range-exception-arguments _%exn110590%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn110590%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn110584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110584%_))
            (let ((_%e110587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110584%_ 'exception))))
              (if (macro-range-exception? _%e110587%_)
                  (macro-range-exception-procedure _%e110587%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e110587%_ '())))))
            (if (macro-range-exception? _%exn110584%_)
                (macro-range-exception-procedure _%exn110584%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn110584%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn110580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110580%_))
            (let ((_%e110582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110580%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e110582%_))
            (macro-rpc-remote-error-exception? _%exn110580%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn110576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110576%_))
            (let ((_%e110578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110576%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110578%_)
                  (macro-rpc-remote-error-exception-arguments _%e110578%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e110578%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110576%_)
                (macro-rpc-remote-error-exception-arguments _%exn110576%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn110576%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn110572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110572%_))
            (let ((_%e110574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110572%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110574%_)
                  (macro-rpc-remote-error-exception-message _%e110574%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e110574%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110572%_)
                (macro-rpc-remote-error-exception-message _%exn110572%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn110572%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn110566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110566%_))
            (let ((_%e110569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110566%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110569%_)
                  (macro-rpc-remote-error-exception-procedure _%e110569%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e110569%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110566%_)
                (macro-rpc-remote-error-exception-procedure _%exn110566%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn110566%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn110562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110562%_))
            (let ((_%e110564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110562%_ 'exception))))
              (macro-scheduler-exception? _%e110564%_))
            (macro-scheduler-exception? _%exn110562%_))))
    (define scheduler-exception-reason
      (lambda (_%exn110556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110556%_))
            (let ((_%e110559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110556%_ 'exception))))
              (if (macro-scheduler-exception? _%e110559%_)
                  (macro-scheduler-exception-reason _%e110559%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e110559%_ '())))))
            (if (macro-scheduler-exception? _%exn110556%_)
                (macro-scheduler-exception-reason _%exn110556%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn110556%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn110552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110552%_))
            (let ((_%e110554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110552%_ 'exception))))
              (macro-sfun-conversion-exception? _%e110554%_))
            (macro-sfun-conversion-exception? _%exn110552%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn110548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110548%_))
            (let ((_%e110550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110548%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110550%_)
                  (macro-sfun-conversion-exception-arguments _%e110550%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e110550%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110548%_)
                (macro-sfun-conversion-exception-arguments _%exn110548%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn110548%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn110544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110544%_))
            (let ((_%e110546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110544%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110546%_)
                  (macro-sfun-conversion-exception-code _%e110546%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e110546%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110544%_)
                (macro-sfun-conversion-exception-code _%exn110544%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn110544%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn110540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110540%_))
            (let ((_%e110542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110540%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110542%_)
                  (macro-sfun-conversion-exception-message _%e110542%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e110542%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110540%_)
                (macro-sfun-conversion-exception-message _%exn110540%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn110540%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn110534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110534%_))
            (let ((_%e110537%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110534%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110537%_)
                  (macro-sfun-conversion-exception-procedure _%e110537%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e110537%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110534%_)
                (macro-sfun-conversion-exception-procedure _%exn110534%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn110534%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn110528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110528%_))
            (let ((_%e110531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110528%_ 'exception))))
              (macro-stack-overflow-exception? _%e110531%_))
            (macro-stack-overflow-exception? _%exn110528%_))))
    (define started-thread-exception?
      (lambda (_%exn110524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110524%_))
            (let ((_%e110526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110524%_ 'exception))))
              (macro-started-thread-exception? _%e110526%_))
            (macro-started-thread-exception? _%exn110524%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn110520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110520%_))
            (let ((_%e110522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110520%_ 'exception))))
              (if (macro-started-thread-exception? _%e110522%_)
                  (macro-started-thread-exception-arguments _%e110522%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e110522%_ '())))))
            (if (macro-started-thread-exception? _%exn110520%_)
                (macro-started-thread-exception-arguments _%exn110520%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn110520%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn110514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110514%_))
            (let ((_%e110517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110514%_ 'exception))))
              (if (macro-started-thread-exception? _%e110517%_)
                  (macro-started-thread-exception-procedure _%e110517%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e110517%_ '())))))
            (if (macro-started-thread-exception? _%exn110514%_)
                (macro-started-thread-exception-procedure _%exn110514%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn110514%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn110510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110510%_))
            (let ((_%e110512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110510%_ 'exception))))
              (macro-terminated-thread-exception? _%e110512%_))
            (macro-terminated-thread-exception? _%exn110510%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn110506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110506%_))
            (let ((_%e110508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110506%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e110508%_)
                  (macro-terminated-thread-exception-arguments _%e110508%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e110508%_ '())))))
            (if (macro-terminated-thread-exception? _%exn110506%_)
                (macro-terminated-thread-exception-arguments _%exn110506%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn110506%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn110500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110500%_))
            (let ((_%e110503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110500%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e110503%_)
                  (macro-terminated-thread-exception-procedure _%e110503%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e110503%_ '())))))
            (if (macro-terminated-thread-exception? _%exn110500%_)
                (macro-terminated-thread-exception-procedure _%exn110500%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn110500%_ '())))))))
    (define type-exception?
      (lambda (_%exn110496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110496%_))
            (let ((_%e110498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110496%_ 'exception))))
              (macro-type-exception? _%e110498%_))
            (macro-type-exception? _%exn110496%_))))
    (define type-exception-arg-id
      (lambda (_%exn110492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110492%_))
            (let ((_%e110494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110492%_ 'exception))))
              (if (macro-type-exception? _%e110494%_)
                  (macro-type-exception-arg-id _%e110494%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e110494%_ '())))))
            (if (macro-type-exception? _%exn110492%_)
                (macro-type-exception-arg-id _%exn110492%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn110492%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn110488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110488%_))
            (let ((_%e110490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110488%_ 'exception))))
              (if (macro-type-exception? _%e110490%_)
                  (macro-type-exception-arguments _%e110490%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e110490%_ '())))))
            (if (macro-type-exception? _%exn110488%_)
                (macro-type-exception-arguments _%exn110488%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn110488%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn110484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110484%_))
            (let ((_%e110486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110484%_ 'exception))))
              (if (macro-type-exception? _%e110486%_)
                  (macro-type-exception-procedure _%e110486%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e110486%_ '())))))
            (if (macro-type-exception? _%exn110484%_)
                (macro-type-exception-procedure _%exn110484%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn110484%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn110478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110478%_))
            (let ((_%e110481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110478%_ 'exception))))
              (if (macro-type-exception? _%e110481%_)
                  (macro-type-exception-type-id _%e110481%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e110481%_ '())))))
            (if (macro-type-exception? _%exn110478%_)
                (macro-type-exception-type-id _%exn110478%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn110478%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn110474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110474%_))
            (let ((_%e110476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110474%_ 'exception))))
              (macro-unbound-global-exception? _%e110476%_))
            (macro-unbound-global-exception? _%exn110474%_))))
    (define unbound-global-exception-code
      (lambda (_%exn110470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110470%_))
            (let ((_%e110472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110470%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110472%_)
                  (macro-unbound-global-exception-code _%e110472%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e110472%_ '())))))
            (if (macro-unbound-global-exception? _%exn110470%_)
                (macro-unbound-global-exception-code _%exn110470%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn110470%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn110466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110466%_))
            (let ((_%e110468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110466%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110468%_)
                  (macro-unbound-global-exception-rte _%e110468%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e110468%_ '())))))
            (if (macro-unbound-global-exception? _%exn110466%_)
                (macro-unbound-global-exception-rte _%exn110466%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn110466%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn110460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110460%_))
            (let ((_%e110463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110460%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110463%_)
                  (macro-unbound-global-exception-variable _%e110463%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e110463%_ '())))))
            (if (macro-unbound-global-exception? _%exn110460%_)
                (macro-unbound-global-exception-variable _%exn110460%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn110460%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn110456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110456%_))
            (let ((_%e110458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110456%_ 'exception))))
              (macro-unbound-key-exception? _%e110458%_))
            (macro-unbound-key-exception? _%exn110456%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn110452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110452%_))
            (let ((_%e110454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110452%_ 'exception))))
              (if (macro-unbound-key-exception? _%e110454%_)
                  (macro-unbound-key-exception-arguments _%e110454%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e110454%_ '())))))
            (if (macro-unbound-key-exception? _%exn110452%_)
                (macro-unbound-key-exception-arguments _%exn110452%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn110452%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn110446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110446%_))
            (let ((_%e110449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110446%_ 'exception))))
              (if (macro-unbound-key-exception? _%e110449%_)
                  (macro-unbound-key-exception-procedure _%e110449%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e110449%_ '())))))
            (if (macro-unbound-key-exception? _%exn110446%_)
                (macro-unbound-key-exception-procedure _%exn110446%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn110446%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn110442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110442%_))
            (let ((_%e110444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110442%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e110444%_))
            (macro-unbound-os-environment-variable-exception? _%exn110442%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn110438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110438%_))
            (let ((_%e110440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110438%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e110440%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e110440%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e110440%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn110438%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn110438%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn110438%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn110432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110432%_))
            (let ((_%e110435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110432%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e110435%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e110435%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e110435%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn110432%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn110432%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn110432%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn110428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110428%_))
            (let ((_%e110430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110428%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e110430%_))
            (macro-unbound-serial-number-exception? _%exn110428%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn110424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110424%_))
            (let ((_%e110426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110424%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e110426%_)
                  (macro-unbound-serial-number-exception-arguments _%e110426%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e110426%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn110424%_)
                (macro-unbound-serial-number-exception-arguments _%exn110424%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn110424%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn110418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110418%_))
            (let ((_%e110421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110418%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e110421%_)
                  (macro-unbound-serial-number-exception-procedure _%e110421%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e110421%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn110418%_)
                (macro-unbound-serial-number-exception-procedure _%exn110418%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn110418%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn110414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110414%_))
            (let ((_%e110416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110414%_ 'exception))))
              (macro-uncaught-exception? _%e110416%_))
            (macro-uncaught-exception? _%exn110414%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn110410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110410%_))
            (let ((_%e110412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110410%_ 'exception))))
              (if (macro-uncaught-exception? _%e110412%_)
                  (macro-uncaught-exception-arguments _%e110412%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e110412%_ '())))))
            (if (macro-uncaught-exception? _%exn110410%_)
                (macro-uncaught-exception-arguments _%exn110410%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn110410%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn110406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110406%_))
            (let ((_%e110408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110406%_ 'exception))))
              (if (macro-uncaught-exception? _%e110408%_)
                  (macro-uncaught-exception-procedure _%e110408%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e110408%_ '())))))
            (if (macro-uncaught-exception? _%exn110406%_)
                (macro-uncaught-exception-procedure _%exn110406%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn110406%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn110400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110400%_))
            (let ((_%e110403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110400%_ 'exception))))
              (if (macro-uncaught-exception? _%e110403%_)
                  (macro-uncaught-exception-reason _%e110403%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e110403%_ '())))))
            (if (macro-uncaught-exception? _%exn110400%_)
                (macro-uncaught-exception-reason _%exn110400%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn110400%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn110396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110396%_))
            (let ((_%e110398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110396%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e110398%_))
            (macro-uninitialized-thread-exception? _%exn110396%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn110392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110392%_))
            (let ((_%e110394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110392%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e110394%_)
                  (macro-uninitialized-thread-exception-arguments _%e110394%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e110394%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn110392%_)
                (macro-uninitialized-thread-exception-arguments _%exn110392%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn110392%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn110386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110386%_))
            (let ((_%e110389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110386%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e110389%_)
                  (macro-uninitialized-thread-exception-procedure _%e110389%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e110389%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn110386%_)
                (macro-uninitialized-thread-exception-procedure _%exn110386%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn110386%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn110382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110382%_))
            (let ((_%e110384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110382%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e110384%_))
            (macro-unknown-keyword-argument-exception? _%exn110382%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn110378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110378%_))
            (let ((_%e110380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110378%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e110380%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e110380%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e110380%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn110378%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn110378%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn110378%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn110372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110372%_))
            (let ((_%e110375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110372%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e110375%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e110375%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e110375%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn110372%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn110372%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn110372%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn110368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110368%_))
            (let ((_%e110370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110368%_ 'exception))))
              (macro-unterminated-process-exception? _%e110370%_))
            (macro-unterminated-process-exception? _%exn110368%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn110364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110364%_))
            (let ((_%e110366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110364%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e110366%_)
                  (macro-unterminated-process-exception-arguments _%e110366%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e110366%_ '())))))
            (if (macro-unterminated-process-exception? _%exn110364%_)
                (macro-unterminated-process-exception-arguments _%exn110364%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn110364%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn110358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110358%_))
            (let ((_%e110361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110358%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e110361%_)
                  (macro-unterminated-process-exception-procedure _%e110361%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e110361%_ '())))))
            (if (macro-unterminated-process-exception? _%exn110358%_)
                (macro-unterminated-process-exception-procedure _%exn110358%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn110358%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn110354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110354%_))
            (let ((_%e110356%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110354%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e110356%_))
            (macro-wrong-number-of-arguments-exception? _%exn110354%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn110350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110350%_))
            (let ((_%e110352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110350%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e110352%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e110352%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e110352%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn110350%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn110350%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn110350%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn110344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110344%_))
            (let ((_%e110347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110344%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e110347%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e110347%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e110347%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn110344%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn110344%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn110344%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn110340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110340%_))
            (let ((_%e110342%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110340%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e110342%_))
            (macro-wrong-number-of-values-exception? _%exn110340%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn110336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110336%_))
            (let ((_%e110338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110336%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e110338%_)
                  (macro-wrong-number-of-values-exception-code _%e110338%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e110338%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn110336%_)
                (macro-wrong-number-of-values-exception-code _%exn110336%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn110336%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn110332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110332%_))
            (let ((_%e110334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110332%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e110334%_)
                  (macro-wrong-number-of-values-exception-rte _%e110334%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e110334%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn110332%_)
                (macro-wrong-number-of-values-exception-rte _%exn110332%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn110332%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn110326%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110326%_))
            (let ((_%e110329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110326%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e110329%_)
                  (macro-wrong-number-of-values-exception-vals _%e110329%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e110329%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn110326%_)
                (macro-wrong-number-of-values-exception-vals _%exn110326%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn110326%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn110320%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110320%_))
            (let ((_%e110323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110320%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e110323%_))
            (macro-wrong-processor-c-return-exception? _%exn110320%_))))))
