(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771092626)
  (begin
    (define Exception::t
      (let ((__tmp141689 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp141689
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args141607%_
        (apply make-instance Exception::t _%$args141607%_)))
    (define StackTrace::t
      (let ((__tmp141690 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp141690
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args141604%_
        (apply make-instance StackTrace::t _%$args141604%_)))
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
      (let ((__tmp141691 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp141691
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args141601%_ (apply make-instance Error::t _%$args141601%_)))
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
      (let ((__tmp141692 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp141692
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args141598%_
        (apply make-instance ContractViolation::t _%$args141598%_)))
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
      (let ((__tmp141693 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp141693
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args141595%_
        (apply make-instance RuntimeException::t _%$args141595%_)))
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
      (lambda (_%exn141590%_ _%continue141591%_)
        (let ((_%exn141593%_ (wrap-runtime-exception _%exn141590%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn141593%_ _%continue141591%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn141586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn141586%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn141586%_ 'continuation))
                '#!void
                (let ((__tmp141694
                       (lambda (_%cont141588%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn141586%_
                            'continuation
                            _%cont141588%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp141694)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn141586%_))))
    (define error
      (lambda (_%message141583%_ . _%irritants141584%_)
        (raise (let ((__obj141686
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj141686
                  _%message141583%_
                  'irritants:
                  _%irritants141584%_)
                 __obj141686))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords141558%_
               _%ctx141553141559%_
               _%contract-expr141554141560%_
               _%value141555141561%_
               _%message141562%_)
        (let* ((_%ctx141564%_
                (if (eq? _%ctx141553141559%_ absent-value)
                    '#f
                    _%ctx141553141559%_))
               (_%contract-expr141566%_
                (if (eq? _%contract-expr141554141560%_ absent-value)
                    '#f
                    _%contract-expr141554141560%_))
               (_%value141568%_
                (if (eq? _%value141555141561%_ absent-value)
                    '#f
                    _%value141555141561%_)))
          (raise (let ((__obj141687
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj141687
                    _%message141562%_
                    'where:
                    _%ctx141564%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr141566%_
                                (cons 'value: (cons _%value141568%_ '())))))
                   __obj141687)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords141573%_ . _%args141574%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords141573%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords141573%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords141573%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords141573%_
                  'value:
                  absent-value))
               _%args141574%_)))
    (define __raise-contract-violation-error
      (lambda _%args141556141580%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args141556141580%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler141527%_ _%thunk141528%_)
        (let* ((_%handler141531%_ _%handler141527%_)
               (_%thunk141539%_ _%thunk141528%_)
               (__tmp141695
                (lambda (_%exn141548%_)
                  (let ((_%exn141550%_ (wrap-runtime-exception _%exn141548%_)))
                    (declare (not safe))
                    (_%handler141531%_ _%exn141550%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp141695 _%thunk141539%_))))
    (define with-exception-handler
      (lambda (_%handler139562%_ _%thunk139563%_)
        (if (procedure? _%handler139562%_)
            (let ((_%handler139567%_ _%handler139562%_))
              (if (procedure? _%thunk139563%_)
                  (let ((_%thunk139577%_ _%thunk139563%_))
                    (__with-exception-handler
                     _%handler139567%_
                     _%thunk139577%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk139563%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler139562%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler141469%_ _%thunk141470%_)
        (let* ((_%handler141473%_ _%handler141469%_)
               (_%thunk141481%_ _%thunk141470%_)
               (__tmp141696
                (lambda (_%cont141490%_)
                  (let* ((_%handler141494%_
                          (lambda (_%exn141492%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont141490%_
                               _%handler141473%_
                               _%exn141492%_))))
                         (_%thunk141497%_ _%thunk141481%_)
                         (_%handler141502%_ _%handler141494%_)
                         (_%thunk141517%_ _%thunk141497%_))
                    (__with-exception-handler
                     _%handler141502%_
                     _%thunk141517%_)))))
          (declare (not safe))
          (##continuation-capture __tmp141696))))
    (define with-catch
      (lambda (_%handler139707%_ _%thunk139708%_)
        (if (procedure? _%handler139707%_)
            (let ((_%handler139712%_ _%handler139707%_))
              (if (procedure? _%thunk139708%_)
                  (let ((_%thunk139722%_ _%thunk139708%_))
                    (__with-catch _%handler139712%_ _%thunk139722%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk139708%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler139707%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn141456%_)
        (if (or (heap-overflow-exception? _%exn141456%_)
                (stack-overflow-exception? _%exn141456%_))
            _%exn141456%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn141456%_))
                _%exn141456%_
                (if (macro-exception? _%exn141456%_)
                    (let ((_%rte141464%_
                           (let ((__obj141688
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj141688
                                _%exn141456%_
                                '2
                                '#f
                                '#f))
                             __obj141688)))
                      (let ((__tmp141697
                             (lambda (_%cont141466%_)
                               (let ((__tmp141698
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont141466%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte141464%_
                                  'continuation
                                  __tmp141698)))))
                        (declare (not safe))
                        (##continuation-capture __tmp141697))
                      _%rte141464%_)
                    _%exn141456%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj141451%_)
        (let ((_%$e141453%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj141451%_))))
          (if _%$e141453%_ _%$e141453%_ (error-exception? _%obj141451%_)))))
    (define error-message
      (lambda (_%obj141410%_)
        (let ((_%$e141446%_
               (let* ((_%obj141412%_ _%obj141410%_)
                      (_%slot141415%_ 'message)
                      (_%E141418%_ false)
                      (_%slot141423%_ _%slot141415%_)
                      (_%E141436%_ _%E141418%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj141412%_ _%slot141423%_ _%E141436%_))))
          (if _%$e141446%_
              _%$e141446%_
              (if (error-exception? _%obj141410%_)
                  (error-exception-message _%obj141410%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj141405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141405%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141405%_ 'irritants))
            (if (error-exception? _%obj141405%_)
                (error-exception-parameters _%obj141405%_)
                '#f))))
    (define error-trace
      (lambda (_%obj141403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141403%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141403%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e141364%_ _%port141365%_)
        (let ((_%$e141387%_
               (let* ((_%obj141367%_ _%e141364%_)
                      (_%id141370%_ 'display-exception)
                      (_%id141375%_ _%id141370%_))
                 (declare (not safe))
                 (__method-ref _%obj141367%_ _%id141375%_))))
          (if _%$e141387%_
              ((lambda (_%f141390%_) (_%f141390%_ _%e141364%_ _%port141365%_))
               _%$e141387%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e141364%_ _%port141365%_))))))
    (define display-exception__0
      (lambda (_%e141396%_)
        (let ((_%port141398%_ (current-error-port)))
          (display-exception__% _%e141396%_ _%port141398%_))))
    (define display-exception
      (lambda _g141699_
        (let ((_g141700_ (let () (declare (not safe)) (##length _g141699_))))
          (cond ((let () (declare (not safe)) (##fx= _g141700_ 1))
                 (apply display-exception__0 _g141699_))
                ((let () (declare (not safe)) (##fx= _g141700_ 2))
                 (apply display-exception__% _g141699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g141699_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self141342%_ _%message141343%_ . _%rest141344%_)
        (let* ((_%self141347%_ _%self141342%_)
               (_%message141361%_
                (if (string? _%message141343%_)
                    _%message141343%_
                    (call-with-output-string
                     '""
                     (lambda (_%g141356141358%_)
                       (display _%message141343%_ _%g141356141358%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self141347%_ 'message _%message141361%_))
          (apply class-instance-init! _%self141347%_ _%rest141344%_))))
    (define Error:::init!::specialize
      (lambda (__klass141609 __method-table141610)
        (let ((__message141611
               (let ((__slot141612
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141609 'message))))
                 (if __slot141612
                     __slot141612
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self141342%_ _%message141343%_ . _%rest141344%_)
            (let* ((_%self141347%_ _%self141342%_)
                   (_%message141361%_
                    (if (string? _%message141343%_)
                        _%message141343%_
                        (call-with-output-string
                         '""
                         (lambda (_%g141356141358%_)
                           (display _%message141343%_ _%g141356141358%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self141347%_
                 _%message141361%_
                 __message141611
                 '#f
                 '#f))
              (apply class-instance-init! _%self141347%_ _%rest141344%_))))))
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
      (lambda (_%self141047%_ _%port141048%_)
        (let ((_%self141051%_ _%self141047%_))
          (let ((_%tmp-port141061%_ (open-output-string))
                (_%display-error-newline141062%_
                 (> (output-port-column _%port141048%_) '0)))
            (fix-port-width! _%tmp-port141061%_)
            (let ((__tmp141701
                   (lambda ()
                     (if _%display-error-newline141062%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e141065%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141051%_ 'where))))
                       (if _%$e141065%_ (display _%$e141065%_) (display '"?")))
                     (let ((__tmp141702
                            (let ((__tmp141703
                                   (let ((_%obj141069%_ _%self141051%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj141069%_))
                                         (let ((_%obj141074%_ _%obj141069%_))
                                           (declare (not safe))
                                           (__object-class _%obj141074%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj141069%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp141703))))
                       (declare (not safe))
                       (display* '" [" __tmp141702 '"]: "))
                     (let ((__tmp141704
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141051%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp141704))
                     (let ((_%irritants141089%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141051%_ 'irritants))))
                       (if (null? _%irritants141089%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj141091%_)
                                (if (u8vector? _%obj141091%_)
                                    (let ((__tmp141705
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj141091%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp141705))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj141091%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants141089%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont141092141094%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self141051%_
                                   'continuation))))
                           (if _%cont141092141094%_
                               (let ((_%cont141096%_ _%cont141092141094%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont141096%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp141701
               current-output-port
               _%tmp-port141061%_))
            (let ((__tmp141706 (get-output-string _%tmp-port141061%_)))
              (declare (not safe))
              (##write-string __tmp141706 _%port141048%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass141613 __method-table141614)
        (let ((__continuation141615
               (let ((__slot141619
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141613 'continuation))))
                 (if __slot141619
                     __slot141619
                     (error '"Unknown slot" 'continuation))))
              (__where141616
               (let ((__slot141620
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141613 'where))))
                 (if __slot141620
                     __slot141620
                     (error '"Unknown slot" 'where))))
              (__message141617
               (let ((__slot141621
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141613 'message))))
                 (if __slot141621
                     __slot141621
                     (error '"Unknown slot" 'message))))
              (__irritants141618
               (let ((__slot141622
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141613 'irritants))))
                 (if __slot141622
                     __slot141622
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self141047%_ _%port141048%_)
            (let ((_%self141051%_ _%self141047%_))
              (let ((_%tmp-port141061%_ (open-output-string))
                    (_%display-error-newline141062%_
                     (> (output-port-column _%port141048%_) '0)))
                (fix-port-width! _%tmp-port141061%_)
                (let ((__tmp141707
                       (lambda ()
                         (if _%display-error-newline141062%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e141065%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141051%_
                                   __where141616
                                   '#f
                                   '#f))))
                           (if _%$e141065%_
                               (display _%$e141065%_)
                               (display '"?")))
                         (let ((__tmp141708
                                (let ((__tmp141709
                                       (let ((_%obj141069%_ _%self141051%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj141069%_))
                                             (let ((_%obj141074%_
                                                    _%obj141069%_))
                                               (declare (not safe))
                                               (__object-class _%obj141074%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj141069%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp141709))))
                           (declare (not safe))
                           (display* '" [" __tmp141708 '"]: "))
                         (let ((__tmp141710
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141051%_
                                   __message141617
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp141710))
                         (let ((_%irritants141089%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141051%_
                                   __irritants141618
                                   '#f
                                   '#f))))
                           (if (null? _%irritants141089%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj141091%_)
                                    (if (u8vector? _%obj141091%_)
                                        (let ((__tmp141711
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj141091%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp141711))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj141091%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants141089%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont141092141094%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self141051%_
                                       __continuation141615
                                       '#f
                                       '#f))))
                               (if _%cont141092141094%_
                                   (let ((_%cont141096%_ _%cont141092141094%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont141096%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp141707
                   current-output-port
                   _%tmp-port141061%_))
                (let ((__tmp141712 (get-output-string _%tmp-port141061%_)))
                  (declare (not safe))
                  (##write-string __tmp141712 _%port141048%_))))))))
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
      (lambda (_%self140904%_ _%port140905%_)
        (let* ((_%self140908%_ _%self140904%_)
               (_%tmp-port140918%_ (open-output-string)))
          (fix-port-width! _%tmp-port140918%_)
          (let ((__tmp141713
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self140908%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp141713 _%tmp-port140918%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont140919140921%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self140908%_ 'continuation))))
                (if _%cont140919140921%_
                    (let ((_%cont140923%_ _%cont140919140921%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port140918%_)
                      (newline _%tmp-port140918%_)
                      (display-continuation-backtrace
                       _%cont140923%_
                       _%tmp-port140918%_))
                    '#f))
              '#!void)
          (let ((__tmp141714 (get-output-string _%tmp-port140918%_)))
            (declare (not safe))
            (##write-string __tmp141714 _%port140905%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass141623 __method-table141624)
        (let ((__continuation141625
               (let ((__slot141627
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141623 'continuation))))
                 (if __slot141627
                     __slot141627
                     (error '"Unknown slot" 'continuation))))
              (__exception141626
               (let ((__slot141628
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141623 'exception))))
                 (if __slot141628
                     __slot141628
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self140904%_ _%port140905%_)
            (let* ((_%self140908%_ _%self140904%_)
                   (_%tmp-port140918%_ (open-output-string)))
              (fix-port-width! _%tmp-port140918%_)
              (let ((__tmp141715
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self140908%_
                        __exception141626
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp141715 _%tmp-port140918%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont140919140921%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self140908%_
                            __continuation141625
                            '#f
                            '#f))))
                    (if _%cont140919140921%_
                        (let ((_%cont140923%_ _%cont140919140921%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port140918%_)
                          (newline _%tmp-port140918%_)
                          (display-continuation-backtrace
                           _%cont140923%_
                           _%tmp-port140918%_))
                        '#f))
                  '#!void)
              (let ((__tmp141716 (get-output-string _%tmp-port140918%_)))
                (declare (not safe))
                (##write-string __tmp141716 _%port140905%_)))))))
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
      (lambda (_%port140776%_)
        (if (macro-character-port? _%port140776%_)
            (let ((_%old-width140778%_
                   (macro-character-port-output-width _%port140776%_)))
              (macro-character-port-output-width-set!
               _%port140776%_
               (lambda (_%port140780%_) '256))
              _%old-width140778%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port140773%_ _%old-width140774%_)
        (if (macro-character-port? _%port140773%_)
            (macro-character-port-output-width-set!
             _%port140773%_
             _%old-width140774%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e140771%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e140771%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn140765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140765%_))
            (let ((_%e140768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140765%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e140768%_))
            (macro-abandoned-mutex-exception? _%exn140765%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn140761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140761%_))
            (let ((_%e140763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140761%_ 'exception))))
              (macro-cfun-conversion-exception? _%e140763%_))
            (macro-cfun-conversion-exception? _%exn140761%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn140757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140757%_))
            (let ((_%e140759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140757%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140759%_)
                  (macro-cfun-conversion-exception-arguments _%e140759%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e140759%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140757%_)
                (macro-cfun-conversion-exception-arguments _%exn140757%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn140757%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn140753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140753%_))
            (let ((_%e140755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140753%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140755%_)
                  (macro-cfun-conversion-exception-code _%e140755%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e140755%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140753%_)
                (macro-cfun-conversion-exception-code _%exn140753%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn140753%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn140749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140749%_))
            (let ((_%e140751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140749%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140751%_)
                  (macro-cfun-conversion-exception-message _%e140751%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e140751%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140749%_)
                (macro-cfun-conversion-exception-message _%exn140749%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn140749%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn140743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140743%_))
            (let ((_%e140746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140743%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140746%_)
                  (macro-cfun-conversion-exception-procedure _%e140746%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e140746%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140743%_)
                (macro-cfun-conversion-exception-procedure _%exn140743%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn140743%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn140739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140739%_))
            (let ((_%e140741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140739%_ 'exception))))
              (macro-datum-parsing-exception? _%e140741%_))
            (macro-datum-parsing-exception? _%exn140739%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn140735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140735%_))
            (let ((_%e140737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140735%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140737%_)
                  (macro-datum-parsing-exception-kind _%e140737%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e140737%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140735%_)
                (macro-datum-parsing-exception-kind _%exn140735%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn140735%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn140731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140731%_))
            (let ((_%e140733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140731%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140733%_)
                  (macro-datum-parsing-exception-parameters _%e140733%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e140733%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140731%_)
                (macro-datum-parsing-exception-parameters _%exn140731%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn140731%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn140725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140725%_))
            (let ((_%e140728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140725%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140728%_)
                  (macro-datum-parsing-exception-readenv _%e140728%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e140728%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140725%_)
                (macro-datum-parsing-exception-readenv _%exn140725%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn140725%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn140719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140719%_))
            (let ((_%e140722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140719%_ 'exception))))
              (macro-deadlock-exception? _%e140722%_))
            (macro-deadlock-exception? _%exn140719%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn140715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140715%_))
            (let ((_%e140717%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140715%_ 'exception))))
              (macro-divide-by-zero-exception? _%e140717%_))
            (macro-divide-by-zero-exception? _%exn140715%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn140711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140711%_))
            (let ((_%e140713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140711%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e140713%_)
                  (macro-divide-by-zero-exception-arguments _%e140713%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e140713%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn140711%_)
                (macro-divide-by-zero-exception-arguments _%exn140711%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn140711%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn140705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140705%_))
            (let ((_%e140708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140705%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e140708%_)
                  (macro-divide-by-zero-exception-procedure _%e140708%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e140708%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn140705%_)
                (macro-divide-by-zero-exception-procedure _%exn140705%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn140705%_ '())))))))
    (define error-exception?
      (lambda (_%exn140701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140701%_))
            (let ((_%e140703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140701%_ 'exception))))
              (macro-error-exception? _%e140703%_))
            (macro-error-exception? _%exn140701%_))))
    (define error-exception-message
      (lambda (_%exn140697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140697%_))
            (let ((_%e140699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140697%_ 'exception))))
              (if (macro-error-exception? _%e140699%_)
                  (macro-error-exception-message _%e140699%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e140699%_ '())))))
            (if (macro-error-exception? _%exn140697%_)
                (macro-error-exception-message _%exn140697%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn140697%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn140691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140691%_))
            (let ((_%e140694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140691%_ 'exception))))
              (if (macro-error-exception? _%e140694%_)
                  (macro-error-exception-parameters _%e140694%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e140694%_ '())))))
            (if (macro-error-exception? _%exn140691%_)
                (macro-error-exception-parameters _%exn140691%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn140691%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn140687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140687%_))
            (let ((_%e140689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140687%_ 'exception))))
              (macro-expression-parsing-exception? _%e140689%_))
            (macro-expression-parsing-exception? _%exn140687%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn140683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140683%_))
            (let ((_%e140685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140683%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140685%_)
                  (macro-expression-parsing-exception-kind _%e140685%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e140685%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140683%_)
                (macro-expression-parsing-exception-kind _%exn140683%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn140683%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn140679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140679%_))
            (let ((_%e140681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140679%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140681%_)
                  (macro-expression-parsing-exception-parameters _%e140681%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e140681%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140679%_)
                (macro-expression-parsing-exception-parameters _%exn140679%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn140679%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn140673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140673%_))
            (let ((_%e140676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140673%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140676%_)
                  (macro-expression-parsing-exception-source _%e140676%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e140676%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140673%_)
                (macro-expression-parsing-exception-source _%exn140673%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn140673%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn140669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140669%_))
            (let ((_%e140671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140669%_ 'exception))))
              (macro-file-exists-exception? _%e140671%_))
            (macro-file-exists-exception? _%exn140669%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn140665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140665%_))
            (let ((_%e140667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140665%_ 'exception))))
              (if (macro-file-exists-exception? _%e140667%_)
                  (macro-file-exists-exception-arguments _%e140667%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e140667%_ '())))))
            (if (macro-file-exists-exception? _%exn140665%_)
                (macro-file-exists-exception-arguments _%exn140665%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn140665%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn140659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140659%_))
            (let ((_%e140662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140659%_ 'exception))))
              (if (macro-file-exists-exception? _%e140662%_)
                  (macro-file-exists-exception-procedure _%e140662%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e140662%_ '())))))
            (if (macro-file-exists-exception? _%exn140659%_)
                (macro-file-exists-exception-procedure _%exn140659%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn140659%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn140655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140655%_))
            (let ((_%e140657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140655%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e140657%_))
            (macro-fixnum-overflow-exception? _%exn140655%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn140651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140651%_))
            (let ((_%e140653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140651%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e140653%_)
                  (macro-fixnum-overflow-exception-arguments _%e140653%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e140653%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn140651%_)
                (macro-fixnum-overflow-exception-arguments _%exn140651%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn140651%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn140645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140645%_))
            (let ((_%e140648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140645%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e140648%_)
                  (macro-fixnum-overflow-exception-procedure _%e140648%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e140648%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn140645%_)
                (macro-fixnum-overflow-exception-procedure _%exn140645%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn140645%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn140639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140639%_))
            (let ((_%e140642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140639%_ 'exception))))
              (macro-heap-overflow-exception? _%e140642%_))
            (macro-heap-overflow-exception? _%exn140639%_))))
    (define inactive-thread-exception?
      (lambda (_%exn140635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140635%_))
            (let ((_%e140637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140635%_ 'exception))))
              (macro-inactive-thread-exception? _%e140637%_))
            (macro-inactive-thread-exception? _%exn140635%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn140631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140631%_))
            (let ((_%e140633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140631%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e140633%_)
                  (macro-inactive-thread-exception-arguments _%e140633%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e140633%_ '())))))
            (if (macro-inactive-thread-exception? _%exn140631%_)
                (macro-inactive-thread-exception-arguments _%exn140631%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn140631%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn140625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140625%_))
            (let ((_%e140628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140625%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e140628%_)
                  (macro-inactive-thread-exception-procedure _%e140628%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e140628%_ '())))))
            (if (macro-inactive-thread-exception? _%exn140625%_)
                (macro-inactive-thread-exception-procedure _%exn140625%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn140625%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn140621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140621%_))
            (let ((_%e140623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140621%_ 'exception))))
              (macro-initialized-thread-exception? _%e140623%_))
            (macro-initialized-thread-exception? _%exn140621%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn140617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140617%_))
            (let ((_%e140619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140617%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e140619%_)
                  (macro-initialized-thread-exception-arguments _%e140619%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e140619%_ '())))))
            (if (macro-initialized-thread-exception? _%exn140617%_)
                (macro-initialized-thread-exception-arguments _%exn140617%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn140617%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn140611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140611%_))
            (let ((_%e140614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140611%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e140614%_)
                  (macro-initialized-thread-exception-procedure _%e140614%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e140614%_ '())))))
            (if (macro-initialized-thread-exception? _%exn140611%_)
                (macro-initialized-thread-exception-procedure _%exn140611%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn140611%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn140607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140607%_))
            (let ((_%e140609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140607%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e140609%_))
            (macro-invalid-hash-number-exception? _%exn140607%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn140603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140603%_))
            (let ((_%e140605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140603%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e140605%_)
                  (macro-invalid-hash-number-exception-arguments _%e140605%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e140605%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn140603%_)
                (macro-invalid-hash-number-exception-arguments _%exn140603%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn140603%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn140597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140597%_))
            (let ((_%e140600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140597%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e140600%_)
                  (macro-invalid-hash-number-exception-procedure _%e140600%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e140600%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn140597%_)
                (macro-invalid-hash-number-exception-procedure _%exn140597%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn140597%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn140593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140593%_))
            (let ((_%e140595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140593%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e140595%_))
            (macro-invalid-utf8-encoding-exception? _%exn140593%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn140589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140589%_))
            (let ((_%e140591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140589%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e140591%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e140591%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e140591%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn140589%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn140589%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn140589%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn140583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140583%_))
            (let ((_%e140586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140583%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e140586%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e140586%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e140586%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn140583%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn140583%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn140583%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn140579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140579%_))
            (let ((_%e140581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140579%_ 'exception))))
              (macro-join-timeout-exception? _%e140581%_))
            (macro-join-timeout-exception? _%exn140579%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn140575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140575%_))
            (let ((_%e140577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140575%_ 'exception))))
              (if (macro-join-timeout-exception? _%e140577%_)
                  (macro-join-timeout-exception-arguments _%e140577%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e140577%_ '())))))
            (if (macro-join-timeout-exception? _%exn140575%_)
                (macro-join-timeout-exception-arguments _%exn140575%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn140575%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn140569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140569%_))
            (let ((_%e140572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140569%_ 'exception))))
              (if (macro-join-timeout-exception? _%e140572%_)
                  (macro-join-timeout-exception-procedure _%e140572%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e140572%_ '())))))
            (if (macro-join-timeout-exception? _%exn140569%_)
                (macro-join-timeout-exception-procedure _%exn140569%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn140569%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn140565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140565%_))
            (let ((_%e140567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140565%_ 'exception))))
              (macro-keyword-expected-exception? _%e140567%_))
            (macro-keyword-expected-exception? _%exn140565%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn140561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140561%_))
            (let ((_%e140563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140561%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e140563%_)
                  (macro-keyword-expected-exception-arguments _%e140563%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e140563%_ '())))))
            (if (macro-keyword-expected-exception? _%exn140561%_)
                (macro-keyword-expected-exception-arguments _%exn140561%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn140561%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn140555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140555%_))
            (let ((_%e140558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140555%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e140558%_)
                  (macro-keyword-expected-exception-procedure _%e140558%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e140558%_ '())))))
            (if (macro-keyword-expected-exception? _%exn140555%_)
                (macro-keyword-expected-exception-procedure _%exn140555%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn140555%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn140551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140551%_))
            (let ((_%e140553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140551%_ 'exception))))
              (macro-length-mismatch-exception? _%e140553%_))
            (macro-length-mismatch-exception? _%exn140551%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn140547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140547%_))
            (let ((_%e140549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140547%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140549%_)
                  (macro-length-mismatch-exception-arg-id _%e140549%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e140549%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140547%_)
                (macro-length-mismatch-exception-arg-id _%exn140547%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn140547%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn140543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140543%_))
            (let ((_%e140545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140543%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140545%_)
                  (macro-length-mismatch-exception-arguments _%e140545%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e140545%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140543%_)
                (macro-length-mismatch-exception-arguments _%exn140543%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn140543%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn140537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140537%_))
            (let ((_%e140540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140537%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140540%_)
                  (macro-length-mismatch-exception-procedure _%e140540%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e140540%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140537%_)
                (macro-length-mismatch-exception-procedure _%exn140537%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn140537%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn140533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140533%_))
            (let ((_%e140535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140533%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e140535%_))
            (macro-mailbox-receive-timeout-exception? _%exn140533%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn140529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140529%_))
            (let ((_%e140531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140529%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e140531%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e140531%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e140531%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn140529%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn140529%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn140529%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn140523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140523%_))
            (let ((_%e140526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140523%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e140526%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e140526%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e140526%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn140523%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn140523%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn140523%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn140519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140519%_))
            (let ((_%e140521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140519%_ 'exception))))
              (macro-module-not-found-exception? _%e140521%_))
            (macro-module-not-found-exception? _%exn140519%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn140515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140515%_))
            (let ((_%e140517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140515%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140517%_)
                  (macro-module-not-found-exception-arguments _%e140517%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e140517%_ '())))))
            (if (macro-module-not-found-exception? _%exn140515%_)
                (macro-module-not-found-exception-arguments _%exn140515%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn140515%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn140509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140509%_))
            (let ((_%e140512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140509%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140512%_)
                  (macro-module-not-found-exception-procedure _%e140512%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e140512%_ '())))))
            (if (macro-module-not-found-exception? _%exn140509%_)
                (macro-module-not-found-exception-procedure _%exn140509%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn140509%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn140503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140503%_))
            (let ((_%e140506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140503%_ 'exception))))
              (macro-multiple-c-return-exception? _%e140506%_))
            (macro-multiple-c-return-exception? _%exn140503%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn140499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140499%_))
            (let ((_%e140501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140499%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e140501%_))
            (macro-no-such-file-or-directory-exception? _%exn140499%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn140495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140495%_))
            (let ((_%e140497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140495%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140497%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e140497%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e140497%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140495%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn140495%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn140495%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn140489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140489%_))
            (let ((_%e140492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140489%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140492%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e140492%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e140492%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140489%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn140489%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn140489%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn140485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140485%_))
            (let ((_%e140487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140485%_ 'exception))))
              (macro-noncontinuable-exception? _%e140487%_))
            (macro-noncontinuable-exception? _%exn140485%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn140479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140479%_))
            (let ((_%e140482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140479%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e140482%_)
                  (macro-noncontinuable-exception-reason _%e140482%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e140482%_ '())))))
            (if (macro-noncontinuable-exception? _%exn140479%_)
                (macro-noncontinuable-exception-reason _%exn140479%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn140479%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn140475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140475%_))
            (let ((_%e140477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140475%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e140477%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn140475%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn140471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140471%_))
            (let ((_%e140473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140471%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140473%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e140473%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e140473%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140471%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn140471%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn140471%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn140465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140465%_))
            (let ((_%e140468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140465%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140468%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e140468%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e140468%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140465%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn140465%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn140465%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn140461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140461%_))
            (let ((_%e140463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140461%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e140463%_))
            (macro-nonprocedure-operator-exception? _%exn140461%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn140457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140457%_))
            (let ((_%e140459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140457%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140459%_)
                  (macro-nonprocedure-operator-exception-arguments _%e140459%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e140459%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140457%_)
                (macro-nonprocedure-operator-exception-arguments _%exn140457%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn140457%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn140453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140453%_))
            (let ((_%e140455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140453%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140455%_)
                  (macro-nonprocedure-operator-exception-code _%e140455%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e140455%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140453%_)
                (macro-nonprocedure-operator-exception-code _%exn140453%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn140453%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn140449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140449%_))
            (let ((_%e140451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140449%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140451%_)
                  (macro-nonprocedure-operator-exception-operator _%e140451%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e140451%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140449%_)
                (macro-nonprocedure-operator-exception-operator _%exn140449%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn140449%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn140443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140443%_))
            (let ((_%e140446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140443%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140446%_)
                  (macro-nonprocedure-operator-exception-rte _%e140446%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e140446%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140443%_)
                (macro-nonprocedure-operator-exception-rte _%exn140443%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn140443%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn140439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140439%_))
            (let ((_%e140441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140439%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e140441%_))
            (macro-not-in-compilation-context-exception? _%exn140439%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn140435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140435%_))
            (let ((_%e140437%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140435%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140437%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e140437%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e140437%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140435%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn140435%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn140435%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn140429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140429%_))
            (let ((_%e140432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140429%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140432%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e140432%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e140432%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140429%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn140429%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn140429%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn140425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140425%_))
            (let ((_%e140427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140425%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e140427%_))
            (macro-number-of-arguments-limit-exception? _%exn140425%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn140421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140421%_))
            (let ((_%e140423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140421%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140423%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e140423%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e140423%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140421%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn140421%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn140421%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn140415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140415%_))
            (let ((_%e140418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140415%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140418%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e140418%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e140418%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140415%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn140415%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn140415%_ '())))))))
    (define os-exception?
      (lambda (_%exn140411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140411%_))
            (let ((_%e140413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140411%_ 'exception))))
              (macro-os-exception? _%e140413%_))
            (macro-os-exception? _%exn140411%_))))
    (define os-exception-arguments
      (lambda (_%exn140407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140407%_))
            (let ((_%e140409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140407%_ 'exception))))
              (if (macro-os-exception? _%e140409%_)
                  (macro-os-exception-arguments _%e140409%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e140409%_ '())))))
            (if (macro-os-exception? _%exn140407%_)
                (macro-os-exception-arguments _%exn140407%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn140407%_ '())))))))
    (define os-exception-code
      (lambda (_%exn140403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140403%_))
            (let ((_%e140405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140403%_ 'exception))))
              (if (macro-os-exception? _%e140405%_)
                  (macro-os-exception-code _%e140405%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e140405%_ '())))))
            (if (macro-os-exception? _%exn140403%_)
                (macro-os-exception-code _%exn140403%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn140403%_ '())))))))
    (define os-exception-message
      (lambda (_%exn140399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140399%_))
            (let ((_%e140401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140399%_ 'exception))))
              (if (macro-os-exception? _%e140401%_)
                  (macro-os-exception-message _%e140401%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e140401%_ '())))))
            (if (macro-os-exception? _%exn140399%_)
                (macro-os-exception-message _%exn140399%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn140399%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn140393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140393%_))
            (let ((_%e140396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140393%_ 'exception))))
              (if (macro-os-exception? _%e140396%_)
                  (macro-os-exception-procedure _%e140396%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e140396%_ '())))))
            (if (macro-os-exception? _%exn140393%_)
                (macro-os-exception-procedure _%exn140393%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn140393%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn140389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140389%_))
            (let ((_%e140391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140389%_ 'exception))))
              (macro-permission-denied-exception? _%e140391%_))
            (macro-permission-denied-exception? _%exn140389%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn140385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140385%_))
            (let ((_%e140387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140385%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140387%_)
                  (macro-permission-denied-exception-arguments _%e140387%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e140387%_ '())))))
            (if (macro-permission-denied-exception? _%exn140385%_)
                (macro-permission-denied-exception-arguments _%exn140385%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn140385%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn140379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140379%_))
            (let ((_%e140382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140379%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140382%_)
                  (macro-permission-denied-exception-procedure _%e140382%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e140382%_ '())))))
            (if (macro-permission-denied-exception? _%exn140379%_)
                (macro-permission-denied-exception-procedure _%exn140379%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn140379%_ '())))))))
    (define range-exception?
      (lambda (_%exn140375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140375%_))
            (let ((_%e140377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140375%_ 'exception))))
              (macro-range-exception? _%e140377%_))
            (macro-range-exception? _%exn140375%_))))
    (define range-exception-arg-id
      (lambda (_%exn140371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140371%_))
            (let ((_%e140373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140371%_ 'exception))))
              (if (macro-range-exception? _%e140373%_)
                  (macro-range-exception-arg-id _%e140373%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e140373%_ '())))))
            (if (macro-range-exception? _%exn140371%_)
                (macro-range-exception-arg-id _%exn140371%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn140371%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn140367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140367%_))
            (let ((_%e140369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140367%_ 'exception))))
              (if (macro-range-exception? _%e140369%_)
                  (macro-range-exception-arguments _%e140369%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e140369%_ '())))))
            (if (macro-range-exception? _%exn140367%_)
                (macro-range-exception-arguments _%exn140367%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn140367%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn140361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140361%_))
            (let ((_%e140364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140361%_ 'exception))))
              (if (macro-range-exception? _%e140364%_)
                  (macro-range-exception-procedure _%e140364%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e140364%_ '())))))
            (if (macro-range-exception? _%exn140361%_)
                (macro-range-exception-procedure _%exn140361%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn140361%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn140357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140357%_))
            (let ((_%e140359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140357%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e140359%_))
            (macro-rpc-remote-error-exception? _%exn140357%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn140353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140353%_))
            (let ((_%e140355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140353%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140355%_)
                  (macro-rpc-remote-error-exception-arguments _%e140355%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e140355%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140353%_)
                (macro-rpc-remote-error-exception-arguments _%exn140353%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn140353%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn140349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140349%_))
            (let ((_%e140351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140349%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140351%_)
                  (macro-rpc-remote-error-exception-message _%e140351%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e140351%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140349%_)
                (macro-rpc-remote-error-exception-message _%exn140349%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn140349%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn140343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140343%_))
            (let ((_%e140346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140343%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140346%_)
                  (macro-rpc-remote-error-exception-procedure _%e140346%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e140346%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140343%_)
                (macro-rpc-remote-error-exception-procedure _%exn140343%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn140343%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn140339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140339%_))
            (let ((_%e140341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140339%_ 'exception))))
              (macro-scheduler-exception? _%e140341%_))
            (macro-scheduler-exception? _%exn140339%_))))
    (define scheduler-exception-reason
      (lambda (_%exn140333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140333%_))
            (let ((_%e140336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140333%_ 'exception))))
              (if (macro-scheduler-exception? _%e140336%_)
                  (macro-scheduler-exception-reason _%e140336%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e140336%_ '())))))
            (if (macro-scheduler-exception? _%exn140333%_)
                (macro-scheduler-exception-reason _%exn140333%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn140333%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn140329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140329%_))
            (let ((_%e140331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140329%_ 'exception))))
              (macro-sfun-conversion-exception? _%e140331%_))
            (macro-sfun-conversion-exception? _%exn140329%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn140325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140325%_))
            (let ((_%e140327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140325%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140327%_)
                  (macro-sfun-conversion-exception-arguments _%e140327%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e140327%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140325%_)
                (macro-sfun-conversion-exception-arguments _%exn140325%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn140325%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn140321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140321%_))
            (let ((_%e140323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140321%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140323%_)
                  (macro-sfun-conversion-exception-code _%e140323%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e140323%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140321%_)
                (macro-sfun-conversion-exception-code _%exn140321%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn140321%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn140317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140317%_))
            (let ((_%e140319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140317%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140319%_)
                  (macro-sfun-conversion-exception-message _%e140319%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e140319%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140317%_)
                (macro-sfun-conversion-exception-message _%exn140317%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn140317%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn140311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140311%_))
            (let ((_%e140314%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140311%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140314%_)
                  (macro-sfun-conversion-exception-procedure _%e140314%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e140314%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140311%_)
                (macro-sfun-conversion-exception-procedure _%exn140311%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn140311%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn140305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140305%_))
            (let ((_%e140308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140305%_ 'exception))))
              (macro-stack-overflow-exception? _%e140308%_))
            (macro-stack-overflow-exception? _%exn140305%_))))
    (define started-thread-exception?
      (lambda (_%exn140301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140301%_))
            (let ((_%e140303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140301%_ 'exception))))
              (macro-started-thread-exception? _%e140303%_))
            (macro-started-thread-exception? _%exn140301%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn140297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140297%_))
            (let ((_%e140299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140297%_ 'exception))))
              (if (macro-started-thread-exception? _%e140299%_)
                  (macro-started-thread-exception-arguments _%e140299%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e140299%_ '())))))
            (if (macro-started-thread-exception? _%exn140297%_)
                (macro-started-thread-exception-arguments _%exn140297%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn140297%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn140291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140291%_))
            (let ((_%e140294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140291%_ 'exception))))
              (if (macro-started-thread-exception? _%e140294%_)
                  (macro-started-thread-exception-procedure _%e140294%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e140294%_ '())))))
            (if (macro-started-thread-exception? _%exn140291%_)
                (macro-started-thread-exception-procedure _%exn140291%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn140291%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn140287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140287%_))
            (let ((_%e140289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140287%_ 'exception))))
              (macro-terminated-thread-exception? _%e140289%_))
            (macro-terminated-thread-exception? _%exn140287%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn140283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140283%_))
            (let ((_%e140285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140283%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140285%_)
                  (macro-terminated-thread-exception-arguments _%e140285%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e140285%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140283%_)
                (macro-terminated-thread-exception-arguments _%exn140283%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn140283%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn140277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140277%_))
            (let ((_%e140280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140277%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140280%_)
                  (macro-terminated-thread-exception-procedure _%e140280%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e140280%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140277%_)
                (macro-terminated-thread-exception-procedure _%exn140277%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn140277%_ '())))))))
    (define type-exception?
      (lambda (_%exn140273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140273%_))
            (let ((_%e140275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140273%_ 'exception))))
              (macro-type-exception? _%e140275%_))
            (macro-type-exception? _%exn140273%_))))
    (define type-exception-arg-id
      (lambda (_%exn140269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140269%_))
            (let ((_%e140271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140269%_ 'exception))))
              (if (macro-type-exception? _%e140271%_)
                  (macro-type-exception-arg-id _%e140271%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e140271%_ '())))))
            (if (macro-type-exception? _%exn140269%_)
                (macro-type-exception-arg-id _%exn140269%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn140269%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn140265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140265%_))
            (let ((_%e140267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140265%_ 'exception))))
              (if (macro-type-exception? _%e140267%_)
                  (macro-type-exception-arguments _%e140267%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e140267%_ '())))))
            (if (macro-type-exception? _%exn140265%_)
                (macro-type-exception-arguments _%exn140265%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn140265%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn140261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140261%_))
            (let ((_%e140263%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140261%_ 'exception))))
              (if (macro-type-exception? _%e140263%_)
                  (macro-type-exception-procedure _%e140263%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e140263%_ '())))))
            (if (macro-type-exception? _%exn140261%_)
                (macro-type-exception-procedure _%exn140261%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn140261%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn140255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140255%_))
            (let ((_%e140258%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140255%_ 'exception))))
              (if (macro-type-exception? _%e140258%_)
                  (macro-type-exception-type-id _%e140258%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e140258%_ '())))))
            (if (macro-type-exception? _%exn140255%_)
                (macro-type-exception-type-id _%exn140255%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn140255%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn140251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140251%_))
            (let ((_%e140253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140251%_ 'exception))))
              (macro-unbound-global-exception? _%e140253%_))
            (macro-unbound-global-exception? _%exn140251%_))))
    (define unbound-global-exception-code
      (lambda (_%exn140247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140247%_))
            (let ((_%e140249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140247%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140249%_)
                  (macro-unbound-global-exception-code _%e140249%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e140249%_ '())))))
            (if (macro-unbound-global-exception? _%exn140247%_)
                (macro-unbound-global-exception-code _%exn140247%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn140247%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn140243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140243%_))
            (let ((_%e140245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140243%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140245%_)
                  (macro-unbound-global-exception-rte _%e140245%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e140245%_ '())))))
            (if (macro-unbound-global-exception? _%exn140243%_)
                (macro-unbound-global-exception-rte _%exn140243%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn140243%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn140237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140237%_))
            (let ((_%e140240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140237%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140240%_)
                  (macro-unbound-global-exception-variable _%e140240%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e140240%_ '())))))
            (if (macro-unbound-global-exception? _%exn140237%_)
                (macro-unbound-global-exception-variable _%exn140237%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn140237%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn140233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140233%_))
            (let ((_%e140235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140233%_ 'exception))))
              (macro-unbound-key-exception? _%e140235%_))
            (macro-unbound-key-exception? _%exn140233%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn140229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140229%_))
            (let ((_%e140231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140229%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140231%_)
                  (macro-unbound-key-exception-arguments _%e140231%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e140231%_ '())))))
            (if (macro-unbound-key-exception? _%exn140229%_)
                (macro-unbound-key-exception-arguments _%exn140229%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn140229%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn140223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140223%_))
            (let ((_%e140226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140223%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140226%_)
                  (macro-unbound-key-exception-procedure _%e140226%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e140226%_ '())))))
            (if (macro-unbound-key-exception? _%exn140223%_)
                (macro-unbound-key-exception-procedure _%exn140223%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn140223%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn140219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140219%_))
            (let ((_%e140221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140219%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e140221%_))
            (macro-unbound-os-environment-variable-exception? _%exn140219%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn140215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140215%_))
            (let ((_%e140217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140215%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140217%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e140217%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e140217%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140215%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn140215%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn140215%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn140209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140209%_))
            (let ((_%e140212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140209%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140212%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e140212%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e140212%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140209%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn140209%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn140209%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn140205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140205%_))
            (let ((_%e140207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140205%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e140207%_))
            (macro-unbound-serial-number-exception? _%exn140205%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn140201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140201%_))
            (let ((_%e140203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140201%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140203%_)
                  (macro-unbound-serial-number-exception-arguments _%e140203%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e140203%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140201%_)
                (macro-unbound-serial-number-exception-arguments _%exn140201%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn140201%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn140195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140195%_))
            (let ((_%e140198%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140195%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140198%_)
                  (macro-unbound-serial-number-exception-procedure _%e140198%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e140198%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140195%_)
                (macro-unbound-serial-number-exception-procedure _%exn140195%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn140195%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn140191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140191%_))
            (let ((_%e140193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140191%_ 'exception))))
              (macro-uncaught-exception? _%e140193%_))
            (macro-uncaught-exception? _%exn140191%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn140187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140187%_))
            (let ((_%e140189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140187%_ 'exception))))
              (if (macro-uncaught-exception? _%e140189%_)
                  (macro-uncaught-exception-arguments _%e140189%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e140189%_ '())))))
            (if (macro-uncaught-exception? _%exn140187%_)
                (macro-uncaught-exception-arguments _%exn140187%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn140187%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn140183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140183%_))
            (let ((_%e140185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140183%_ 'exception))))
              (if (macro-uncaught-exception? _%e140185%_)
                  (macro-uncaught-exception-procedure _%e140185%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e140185%_ '())))))
            (if (macro-uncaught-exception? _%exn140183%_)
                (macro-uncaught-exception-procedure _%exn140183%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn140183%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn140177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140177%_))
            (let ((_%e140180%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140177%_ 'exception))))
              (if (macro-uncaught-exception? _%e140180%_)
                  (macro-uncaught-exception-reason _%e140180%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e140180%_ '())))))
            (if (macro-uncaught-exception? _%exn140177%_)
                (macro-uncaught-exception-reason _%exn140177%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn140177%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn140173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140173%_))
            (let ((_%e140175%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140173%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e140175%_))
            (macro-uninitialized-thread-exception? _%exn140173%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn140169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140169%_))
            (let ((_%e140171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140169%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140171%_)
                  (macro-uninitialized-thread-exception-arguments _%e140171%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e140171%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140169%_)
                (macro-uninitialized-thread-exception-arguments _%exn140169%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn140169%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn140163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140163%_))
            (let ((_%e140166%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140163%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140166%_)
                  (macro-uninitialized-thread-exception-procedure _%e140166%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e140166%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140163%_)
                (macro-uninitialized-thread-exception-procedure _%exn140163%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn140163%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn140159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140159%_))
            (let ((_%e140161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140159%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e140161%_))
            (macro-unknown-keyword-argument-exception? _%exn140159%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn140155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140155%_))
            (let ((_%e140157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140155%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140157%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e140157%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e140157%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140155%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn140155%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn140155%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn140149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140149%_))
            (let ((_%e140152%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140149%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140152%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e140152%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e140152%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140149%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn140149%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn140149%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn140145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140145%_))
            (let ((_%e140147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140145%_ 'exception))))
              (macro-unterminated-process-exception? _%e140147%_))
            (macro-unterminated-process-exception? _%exn140145%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn140141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140141%_))
            (let ((_%e140143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140141%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140143%_)
                  (macro-unterminated-process-exception-arguments _%e140143%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e140143%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140141%_)
                (macro-unterminated-process-exception-arguments _%exn140141%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn140141%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn140135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140135%_))
            (let ((_%e140138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140135%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140138%_)
                  (macro-unterminated-process-exception-procedure _%e140138%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e140138%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140135%_)
                (macro-unterminated-process-exception-procedure _%exn140135%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn140135%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn140131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140131%_))
            (let ((_%e140133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140131%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e140133%_))
            (macro-wrong-number-of-arguments-exception? _%exn140131%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn140127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140127%_))
            (let ((_%e140129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140127%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140129%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e140129%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e140129%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140127%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn140127%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn140127%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn140121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140121%_))
            (let ((_%e140124%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140121%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140124%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e140124%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e140124%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140121%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn140121%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn140121%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn140117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140117%_))
            (let ((_%e140119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140117%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e140119%_))
            (macro-wrong-number-of-values-exception? _%exn140117%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn140113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140113%_))
            (let ((_%e140115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140113%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140115%_)
                  (macro-wrong-number-of-values-exception-code _%e140115%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e140115%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140113%_)
                (macro-wrong-number-of-values-exception-code _%exn140113%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn140113%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn140109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140109%_))
            (let ((_%e140111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140109%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140111%_)
                  (macro-wrong-number-of-values-exception-rte _%e140111%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e140111%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140109%_)
                (macro-wrong-number-of-values-exception-rte _%exn140109%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn140109%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn140103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140103%_))
            (let ((_%e140106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140103%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140106%_)
                  (macro-wrong-number-of-values-exception-vals _%e140106%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e140106%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140103%_)
                (macro-wrong-number-of-values-exception-vals _%exn140103%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn140103%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn140097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140097%_))
            (let ((_%e140100%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140097%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e140100%_))
            (macro-wrong-processor-c-return-exception? _%exn140097%_))))))
