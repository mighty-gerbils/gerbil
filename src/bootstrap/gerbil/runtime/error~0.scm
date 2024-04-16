(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1713044314)
  (begin
    (define Exception::t
      (let ((__tmp102459 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp102459
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args102429%_
        (apply make-instance Exception::t _%$args102429%_)))
    (define StackTrace::t
      (let ((__tmp102460 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp102460
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args102426%_
        (apply make-instance StackTrace::t _%$args102426%_)))
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
      (let ((__tmp102461 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp102461
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args102423%_ (apply make-instance Error::t _%$args102423%_)))
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
      (let ((__tmp102462 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp102462
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args102420%_
        (apply make-instance ContractViolation::t _%$args102420%_)))
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
      (let ((__tmp102463 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp102463
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args102417%_
        (apply make-instance RuntimeException::t _%$args102417%_)))
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
      (lambda (_%exn102412%_ _%continue102413%_)
        (let ((_%exn102415%_ (wrap-runtime-exception _%exn102412%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn102415%_ _%continue102413%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn102408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn102408%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn102408%_ 'continuation))
                '#!void
                (let ((__tmp102464
                       (lambda (_%cont102410%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn102408%_
                            'continuation
                            _%cont102410%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp102464)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn102408%_))))
    (define error
      (lambda (_%message102405%_ . _%irritants102406%_)
        (raise (let ((__obj102456
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj102456
                  _%message102405%_
                  'irritants:
                  _%irritants102406%_)
                 __obj102456))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords102377%_
               _%ctx102372102378%_
               _%contract-expr102373102380%_
               _%value102374102382%_
               _%message102384%_)
        (let* ((_%ctx102386%_
                (if (eq? _%ctx102372102378%_ absent-value)
                    '#f
                    _%ctx102372102378%_))
               (_%contract-expr102388%_
                (if (eq? _%contract-expr102373102380%_ absent-value)
                    '#f
                    _%contract-expr102373102380%_))
               (_%value102390%_
                (if (eq? _%value102374102382%_ absent-value)
                    '#f
                    _%value102374102382%_)))
          (raise (let ((__obj102457
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj102457
                    _%message102384%_
                    'where:
                    _%ctx102386%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr102388%_
                                (cons 'value: (cons _%value102390%_ '())))))
                   __obj102457)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords102395%_ . _%args102396%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords102395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102395%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102395%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102395%_
                  'value:
                  absent-value))
               _%args102396%_)))
    (define __raise-contract-violation-error
      (lambda _%args102375102402%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args102375102402%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler102346%_ _%thunk102347%_)
        (if (procedure? _%handler102346%_)
            (let ((_%handler102351%_ _%handler102346%_))
              (if (procedure? _%thunk102347%_)
                  (let ((_%thunk102361%_ _%thunk102347%_))
                    (__with-exception-handler
                     _%handler102351%_
                     _%thunk102361%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102347%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler102346%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler102321%_ _%thunk102322%_)
        (let* ((_%handler102325%_ _%handler102321%_)
               (_%thunk102333%_ _%thunk102322%_)
               (__tmp102465
                (lambda (_%exn102342%_)
                  (let ((_%exn102344%_ (wrap-runtime-exception _%exn102342%_)))
                    (declare (not safe))
                    (_%handler102325%_ _%exn102344%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp102465 _%thunk102333%_))))
    (define with-catch
      (lambda (_%handler102296%_ _%thunk102297%_)
        (if (procedure? _%handler102296%_)
            (let ((_%handler102301%_ _%handler102296%_))
              (if (procedure? _%thunk102297%_)
                  (let ((_%thunk102311%_ _%thunk102297%_))
                    (__with-catch _%handler102301%_ _%thunk102311%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102297%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler102296%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler102271%_ _%thunk102272%_)
        (let* ((_%handler102275%_ _%handler102271%_)
               (_%thunk102283%_ _%thunk102272%_)
               (__tmp102466
                (lambda (_%cont102292%_)
                  (__with-exception-handler
                   (lambda (_%exn102294%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont102292%_
                        _%handler102275%_
                        _%exn102294%_)))
                   _%thunk102283%_))))
          (declare (not safe))
          (##continuation-capture __tmp102466))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn102258%_)
        (if (or (heap-overflow-exception? _%exn102258%_)
                (stack-overflow-exception? _%exn102258%_))
            _%exn102258%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn102258%_))
                _%exn102258%_
                (if (macro-exception? _%exn102258%_)
                    (let ((_%rte102266%_
                           (let ((__obj102458
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj102458
                                _%exn102258%_
                                '2
                                '#f
                                '#f))
                             __obj102458)))
                      (let ((__tmp102467
                             (lambda (_%cont102268%_)
                               (let ((__tmp102468
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont102268%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte102266%_
                                  'continuation
                                  __tmp102468)))))
                        (declare (not safe))
                        (##continuation-capture __tmp102467))
                      _%rte102266%_)
                    _%exn102258%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj102253%_)
        (let ((_%$e102255%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj102253%_))))
          (if _%$e102255%_ _%$e102255%_ (error-exception? _%obj102253%_)))))
    (define error-message
      (lambda (_%obj102246%_)
        (let ((_%$e102248%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj102246%_ 'message false))))
          (if _%$e102248%_
              _%$e102248%_
              (if (error-exception? _%obj102246%_)
                  (error-exception-message _%obj102246%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj102241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102241%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102241%_ 'irritants))
            (if (error-exception? _%obj102241%_)
                (error-exception-parameters _%obj102241%_)
                '#f))))
    (define error-trace
      (lambda (_%obj102239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102239%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102239%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e102220%_ _%port102221%_)
        (let ((_%$e102223%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e102220%_ 'display-exception))))
          (if _%$e102223%_
              ((lambda (_%f102226%_) (_%f102226%_ _%e102220%_ _%port102221%_))
               _%$e102223%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e102220%_ _%port102221%_))))))
    (define display-exception__0
      (lambda (_%e102232%_)
        (let ((_%port102234%_ (current-error-port)))
          (display-exception__% _%e102232%_ _%port102234%_))))
    (define display-exception
      (lambda _g102470_
        (let ((_g102469_ (let () (declare (not safe)) (##length _g102470_))))
          (cond ((let () (declare (not safe)) (##fx= _g102469_ 1))
                 (apply display-exception__0 _g102470_))
                ((let () (declare (not safe)) (##fx= _g102469_ 2))
                 (apply display-exception__% _g102470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g102470_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100589102196%_ _%message102198%_ . _%rest102199%_)
        (let* ((_%self102201%_ _%self100589102196%_)
               (_%self102203%_ _%self102201%_)
               (_%message102217%_
                (if (string? _%message102198%_)
                    _%message102198%_
                    (call-with-output-string
                     '""
                     (lambda (_%g102212102214%_)
                       (display _%message102198%_ _%g102212102214%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self102203%_ 'message _%message102217%_))
          (apply class-instance-init! _%self102203%_ _%rest102199%_))))
    (define Error:::init!::specialize
      (lambda (__klass102431 __method-table102432)
        (let ((__message102433
               (let ((__slot102434
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102431 'message))))
                 (if __slot102434
                     __slot102434
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self100589102196%_ _%message102198%_ . _%rest102199%_)
            (let* ((_%self102201%_ _%self100589102196%_)
                   (_%self102203%_ _%self102201%_)
                   (_%message102217%_
                    (if (string? _%message102198%_)
                        _%message102198%_
                        (call-with-output-string
                         '""
                         (lambda (_%g102212102214%_)
                           (display _%message102198%_ _%g102212102214%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self102203%_
                 _%message102217%_
                 __message102433
                 '#f
                 '#f))
              (apply class-instance-init! _%self102203%_ _%rest102199%_))))))
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
      (lambda (_%self100590101918%_ _%port101920%_)
        (let* ((_%self101922%_ _%self100590101918%_)
               (_%self101924%_ _%self101922%_))
          (let ((_%tmp-port101934%_ (open-output-string))
                (_%display-error-newline101935%_
                 (> (output-port-column _%port101920%_) '0)))
            (fix-port-width! _%tmp-port101934%_)
            (let ((__tmp102471
                   (lambda ()
                     (if _%display-error-newline101935%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e101938%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101924%_ 'where))))
                       (if _%$e101938%_ (display _%$e101938%_) (display '"?")))
                     (let ((__tmp102472
                            (let ((__tmp102473
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self101924%_))))
                              (declare (not safe))
                              (##type-name __tmp102473))))
                       (declare (not safe))
                       (display* '" [" __tmp102472 '"]: "))
                     (let ((__tmp102474
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101924%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp102474))
                     (let ((_%irritants101942%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101924%_ 'irritants))))
                       (if (null? _%irritants101942%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj101944%_)
                                (if (u8vector? _%obj101944%_)
                                    (let ((__tmp102475
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj101944%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp102475))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj101944%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants101942%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont101945101947%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self101924%_
                                   'continuation))))
                           (if _%cont101945101947%_
                               (let ((_%cont101950%_ _%cont101945101947%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont101950%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp102471
               current-output-port
               _%tmp-port101934%_))
            (let ((__tmp102476 (get-output-string _%tmp-port101934%_)))
              (declare (not safe))
              (##write-string __tmp102476 _%port101920%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass102435 __method-table102436)
        (let ((__where102437
               (let ((__slot102441
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102435 'where))))
                 (if __slot102441
                     __slot102441
                     (error '"Unknown slot" 'where))))
              (__message102438
               (let ((__slot102442
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102435 'message))))
                 (if __slot102442
                     __slot102442
                     (error '"Unknown slot" 'message))))
              (__irritants102439
               (let ((__slot102443
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102435 'irritants))))
                 (if __slot102443
                     __slot102443
                     (error '"Unknown slot" 'irritants))))
              (__continuation102440
               (let ((__slot102444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102435 'continuation))))
                 (if __slot102444
                     __slot102444
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100590101918%_ _%port101920%_)
            (let* ((_%self101922%_ _%self100590101918%_)
                   (_%self101924%_ _%self101922%_))
              (let ((_%tmp-port101934%_ (open-output-string))
                    (_%display-error-newline101935%_
                     (> (output-port-column _%port101920%_) '0)))
                (fix-port-width! _%tmp-port101934%_)
                (let ((__tmp102477
                       (lambda ()
                         (if _%display-error-newline101935%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e101938%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101924%_
                                   __where102437
                                   '#f
                                   '#f))))
                           (if _%$e101938%_
                               (display _%$e101938%_)
                               (display '"?")))
                         (let ((__tmp102478
                                (let ((__tmp102479
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self101924%_))))
                                  (declare (not safe))
                                  (##type-name __tmp102479))))
                           (declare (not safe))
                           (display* '" [" __tmp102478 '"]: "))
                         (let ((__tmp102480
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101924%_
                                   __message102438
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp102480))
                         (let ((_%irritants101942%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101924%_
                                   __irritants102439
                                   '#f
                                   '#f))))
                           (if (null? _%irritants101942%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj101944%_)
                                    (if (u8vector? _%obj101944%_)
                                        (let ((__tmp102481
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj101944%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp102481))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj101944%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants101942%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont101945101947%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self101924%_
                                       __continuation102440
                                       '#f
                                       '#f))))
                               (if _%cont101945101947%_
                                   (let ((_%cont101950%_ _%cont101945101947%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont101950%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp102477
                   current-output-port
                   _%tmp-port101934%_))
                (let ((__tmp102482 (get-output-string _%tmp-port101934%_)))
                  (declare (not safe))
                  (##write-string __tmp102482 _%port101920%_))))))))
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
      (lambda (_%self100591101772%_ _%port101774%_)
        (let* ((_%self101776%_ _%self100591101772%_)
               (_%self101778%_ _%self101776%_)
               (_%tmp-port101788%_ (open-output-string)))
          (fix-port-width! _%tmp-port101788%_)
          (let ((__tmp102483
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self101778%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp102483 _%tmp-port101788%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont101789101791%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self101778%_ 'continuation))))
                (if _%cont101789101791%_
                    (let ((_%cont101794%_ _%cont101789101791%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port101788%_)
                      (newline _%tmp-port101788%_)
                      (display-continuation-backtrace
                       _%cont101794%_
                       _%tmp-port101788%_))
                    '#f))
              '#!void)
          (let ((__tmp102484 (get-output-string _%tmp-port101788%_)))
            (declare (not safe))
            (##write-string __tmp102484 _%port101774%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass102445 __method-table102446)
        (let ((__exception102447
               (let ((__slot102449
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102445 'exception))))
                 (if __slot102449
                     __slot102449
                     (error '"Unknown slot" 'exception))))
              (__continuation102448
               (let ((__slot102450
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102445 'continuation))))
                 (if __slot102450
                     __slot102450
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100591101772%_ _%port101774%_)
            (let* ((_%self101776%_ _%self100591101772%_)
                   (_%self101778%_ _%self101776%_)
                   (_%tmp-port101788%_ (open-output-string)))
              (fix-port-width! _%tmp-port101788%_)
              (let ((__tmp102485
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self101778%_
                        __exception102447
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp102485 _%tmp-port101788%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont101789101791%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self101778%_
                            __continuation102448
                            '#f
                            '#f))))
                    (if _%cont101789101791%_
                        (let ((_%cont101794%_ _%cont101789101791%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port101788%_)
                          (newline _%tmp-port101788%_)
                          (display-continuation-backtrace
                           _%cont101794%_
                           _%tmp-port101788%_))
                        '#f))
                  '#!void)
              (let ((__tmp102486 (get-output-string _%tmp-port101788%_)))
                (declare (not safe))
                (##write-string __tmp102486 _%port101774%_)))))))
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
      (lambda (_%port101644%_)
        (if (macro-character-port? _%port101644%_)
            (let ((_%old-width101646%_
                   (macro-character-port-output-width _%port101644%_)))
              (macro-character-port-output-width-set!
               _%port101644%_
               (lambda (_%port101648%_) '256))
              _%old-width101646%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port101641%_ _%old-width101642%_)
        (if (macro-character-port? _%port101641%_)
            (macro-character-port-output-width-set!
             _%port101641%_
             _%old-width101642%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e101639%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e101639%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn101633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101633%_))
            (let ((_%e101636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101633%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e101636%_))
            (macro-abandoned-mutex-exception? _%exn101633%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn101629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101629%_))
            (let ((_%e101631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101629%_ 'exception))))
              (macro-cfun-conversion-exception? _%e101631%_))
            (macro-cfun-conversion-exception? _%exn101629%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn101625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101625%_))
            (let ((_%e101627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101625%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101627%_)
                  (macro-cfun-conversion-exception-arguments _%e101627%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e101627%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101625%_)
                (macro-cfun-conversion-exception-arguments _%exn101625%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn101625%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn101621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101621%_))
            (let ((_%e101623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101621%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101623%_)
                  (macro-cfun-conversion-exception-code _%e101623%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e101623%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101621%_)
                (macro-cfun-conversion-exception-code _%exn101621%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn101621%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn101617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101617%_))
            (let ((_%e101619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101617%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101619%_)
                  (macro-cfun-conversion-exception-message _%e101619%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e101619%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101617%_)
                (macro-cfun-conversion-exception-message _%exn101617%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn101617%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn101611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101611%_))
            (let ((_%e101614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101611%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101614%_)
                  (macro-cfun-conversion-exception-procedure _%e101614%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e101614%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101611%_)
                (macro-cfun-conversion-exception-procedure _%exn101611%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn101611%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn101607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101607%_))
            (let ((_%e101609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101607%_ 'exception))))
              (macro-datum-parsing-exception? _%e101609%_))
            (macro-datum-parsing-exception? _%exn101607%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn101603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101603%_))
            (let ((_%e101605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101603%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101605%_)
                  (macro-datum-parsing-exception-kind _%e101605%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e101605%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101603%_)
                (macro-datum-parsing-exception-kind _%exn101603%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn101603%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn101599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101599%_))
            (let ((_%e101601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101599%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101601%_)
                  (macro-datum-parsing-exception-parameters _%e101601%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e101601%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101599%_)
                (macro-datum-parsing-exception-parameters _%exn101599%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn101599%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn101593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101593%_))
            (let ((_%e101596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101593%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101596%_)
                  (macro-datum-parsing-exception-readenv _%e101596%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e101596%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101593%_)
                (macro-datum-parsing-exception-readenv _%exn101593%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn101593%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn101587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101587%_))
            (let ((_%e101590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101587%_ 'exception))))
              (macro-deadlock-exception? _%e101590%_))
            (macro-deadlock-exception? _%exn101587%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn101583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101583%_))
            (let ((_%e101585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101583%_ 'exception))))
              (macro-divide-by-zero-exception? _%e101585%_))
            (macro-divide-by-zero-exception? _%exn101583%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn101579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101579%_))
            (let ((_%e101581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101579%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101581%_)
                  (macro-divide-by-zero-exception-arguments _%e101581%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e101581%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101579%_)
                (macro-divide-by-zero-exception-arguments _%exn101579%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn101579%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn101573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101573%_))
            (let ((_%e101576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101573%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101576%_)
                  (macro-divide-by-zero-exception-procedure _%e101576%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e101576%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101573%_)
                (macro-divide-by-zero-exception-procedure _%exn101573%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn101573%_ '())))))))
    (define error-exception?
      (lambda (_%exn101569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101569%_))
            (let ((_%e101571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101569%_ 'exception))))
              (macro-error-exception? _%e101571%_))
            (macro-error-exception? _%exn101569%_))))
    (define error-exception-message
      (lambda (_%exn101565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101565%_))
            (let ((_%e101567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101565%_ 'exception))))
              (if (macro-error-exception? _%e101567%_)
                  (macro-error-exception-message _%e101567%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e101567%_ '())))))
            (if (macro-error-exception? _%exn101565%_)
                (macro-error-exception-message _%exn101565%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn101565%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn101559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101559%_))
            (let ((_%e101562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101559%_ 'exception))))
              (if (macro-error-exception? _%e101562%_)
                  (macro-error-exception-parameters _%e101562%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e101562%_ '())))))
            (if (macro-error-exception? _%exn101559%_)
                (macro-error-exception-parameters _%exn101559%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn101559%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn101555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101555%_))
            (let ((_%e101557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101555%_ 'exception))))
              (macro-expression-parsing-exception? _%e101557%_))
            (macro-expression-parsing-exception? _%exn101555%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn101551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101551%_))
            (let ((_%e101553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101551%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101553%_)
                  (macro-expression-parsing-exception-kind _%e101553%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e101553%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101551%_)
                (macro-expression-parsing-exception-kind _%exn101551%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn101551%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn101547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101547%_))
            (let ((_%e101549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101547%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101549%_)
                  (macro-expression-parsing-exception-parameters _%e101549%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e101549%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101547%_)
                (macro-expression-parsing-exception-parameters _%exn101547%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn101547%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn101541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101541%_))
            (let ((_%e101544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101541%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101544%_)
                  (macro-expression-parsing-exception-source _%e101544%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e101544%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101541%_)
                (macro-expression-parsing-exception-source _%exn101541%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn101541%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn101537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101537%_))
            (let ((_%e101539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101537%_ 'exception))))
              (macro-file-exists-exception? _%e101539%_))
            (macro-file-exists-exception? _%exn101537%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn101533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101533%_))
            (let ((_%e101535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101533%_ 'exception))))
              (if (macro-file-exists-exception? _%e101535%_)
                  (macro-file-exists-exception-arguments _%e101535%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e101535%_ '())))))
            (if (macro-file-exists-exception? _%exn101533%_)
                (macro-file-exists-exception-arguments _%exn101533%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn101533%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn101527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101527%_))
            (let ((_%e101530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101527%_ 'exception))))
              (if (macro-file-exists-exception? _%e101530%_)
                  (macro-file-exists-exception-procedure _%e101530%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e101530%_ '())))))
            (if (macro-file-exists-exception? _%exn101527%_)
                (macro-file-exists-exception-procedure _%exn101527%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn101527%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn101523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101523%_))
            (let ((_%e101525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101523%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e101525%_))
            (macro-fixnum-overflow-exception? _%exn101523%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn101519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101519%_))
            (let ((_%e101521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101519%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101521%_)
                  (macro-fixnum-overflow-exception-arguments _%e101521%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e101521%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101519%_)
                (macro-fixnum-overflow-exception-arguments _%exn101519%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn101519%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn101513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101513%_))
            (let ((_%e101516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101513%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101516%_)
                  (macro-fixnum-overflow-exception-procedure _%e101516%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e101516%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101513%_)
                (macro-fixnum-overflow-exception-procedure _%exn101513%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn101513%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn101507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101507%_))
            (let ((_%e101510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101507%_ 'exception))))
              (macro-heap-overflow-exception? _%e101510%_))
            (macro-heap-overflow-exception? _%exn101507%_))))
    (define inactive-thread-exception?
      (lambda (_%exn101503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101503%_))
            (let ((_%e101505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101503%_ 'exception))))
              (macro-inactive-thread-exception? _%e101505%_))
            (macro-inactive-thread-exception? _%exn101503%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn101499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101499%_))
            (let ((_%e101501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101499%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101501%_)
                  (macro-inactive-thread-exception-arguments _%e101501%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e101501%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101499%_)
                (macro-inactive-thread-exception-arguments _%exn101499%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn101499%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn101493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101493%_))
            (let ((_%e101496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101493%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101496%_)
                  (macro-inactive-thread-exception-procedure _%e101496%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e101496%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101493%_)
                (macro-inactive-thread-exception-procedure _%exn101493%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn101493%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn101489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101489%_))
            (let ((_%e101491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101489%_ 'exception))))
              (macro-initialized-thread-exception? _%e101491%_))
            (macro-initialized-thread-exception? _%exn101489%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn101485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101485%_))
            (let ((_%e101487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101485%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101487%_)
                  (macro-initialized-thread-exception-arguments _%e101487%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e101487%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101485%_)
                (macro-initialized-thread-exception-arguments _%exn101485%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn101485%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn101479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101479%_))
            (let ((_%e101482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101479%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101482%_)
                  (macro-initialized-thread-exception-procedure _%e101482%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e101482%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101479%_)
                (macro-initialized-thread-exception-procedure _%exn101479%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn101479%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn101475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101475%_))
            (let ((_%e101477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101475%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e101477%_))
            (macro-invalid-hash-number-exception? _%exn101475%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn101471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101471%_))
            (let ((_%e101473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101471%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101473%_)
                  (macro-invalid-hash-number-exception-arguments _%e101473%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e101473%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101471%_)
                (macro-invalid-hash-number-exception-arguments _%exn101471%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn101471%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn101465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101465%_))
            (let ((_%e101468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101465%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101468%_)
                  (macro-invalid-hash-number-exception-procedure _%e101468%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e101468%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101465%_)
                (macro-invalid-hash-number-exception-procedure _%exn101465%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn101465%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn101461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101461%_))
            (let ((_%e101463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101461%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e101463%_))
            (macro-invalid-utf8-encoding-exception? _%exn101461%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn101457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101457%_))
            (let ((_%e101459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101457%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101459%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e101459%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e101459%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101457%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn101457%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn101457%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn101451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101451%_))
            (let ((_%e101454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101451%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101454%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e101454%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e101454%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101451%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn101451%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn101451%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn101447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101447%_))
            (let ((_%e101449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101447%_ 'exception))))
              (macro-join-timeout-exception? _%e101449%_))
            (macro-join-timeout-exception? _%exn101447%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn101443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101443%_))
            (let ((_%e101445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101443%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101445%_)
                  (macro-join-timeout-exception-arguments _%e101445%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e101445%_ '())))))
            (if (macro-join-timeout-exception? _%exn101443%_)
                (macro-join-timeout-exception-arguments _%exn101443%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn101443%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn101437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101437%_))
            (let ((_%e101440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101437%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101440%_)
                  (macro-join-timeout-exception-procedure _%e101440%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e101440%_ '())))))
            (if (macro-join-timeout-exception? _%exn101437%_)
                (macro-join-timeout-exception-procedure _%exn101437%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn101437%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn101433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101433%_))
            (let ((_%e101435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101433%_ 'exception))))
              (macro-keyword-expected-exception? _%e101435%_))
            (macro-keyword-expected-exception? _%exn101433%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn101429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101429%_))
            (let ((_%e101431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101429%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101431%_)
                  (macro-keyword-expected-exception-arguments _%e101431%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e101431%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101429%_)
                (macro-keyword-expected-exception-arguments _%exn101429%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn101429%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn101423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101423%_))
            (let ((_%e101426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101423%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101426%_)
                  (macro-keyword-expected-exception-procedure _%e101426%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e101426%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101423%_)
                (macro-keyword-expected-exception-procedure _%exn101423%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn101423%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn101419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101419%_))
            (let ((_%e101421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101419%_ 'exception))))
              (macro-length-mismatch-exception? _%e101421%_))
            (macro-length-mismatch-exception? _%exn101419%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn101415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101415%_))
            (let ((_%e101417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101415%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101417%_)
                  (macro-length-mismatch-exception-arg-id _%e101417%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e101417%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101415%_)
                (macro-length-mismatch-exception-arg-id _%exn101415%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn101415%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn101411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101411%_))
            (let ((_%e101413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101411%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101413%_)
                  (macro-length-mismatch-exception-arguments _%e101413%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e101413%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101411%_)
                (macro-length-mismatch-exception-arguments _%exn101411%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn101411%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn101405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101405%_))
            (let ((_%e101408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101405%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101408%_)
                  (macro-length-mismatch-exception-procedure _%e101408%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e101408%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101405%_)
                (macro-length-mismatch-exception-procedure _%exn101405%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn101405%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn101401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101401%_))
            (let ((_%e101403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101401%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e101403%_))
            (macro-mailbox-receive-timeout-exception? _%exn101401%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn101397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101397%_))
            (let ((_%e101399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101397%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101399%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e101399%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e101399%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101397%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn101397%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn101397%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn101391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101391%_))
            (let ((_%e101394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101391%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101394%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e101394%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e101394%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101391%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn101391%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn101391%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn101387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101387%_))
            (let ((_%e101389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101387%_ 'exception))))
              (macro-module-not-found-exception? _%e101389%_))
            (macro-module-not-found-exception? _%exn101387%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn101383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101383%_))
            (let ((_%e101385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101383%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101385%_)
                  (macro-module-not-found-exception-arguments _%e101385%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e101385%_ '())))))
            (if (macro-module-not-found-exception? _%exn101383%_)
                (macro-module-not-found-exception-arguments _%exn101383%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn101383%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn101377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101377%_))
            (let ((_%e101380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101377%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101380%_)
                  (macro-module-not-found-exception-procedure _%e101380%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e101380%_ '())))))
            (if (macro-module-not-found-exception? _%exn101377%_)
                (macro-module-not-found-exception-procedure _%exn101377%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn101377%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn101371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101371%_))
            (let ((_%e101374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101371%_ 'exception))))
              (macro-multiple-c-return-exception? _%e101374%_))
            (macro-multiple-c-return-exception? _%exn101371%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn101367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101367%_))
            (let ((_%e101369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101367%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e101369%_))
            (macro-no-such-file-or-directory-exception? _%exn101367%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn101363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101363%_))
            (let ((_%e101365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101363%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101365%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e101365%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e101365%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101363%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn101363%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn101363%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn101357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101357%_))
            (let ((_%e101360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101357%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101360%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e101360%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e101360%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101357%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn101357%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn101357%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn101353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101353%_))
            (let ((_%e101355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101353%_ 'exception))))
              (macro-noncontinuable-exception? _%e101355%_))
            (macro-noncontinuable-exception? _%exn101353%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn101347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101347%_))
            (let ((_%e101350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101347%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e101350%_)
                  (macro-noncontinuable-exception-reason _%e101350%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e101350%_ '())))))
            (if (macro-noncontinuable-exception? _%exn101347%_)
                (macro-noncontinuable-exception-reason _%exn101347%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn101347%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn101343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101343%_))
            (let ((_%e101345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101343%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e101345%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn101343%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn101339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101339%_))
            (let ((_%e101341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101339%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101341%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e101341%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e101341%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101339%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn101339%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn101339%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn101333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101333%_))
            (let ((_%e101336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101333%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101336%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e101336%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e101336%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101333%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn101333%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn101333%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn101329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101329%_))
            (let ((_%e101331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101329%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e101331%_))
            (macro-nonprocedure-operator-exception? _%exn101329%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn101325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101325%_))
            (let ((_%e101327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101325%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101327%_)
                  (macro-nonprocedure-operator-exception-arguments _%e101327%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e101327%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101325%_)
                (macro-nonprocedure-operator-exception-arguments _%exn101325%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn101325%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn101321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101321%_))
            (let ((_%e101323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101321%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101323%_)
                  (macro-nonprocedure-operator-exception-code _%e101323%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e101323%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101321%_)
                (macro-nonprocedure-operator-exception-code _%exn101321%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn101321%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn101317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101317%_))
            (let ((_%e101319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101317%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101319%_)
                  (macro-nonprocedure-operator-exception-operator _%e101319%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e101319%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101317%_)
                (macro-nonprocedure-operator-exception-operator _%exn101317%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn101317%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn101311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101311%_))
            (let ((_%e101314%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101311%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101314%_)
                  (macro-nonprocedure-operator-exception-rte _%e101314%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e101314%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101311%_)
                (macro-nonprocedure-operator-exception-rte _%exn101311%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn101311%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn101307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101307%_))
            (let ((_%e101309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101307%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e101309%_))
            (macro-not-in-compilation-context-exception? _%exn101307%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn101303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101303%_))
            (let ((_%e101305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101303%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101305%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e101305%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e101305%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101303%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn101303%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn101303%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn101297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101297%_))
            (let ((_%e101300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101297%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101300%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e101300%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e101300%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101297%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn101297%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn101297%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn101293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101293%_))
            (let ((_%e101295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101293%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e101295%_))
            (macro-number-of-arguments-limit-exception? _%exn101293%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn101289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101289%_))
            (let ((_%e101291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101289%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101291%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e101291%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e101291%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101289%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn101289%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn101289%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn101283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101283%_))
            (let ((_%e101286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101283%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101286%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e101286%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e101286%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101283%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn101283%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn101283%_ '())))))))
    (define os-exception?
      (lambda (_%exn101279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101279%_))
            (let ((_%e101281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101279%_ 'exception))))
              (macro-os-exception? _%e101281%_))
            (macro-os-exception? _%exn101279%_))))
    (define os-exception-arguments
      (lambda (_%exn101275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101275%_))
            (let ((_%e101277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101275%_ 'exception))))
              (if (macro-os-exception? _%e101277%_)
                  (macro-os-exception-arguments _%e101277%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e101277%_ '())))))
            (if (macro-os-exception? _%exn101275%_)
                (macro-os-exception-arguments _%exn101275%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn101275%_ '())))))))
    (define os-exception-code
      (lambda (_%exn101271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101271%_))
            (let ((_%e101273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101271%_ 'exception))))
              (if (macro-os-exception? _%e101273%_)
                  (macro-os-exception-code _%e101273%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e101273%_ '())))))
            (if (macro-os-exception? _%exn101271%_)
                (macro-os-exception-code _%exn101271%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn101271%_ '())))))))
    (define os-exception-message
      (lambda (_%exn101267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101267%_))
            (let ((_%e101269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101267%_ 'exception))))
              (if (macro-os-exception? _%e101269%_)
                  (macro-os-exception-message _%e101269%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e101269%_ '())))))
            (if (macro-os-exception? _%exn101267%_)
                (macro-os-exception-message _%exn101267%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn101267%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn101261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101261%_))
            (let ((_%e101264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101261%_ 'exception))))
              (if (macro-os-exception? _%e101264%_)
                  (macro-os-exception-procedure _%e101264%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e101264%_ '())))))
            (if (macro-os-exception? _%exn101261%_)
                (macro-os-exception-procedure _%exn101261%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn101261%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn101257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101257%_))
            (let ((_%e101259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101257%_ 'exception))))
              (macro-permission-denied-exception? _%e101259%_))
            (macro-permission-denied-exception? _%exn101257%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn101253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101253%_))
            (let ((_%e101255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101253%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101255%_)
                  (macro-permission-denied-exception-arguments _%e101255%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e101255%_ '())))))
            (if (macro-permission-denied-exception? _%exn101253%_)
                (macro-permission-denied-exception-arguments _%exn101253%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn101253%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn101247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101247%_))
            (let ((_%e101250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101247%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101250%_)
                  (macro-permission-denied-exception-procedure _%e101250%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e101250%_ '())))))
            (if (macro-permission-denied-exception? _%exn101247%_)
                (macro-permission-denied-exception-procedure _%exn101247%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn101247%_ '())))))))
    (define range-exception?
      (lambda (_%exn101243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101243%_))
            (let ((_%e101245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101243%_ 'exception))))
              (macro-range-exception? _%e101245%_))
            (macro-range-exception? _%exn101243%_))))
    (define range-exception-arg-id
      (lambda (_%exn101239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101239%_))
            (let ((_%e101241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101239%_ 'exception))))
              (if (macro-range-exception? _%e101241%_)
                  (macro-range-exception-arg-id _%e101241%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e101241%_ '())))))
            (if (macro-range-exception? _%exn101239%_)
                (macro-range-exception-arg-id _%exn101239%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn101239%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn101235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101235%_))
            (let ((_%e101237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101235%_ 'exception))))
              (if (macro-range-exception? _%e101237%_)
                  (macro-range-exception-arguments _%e101237%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e101237%_ '())))))
            (if (macro-range-exception? _%exn101235%_)
                (macro-range-exception-arguments _%exn101235%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn101235%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn101229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101229%_))
            (let ((_%e101232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101229%_ 'exception))))
              (if (macro-range-exception? _%e101232%_)
                  (macro-range-exception-procedure _%e101232%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e101232%_ '())))))
            (if (macro-range-exception? _%exn101229%_)
                (macro-range-exception-procedure _%exn101229%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn101229%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn101225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101225%_))
            (let ((_%e101227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101225%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e101227%_))
            (macro-rpc-remote-error-exception? _%exn101225%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn101221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101221%_))
            (let ((_%e101223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101221%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101223%_)
                  (macro-rpc-remote-error-exception-arguments _%e101223%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e101223%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101221%_)
                (macro-rpc-remote-error-exception-arguments _%exn101221%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn101221%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn101217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101217%_))
            (let ((_%e101219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101217%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101219%_)
                  (macro-rpc-remote-error-exception-message _%e101219%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e101219%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101217%_)
                (macro-rpc-remote-error-exception-message _%exn101217%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn101217%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn101211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101211%_))
            (let ((_%e101214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101211%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101214%_)
                  (macro-rpc-remote-error-exception-procedure _%e101214%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e101214%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101211%_)
                (macro-rpc-remote-error-exception-procedure _%exn101211%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn101211%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn101207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101207%_))
            (let ((_%e101209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101207%_ 'exception))))
              (macro-scheduler-exception? _%e101209%_))
            (macro-scheduler-exception? _%exn101207%_))))
    (define scheduler-exception-reason
      (lambda (_%exn101201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101201%_))
            (let ((_%e101204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101201%_ 'exception))))
              (if (macro-scheduler-exception? _%e101204%_)
                  (macro-scheduler-exception-reason _%e101204%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e101204%_ '())))))
            (if (macro-scheduler-exception? _%exn101201%_)
                (macro-scheduler-exception-reason _%exn101201%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn101201%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn101197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101197%_))
            (let ((_%e101199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101197%_ 'exception))))
              (macro-sfun-conversion-exception? _%e101199%_))
            (macro-sfun-conversion-exception? _%exn101197%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn101193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101193%_))
            (let ((_%e101195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101193%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101195%_)
                  (macro-sfun-conversion-exception-arguments _%e101195%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e101195%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101193%_)
                (macro-sfun-conversion-exception-arguments _%exn101193%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn101193%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn101189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101189%_))
            (let ((_%e101191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101189%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101191%_)
                  (macro-sfun-conversion-exception-code _%e101191%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e101191%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101189%_)
                (macro-sfun-conversion-exception-code _%exn101189%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn101189%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn101185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101185%_))
            (let ((_%e101187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101185%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101187%_)
                  (macro-sfun-conversion-exception-message _%e101187%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e101187%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101185%_)
                (macro-sfun-conversion-exception-message _%exn101185%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn101185%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn101179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101179%_))
            (let ((_%e101182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101179%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101182%_)
                  (macro-sfun-conversion-exception-procedure _%e101182%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e101182%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101179%_)
                (macro-sfun-conversion-exception-procedure _%exn101179%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn101179%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn101173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101173%_))
            (let ((_%e101176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101173%_ 'exception))))
              (macro-stack-overflow-exception? _%e101176%_))
            (macro-stack-overflow-exception? _%exn101173%_))))
    (define started-thread-exception?
      (lambda (_%exn101169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101169%_))
            (let ((_%e101171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101169%_ 'exception))))
              (macro-started-thread-exception? _%e101171%_))
            (macro-started-thread-exception? _%exn101169%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn101165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101165%_))
            (let ((_%e101167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101165%_ 'exception))))
              (if (macro-started-thread-exception? _%e101167%_)
                  (macro-started-thread-exception-arguments _%e101167%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e101167%_ '())))))
            (if (macro-started-thread-exception? _%exn101165%_)
                (macro-started-thread-exception-arguments _%exn101165%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn101165%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn101159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101159%_))
            (let ((_%e101162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101159%_ 'exception))))
              (if (macro-started-thread-exception? _%e101162%_)
                  (macro-started-thread-exception-procedure _%e101162%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e101162%_ '())))))
            (if (macro-started-thread-exception? _%exn101159%_)
                (macro-started-thread-exception-procedure _%exn101159%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn101159%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn101155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101155%_))
            (let ((_%e101157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101155%_ 'exception))))
              (macro-terminated-thread-exception? _%e101157%_))
            (macro-terminated-thread-exception? _%exn101155%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn101151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101151%_))
            (let ((_%e101153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101151%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101153%_)
                  (macro-terminated-thread-exception-arguments _%e101153%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e101153%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101151%_)
                (macro-terminated-thread-exception-arguments _%exn101151%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn101151%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn101145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101145%_))
            (let ((_%e101148%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101145%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101148%_)
                  (macro-terminated-thread-exception-procedure _%e101148%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e101148%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101145%_)
                (macro-terminated-thread-exception-procedure _%exn101145%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn101145%_ '())))))))
    (define type-exception?
      (lambda (_%exn101141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101141%_))
            (let ((_%e101143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101141%_ 'exception))))
              (macro-type-exception? _%e101143%_))
            (macro-type-exception? _%exn101141%_))))
    (define type-exception-arg-id
      (lambda (_%exn101137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101137%_))
            (let ((_%e101139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101137%_ 'exception))))
              (if (macro-type-exception? _%e101139%_)
                  (macro-type-exception-arg-id _%e101139%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e101139%_ '())))))
            (if (macro-type-exception? _%exn101137%_)
                (macro-type-exception-arg-id _%exn101137%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn101137%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn101133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101133%_))
            (let ((_%e101135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101133%_ 'exception))))
              (if (macro-type-exception? _%e101135%_)
                  (macro-type-exception-arguments _%e101135%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e101135%_ '())))))
            (if (macro-type-exception? _%exn101133%_)
                (macro-type-exception-arguments _%exn101133%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn101133%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn101129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101129%_))
            (let ((_%e101131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101129%_ 'exception))))
              (if (macro-type-exception? _%e101131%_)
                  (macro-type-exception-procedure _%e101131%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e101131%_ '())))))
            (if (macro-type-exception? _%exn101129%_)
                (macro-type-exception-procedure _%exn101129%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn101129%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn101123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101123%_))
            (let ((_%e101126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101123%_ 'exception))))
              (if (macro-type-exception? _%e101126%_)
                  (macro-type-exception-type-id _%e101126%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e101126%_ '())))))
            (if (macro-type-exception? _%exn101123%_)
                (macro-type-exception-type-id _%exn101123%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn101123%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn101119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101119%_))
            (let ((_%e101121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101119%_ 'exception))))
              (macro-unbound-global-exception? _%e101121%_))
            (macro-unbound-global-exception? _%exn101119%_))))
    (define unbound-global-exception-code
      (lambda (_%exn101115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101115%_))
            (let ((_%e101117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101115%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101117%_)
                  (macro-unbound-global-exception-code _%e101117%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e101117%_ '())))))
            (if (macro-unbound-global-exception? _%exn101115%_)
                (macro-unbound-global-exception-code _%exn101115%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn101115%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn101111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101111%_))
            (let ((_%e101113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101111%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101113%_)
                  (macro-unbound-global-exception-rte _%e101113%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e101113%_ '())))))
            (if (macro-unbound-global-exception? _%exn101111%_)
                (macro-unbound-global-exception-rte _%exn101111%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn101111%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn101105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101105%_))
            (let ((_%e101108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101105%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101108%_)
                  (macro-unbound-global-exception-variable _%e101108%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e101108%_ '())))))
            (if (macro-unbound-global-exception? _%exn101105%_)
                (macro-unbound-global-exception-variable _%exn101105%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn101105%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn101101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101101%_))
            (let ((_%e101103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101101%_ 'exception))))
              (macro-unbound-key-exception? _%e101103%_))
            (macro-unbound-key-exception? _%exn101101%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn101097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101097%_))
            (let ((_%e101099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101097%_ 'exception))))
              (if (macro-unbound-key-exception? _%e101099%_)
                  (macro-unbound-key-exception-arguments _%e101099%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e101099%_ '())))))
            (if (macro-unbound-key-exception? _%exn101097%_)
                (macro-unbound-key-exception-arguments _%exn101097%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn101097%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn101091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101091%_))
            (let ((_%e101094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101091%_ 'exception))))
              (if (macro-unbound-key-exception? _%e101094%_)
                  (macro-unbound-key-exception-procedure _%e101094%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e101094%_ '())))))
            (if (macro-unbound-key-exception? _%exn101091%_)
                (macro-unbound-key-exception-procedure _%exn101091%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn101091%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn101087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101087%_))
            (let ((_%e101089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101087%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e101089%_))
            (macro-unbound-os-environment-variable-exception? _%exn101087%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn101083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101083%_))
            (let ((_%e101085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101083%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e101085%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e101085%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e101085%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn101083%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn101083%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn101083%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn101077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101077%_))
            (let ((_%e101080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101077%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e101080%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e101080%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e101080%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn101077%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn101077%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn101077%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn101073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101073%_))
            (let ((_%e101075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101073%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e101075%_))
            (macro-unbound-serial-number-exception? _%exn101073%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn101069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101069%_))
            (let ((_%e101071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101069%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e101071%_)
                  (macro-unbound-serial-number-exception-arguments _%e101071%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e101071%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn101069%_)
                (macro-unbound-serial-number-exception-arguments _%exn101069%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn101069%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn101063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101063%_))
            (let ((_%e101066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101063%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e101066%_)
                  (macro-unbound-serial-number-exception-procedure _%e101066%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e101066%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn101063%_)
                (macro-unbound-serial-number-exception-procedure _%exn101063%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn101063%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn101059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101059%_))
            (let ((_%e101061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101059%_ 'exception))))
              (macro-uncaught-exception? _%e101061%_))
            (macro-uncaught-exception? _%exn101059%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn101055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101055%_))
            (let ((_%e101057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101055%_ 'exception))))
              (if (macro-uncaught-exception? _%e101057%_)
                  (macro-uncaught-exception-arguments _%e101057%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e101057%_ '())))))
            (if (macro-uncaught-exception? _%exn101055%_)
                (macro-uncaught-exception-arguments _%exn101055%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn101055%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn101051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101051%_))
            (let ((_%e101053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101051%_ 'exception))))
              (if (macro-uncaught-exception? _%e101053%_)
                  (macro-uncaught-exception-procedure _%e101053%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e101053%_ '())))))
            (if (macro-uncaught-exception? _%exn101051%_)
                (macro-uncaught-exception-procedure _%exn101051%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn101051%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn101045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101045%_))
            (let ((_%e101048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101045%_ 'exception))))
              (if (macro-uncaught-exception? _%e101048%_)
                  (macro-uncaught-exception-reason _%e101048%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e101048%_ '())))))
            (if (macro-uncaught-exception? _%exn101045%_)
                (macro-uncaught-exception-reason _%exn101045%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn101045%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn101041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101041%_))
            (let ((_%e101043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101041%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e101043%_))
            (macro-uninitialized-thread-exception? _%exn101041%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn101037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101037%_))
            (let ((_%e101039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101037%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e101039%_)
                  (macro-uninitialized-thread-exception-arguments _%e101039%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e101039%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn101037%_)
                (macro-uninitialized-thread-exception-arguments _%exn101037%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn101037%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn101031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101031%_))
            (let ((_%e101034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101031%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e101034%_)
                  (macro-uninitialized-thread-exception-procedure _%e101034%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e101034%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn101031%_)
                (macro-uninitialized-thread-exception-procedure _%exn101031%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn101031%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn101027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101027%_))
            (let ((_%e101029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101027%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e101029%_))
            (macro-unknown-keyword-argument-exception? _%exn101027%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn101023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101023%_))
            (let ((_%e101025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101023%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e101025%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e101025%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e101025%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn101023%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn101023%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn101023%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn101017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101017%_))
            (let ((_%e101020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101017%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e101020%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e101020%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e101020%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn101017%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn101017%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn101017%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn101013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101013%_))
            (let ((_%e101015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101013%_ 'exception))))
              (macro-unterminated-process-exception? _%e101015%_))
            (macro-unterminated-process-exception? _%exn101013%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn101009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101009%_))
            (let ((_%e101011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101009%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e101011%_)
                  (macro-unterminated-process-exception-arguments _%e101011%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e101011%_ '())))))
            (if (macro-unterminated-process-exception? _%exn101009%_)
                (macro-unterminated-process-exception-arguments _%exn101009%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn101009%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn101003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101003%_))
            (let ((_%e101006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101003%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e101006%_)
                  (macro-unterminated-process-exception-procedure _%e101006%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e101006%_ '())))))
            (if (macro-unterminated-process-exception? _%exn101003%_)
                (macro-unterminated-process-exception-procedure _%exn101003%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn101003%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn100999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100999%_))
            (let ((_%e101001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100999%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e101001%_))
            (macro-wrong-number-of-arguments-exception? _%exn100999%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn100995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100995%_))
            (let ((_%e100997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100995%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100997%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e100997%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e100997%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100995%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn100995%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn100995%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn100989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100989%_))
            (let ((_%e100992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100989%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100992%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e100992%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e100992%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100989%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn100989%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn100989%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn100985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100985%_))
            (let ((_%e100987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100985%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e100987%_))
            (macro-wrong-number-of-values-exception? _%exn100985%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn100981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100981%_))
            (let ((_%e100983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100981%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100983%_)
                  (macro-wrong-number-of-values-exception-code _%e100983%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e100983%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100981%_)
                (macro-wrong-number-of-values-exception-code _%exn100981%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn100981%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn100977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100977%_))
            (let ((_%e100979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100977%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100979%_)
                  (macro-wrong-number-of-values-exception-rte _%e100979%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e100979%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100977%_)
                (macro-wrong-number-of-values-exception-rte _%exn100977%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn100977%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn100971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100971%_))
            (let ((_%e100974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100971%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100974%_)
                  (macro-wrong-number-of-values-exception-vals _%e100974%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e100974%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100971%_)
                (macro-wrong-number-of-values-exception-vals _%exn100971%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn100971%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn100965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100965%_))
            (let ((_%e100968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100965%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e100968%_))
            (macro-wrong-processor-c-return-exception? _%exn100965%_))))))
