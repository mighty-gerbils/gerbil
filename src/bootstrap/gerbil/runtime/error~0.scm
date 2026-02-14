(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771036670)
  (begin
    (define Exception::t
      (let ((__tmp324511 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp324511
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args324429%_
        (apply make-instance Exception::t _%$args324429%_)))
    (define StackTrace::t
      (let ((__tmp324512 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp324512
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args324426%_
        (apply make-instance StackTrace::t _%$args324426%_)))
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
      (let ((__tmp324513 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp324513
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args324423%_ (apply make-instance Error::t _%$args324423%_)))
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
      (let ((__tmp324514 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp324514
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args324420%_
        (apply make-instance ContractViolation::t _%$args324420%_)))
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
      (let ((__tmp324515 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp324515
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args324417%_
        (apply make-instance RuntimeException::t _%$args324417%_)))
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
      (lambda (_%exn324412%_ _%continue324413%_)
        (let ((_%exn324415%_ (wrap-runtime-exception _%exn324412%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn324415%_ _%continue324413%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn324408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn324408%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn324408%_ 'continuation))
                '#!void
                (let ((__tmp324516
                       (lambda (_%cont324410%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn324408%_
                            'continuation
                            _%cont324410%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp324516)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn324408%_))))
    (define error
      (lambda (_%message324405%_ . _%irritants324406%_)
        (raise (let ((__obj324508
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj324508
                  _%message324405%_
                  'irritants:
                  _%irritants324406%_)
                 __obj324508))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords324380%_
               _%ctx324375324381%_
               _%contract-expr324376324382%_
               _%value324377324383%_
               _%message324384%_)
        (let* ((_%ctx324386%_
                (if (eq? _%ctx324375324381%_ absent-value)
                    '#f
                    _%ctx324375324381%_))
               (_%contract-expr324388%_
                (if (eq? _%contract-expr324376324382%_ absent-value)
                    '#f
                    _%contract-expr324376324382%_))
               (_%value324390%_
                (if (eq? _%value324377324383%_ absent-value)
                    '#f
                    _%value324377324383%_)))
          (raise (let ((__obj324509
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj324509
                    _%message324384%_
                    'where:
                    _%ctx324386%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr324388%_
                                (cons 'value: (cons _%value324390%_ '())))))
                   __obj324509)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords324395%_ . _%args324396%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords324395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords324395%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords324395%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords324395%_
                  'value:
                  absent-value))
               _%args324396%_)))
    (define __raise-contract-violation-error
      (lambda _%args324378324402%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args324378324402%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler324349%_ _%thunk324350%_)
        (let* ((_%handler324353%_ _%handler324349%_)
               (_%thunk324361%_ _%thunk324350%_)
               (__tmp324517
                (lambda (_%exn324370%_)
                  (let ((_%exn324372%_ (wrap-runtime-exception _%exn324370%_)))
                    (declare (not safe))
                    (_%handler324353%_ _%exn324372%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp324517 _%thunk324361%_))))
    (define with-exception-handler
      (lambda (_%handler322384%_ _%thunk322385%_)
        (if (procedure? _%handler322384%_)
            (let ((_%handler322389%_ _%handler322384%_))
              (if (procedure? _%thunk322385%_)
                  (let ((_%thunk322399%_ _%thunk322385%_))
                    (__with-exception-handler
                     _%handler322389%_
                     _%thunk322399%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk322385%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler322384%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler324291%_ _%thunk324292%_)
        (let* ((_%handler324295%_ _%handler324291%_)
               (_%thunk324303%_ _%thunk324292%_)
               (__tmp324518
                (lambda (_%cont324312%_)
                  (let* ((_%handler324316%_
                          (lambda (_%exn324314%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont324312%_
                               _%handler324295%_
                               _%exn324314%_))))
                         (_%thunk324319%_ _%thunk324303%_)
                         (_%handler324324%_ _%handler324316%_)
                         (_%thunk324339%_ _%thunk324319%_))
                    (__with-exception-handler
                     _%handler324324%_
                     _%thunk324339%_)))))
          (declare (not safe))
          (##continuation-capture __tmp324518))))
    (define with-catch
      (lambda (_%handler322529%_ _%thunk322530%_)
        (if (procedure? _%handler322529%_)
            (let ((_%handler322534%_ _%handler322529%_))
              (if (procedure? _%thunk322530%_)
                  (let ((_%thunk322544%_ _%thunk322530%_))
                    (__with-catch _%handler322534%_ _%thunk322544%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk322530%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler322529%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn324278%_)
        (if (or (heap-overflow-exception? _%exn324278%_)
                (stack-overflow-exception? _%exn324278%_))
            _%exn324278%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn324278%_))
                _%exn324278%_
                (if (macro-exception? _%exn324278%_)
                    (let ((_%rte324286%_
                           (let ((__obj324510
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj324510
                                _%exn324278%_
                                '2
                                '#f
                                '#f))
                             __obj324510)))
                      (let ((__tmp324519
                             (lambda (_%cont324288%_)
                               (let ((__tmp324520
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont324288%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte324286%_
                                  'continuation
                                  __tmp324520)))))
                        (declare (not safe))
                        (##continuation-capture __tmp324519))
                      _%rte324286%_)
                    _%exn324278%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj324273%_)
        (let ((_%$e324275%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj324273%_))))
          (if _%$e324275%_ _%$e324275%_ (error-exception? _%obj324273%_)))))
    (define error-message
      (lambda (_%obj324232%_)
        (let ((_%$e324268%_
               (let* ((_%obj324234%_ _%obj324232%_)
                      (_%slot324237%_ 'message)
                      (_%E324240%_ false)
                      (_%slot324245%_ _%slot324237%_)
                      (_%E324258%_ _%E324240%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj324234%_ _%slot324245%_ _%E324258%_))))
          (if _%$e324268%_
              _%$e324268%_
              (if (error-exception? _%obj324232%_)
                  (error-exception-message _%obj324232%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj324227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj324227%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj324227%_ 'irritants))
            (if (error-exception? _%obj324227%_)
                (error-exception-parameters _%obj324227%_)
                '#f))))
    (define error-trace
      (lambda (_%obj324225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj324225%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj324225%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e324186%_ _%port324187%_)
        (let ((_%$e324209%_
               (let* ((_%obj324189%_ _%e324186%_)
                      (_%id324192%_ 'display-exception)
                      (_%id324197%_ _%id324192%_))
                 (declare (not safe))
                 (__method-ref _%obj324189%_ _%id324197%_))))
          (if _%$e324209%_
              ((lambda (_%f324212%_) (_%f324212%_ _%e324186%_ _%port324187%_))
               _%$e324209%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e324186%_ _%port324187%_))))))
    (define display-exception__0
      (lambda (_%e324218%_)
        (let ((_%port324220%_ (current-error-port)))
          (display-exception__% _%e324218%_ _%port324220%_))))
    (define display-exception
      (lambda _g324521_
        (let ((_g324522_ (let () (declare (not safe)) (##length _g324521_))))
          (cond ((let () (declare (not safe)) (##fx= _g324522_ 1))
                 (apply display-exception__0 _g324521_))
                ((let () (declare (not safe)) (##fx= _g324522_ 2))
                 (apply display-exception__% _g324521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g324521_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self324164%_ _%message324165%_ . _%rest324166%_)
        (let* ((_%self324169%_ _%self324164%_)
               (_%message324183%_
                (if (string? _%message324165%_)
                    _%message324165%_
                    (call-with-output-string
                     '""
                     (lambda (_%g324178324180%_)
                       (display _%message324165%_ _%g324178324180%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self324169%_ 'message _%message324183%_))
          (apply class-instance-init! _%self324169%_ _%rest324166%_))))
    (define Error:::init!::specialize
      (lambda (__klass324431 __method-table324432)
        (let ((__message324433
               (let ((__slot324434
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324431 'message))))
                 (if __slot324434
                     __slot324434
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self324164%_ _%message324165%_ . _%rest324166%_)
            (let* ((_%self324169%_ _%self324164%_)
                   (_%message324183%_
                    (if (string? _%message324165%_)
                        _%message324165%_
                        (call-with-output-string
                         '""
                         (lambda (_%g324178324180%_)
                           (display _%message324165%_ _%g324178324180%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self324169%_
                 _%message324183%_
                 __message324433
                 '#f
                 '#f))
              (apply class-instance-init! _%self324169%_ _%rest324166%_))))))
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
      (lambda (_%self323869%_ _%port323870%_)
        (let ((_%self323873%_ _%self323869%_))
          (let ((_%tmp-port323883%_ (open-output-string))
                (_%display-error-newline323884%_
                 (> (output-port-column _%port323870%_) '0)))
            (fix-port-width! _%tmp-port323883%_)
            (let ((__tmp324523
                   (lambda ()
                     (if _%display-error-newline323884%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e323887%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self323873%_ 'where))))
                       (if _%$e323887%_ (display _%$e323887%_) (display '"?")))
                     (let ((__tmp324524
                            (let ((__tmp324525
                                   (let ((_%obj323891%_ _%self323873%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj323891%_))
                                         (let ((_%obj323896%_ _%obj323891%_))
                                           (declare (not safe))
                                           (__object-class _%obj323896%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj323891%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp324525))))
                       (declare (not safe))
                       (display* '" [" __tmp324524 '"]: "))
                     (let ((__tmp324526
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self323873%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp324526))
                     (let ((_%irritants323911%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self323873%_ 'irritants))))
                       (if (null? _%irritants323911%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj323913%_)
                                (if (u8vector? _%obj323913%_)
                                    (let ((__tmp324527
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj323913%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp324527))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj323913%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants323911%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont323914323916%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self323873%_
                                   'continuation))))
                           (if _%cont323914323916%_
                               (let ((_%cont323918%_ _%cont323914323916%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont323918%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp324523
               current-output-port
               _%tmp-port323883%_))
            (let ((__tmp324528 (get-output-string _%tmp-port323883%_)))
              (declare (not safe))
              (##write-string __tmp324528 _%port323870%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass324435 __method-table324436)
        (let ((__message324437
               (let ((__slot324441
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324435 'message))))
                 (if __slot324441
                     __slot324441
                     (error '"Unknown slot" 'message))))
              (__continuation324438
               (let ((__slot324442
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324435 'continuation))))
                 (if __slot324442
                     __slot324442
                     (error '"Unknown slot" 'continuation))))
              (__where324439
               (let ((__slot324443
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324435 'where))))
                 (if __slot324443
                     __slot324443
                     (error '"Unknown slot" 'where))))
              (__irritants324440
               (let ((__slot324444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324435 'irritants))))
                 (if __slot324444
                     __slot324444
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self323869%_ _%port323870%_)
            (let ((_%self323873%_ _%self323869%_))
              (let ((_%tmp-port323883%_ (open-output-string))
                    (_%display-error-newline323884%_
                     (> (output-port-column _%port323870%_) '0)))
                (fix-port-width! _%tmp-port323883%_)
                (let ((__tmp324529
                       (lambda ()
                         (if _%display-error-newline323884%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e323887%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self323873%_
                                   __where324439
                                   '#f
                                   '#f))))
                           (if _%$e323887%_
                               (display _%$e323887%_)
                               (display '"?")))
                         (let ((__tmp324530
                                (let ((__tmp324531
                                       (let ((_%obj323891%_ _%self323873%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj323891%_))
                                             (let ((_%obj323896%_
                                                    _%obj323891%_))
                                               (declare (not safe))
                                               (__object-class _%obj323896%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj323891%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp324531))))
                           (declare (not safe))
                           (display* '" [" __tmp324530 '"]: "))
                         (let ((__tmp324532
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self323873%_
                                   __message324437
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp324532))
                         (let ((_%irritants323911%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self323873%_
                                   __irritants324440
                                   '#f
                                   '#f))))
                           (if (null? _%irritants323911%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj323913%_)
                                    (if (u8vector? _%obj323913%_)
                                        (let ((__tmp324533
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj323913%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp324533))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj323913%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants323911%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont323914323916%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self323873%_
                                       __continuation324438
                                       '#f
                                       '#f))))
                               (if _%cont323914323916%_
                                   (let ((_%cont323918%_ _%cont323914323916%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont323918%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp324529
                   current-output-port
                   _%tmp-port323883%_))
                (let ((__tmp324534 (get-output-string _%tmp-port323883%_)))
                  (declare (not safe))
                  (##write-string __tmp324534 _%port323870%_))))))))
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
      (lambda (_%self323726%_ _%port323727%_)
        (let* ((_%self323730%_ _%self323726%_)
               (_%tmp-port323740%_ (open-output-string)))
          (fix-port-width! _%tmp-port323740%_)
          (let ((__tmp324535
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self323730%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp324535 _%tmp-port323740%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont323741323743%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self323730%_ 'continuation))))
                (if _%cont323741323743%_
                    (let ((_%cont323745%_ _%cont323741323743%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port323740%_)
                      (newline _%tmp-port323740%_)
                      (display-continuation-backtrace
                       _%cont323745%_
                       _%tmp-port323740%_))
                    '#f))
              '#!void)
          (let ((__tmp324536 (get-output-string _%tmp-port323740%_)))
            (declare (not safe))
            (##write-string __tmp324536 _%port323727%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass324445 __method-table324446)
        (let ((__continuation324447
               (let ((__slot324449
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324445 'continuation))))
                 (if __slot324449
                     __slot324449
                     (error '"Unknown slot" 'continuation))))
              (__exception324448
               (let ((__slot324450
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass324445 'exception))))
                 (if __slot324450
                     __slot324450
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self323726%_ _%port323727%_)
            (let* ((_%self323730%_ _%self323726%_)
                   (_%tmp-port323740%_ (open-output-string)))
              (fix-port-width! _%tmp-port323740%_)
              (let ((__tmp324537
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self323730%_
                        __exception324448
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp324537 _%tmp-port323740%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont323741323743%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self323730%_
                            __continuation324447
                            '#f
                            '#f))))
                    (if _%cont323741323743%_
                        (let ((_%cont323745%_ _%cont323741323743%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port323740%_)
                          (newline _%tmp-port323740%_)
                          (display-continuation-backtrace
                           _%cont323745%_
                           _%tmp-port323740%_))
                        '#f))
                  '#!void)
              (let ((__tmp324538 (get-output-string _%tmp-port323740%_)))
                (declare (not safe))
                (##write-string __tmp324538 _%port323727%_)))))))
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
      (lambda (_%port323598%_)
        (if (macro-character-port? _%port323598%_)
            (let ((_%old-width323600%_
                   (macro-character-port-output-width _%port323598%_)))
              (macro-character-port-output-width-set!
               _%port323598%_
               (lambda (_%port323602%_) '256))
              _%old-width323600%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port323595%_ _%old-width323596%_)
        (if (macro-character-port? _%port323595%_)
            (macro-character-port-output-width-set!
             _%port323595%_
             _%old-width323596%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e323593%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e323593%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn323587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323587%_))
            (let ((_%e323590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323587%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e323590%_))
            (macro-abandoned-mutex-exception? _%exn323587%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn323583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323583%_))
            (let ((_%e323585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323583%_ 'exception))))
              (macro-cfun-conversion-exception? _%e323585%_))
            (macro-cfun-conversion-exception? _%exn323583%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn323579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323579%_))
            (let ((_%e323581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323579%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e323581%_)
                  (macro-cfun-conversion-exception-arguments _%e323581%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e323581%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn323579%_)
                (macro-cfun-conversion-exception-arguments _%exn323579%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn323579%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn323575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323575%_))
            (let ((_%e323577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323575%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e323577%_)
                  (macro-cfun-conversion-exception-code _%e323577%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e323577%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn323575%_)
                (macro-cfun-conversion-exception-code _%exn323575%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn323575%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn323571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323571%_))
            (let ((_%e323573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323571%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e323573%_)
                  (macro-cfun-conversion-exception-message _%e323573%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e323573%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn323571%_)
                (macro-cfun-conversion-exception-message _%exn323571%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn323571%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn323565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323565%_))
            (let ((_%e323568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323565%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e323568%_)
                  (macro-cfun-conversion-exception-procedure _%e323568%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e323568%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn323565%_)
                (macro-cfun-conversion-exception-procedure _%exn323565%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn323565%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn323561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323561%_))
            (let ((_%e323563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323561%_ 'exception))))
              (macro-datum-parsing-exception? _%e323563%_))
            (macro-datum-parsing-exception? _%exn323561%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn323557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323557%_))
            (let ((_%e323559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323557%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e323559%_)
                  (macro-datum-parsing-exception-kind _%e323559%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e323559%_ '())))))
            (if (macro-datum-parsing-exception? _%exn323557%_)
                (macro-datum-parsing-exception-kind _%exn323557%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn323557%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn323553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323553%_))
            (let ((_%e323555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323553%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e323555%_)
                  (macro-datum-parsing-exception-parameters _%e323555%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e323555%_ '())))))
            (if (macro-datum-parsing-exception? _%exn323553%_)
                (macro-datum-parsing-exception-parameters _%exn323553%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn323553%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn323547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323547%_))
            (let ((_%e323550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323547%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e323550%_)
                  (macro-datum-parsing-exception-readenv _%e323550%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e323550%_ '())))))
            (if (macro-datum-parsing-exception? _%exn323547%_)
                (macro-datum-parsing-exception-readenv _%exn323547%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn323547%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn323541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323541%_))
            (let ((_%e323544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323541%_ 'exception))))
              (macro-deadlock-exception? _%e323544%_))
            (macro-deadlock-exception? _%exn323541%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn323537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323537%_))
            (let ((_%e323539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323537%_ 'exception))))
              (macro-divide-by-zero-exception? _%e323539%_))
            (macro-divide-by-zero-exception? _%exn323537%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn323533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323533%_))
            (let ((_%e323535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323533%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e323535%_)
                  (macro-divide-by-zero-exception-arguments _%e323535%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e323535%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn323533%_)
                (macro-divide-by-zero-exception-arguments _%exn323533%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn323533%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn323527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323527%_))
            (let ((_%e323530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323527%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e323530%_)
                  (macro-divide-by-zero-exception-procedure _%e323530%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e323530%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn323527%_)
                (macro-divide-by-zero-exception-procedure _%exn323527%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn323527%_ '())))))))
    (define error-exception?
      (lambda (_%exn323523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323523%_))
            (let ((_%e323525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323523%_ 'exception))))
              (macro-error-exception? _%e323525%_))
            (macro-error-exception? _%exn323523%_))))
    (define error-exception-message
      (lambda (_%exn323519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323519%_))
            (let ((_%e323521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323519%_ 'exception))))
              (if (macro-error-exception? _%e323521%_)
                  (macro-error-exception-message _%e323521%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e323521%_ '())))))
            (if (macro-error-exception? _%exn323519%_)
                (macro-error-exception-message _%exn323519%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn323519%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn323513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323513%_))
            (let ((_%e323516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323513%_ 'exception))))
              (if (macro-error-exception? _%e323516%_)
                  (macro-error-exception-parameters _%e323516%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e323516%_ '())))))
            (if (macro-error-exception? _%exn323513%_)
                (macro-error-exception-parameters _%exn323513%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn323513%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn323509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323509%_))
            (let ((_%e323511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323509%_ 'exception))))
              (macro-expression-parsing-exception? _%e323511%_))
            (macro-expression-parsing-exception? _%exn323509%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn323505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323505%_))
            (let ((_%e323507%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323505%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e323507%_)
                  (macro-expression-parsing-exception-kind _%e323507%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e323507%_ '())))))
            (if (macro-expression-parsing-exception? _%exn323505%_)
                (macro-expression-parsing-exception-kind _%exn323505%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn323505%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn323501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323501%_))
            (let ((_%e323503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323501%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e323503%_)
                  (macro-expression-parsing-exception-parameters _%e323503%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e323503%_ '())))))
            (if (macro-expression-parsing-exception? _%exn323501%_)
                (macro-expression-parsing-exception-parameters _%exn323501%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn323501%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn323495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323495%_))
            (let ((_%e323498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323495%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e323498%_)
                  (macro-expression-parsing-exception-source _%e323498%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e323498%_ '())))))
            (if (macro-expression-parsing-exception? _%exn323495%_)
                (macro-expression-parsing-exception-source _%exn323495%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn323495%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn323491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323491%_))
            (let ((_%e323493%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323491%_ 'exception))))
              (macro-file-exists-exception? _%e323493%_))
            (macro-file-exists-exception? _%exn323491%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn323487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323487%_))
            (let ((_%e323489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323487%_ 'exception))))
              (if (macro-file-exists-exception? _%e323489%_)
                  (macro-file-exists-exception-arguments _%e323489%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e323489%_ '())))))
            (if (macro-file-exists-exception? _%exn323487%_)
                (macro-file-exists-exception-arguments _%exn323487%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn323487%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn323481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323481%_))
            (let ((_%e323484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323481%_ 'exception))))
              (if (macro-file-exists-exception? _%e323484%_)
                  (macro-file-exists-exception-procedure _%e323484%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e323484%_ '())))))
            (if (macro-file-exists-exception? _%exn323481%_)
                (macro-file-exists-exception-procedure _%exn323481%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn323481%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn323477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323477%_))
            (let ((_%e323479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323477%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e323479%_))
            (macro-fixnum-overflow-exception? _%exn323477%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn323473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323473%_))
            (let ((_%e323475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323473%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e323475%_)
                  (macro-fixnum-overflow-exception-arguments _%e323475%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e323475%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn323473%_)
                (macro-fixnum-overflow-exception-arguments _%exn323473%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn323473%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn323467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323467%_))
            (let ((_%e323470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323467%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e323470%_)
                  (macro-fixnum-overflow-exception-procedure _%e323470%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e323470%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn323467%_)
                (macro-fixnum-overflow-exception-procedure _%exn323467%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn323467%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn323461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323461%_))
            (let ((_%e323464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323461%_ 'exception))))
              (macro-heap-overflow-exception? _%e323464%_))
            (macro-heap-overflow-exception? _%exn323461%_))))
    (define inactive-thread-exception?
      (lambda (_%exn323457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323457%_))
            (let ((_%e323459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323457%_ 'exception))))
              (macro-inactive-thread-exception? _%e323459%_))
            (macro-inactive-thread-exception? _%exn323457%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn323453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323453%_))
            (let ((_%e323455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323453%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e323455%_)
                  (macro-inactive-thread-exception-arguments _%e323455%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e323455%_ '())))))
            (if (macro-inactive-thread-exception? _%exn323453%_)
                (macro-inactive-thread-exception-arguments _%exn323453%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn323453%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn323447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323447%_))
            (let ((_%e323450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323447%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e323450%_)
                  (macro-inactive-thread-exception-procedure _%e323450%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e323450%_ '())))))
            (if (macro-inactive-thread-exception? _%exn323447%_)
                (macro-inactive-thread-exception-procedure _%exn323447%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn323447%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn323443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323443%_))
            (let ((_%e323445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323443%_ 'exception))))
              (macro-initialized-thread-exception? _%e323445%_))
            (macro-initialized-thread-exception? _%exn323443%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn323439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323439%_))
            (let ((_%e323441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323439%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e323441%_)
                  (macro-initialized-thread-exception-arguments _%e323441%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e323441%_ '())))))
            (if (macro-initialized-thread-exception? _%exn323439%_)
                (macro-initialized-thread-exception-arguments _%exn323439%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn323439%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn323433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323433%_))
            (let ((_%e323436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323433%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e323436%_)
                  (macro-initialized-thread-exception-procedure _%e323436%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e323436%_ '())))))
            (if (macro-initialized-thread-exception? _%exn323433%_)
                (macro-initialized-thread-exception-procedure _%exn323433%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn323433%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn323429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323429%_))
            (let ((_%e323431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323429%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e323431%_))
            (macro-invalid-hash-number-exception? _%exn323429%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn323425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323425%_))
            (let ((_%e323427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323425%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e323427%_)
                  (macro-invalid-hash-number-exception-arguments _%e323427%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e323427%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn323425%_)
                (macro-invalid-hash-number-exception-arguments _%exn323425%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn323425%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn323419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323419%_))
            (let ((_%e323422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323419%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e323422%_)
                  (macro-invalid-hash-number-exception-procedure _%e323422%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e323422%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn323419%_)
                (macro-invalid-hash-number-exception-procedure _%exn323419%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn323419%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn323415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323415%_))
            (let ((_%e323417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323415%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e323417%_))
            (macro-invalid-utf8-encoding-exception? _%exn323415%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn323411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323411%_))
            (let ((_%e323413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323411%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e323413%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e323413%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e323413%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn323411%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn323411%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn323411%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn323405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323405%_))
            (let ((_%e323408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323405%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e323408%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e323408%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e323408%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn323405%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn323405%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn323405%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn323401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323401%_))
            (let ((_%e323403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323401%_ 'exception))))
              (macro-join-timeout-exception? _%e323403%_))
            (macro-join-timeout-exception? _%exn323401%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn323397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323397%_))
            (let ((_%e323399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323397%_ 'exception))))
              (if (macro-join-timeout-exception? _%e323399%_)
                  (macro-join-timeout-exception-arguments _%e323399%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e323399%_ '())))))
            (if (macro-join-timeout-exception? _%exn323397%_)
                (macro-join-timeout-exception-arguments _%exn323397%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn323397%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn323391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323391%_))
            (let ((_%e323394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323391%_ 'exception))))
              (if (macro-join-timeout-exception? _%e323394%_)
                  (macro-join-timeout-exception-procedure _%e323394%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e323394%_ '())))))
            (if (macro-join-timeout-exception? _%exn323391%_)
                (macro-join-timeout-exception-procedure _%exn323391%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn323391%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn323387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323387%_))
            (let ((_%e323389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323387%_ 'exception))))
              (macro-keyword-expected-exception? _%e323389%_))
            (macro-keyword-expected-exception? _%exn323387%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn323383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323383%_))
            (let ((_%e323385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323383%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e323385%_)
                  (macro-keyword-expected-exception-arguments _%e323385%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e323385%_ '())))))
            (if (macro-keyword-expected-exception? _%exn323383%_)
                (macro-keyword-expected-exception-arguments _%exn323383%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn323383%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn323377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323377%_))
            (let ((_%e323380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323377%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e323380%_)
                  (macro-keyword-expected-exception-procedure _%e323380%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e323380%_ '())))))
            (if (macro-keyword-expected-exception? _%exn323377%_)
                (macro-keyword-expected-exception-procedure _%exn323377%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn323377%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn323373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323373%_))
            (let ((_%e323375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323373%_ 'exception))))
              (macro-length-mismatch-exception? _%e323375%_))
            (macro-length-mismatch-exception? _%exn323373%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn323369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323369%_))
            (let ((_%e323371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323369%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e323371%_)
                  (macro-length-mismatch-exception-arg-id _%e323371%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e323371%_ '())))))
            (if (macro-length-mismatch-exception? _%exn323369%_)
                (macro-length-mismatch-exception-arg-id _%exn323369%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn323369%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn323365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323365%_))
            (let ((_%e323367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323365%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e323367%_)
                  (macro-length-mismatch-exception-arguments _%e323367%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e323367%_ '())))))
            (if (macro-length-mismatch-exception? _%exn323365%_)
                (macro-length-mismatch-exception-arguments _%exn323365%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn323365%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn323359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323359%_))
            (let ((_%e323362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323359%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e323362%_)
                  (macro-length-mismatch-exception-procedure _%e323362%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e323362%_ '())))))
            (if (macro-length-mismatch-exception? _%exn323359%_)
                (macro-length-mismatch-exception-procedure _%exn323359%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn323359%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn323355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323355%_))
            (let ((_%e323357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323355%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e323357%_))
            (macro-mailbox-receive-timeout-exception? _%exn323355%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn323351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323351%_))
            (let ((_%e323353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323351%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e323353%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e323353%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e323353%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn323351%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn323351%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn323351%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn323345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323345%_))
            (let ((_%e323348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323345%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e323348%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e323348%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e323348%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn323345%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn323345%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn323345%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn323341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323341%_))
            (let ((_%e323343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323341%_ 'exception))))
              (macro-module-not-found-exception? _%e323343%_))
            (macro-module-not-found-exception? _%exn323341%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn323337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323337%_))
            (let ((_%e323339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323337%_ 'exception))))
              (if (macro-module-not-found-exception? _%e323339%_)
                  (macro-module-not-found-exception-arguments _%e323339%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e323339%_ '())))))
            (if (macro-module-not-found-exception? _%exn323337%_)
                (macro-module-not-found-exception-arguments _%exn323337%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn323337%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn323331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323331%_))
            (let ((_%e323334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323331%_ 'exception))))
              (if (macro-module-not-found-exception? _%e323334%_)
                  (macro-module-not-found-exception-procedure _%e323334%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e323334%_ '())))))
            (if (macro-module-not-found-exception? _%exn323331%_)
                (macro-module-not-found-exception-procedure _%exn323331%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn323331%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn323325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323325%_))
            (let ((_%e323328%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323325%_ 'exception))))
              (macro-multiple-c-return-exception? _%e323328%_))
            (macro-multiple-c-return-exception? _%exn323325%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn323321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323321%_))
            (let ((_%e323323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323321%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e323323%_))
            (macro-no-such-file-or-directory-exception? _%exn323321%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn323317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323317%_))
            (let ((_%e323319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323317%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e323319%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e323319%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e323319%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn323317%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn323317%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn323317%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn323311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323311%_))
            (let ((_%e323314%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323311%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e323314%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e323314%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e323314%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn323311%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn323311%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn323311%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn323307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323307%_))
            (let ((_%e323309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323307%_ 'exception))))
              (macro-noncontinuable-exception? _%e323309%_))
            (macro-noncontinuable-exception? _%exn323307%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn323301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323301%_))
            (let ((_%e323304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323301%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e323304%_)
                  (macro-noncontinuable-exception-reason _%e323304%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e323304%_ '())))))
            (if (macro-noncontinuable-exception? _%exn323301%_)
                (macro-noncontinuable-exception-reason _%exn323301%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn323301%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn323297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323297%_))
            (let ((_%e323299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323297%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e323299%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn323297%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn323293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323293%_))
            (let ((_%e323295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323293%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e323295%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e323295%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e323295%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn323293%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn323293%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn323293%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn323287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323287%_))
            (let ((_%e323290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323287%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e323290%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e323290%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e323290%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn323287%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn323287%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn323287%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn323283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323283%_))
            (let ((_%e323285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323283%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e323285%_))
            (macro-nonprocedure-operator-exception? _%exn323283%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn323279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323279%_))
            (let ((_%e323281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323279%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e323281%_)
                  (macro-nonprocedure-operator-exception-arguments _%e323281%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e323281%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn323279%_)
                (macro-nonprocedure-operator-exception-arguments _%exn323279%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn323279%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn323275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323275%_))
            (let ((_%e323277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323275%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e323277%_)
                  (macro-nonprocedure-operator-exception-code _%e323277%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e323277%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn323275%_)
                (macro-nonprocedure-operator-exception-code _%exn323275%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn323275%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn323271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323271%_))
            (let ((_%e323273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323271%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e323273%_)
                  (macro-nonprocedure-operator-exception-operator _%e323273%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e323273%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn323271%_)
                (macro-nonprocedure-operator-exception-operator _%exn323271%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn323271%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn323265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323265%_))
            (let ((_%e323268%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323265%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e323268%_)
                  (macro-nonprocedure-operator-exception-rte _%e323268%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e323268%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn323265%_)
                (macro-nonprocedure-operator-exception-rte _%exn323265%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn323265%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn323261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323261%_))
            (let ((_%e323263%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323261%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e323263%_))
            (macro-not-in-compilation-context-exception? _%exn323261%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn323257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323257%_))
            (let ((_%e323259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323257%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e323259%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e323259%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e323259%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn323257%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn323257%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn323257%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn323251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323251%_))
            (let ((_%e323254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323251%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e323254%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e323254%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e323254%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn323251%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn323251%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn323251%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn323247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323247%_))
            (let ((_%e323249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323247%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e323249%_))
            (macro-number-of-arguments-limit-exception? _%exn323247%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn323243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323243%_))
            (let ((_%e323245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323243%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e323245%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e323245%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e323245%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn323243%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn323243%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn323243%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn323237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323237%_))
            (let ((_%e323240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323237%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e323240%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e323240%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e323240%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn323237%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn323237%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn323237%_ '())))))))
    (define os-exception?
      (lambda (_%exn323233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323233%_))
            (let ((_%e323235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323233%_ 'exception))))
              (macro-os-exception? _%e323235%_))
            (macro-os-exception? _%exn323233%_))))
    (define os-exception-arguments
      (lambda (_%exn323229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323229%_))
            (let ((_%e323231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323229%_ 'exception))))
              (if (macro-os-exception? _%e323231%_)
                  (macro-os-exception-arguments _%e323231%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e323231%_ '())))))
            (if (macro-os-exception? _%exn323229%_)
                (macro-os-exception-arguments _%exn323229%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn323229%_ '())))))))
    (define os-exception-code
      (lambda (_%exn323225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323225%_))
            (let ((_%e323227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323225%_ 'exception))))
              (if (macro-os-exception? _%e323227%_)
                  (macro-os-exception-code _%e323227%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e323227%_ '())))))
            (if (macro-os-exception? _%exn323225%_)
                (macro-os-exception-code _%exn323225%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn323225%_ '())))))))
    (define os-exception-message
      (lambda (_%exn323221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323221%_))
            (let ((_%e323223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323221%_ 'exception))))
              (if (macro-os-exception? _%e323223%_)
                  (macro-os-exception-message _%e323223%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e323223%_ '())))))
            (if (macro-os-exception? _%exn323221%_)
                (macro-os-exception-message _%exn323221%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn323221%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn323215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323215%_))
            (let ((_%e323218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323215%_ 'exception))))
              (if (macro-os-exception? _%e323218%_)
                  (macro-os-exception-procedure _%e323218%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e323218%_ '())))))
            (if (macro-os-exception? _%exn323215%_)
                (macro-os-exception-procedure _%exn323215%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn323215%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn323211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323211%_))
            (let ((_%e323213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323211%_ 'exception))))
              (macro-permission-denied-exception? _%e323213%_))
            (macro-permission-denied-exception? _%exn323211%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn323207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323207%_))
            (let ((_%e323209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323207%_ 'exception))))
              (if (macro-permission-denied-exception? _%e323209%_)
                  (macro-permission-denied-exception-arguments _%e323209%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e323209%_ '())))))
            (if (macro-permission-denied-exception? _%exn323207%_)
                (macro-permission-denied-exception-arguments _%exn323207%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn323207%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn323201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323201%_))
            (let ((_%e323204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323201%_ 'exception))))
              (if (macro-permission-denied-exception? _%e323204%_)
                  (macro-permission-denied-exception-procedure _%e323204%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e323204%_ '())))))
            (if (macro-permission-denied-exception? _%exn323201%_)
                (macro-permission-denied-exception-procedure _%exn323201%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn323201%_ '())))))))
    (define range-exception?
      (lambda (_%exn323197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323197%_))
            (let ((_%e323199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323197%_ 'exception))))
              (macro-range-exception? _%e323199%_))
            (macro-range-exception? _%exn323197%_))))
    (define range-exception-arg-id
      (lambda (_%exn323193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323193%_))
            (let ((_%e323195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323193%_ 'exception))))
              (if (macro-range-exception? _%e323195%_)
                  (macro-range-exception-arg-id _%e323195%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e323195%_ '())))))
            (if (macro-range-exception? _%exn323193%_)
                (macro-range-exception-arg-id _%exn323193%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn323193%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn323189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323189%_))
            (let ((_%e323191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323189%_ 'exception))))
              (if (macro-range-exception? _%e323191%_)
                  (macro-range-exception-arguments _%e323191%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e323191%_ '())))))
            (if (macro-range-exception? _%exn323189%_)
                (macro-range-exception-arguments _%exn323189%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn323189%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn323183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323183%_))
            (let ((_%e323186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323183%_ 'exception))))
              (if (macro-range-exception? _%e323186%_)
                  (macro-range-exception-procedure _%e323186%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e323186%_ '())))))
            (if (macro-range-exception? _%exn323183%_)
                (macro-range-exception-procedure _%exn323183%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn323183%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn323179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323179%_))
            (let ((_%e323181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323179%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e323181%_))
            (macro-rpc-remote-error-exception? _%exn323179%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn323175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323175%_))
            (let ((_%e323177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323175%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e323177%_)
                  (macro-rpc-remote-error-exception-arguments _%e323177%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e323177%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn323175%_)
                (macro-rpc-remote-error-exception-arguments _%exn323175%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn323175%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn323171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323171%_))
            (let ((_%e323173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323171%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e323173%_)
                  (macro-rpc-remote-error-exception-message _%e323173%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e323173%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn323171%_)
                (macro-rpc-remote-error-exception-message _%exn323171%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn323171%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn323165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323165%_))
            (let ((_%e323168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323165%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e323168%_)
                  (macro-rpc-remote-error-exception-procedure _%e323168%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e323168%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn323165%_)
                (macro-rpc-remote-error-exception-procedure _%exn323165%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn323165%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn323161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323161%_))
            (let ((_%e323163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323161%_ 'exception))))
              (macro-scheduler-exception? _%e323163%_))
            (macro-scheduler-exception? _%exn323161%_))))
    (define scheduler-exception-reason
      (lambda (_%exn323155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323155%_))
            (let ((_%e323158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323155%_ 'exception))))
              (if (macro-scheduler-exception? _%e323158%_)
                  (macro-scheduler-exception-reason _%e323158%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e323158%_ '())))))
            (if (macro-scheduler-exception? _%exn323155%_)
                (macro-scheduler-exception-reason _%exn323155%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn323155%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn323151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323151%_))
            (let ((_%e323153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323151%_ 'exception))))
              (macro-sfun-conversion-exception? _%e323153%_))
            (macro-sfun-conversion-exception? _%exn323151%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn323147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323147%_))
            (let ((_%e323149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323147%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e323149%_)
                  (macro-sfun-conversion-exception-arguments _%e323149%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e323149%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn323147%_)
                (macro-sfun-conversion-exception-arguments _%exn323147%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn323147%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn323143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323143%_))
            (let ((_%e323145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323143%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e323145%_)
                  (macro-sfun-conversion-exception-code _%e323145%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e323145%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn323143%_)
                (macro-sfun-conversion-exception-code _%exn323143%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn323143%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn323139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323139%_))
            (let ((_%e323141%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323139%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e323141%_)
                  (macro-sfun-conversion-exception-message _%e323141%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e323141%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn323139%_)
                (macro-sfun-conversion-exception-message _%exn323139%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn323139%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn323133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323133%_))
            (let ((_%e323136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323133%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e323136%_)
                  (macro-sfun-conversion-exception-procedure _%e323136%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e323136%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn323133%_)
                (macro-sfun-conversion-exception-procedure _%exn323133%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn323133%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn323127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323127%_))
            (let ((_%e323130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323127%_ 'exception))))
              (macro-stack-overflow-exception? _%e323130%_))
            (macro-stack-overflow-exception? _%exn323127%_))))
    (define started-thread-exception?
      (lambda (_%exn323123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323123%_))
            (let ((_%e323125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323123%_ 'exception))))
              (macro-started-thread-exception? _%e323125%_))
            (macro-started-thread-exception? _%exn323123%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn323119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323119%_))
            (let ((_%e323121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323119%_ 'exception))))
              (if (macro-started-thread-exception? _%e323121%_)
                  (macro-started-thread-exception-arguments _%e323121%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e323121%_ '())))))
            (if (macro-started-thread-exception? _%exn323119%_)
                (macro-started-thread-exception-arguments _%exn323119%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn323119%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn323113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323113%_))
            (let ((_%e323116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323113%_ 'exception))))
              (if (macro-started-thread-exception? _%e323116%_)
                  (macro-started-thread-exception-procedure _%e323116%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e323116%_ '())))))
            (if (macro-started-thread-exception? _%exn323113%_)
                (macro-started-thread-exception-procedure _%exn323113%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn323113%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn323109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323109%_))
            (let ((_%e323111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323109%_ 'exception))))
              (macro-terminated-thread-exception? _%e323111%_))
            (macro-terminated-thread-exception? _%exn323109%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn323105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323105%_))
            (let ((_%e323107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323105%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e323107%_)
                  (macro-terminated-thread-exception-arguments _%e323107%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e323107%_ '())))))
            (if (macro-terminated-thread-exception? _%exn323105%_)
                (macro-terminated-thread-exception-arguments _%exn323105%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn323105%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn323099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323099%_))
            (let ((_%e323102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323099%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e323102%_)
                  (macro-terminated-thread-exception-procedure _%e323102%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e323102%_ '())))))
            (if (macro-terminated-thread-exception? _%exn323099%_)
                (macro-terminated-thread-exception-procedure _%exn323099%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn323099%_ '())))))))
    (define type-exception?
      (lambda (_%exn323095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323095%_))
            (let ((_%e323097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323095%_ 'exception))))
              (macro-type-exception? _%e323097%_))
            (macro-type-exception? _%exn323095%_))))
    (define type-exception-arg-id
      (lambda (_%exn323091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323091%_))
            (let ((_%e323093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323091%_ 'exception))))
              (if (macro-type-exception? _%e323093%_)
                  (macro-type-exception-arg-id _%e323093%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e323093%_ '())))))
            (if (macro-type-exception? _%exn323091%_)
                (macro-type-exception-arg-id _%exn323091%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn323091%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn323087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323087%_))
            (let ((_%e323089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323087%_ 'exception))))
              (if (macro-type-exception? _%e323089%_)
                  (macro-type-exception-arguments _%e323089%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e323089%_ '())))))
            (if (macro-type-exception? _%exn323087%_)
                (macro-type-exception-arguments _%exn323087%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn323087%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn323083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323083%_))
            (let ((_%e323085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323083%_ 'exception))))
              (if (macro-type-exception? _%e323085%_)
                  (macro-type-exception-procedure _%e323085%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e323085%_ '())))))
            (if (macro-type-exception? _%exn323083%_)
                (macro-type-exception-procedure _%exn323083%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn323083%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn323077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323077%_))
            (let ((_%e323080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323077%_ 'exception))))
              (if (macro-type-exception? _%e323080%_)
                  (macro-type-exception-type-id _%e323080%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e323080%_ '())))))
            (if (macro-type-exception? _%exn323077%_)
                (macro-type-exception-type-id _%exn323077%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn323077%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn323073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323073%_))
            (let ((_%e323075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323073%_ 'exception))))
              (macro-unbound-global-exception? _%e323075%_))
            (macro-unbound-global-exception? _%exn323073%_))))
    (define unbound-global-exception-code
      (lambda (_%exn323069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323069%_))
            (let ((_%e323071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323069%_ 'exception))))
              (if (macro-unbound-global-exception? _%e323071%_)
                  (macro-unbound-global-exception-code _%e323071%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e323071%_ '())))))
            (if (macro-unbound-global-exception? _%exn323069%_)
                (macro-unbound-global-exception-code _%exn323069%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn323069%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn323065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323065%_))
            (let ((_%e323067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323065%_ 'exception))))
              (if (macro-unbound-global-exception? _%e323067%_)
                  (macro-unbound-global-exception-rte _%e323067%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e323067%_ '())))))
            (if (macro-unbound-global-exception? _%exn323065%_)
                (macro-unbound-global-exception-rte _%exn323065%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn323065%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn323059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323059%_))
            (let ((_%e323062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323059%_ 'exception))))
              (if (macro-unbound-global-exception? _%e323062%_)
                  (macro-unbound-global-exception-variable _%e323062%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e323062%_ '())))))
            (if (macro-unbound-global-exception? _%exn323059%_)
                (macro-unbound-global-exception-variable _%exn323059%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn323059%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn323055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323055%_))
            (let ((_%e323057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323055%_ 'exception))))
              (macro-unbound-key-exception? _%e323057%_))
            (macro-unbound-key-exception? _%exn323055%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn323051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323051%_))
            (let ((_%e323053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323051%_ 'exception))))
              (if (macro-unbound-key-exception? _%e323053%_)
                  (macro-unbound-key-exception-arguments _%e323053%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e323053%_ '())))))
            (if (macro-unbound-key-exception? _%exn323051%_)
                (macro-unbound-key-exception-arguments _%exn323051%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn323051%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn323045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323045%_))
            (let ((_%e323048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323045%_ 'exception))))
              (if (macro-unbound-key-exception? _%e323048%_)
                  (macro-unbound-key-exception-procedure _%e323048%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e323048%_ '())))))
            (if (macro-unbound-key-exception? _%exn323045%_)
                (macro-unbound-key-exception-procedure _%exn323045%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn323045%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn323041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323041%_))
            (let ((_%e323043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323041%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e323043%_))
            (macro-unbound-os-environment-variable-exception? _%exn323041%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn323037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323037%_))
            (let ((_%e323039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323037%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e323039%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e323039%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e323039%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn323037%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn323037%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn323037%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn323031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323031%_))
            (let ((_%e323034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323031%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e323034%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e323034%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e323034%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn323031%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn323031%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn323031%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn323027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323027%_))
            (let ((_%e323029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323027%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e323029%_))
            (macro-unbound-serial-number-exception? _%exn323027%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn323023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323023%_))
            (let ((_%e323025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323023%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e323025%_)
                  (macro-unbound-serial-number-exception-arguments _%e323025%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e323025%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn323023%_)
                (macro-unbound-serial-number-exception-arguments _%exn323023%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn323023%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn323017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323017%_))
            (let ((_%e323020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323017%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e323020%_)
                  (macro-unbound-serial-number-exception-procedure _%e323020%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e323020%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn323017%_)
                (macro-unbound-serial-number-exception-procedure _%exn323017%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn323017%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn323013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323013%_))
            (let ((_%e323015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323013%_ 'exception))))
              (macro-uncaught-exception? _%e323015%_))
            (macro-uncaught-exception? _%exn323013%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn323009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323009%_))
            (let ((_%e323011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323009%_ 'exception))))
              (if (macro-uncaught-exception? _%e323011%_)
                  (macro-uncaught-exception-arguments _%e323011%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e323011%_ '())))))
            (if (macro-uncaught-exception? _%exn323009%_)
                (macro-uncaught-exception-arguments _%exn323009%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn323009%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn323005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn323005%_))
            (let ((_%e323007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn323005%_ 'exception))))
              (if (macro-uncaught-exception? _%e323007%_)
                  (macro-uncaught-exception-procedure _%e323007%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e323007%_ '())))))
            (if (macro-uncaught-exception? _%exn323005%_)
                (macro-uncaught-exception-procedure _%exn323005%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn323005%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn322999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322999%_))
            (let ((_%e323002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322999%_ 'exception))))
              (if (macro-uncaught-exception? _%e323002%_)
                  (macro-uncaught-exception-reason _%e323002%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e323002%_ '())))))
            (if (macro-uncaught-exception? _%exn322999%_)
                (macro-uncaught-exception-reason _%exn322999%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn322999%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn322995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322995%_))
            (let ((_%e322997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322995%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e322997%_))
            (macro-uninitialized-thread-exception? _%exn322995%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn322991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322991%_))
            (let ((_%e322993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322991%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e322993%_)
                  (macro-uninitialized-thread-exception-arguments _%e322993%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e322993%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn322991%_)
                (macro-uninitialized-thread-exception-arguments _%exn322991%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn322991%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn322985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322985%_))
            (let ((_%e322988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322985%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e322988%_)
                  (macro-uninitialized-thread-exception-procedure _%e322988%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e322988%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn322985%_)
                (macro-uninitialized-thread-exception-procedure _%exn322985%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn322985%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn322981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322981%_))
            (let ((_%e322983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322981%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e322983%_))
            (macro-unknown-keyword-argument-exception? _%exn322981%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn322977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322977%_))
            (let ((_%e322979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322977%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e322979%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e322979%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e322979%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn322977%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn322977%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn322977%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn322971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322971%_))
            (let ((_%e322974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322971%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e322974%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e322974%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e322974%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn322971%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn322971%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn322971%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn322967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322967%_))
            (let ((_%e322969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322967%_ 'exception))))
              (macro-unterminated-process-exception? _%e322969%_))
            (macro-unterminated-process-exception? _%exn322967%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn322963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322963%_))
            (let ((_%e322965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322963%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e322965%_)
                  (macro-unterminated-process-exception-arguments _%e322965%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e322965%_ '())))))
            (if (macro-unterminated-process-exception? _%exn322963%_)
                (macro-unterminated-process-exception-arguments _%exn322963%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn322963%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn322957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322957%_))
            (let ((_%e322960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322957%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e322960%_)
                  (macro-unterminated-process-exception-procedure _%e322960%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e322960%_ '())))))
            (if (macro-unterminated-process-exception? _%exn322957%_)
                (macro-unterminated-process-exception-procedure _%exn322957%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn322957%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn322953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322953%_))
            (let ((_%e322955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322953%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e322955%_))
            (macro-wrong-number-of-arguments-exception? _%exn322953%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn322949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322949%_))
            (let ((_%e322951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322949%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e322951%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e322951%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e322951%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn322949%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn322949%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn322949%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn322943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322943%_))
            (let ((_%e322946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322943%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e322946%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e322946%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e322946%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn322943%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn322943%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn322943%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn322939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322939%_))
            (let ((_%e322941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322939%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e322941%_))
            (macro-wrong-number-of-values-exception? _%exn322939%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn322935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322935%_))
            (let ((_%e322937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322935%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e322937%_)
                  (macro-wrong-number-of-values-exception-code _%e322937%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e322937%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn322935%_)
                (macro-wrong-number-of-values-exception-code _%exn322935%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn322935%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn322931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322931%_))
            (let ((_%e322933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322931%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e322933%_)
                  (macro-wrong-number-of-values-exception-rte _%e322933%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e322933%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn322931%_)
                (macro-wrong-number-of-values-exception-rte _%exn322931%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn322931%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn322925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322925%_))
            (let ((_%e322928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322925%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e322928%_)
                  (macro-wrong-number-of-values-exception-vals _%e322928%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e322928%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn322925%_)
                (macro-wrong-number-of-values-exception-vals _%exn322925%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn322925%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn322919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn322919%_))
            (let ((_%e322922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn322919%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e322922%_))
            (macro-wrong-processor-c-return-exception? _%exn322919%_))))))
