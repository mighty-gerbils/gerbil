(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1779289636)
  (begin
    (define Exception::t
      (let ((__tmp143487 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp143487
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args143405%_
        (apply make-instance Exception::t _%$args143405%_)))
    (define StackTrace::t
      (let ((__tmp143488 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp143488
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args143402%_
        (apply make-instance StackTrace::t _%$args143402%_)))
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
      (let ((__tmp143489 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp143489
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args143399%_ (apply make-instance Error::t _%$args143399%_)))
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
      (let ((__tmp143490 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp143490
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args143396%_
        (apply make-instance ContractViolation::t _%$args143396%_)))
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
      (let ((__tmp143491 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp143491
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args143393%_
        (apply make-instance RuntimeException::t _%$args143393%_)))
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
      (lambda (_%exn143388%_ _%continue143389%_)
        (let ((_%exn143391%_ (wrap-runtime-exception _%exn143388%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn143391%_ _%continue143389%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn143384%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn143384%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn143384%_ 'continuation))
                '#!void
                (let ((__tmp143492
                       (lambda (_%cont143386%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn143384%_
                            'continuation
                            _%cont143386%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp143492)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn143384%_))))
    (define error
      (lambda (_%message143381%_ . _%irritants143382%_)
        (raise (let ((__obj143484
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj143484
                  _%message143381%_
                  'irritants:
                  _%irritants143382%_)
                 __obj143484))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords143356%_
               _%ctx143351143357%_
               _%contract-expr143352143358%_
               _%value143353143359%_
               _%message143360%_)
        (let* ((_%ctx143362%_
                (if (eq? _%ctx143351143357%_ absent-value)
                    '#f
                    _%ctx143351143357%_))
               (_%contract-expr143364%_
                (if (eq? _%contract-expr143352143358%_ absent-value)
                    '#f
                    _%contract-expr143352143358%_))
               (_%value143366%_
                (if (eq? _%value143353143359%_ absent-value)
                    '#f
                    _%value143353143359%_)))
          (raise (let ((__obj143485
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj143485
                    _%message143360%_
                    'where:
                    _%ctx143362%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr143364%_
                                (cons 'value: (cons _%value143366%_ '())))))
                   __obj143485)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords143371%_ . _%args143372%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords143371%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143371%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143371%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143371%_
                  'value:
                  absent-value))
               _%args143372%_)))
    (define __raise-contract-violation-error
      (lambda _%args143354143378%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args143354143378%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler143325%_ _%thunk143326%_)
        (let* ((_%handler143329%_ _%handler143325%_)
               (_%thunk143337%_ _%thunk143326%_)
               (__tmp143493
                (lambda (_%exn143346%_)
                  (let ((_%exn143348%_ (wrap-runtime-exception _%exn143346%_)))
                    (declare (not safe))
                    (_%handler143329%_ _%exn143348%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp143493 _%thunk143337%_))))
    (define with-exception-handler
      (lambda (_%handler141360%_ _%thunk141361%_)
        (if (procedure? _%handler141360%_)
            (let ((_%handler141365%_ _%handler141360%_))
              (if (procedure? _%thunk141361%_)
                  (let ((_%thunk141375%_ _%thunk141361%_))
                    (__with-exception-handler
                     _%handler141365%_
                     _%thunk141375%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk141361%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler141360%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler143267%_ _%thunk143268%_)
        (let* ((_%handler143271%_ _%handler143267%_)
               (_%thunk143279%_ _%thunk143268%_)
               (__tmp143494
                (lambda (_%cont143288%_)
                  (let* ((_%handler143292%_
                          (lambda (_%exn143290%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont143288%_
                               _%handler143271%_
                               _%exn143290%_))))
                         (_%thunk143295%_ _%thunk143279%_)
                         (_%handler143300%_ _%handler143292%_)
                         (_%thunk143315%_ _%thunk143295%_))
                    (__with-exception-handler
                     _%handler143300%_
                     _%thunk143315%_)))))
          (declare (not safe))
          (##continuation-capture __tmp143494))))
    (define with-catch
      (lambda (_%handler141505%_ _%thunk141506%_)
        (if (procedure? _%handler141505%_)
            (let ((_%handler141510%_ _%handler141505%_))
              (if (procedure? _%thunk141506%_)
                  (let ((_%thunk141520%_ _%thunk141506%_))
                    (__with-catch _%handler141510%_ _%thunk141520%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk141506%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler141505%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn143254%_)
        (if (or (heap-overflow-exception? _%exn143254%_)
                (stack-overflow-exception? _%exn143254%_))
            _%exn143254%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn143254%_))
                _%exn143254%_
                (if (macro-exception? _%exn143254%_)
                    (let ((_%rte143262%_
                           (let ((__obj143486
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj143486
                                _%exn143254%_
                                '2
                                '#f
                                '#f))
                             __obj143486)))
                      (let ((__tmp143495
                             (lambda (_%cont143264%_)
                               (let ((__tmp143496
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont143264%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte143262%_
                                  'continuation
                                  __tmp143496)))))
                        (declare (not safe))
                        (##continuation-capture __tmp143495))
                      _%rte143262%_)
                    _%exn143254%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj143249%_)
        (let ((_%$e143251%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj143249%_))))
          (if _%$e143251%_ _%$e143251%_ (error-exception? _%obj143249%_)))))
    (define error-message
      (lambda (_%obj143208%_)
        (let ((_%$e143244%_
               (let* ((_%obj143210%_ _%obj143208%_)
                      (_%slot143213%_ 'message)
                      (_%E143216%_ false)
                      (_%slot143221%_ _%slot143213%_)
                      (_%E143234%_ _%E143216%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj143210%_ _%slot143221%_ _%E143234%_))))
          (if _%$e143244%_
              _%$e143244%_
              (if (error-exception? _%obj143208%_)
                  (error-exception-message _%obj143208%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj143203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj143203%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj143203%_ 'irritants))
            (if (error-exception? _%obj143203%_)
                (error-exception-parameters _%obj143203%_)
                '#f))))
    (define error-trace
      (lambda (_%obj143201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj143201%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj143201%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e143162%_ _%port143163%_)
        (let ((_%$e143185%_
               (let* ((_%obj143165%_ _%e143162%_)
                      (_%id143168%_ 'display-exception)
                      (_%id143173%_ _%id143168%_))
                 (declare (not safe))
                 (__method-ref _%obj143165%_ _%id143173%_))))
          (if _%$e143185%_
              (_%$e143185%_ _%e143162%_ _%port143163%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e143162%_ _%port143163%_))))))
    (define display-exception__0
      (lambda (_%e143194%_)
        (let ((_%port143196%_ (current-error-port)))
          (display-exception__% _%e143194%_ _%port143196%_))))
    (define display-exception
      (lambda _g143497_
        (let ((_g143498_ (let () (declare (not safe)) (##length _g143497_))))
          (cond ((let () (declare (not safe)) (##fx= _g143498_ 1))
                 (apply display-exception__0 _g143497_))
                ((let () (declare (not safe)) (##fx= _g143498_ 2))
                 (apply display-exception__% _g143497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g143497_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self143140%_ _%message143141%_ . _%rest143142%_)
        (let* ((_%self143145%_ _%self143140%_)
               (_%message143159%_
                (if (string? _%message143141%_)
                    _%message143141%_
                    (call-with-output-string
                     '""
                     (lambda (_%g143154143156%_)
                       (display _%message143141%_ _%g143154143156%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self143145%_ 'message _%message143159%_))
          (apply class-instance-init! _%self143145%_ _%rest143142%_))))
    (define Error:::init!::specialize
      (lambda (__klass143407 __method-table143408)
        (let ((__message143409
               (let ((__slot143410
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143407 'message))))
                 (if __slot143410
                     __slot143410
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self143140%_ _%message143141%_ . _%rest143142%_)
            (let* ((_%self143145%_ _%self143140%_)
                   (_%message143159%_
                    (if (string? _%message143141%_)
                        _%message143141%_
                        (call-with-output-string
                         '""
                         (lambda (_%g143154143156%_)
                           (display _%message143141%_ _%g143154143156%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self143145%_
                 _%message143159%_
                 __message143409
                 '#f
                 '#f))
              (apply class-instance-init! _%self143145%_ _%rest143142%_))))))
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
      (lambda (_%self142845%_ _%port142846%_)
        (let ((_%self142849%_ _%self142845%_))
          (let ((_%tmp-port142859%_ (open-output-string))
                (_%display-error-newline142860%_
                 (> (output-port-column _%port142846%_) '0)))
            (fix-port-width! _%tmp-port142859%_)
            (let ((__tmp143499
                   (lambda ()
                     (if _%display-error-newline142860%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e142863%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142849%_ 'where))))
                       (if _%$e142863%_ (display _%$e142863%_) (display '"?")))
                     (let ((__tmp143500
                            (let ((__tmp143501
                                   (let ((_%obj142867%_ _%self142849%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj142867%_))
                                         (let ((_%obj142872%_ _%obj142867%_))
                                           (declare (not safe))
                                           (__object-class _%obj142872%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj142867%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp143501))))
                       (declare (not safe))
                       (display* '" [" __tmp143500 '"]: "))
                     (let ((__tmp143502
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142849%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp143502))
                     (let ((_%irritants142887%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142849%_ 'irritants))))
                       (if (null? _%irritants142887%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj142889%_)
                                (if (u8vector? _%obj142889%_)
                                    (let ((__tmp143503
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj142889%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp143503))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj142889%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants142887%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont142890142892%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self142849%_
                                   'continuation))))
                           (if _%cont142890142892%_
                               (let ((_%cont142894%_ _%cont142890142892%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont142894%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp143499
               current-output-port
               _%tmp-port142859%_))
            (let ((__tmp143504 (get-output-string _%tmp-port142859%_)))
              (declare (not safe))
              (##write-string __tmp143504 _%port142846%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass143411 __method-table143412)
        (let ((__where143413
               (let ((__slot143417
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143411 'where))))
                 (if __slot143417
                     __slot143417
                     (error '"Unknown slot" 'where))))
              (__message143414
               (let ((__slot143418
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143411 'message))))
                 (if __slot143418
                     __slot143418
                     (error '"Unknown slot" 'message))))
              (__continuation143415
               (let ((__slot143419
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143411 'continuation))))
                 (if __slot143419
                     __slot143419
                     (error '"Unknown slot" 'continuation))))
              (__irritants143416
               (let ((__slot143420
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143411 'irritants))))
                 (if __slot143420
                     __slot143420
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self142845%_ _%port142846%_)
            (let ((_%self142849%_ _%self142845%_))
              (let ((_%tmp-port142859%_ (open-output-string))
                    (_%display-error-newline142860%_
                     (> (output-port-column _%port142846%_) '0)))
                (fix-port-width! _%tmp-port142859%_)
                (let ((__tmp143505
                       (lambda ()
                         (if _%display-error-newline142860%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e142863%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142849%_
                                   __where143413
                                   '#f
                                   '#f))))
                           (if _%$e142863%_
                               (display _%$e142863%_)
                               (display '"?")))
                         (let ((__tmp143506
                                (let ((__tmp143507
                                       (let ((_%obj142867%_ _%self142849%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj142867%_))
                                             (let ((_%obj142872%_
                                                    _%obj142867%_))
                                               (declare (not safe))
                                               (__object-class _%obj142872%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj142867%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp143507))))
                           (declare (not safe))
                           (display* '" [" __tmp143506 '"]: "))
                         (let ((__tmp143508
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142849%_
                                   __message143414
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp143508))
                         (let ((_%irritants142887%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142849%_
                                   __irritants143416
                                   '#f
                                   '#f))))
                           (if (null? _%irritants142887%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj142889%_)
                                    (if (u8vector? _%obj142889%_)
                                        (let ((__tmp143509
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj142889%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp143509))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj142889%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants142887%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont142890142892%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self142849%_
                                       __continuation143415
                                       '#f
                                       '#f))))
                               (if _%cont142890142892%_
                                   (let ((_%cont142894%_ _%cont142890142892%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont142894%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp143505
                   current-output-port
                   _%tmp-port142859%_))
                (let ((__tmp143510 (get-output-string _%tmp-port142859%_)))
                  (declare (not safe))
                  (##write-string __tmp143510 _%port142846%_))))))))
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
      (lambda (_%self142702%_ _%port142703%_)
        (let* ((_%self142706%_ _%self142702%_)
               (_%tmp-port142716%_ (open-output-string)))
          (fix-port-width! _%tmp-port142716%_)
          (let ((__tmp143511
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self142706%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp143511 _%tmp-port142716%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont142717142719%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self142706%_ 'continuation))))
                (if _%cont142717142719%_
                    (let ((_%cont142721%_ _%cont142717142719%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port142716%_)
                      (newline _%tmp-port142716%_)
                      (display-continuation-backtrace
                       _%cont142721%_
                       _%tmp-port142716%_))
                    '#f))
              '#!void)
          (let ((__tmp143512 (get-output-string _%tmp-port142716%_)))
            (declare (not safe))
            (##write-string __tmp143512 _%port142703%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass143421 __method-table143422)
        (let ((__exception143423
               (let ((__slot143425
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143421 'exception))))
                 (if __slot143425
                     __slot143425
                     (error '"Unknown slot" 'exception))))
              (__continuation143424
               (let ((__slot143426
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143421 'continuation))))
                 (if __slot143426
                     __slot143426
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self142702%_ _%port142703%_)
            (let* ((_%self142706%_ _%self142702%_)
                   (_%tmp-port142716%_ (open-output-string)))
              (fix-port-width! _%tmp-port142716%_)
              (let ((__tmp143513
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self142706%_
                        __exception143423
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp143513 _%tmp-port142716%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont142717142719%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self142706%_
                            __continuation143424
                            '#f
                            '#f))))
                    (if _%cont142717142719%_
                        (let ((_%cont142721%_ _%cont142717142719%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port142716%_)
                          (newline _%tmp-port142716%_)
                          (display-continuation-backtrace
                           _%cont142721%_
                           _%tmp-port142716%_))
                        '#f))
                  '#!void)
              (let ((__tmp143514 (get-output-string _%tmp-port142716%_)))
                (declare (not safe))
                (##write-string __tmp143514 _%port142703%_)))))))
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
      (lambda (_%port142574%_)
        (if (macro-character-port? _%port142574%_)
            (let ((_%old-width142576%_
                   (macro-character-port-output-width _%port142574%_)))
              (macro-character-port-output-width-set!
               _%port142574%_
               (lambda (_%port142578%_) '512))
              _%old-width142576%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port142571%_ _%old-width142572%_)
        (if (macro-character-port? _%port142571%_)
            (macro-character-port-output-width-set!
             _%port142571%_
             _%old-width142572%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e142569%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e142569%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn142563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142563%_))
            (let ((_%e142566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142563%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e142566%_))
            (macro-abandoned-mutex-exception? _%exn142563%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn142559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142559%_))
            (let ((_%e142561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142559%_ 'exception))))
              (macro-cfun-conversion-exception? _%e142561%_))
            (macro-cfun-conversion-exception? _%exn142559%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn142555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142555%_))
            (let ((_%e142557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142555%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142557%_)
                  (macro-cfun-conversion-exception-arguments _%e142557%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e142557%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142555%_)
                (macro-cfun-conversion-exception-arguments _%exn142555%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn142555%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn142551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142551%_))
            (let ((_%e142553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142551%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142553%_)
                  (macro-cfun-conversion-exception-code _%e142553%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e142553%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142551%_)
                (macro-cfun-conversion-exception-code _%exn142551%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn142551%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn142547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142547%_))
            (let ((_%e142549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142547%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142549%_)
                  (macro-cfun-conversion-exception-message _%e142549%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e142549%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142547%_)
                (macro-cfun-conversion-exception-message _%exn142547%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn142547%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn142541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142541%_))
            (let ((_%e142544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142541%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142544%_)
                  (macro-cfun-conversion-exception-procedure _%e142544%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e142544%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142541%_)
                (macro-cfun-conversion-exception-procedure _%exn142541%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn142541%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn142537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142537%_))
            (let ((_%e142539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142537%_ 'exception))))
              (macro-datum-parsing-exception? _%e142539%_))
            (macro-datum-parsing-exception? _%exn142537%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn142533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142533%_))
            (let ((_%e142535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142533%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142535%_)
                  (macro-datum-parsing-exception-kind _%e142535%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e142535%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142533%_)
                (macro-datum-parsing-exception-kind _%exn142533%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn142533%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn142529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142529%_))
            (let ((_%e142531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142529%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142531%_)
                  (macro-datum-parsing-exception-parameters _%e142531%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e142531%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142529%_)
                (macro-datum-parsing-exception-parameters _%exn142529%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn142529%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn142523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142523%_))
            (let ((_%e142526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142523%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142526%_)
                  (macro-datum-parsing-exception-readenv _%e142526%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e142526%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142523%_)
                (macro-datum-parsing-exception-readenv _%exn142523%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn142523%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn142517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142517%_))
            (let ((_%e142520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142517%_ 'exception))))
              (macro-deadlock-exception? _%e142520%_))
            (macro-deadlock-exception? _%exn142517%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn142513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142513%_))
            (let ((_%e142515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142513%_ 'exception))))
              (macro-divide-by-zero-exception? _%e142515%_))
            (macro-divide-by-zero-exception? _%exn142513%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn142509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142509%_))
            (let ((_%e142511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142509%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142511%_)
                  (macro-divide-by-zero-exception-arguments _%e142511%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e142511%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142509%_)
                (macro-divide-by-zero-exception-arguments _%exn142509%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn142509%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn142503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142503%_))
            (let ((_%e142506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142503%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142506%_)
                  (macro-divide-by-zero-exception-procedure _%e142506%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e142506%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142503%_)
                (macro-divide-by-zero-exception-procedure _%exn142503%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn142503%_ '())))))))
    (define error-exception?
      (lambda (_%exn142499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142499%_))
            (let ((_%e142501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142499%_ 'exception))))
              (macro-error-exception? _%e142501%_))
            (macro-error-exception? _%exn142499%_))))
    (define error-exception-message
      (lambda (_%exn142495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142495%_))
            (let ((_%e142497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142495%_ 'exception))))
              (if (macro-error-exception? _%e142497%_)
                  (macro-error-exception-message _%e142497%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e142497%_ '())))))
            (if (macro-error-exception? _%exn142495%_)
                (macro-error-exception-message _%exn142495%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn142495%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn142489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142489%_))
            (let ((_%e142492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142489%_ 'exception))))
              (if (macro-error-exception? _%e142492%_)
                  (macro-error-exception-parameters _%e142492%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e142492%_ '())))))
            (if (macro-error-exception? _%exn142489%_)
                (macro-error-exception-parameters _%exn142489%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn142489%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn142485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142485%_))
            (let ((_%e142487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142485%_ 'exception))))
              (macro-expression-parsing-exception? _%e142487%_))
            (macro-expression-parsing-exception? _%exn142485%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn142481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142481%_))
            (let ((_%e142483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142481%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142483%_)
                  (macro-expression-parsing-exception-kind _%e142483%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e142483%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142481%_)
                (macro-expression-parsing-exception-kind _%exn142481%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn142481%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn142477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142477%_))
            (let ((_%e142479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142477%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142479%_)
                  (macro-expression-parsing-exception-parameters _%e142479%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e142479%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142477%_)
                (macro-expression-parsing-exception-parameters _%exn142477%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn142477%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn142471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142471%_))
            (let ((_%e142474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142471%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142474%_)
                  (macro-expression-parsing-exception-source _%e142474%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e142474%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142471%_)
                (macro-expression-parsing-exception-source _%exn142471%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn142471%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn142467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142467%_))
            (let ((_%e142469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142467%_ 'exception))))
              (macro-file-exists-exception? _%e142469%_))
            (macro-file-exists-exception? _%exn142467%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn142463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142463%_))
            (let ((_%e142465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142463%_ 'exception))))
              (if (macro-file-exists-exception? _%e142465%_)
                  (macro-file-exists-exception-arguments _%e142465%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e142465%_ '())))))
            (if (macro-file-exists-exception? _%exn142463%_)
                (macro-file-exists-exception-arguments _%exn142463%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn142463%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn142457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142457%_))
            (let ((_%e142460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142457%_ 'exception))))
              (if (macro-file-exists-exception? _%e142460%_)
                  (macro-file-exists-exception-procedure _%e142460%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e142460%_ '())))))
            (if (macro-file-exists-exception? _%exn142457%_)
                (macro-file-exists-exception-procedure _%exn142457%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn142457%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn142453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142453%_))
            (let ((_%e142455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142453%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e142455%_))
            (macro-fixnum-overflow-exception? _%exn142453%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn142449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142449%_))
            (let ((_%e142451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142449%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142451%_)
                  (macro-fixnum-overflow-exception-arguments _%e142451%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e142451%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142449%_)
                (macro-fixnum-overflow-exception-arguments _%exn142449%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn142449%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn142443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142443%_))
            (let ((_%e142446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142443%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142446%_)
                  (macro-fixnum-overflow-exception-procedure _%e142446%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e142446%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142443%_)
                (macro-fixnum-overflow-exception-procedure _%exn142443%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn142443%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn142437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142437%_))
            (let ((_%e142440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142437%_ 'exception))))
              (macro-heap-overflow-exception? _%e142440%_))
            (macro-heap-overflow-exception? _%exn142437%_))))
    (define inactive-thread-exception?
      (lambda (_%exn142433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142433%_))
            (let ((_%e142435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142433%_ 'exception))))
              (macro-inactive-thread-exception? _%e142435%_))
            (macro-inactive-thread-exception? _%exn142433%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn142429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142429%_))
            (let ((_%e142431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142429%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e142431%_)
                  (macro-inactive-thread-exception-arguments _%e142431%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e142431%_ '())))))
            (if (macro-inactive-thread-exception? _%exn142429%_)
                (macro-inactive-thread-exception-arguments _%exn142429%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn142429%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn142423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142423%_))
            (let ((_%e142426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142423%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e142426%_)
                  (macro-inactive-thread-exception-procedure _%e142426%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e142426%_ '())))))
            (if (macro-inactive-thread-exception? _%exn142423%_)
                (macro-inactive-thread-exception-procedure _%exn142423%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn142423%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn142419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142419%_))
            (let ((_%e142421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142419%_ 'exception))))
              (macro-initialized-thread-exception? _%e142421%_))
            (macro-initialized-thread-exception? _%exn142419%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn142415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142415%_))
            (let ((_%e142417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142415%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e142417%_)
                  (macro-initialized-thread-exception-arguments _%e142417%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e142417%_ '())))))
            (if (macro-initialized-thread-exception? _%exn142415%_)
                (macro-initialized-thread-exception-arguments _%exn142415%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn142415%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn142409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142409%_))
            (let ((_%e142412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142409%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e142412%_)
                  (macro-initialized-thread-exception-procedure _%e142412%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e142412%_ '())))))
            (if (macro-initialized-thread-exception? _%exn142409%_)
                (macro-initialized-thread-exception-procedure _%exn142409%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn142409%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn142405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142405%_))
            (let ((_%e142407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142405%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e142407%_))
            (macro-invalid-hash-number-exception? _%exn142405%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn142401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142401%_))
            (let ((_%e142403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142401%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e142403%_)
                  (macro-invalid-hash-number-exception-arguments _%e142403%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e142403%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn142401%_)
                (macro-invalid-hash-number-exception-arguments _%exn142401%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn142401%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn142395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142395%_))
            (let ((_%e142398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142395%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e142398%_)
                  (macro-invalid-hash-number-exception-procedure _%e142398%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e142398%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn142395%_)
                (macro-invalid-hash-number-exception-procedure _%exn142395%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn142395%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn142391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142391%_))
            (let ((_%e142393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142391%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e142393%_))
            (macro-invalid-utf8-encoding-exception? _%exn142391%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn142387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142387%_))
            (let ((_%e142389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142387%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e142389%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e142389%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e142389%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn142387%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn142387%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn142387%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn142381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142381%_))
            (let ((_%e142384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142381%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e142384%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e142384%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e142384%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn142381%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn142381%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn142381%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn142377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142377%_))
            (let ((_%e142379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142377%_ 'exception))))
              (macro-join-timeout-exception? _%e142379%_))
            (macro-join-timeout-exception? _%exn142377%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn142373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142373%_))
            (let ((_%e142375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142373%_ 'exception))))
              (if (macro-join-timeout-exception? _%e142375%_)
                  (macro-join-timeout-exception-arguments _%e142375%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e142375%_ '())))))
            (if (macro-join-timeout-exception? _%exn142373%_)
                (macro-join-timeout-exception-arguments _%exn142373%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn142373%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn142367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142367%_))
            (let ((_%e142370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142367%_ 'exception))))
              (if (macro-join-timeout-exception? _%e142370%_)
                  (macro-join-timeout-exception-procedure _%e142370%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e142370%_ '())))))
            (if (macro-join-timeout-exception? _%exn142367%_)
                (macro-join-timeout-exception-procedure _%exn142367%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn142367%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn142363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142363%_))
            (let ((_%e142365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142363%_ 'exception))))
              (macro-keyword-expected-exception? _%e142365%_))
            (macro-keyword-expected-exception? _%exn142363%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn142359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142359%_))
            (let ((_%e142361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142359%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e142361%_)
                  (macro-keyword-expected-exception-arguments _%e142361%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e142361%_ '())))))
            (if (macro-keyword-expected-exception? _%exn142359%_)
                (macro-keyword-expected-exception-arguments _%exn142359%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn142359%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn142353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142353%_))
            (let ((_%e142356%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142353%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e142356%_)
                  (macro-keyword-expected-exception-procedure _%e142356%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e142356%_ '())))))
            (if (macro-keyword-expected-exception? _%exn142353%_)
                (macro-keyword-expected-exception-procedure _%exn142353%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn142353%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn142349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142349%_))
            (let ((_%e142351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142349%_ 'exception))))
              (macro-length-mismatch-exception? _%e142351%_))
            (macro-length-mismatch-exception? _%exn142349%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn142345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142345%_))
            (let ((_%e142347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142345%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142347%_)
                  (macro-length-mismatch-exception-arg-id _%e142347%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e142347%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142345%_)
                (macro-length-mismatch-exception-arg-id _%exn142345%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn142345%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn142341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142341%_))
            (let ((_%e142343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142341%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142343%_)
                  (macro-length-mismatch-exception-arguments _%e142343%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e142343%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142341%_)
                (macro-length-mismatch-exception-arguments _%exn142341%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn142341%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn142335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142335%_))
            (let ((_%e142338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142335%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142338%_)
                  (macro-length-mismatch-exception-procedure _%e142338%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e142338%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142335%_)
                (macro-length-mismatch-exception-procedure _%exn142335%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn142335%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn142331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142331%_))
            (let ((_%e142333%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142331%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e142333%_))
            (macro-mailbox-receive-timeout-exception? _%exn142331%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn142327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142327%_))
            (let ((_%e142329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142327%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e142329%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e142329%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e142329%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn142327%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn142327%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn142327%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn142321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142321%_))
            (let ((_%e142324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142321%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e142324%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e142324%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e142324%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn142321%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn142321%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn142321%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn142317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142317%_))
            (let ((_%e142319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142317%_ 'exception))))
              (macro-module-not-found-exception? _%e142319%_))
            (macro-module-not-found-exception? _%exn142317%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn142313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142313%_))
            (let ((_%e142315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142313%_ 'exception))))
              (if (macro-module-not-found-exception? _%e142315%_)
                  (macro-module-not-found-exception-arguments _%e142315%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e142315%_ '())))))
            (if (macro-module-not-found-exception? _%exn142313%_)
                (macro-module-not-found-exception-arguments _%exn142313%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn142313%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn142307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142307%_))
            (let ((_%e142310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142307%_ 'exception))))
              (if (macro-module-not-found-exception? _%e142310%_)
                  (macro-module-not-found-exception-procedure _%e142310%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e142310%_ '())))))
            (if (macro-module-not-found-exception? _%exn142307%_)
                (macro-module-not-found-exception-procedure _%exn142307%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn142307%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn142301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142301%_))
            (let ((_%e142304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142301%_ 'exception))))
              (macro-multiple-c-return-exception? _%e142304%_))
            (macro-multiple-c-return-exception? _%exn142301%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn142297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142297%_))
            (let ((_%e142299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142297%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e142299%_))
            (macro-no-such-file-or-directory-exception? _%exn142297%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn142293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142293%_))
            (let ((_%e142295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142293%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e142295%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e142295%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e142295%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn142293%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn142293%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn142293%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn142287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142287%_))
            (let ((_%e142290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142287%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e142290%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e142290%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e142290%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn142287%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn142287%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn142287%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn142283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142283%_))
            (let ((_%e142285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142283%_ 'exception))))
              (macro-noncontinuable-exception? _%e142285%_))
            (macro-noncontinuable-exception? _%exn142283%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn142277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142277%_))
            (let ((_%e142280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142277%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e142280%_)
                  (macro-noncontinuable-exception-reason _%e142280%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e142280%_ '())))))
            (if (macro-noncontinuable-exception? _%exn142277%_)
                (macro-noncontinuable-exception-reason _%exn142277%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn142277%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn142273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142273%_))
            (let ((_%e142275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142273%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e142275%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn142273%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn142269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142269%_))
            (let ((_%e142271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142269%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e142271%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e142271%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e142271%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn142269%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn142269%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn142269%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn142263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142263%_))
            (let ((_%e142266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142263%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e142266%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e142266%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e142266%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn142263%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn142263%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn142263%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn142259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142259%_))
            (let ((_%e142261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142259%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e142261%_))
            (macro-nonprocedure-operator-exception? _%exn142259%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn142255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142255%_))
            (let ((_%e142257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142255%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142257%_)
                  (macro-nonprocedure-operator-exception-arguments _%e142257%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e142257%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142255%_)
                (macro-nonprocedure-operator-exception-arguments _%exn142255%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn142255%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn142251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142251%_))
            (let ((_%e142253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142251%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142253%_)
                  (macro-nonprocedure-operator-exception-code _%e142253%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e142253%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142251%_)
                (macro-nonprocedure-operator-exception-code _%exn142251%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn142251%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn142247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142247%_))
            (let ((_%e142249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142247%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142249%_)
                  (macro-nonprocedure-operator-exception-operator _%e142249%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e142249%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142247%_)
                (macro-nonprocedure-operator-exception-operator _%exn142247%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn142247%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn142241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142241%_))
            (let ((_%e142244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142241%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142244%_)
                  (macro-nonprocedure-operator-exception-rte _%e142244%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e142244%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142241%_)
                (macro-nonprocedure-operator-exception-rte _%exn142241%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn142241%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn142237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142237%_))
            (let ((_%e142239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142237%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e142239%_))
            (macro-not-in-compilation-context-exception? _%exn142237%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn142233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142233%_))
            (let ((_%e142235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142233%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e142235%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e142235%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e142235%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn142233%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn142233%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn142233%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn142227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142227%_))
            (let ((_%e142230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142227%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e142230%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e142230%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e142230%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn142227%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn142227%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn142227%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn142223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142223%_))
            (let ((_%e142225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142223%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e142225%_))
            (macro-number-of-arguments-limit-exception? _%exn142223%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn142219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142219%_))
            (let ((_%e142221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142219%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e142221%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e142221%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e142221%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn142219%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn142219%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn142219%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn142213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142213%_))
            (let ((_%e142216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142213%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e142216%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e142216%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e142216%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn142213%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn142213%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn142213%_ '())))))))
    (define os-exception?
      (lambda (_%exn142209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142209%_))
            (let ((_%e142211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142209%_ 'exception))))
              (macro-os-exception? _%e142211%_))
            (macro-os-exception? _%exn142209%_))))
    (define os-exception-arguments
      (lambda (_%exn142205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142205%_))
            (let ((_%e142207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142205%_ 'exception))))
              (if (macro-os-exception? _%e142207%_)
                  (macro-os-exception-arguments _%e142207%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e142207%_ '())))))
            (if (macro-os-exception? _%exn142205%_)
                (macro-os-exception-arguments _%exn142205%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn142205%_ '())))))))
    (define os-exception-code
      (lambda (_%exn142201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142201%_))
            (let ((_%e142203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142201%_ 'exception))))
              (if (macro-os-exception? _%e142203%_)
                  (macro-os-exception-code _%e142203%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e142203%_ '())))))
            (if (macro-os-exception? _%exn142201%_)
                (macro-os-exception-code _%exn142201%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn142201%_ '())))))))
    (define os-exception-message
      (lambda (_%exn142197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142197%_))
            (let ((_%e142199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142197%_ 'exception))))
              (if (macro-os-exception? _%e142199%_)
                  (macro-os-exception-message _%e142199%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e142199%_ '())))))
            (if (macro-os-exception? _%exn142197%_)
                (macro-os-exception-message _%exn142197%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn142197%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn142191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142191%_))
            (let ((_%e142194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142191%_ 'exception))))
              (if (macro-os-exception? _%e142194%_)
                  (macro-os-exception-procedure _%e142194%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e142194%_ '())))))
            (if (macro-os-exception? _%exn142191%_)
                (macro-os-exception-procedure _%exn142191%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn142191%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn142187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142187%_))
            (let ((_%e142189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142187%_ 'exception))))
              (macro-permission-denied-exception? _%e142189%_))
            (macro-permission-denied-exception? _%exn142187%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn142183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142183%_))
            (let ((_%e142185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142183%_ 'exception))))
              (if (macro-permission-denied-exception? _%e142185%_)
                  (macro-permission-denied-exception-arguments _%e142185%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e142185%_ '())))))
            (if (macro-permission-denied-exception? _%exn142183%_)
                (macro-permission-denied-exception-arguments _%exn142183%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn142183%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn142177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142177%_))
            (let ((_%e142180%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142177%_ 'exception))))
              (if (macro-permission-denied-exception? _%e142180%_)
                  (macro-permission-denied-exception-procedure _%e142180%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e142180%_ '())))))
            (if (macro-permission-denied-exception? _%exn142177%_)
                (macro-permission-denied-exception-procedure _%exn142177%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn142177%_ '())))))))
    (define range-exception?
      (lambda (_%exn142173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142173%_))
            (let ((_%e142175%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142173%_ 'exception))))
              (macro-range-exception? _%e142175%_))
            (macro-range-exception? _%exn142173%_))))
    (define range-exception-arg-id
      (lambda (_%exn142169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142169%_))
            (let ((_%e142171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142169%_ 'exception))))
              (if (macro-range-exception? _%e142171%_)
                  (macro-range-exception-arg-id _%e142171%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e142171%_ '())))))
            (if (macro-range-exception? _%exn142169%_)
                (macro-range-exception-arg-id _%exn142169%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn142169%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn142165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142165%_))
            (let ((_%e142167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142165%_ 'exception))))
              (if (macro-range-exception? _%e142167%_)
                  (macro-range-exception-arguments _%e142167%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e142167%_ '())))))
            (if (macro-range-exception? _%exn142165%_)
                (macro-range-exception-arguments _%exn142165%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn142165%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn142159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142159%_))
            (let ((_%e142162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142159%_ 'exception))))
              (if (macro-range-exception? _%e142162%_)
                  (macro-range-exception-procedure _%e142162%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e142162%_ '())))))
            (if (macro-range-exception? _%exn142159%_)
                (macro-range-exception-procedure _%exn142159%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn142159%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn142155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142155%_))
            (let ((_%e142157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142155%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e142157%_))
            (macro-rpc-remote-error-exception? _%exn142155%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn142151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142151%_))
            (let ((_%e142153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142151%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142153%_)
                  (macro-rpc-remote-error-exception-arguments _%e142153%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e142153%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142151%_)
                (macro-rpc-remote-error-exception-arguments _%exn142151%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn142151%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn142147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142147%_))
            (let ((_%e142149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142147%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142149%_)
                  (macro-rpc-remote-error-exception-message _%e142149%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e142149%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142147%_)
                (macro-rpc-remote-error-exception-message _%exn142147%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn142147%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn142141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142141%_))
            (let ((_%e142144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142141%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142144%_)
                  (macro-rpc-remote-error-exception-procedure _%e142144%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e142144%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142141%_)
                (macro-rpc-remote-error-exception-procedure _%exn142141%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn142141%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn142137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142137%_))
            (let ((_%e142139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142137%_ 'exception))))
              (macro-scheduler-exception? _%e142139%_))
            (macro-scheduler-exception? _%exn142137%_))))
    (define scheduler-exception-reason
      (lambda (_%exn142131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142131%_))
            (let ((_%e142134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142131%_ 'exception))))
              (if (macro-scheduler-exception? _%e142134%_)
                  (macro-scheduler-exception-reason _%e142134%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e142134%_ '())))))
            (if (macro-scheduler-exception? _%exn142131%_)
                (macro-scheduler-exception-reason _%exn142131%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn142131%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn142127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142127%_))
            (let ((_%e142129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142127%_ 'exception))))
              (macro-sfun-conversion-exception? _%e142129%_))
            (macro-sfun-conversion-exception? _%exn142127%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn142123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142123%_))
            (let ((_%e142125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142123%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142125%_)
                  (macro-sfun-conversion-exception-arguments _%e142125%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e142125%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142123%_)
                (macro-sfun-conversion-exception-arguments _%exn142123%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn142123%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn142119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142119%_))
            (let ((_%e142121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142119%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142121%_)
                  (macro-sfun-conversion-exception-code _%e142121%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e142121%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142119%_)
                (macro-sfun-conversion-exception-code _%exn142119%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn142119%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn142115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142115%_))
            (let ((_%e142117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142115%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142117%_)
                  (macro-sfun-conversion-exception-message _%e142117%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e142117%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142115%_)
                (macro-sfun-conversion-exception-message _%exn142115%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn142115%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn142109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142109%_))
            (let ((_%e142112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142109%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142112%_)
                  (macro-sfun-conversion-exception-procedure _%e142112%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e142112%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142109%_)
                (macro-sfun-conversion-exception-procedure _%exn142109%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn142109%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn142103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142103%_))
            (let ((_%e142106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142103%_ 'exception))))
              (macro-stack-overflow-exception? _%e142106%_))
            (macro-stack-overflow-exception? _%exn142103%_))))
    (define started-thread-exception?
      (lambda (_%exn142099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142099%_))
            (let ((_%e142101%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142099%_ 'exception))))
              (macro-started-thread-exception? _%e142101%_))
            (macro-started-thread-exception? _%exn142099%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn142095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142095%_))
            (let ((_%e142097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142095%_ 'exception))))
              (if (macro-started-thread-exception? _%e142097%_)
                  (macro-started-thread-exception-arguments _%e142097%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e142097%_ '())))))
            (if (macro-started-thread-exception? _%exn142095%_)
                (macro-started-thread-exception-arguments _%exn142095%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn142095%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn142089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142089%_))
            (let ((_%e142092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142089%_ 'exception))))
              (if (macro-started-thread-exception? _%e142092%_)
                  (macro-started-thread-exception-procedure _%e142092%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e142092%_ '())))))
            (if (macro-started-thread-exception? _%exn142089%_)
                (macro-started-thread-exception-procedure _%exn142089%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn142089%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn142085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142085%_))
            (let ((_%e142087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142085%_ 'exception))))
              (macro-terminated-thread-exception? _%e142087%_))
            (macro-terminated-thread-exception? _%exn142085%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn142081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142081%_))
            (let ((_%e142083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142081%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e142083%_)
                  (macro-terminated-thread-exception-arguments _%e142083%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e142083%_ '())))))
            (if (macro-terminated-thread-exception? _%exn142081%_)
                (macro-terminated-thread-exception-arguments _%exn142081%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn142081%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn142075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142075%_))
            (let ((_%e142078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142075%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e142078%_)
                  (macro-terminated-thread-exception-procedure _%e142078%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e142078%_ '())))))
            (if (macro-terminated-thread-exception? _%exn142075%_)
                (macro-terminated-thread-exception-procedure _%exn142075%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn142075%_ '())))))))
    (define type-exception?
      (lambda (_%exn142071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142071%_))
            (let ((_%e142073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142071%_ 'exception))))
              (macro-type-exception? _%e142073%_))
            (macro-type-exception? _%exn142071%_))))
    (define type-exception-arg-id
      (lambda (_%exn142067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142067%_))
            (let ((_%e142069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142067%_ 'exception))))
              (if (macro-type-exception? _%e142069%_)
                  (macro-type-exception-arg-id _%e142069%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e142069%_ '())))))
            (if (macro-type-exception? _%exn142067%_)
                (macro-type-exception-arg-id _%exn142067%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn142067%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn142063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142063%_))
            (let ((_%e142065%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142063%_ 'exception))))
              (if (macro-type-exception? _%e142065%_)
                  (macro-type-exception-arguments _%e142065%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e142065%_ '())))))
            (if (macro-type-exception? _%exn142063%_)
                (macro-type-exception-arguments _%exn142063%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn142063%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn142059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142059%_))
            (let ((_%e142061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142059%_ 'exception))))
              (if (macro-type-exception? _%e142061%_)
                  (macro-type-exception-procedure _%e142061%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e142061%_ '())))))
            (if (macro-type-exception? _%exn142059%_)
                (macro-type-exception-procedure _%exn142059%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn142059%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn142053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142053%_))
            (let ((_%e142056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142053%_ 'exception))))
              (if (macro-type-exception? _%e142056%_)
                  (macro-type-exception-type-id _%e142056%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e142056%_ '())))))
            (if (macro-type-exception? _%exn142053%_)
                (macro-type-exception-type-id _%exn142053%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn142053%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn142049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142049%_))
            (let ((_%e142051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142049%_ 'exception))))
              (macro-unbound-global-exception? _%e142051%_))
            (macro-unbound-global-exception? _%exn142049%_))))
    (define unbound-global-exception-code
      (lambda (_%exn142045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142045%_))
            (let ((_%e142047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142045%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142047%_)
                  (macro-unbound-global-exception-code _%e142047%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e142047%_ '())))))
            (if (macro-unbound-global-exception? _%exn142045%_)
                (macro-unbound-global-exception-code _%exn142045%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn142045%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn142041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142041%_))
            (let ((_%e142043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142041%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142043%_)
                  (macro-unbound-global-exception-rte _%e142043%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e142043%_ '())))))
            (if (macro-unbound-global-exception? _%exn142041%_)
                (macro-unbound-global-exception-rte _%exn142041%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn142041%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn142035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142035%_))
            (let ((_%e142038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142035%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142038%_)
                  (macro-unbound-global-exception-variable _%e142038%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e142038%_ '())))))
            (if (macro-unbound-global-exception? _%exn142035%_)
                (macro-unbound-global-exception-variable _%exn142035%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn142035%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn142031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142031%_))
            (let ((_%e142033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142031%_ 'exception))))
              (macro-unbound-key-exception? _%e142033%_))
            (macro-unbound-key-exception? _%exn142031%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn142027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142027%_))
            (let ((_%e142029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142027%_ 'exception))))
              (if (macro-unbound-key-exception? _%e142029%_)
                  (macro-unbound-key-exception-arguments _%e142029%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e142029%_ '())))))
            (if (macro-unbound-key-exception? _%exn142027%_)
                (macro-unbound-key-exception-arguments _%exn142027%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn142027%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn142021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142021%_))
            (let ((_%e142024%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142021%_ 'exception))))
              (if (macro-unbound-key-exception? _%e142024%_)
                  (macro-unbound-key-exception-procedure _%e142024%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e142024%_ '())))))
            (if (macro-unbound-key-exception? _%exn142021%_)
                (macro-unbound-key-exception-procedure _%exn142021%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn142021%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn142017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142017%_))
            (let ((_%e142019%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142017%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e142019%_))
            (macro-unbound-os-environment-variable-exception? _%exn142017%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn142013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142013%_))
            (let ((_%e142015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142013%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e142015%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e142015%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e142015%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn142013%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn142013%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn142013%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn142007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142007%_))
            (let ((_%e142010%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142007%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e142010%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e142010%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e142010%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn142007%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn142007%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn142007%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn142003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142003%_))
            (let ((_%e142005%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142003%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e142005%_))
            (macro-unbound-serial-number-exception? _%exn142003%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn141999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141999%_))
            (let ((_%e142001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141999%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e142001%_)
                  (macro-unbound-serial-number-exception-arguments _%e142001%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e142001%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141999%_)
                (macro-unbound-serial-number-exception-arguments _%exn141999%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn141999%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn141993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141993%_))
            (let ((_%e141996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141993%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141996%_)
                  (macro-unbound-serial-number-exception-procedure _%e141996%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e141996%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141993%_)
                (macro-unbound-serial-number-exception-procedure _%exn141993%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn141993%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn141989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141989%_))
            (let ((_%e141991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141989%_ 'exception))))
              (macro-uncaught-exception? _%e141991%_))
            (macro-uncaught-exception? _%exn141989%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn141985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141985%_))
            (let ((_%e141987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141985%_ 'exception))))
              (if (macro-uncaught-exception? _%e141987%_)
                  (macro-uncaught-exception-arguments _%e141987%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e141987%_ '())))))
            (if (macro-uncaught-exception? _%exn141985%_)
                (macro-uncaught-exception-arguments _%exn141985%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn141985%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn141981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141981%_))
            (let ((_%e141983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141981%_ 'exception))))
              (if (macro-uncaught-exception? _%e141983%_)
                  (macro-uncaught-exception-procedure _%e141983%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e141983%_ '())))))
            (if (macro-uncaught-exception? _%exn141981%_)
                (macro-uncaught-exception-procedure _%exn141981%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn141981%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn141975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141975%_))
            (let ((_%e141978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141975%_ 'exception))))
              (if (macro-uncaught-exception? _%e141978%_)
                  (macro-uncaught-exception-reason _%e141978%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e141978%_ '())))))
            (if (macro-uncaught-exception? _%exn141975%_)
                (macro-uncaught-exception-reason _%exn141975%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn141975%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn141971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141971%_))
            (let ((_%e141973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141971%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e141973%_))
            (macro-uninitialized-thread-exception? _%exn141971%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn141967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141967%_))
            (let ((_%e141969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141967%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141969%_)
                  (macro-uninitialized-thread-exception-arguments _%e141969%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e141969%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141967%_)
                (macro-uninitialized-thread-exception-arguments _%exn141967%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn141967%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn141961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141961%_))
            (let ((_%e141964%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141961%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141964%_)
                  (macro-uninitialized-thread-exception-procedure _%e141964%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e141964%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141961%_)
                (macro-uninitialized-thread-exception-procedure _%exn141961%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn141961%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn141957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141957%_))
            (let ((_%e141959%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141957%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e141959%_))
            (macro-unknown-keyword-argument-exception? _%exn141957%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn141953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141953%_))
            (let ((_%e141955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141953%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141955%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e141955%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e141955%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141953%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn141953%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn141953%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn141947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141947%_))
            (let ((_%e141950%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141947%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141950%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e141950%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e141950%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141947%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn141947%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn141947%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn141943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141943%_))
            (let ((_%e141945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141943%_ 'exception))))
              (macro-unterminated-process-exception? _%e141945%_))
            (macro-unterminated-process-exception? _%exn141943%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn141939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141939%_))
            (let ((_%e141941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141939%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141941%_)
                  (macro-unterminated-process-exception-arguments _%e141941%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e141941%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141939%_)
                (macro-unterminated-process-exception-arguments _%exn141939%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn141939%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn141933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141933%_))
            (let ((_%e141936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141933%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141936%_)
                  (macro-unterminated-process-exception-procedure _%e141936%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e141936%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141933%_)
                (macro-unterminated-process-exception-procedure _%exn141933%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn141933%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn141929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141929%_))
            (let ((_%e141931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141929%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e141931%_))
            (macro-wrong-number-of-arguments-exception? _%exn141929%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn141925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141925%_))
            (let ((_%e141927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141925%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141927%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e141927%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e141927%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141925%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn141925%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn141925%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn141919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141919%_))
            (let ((_%e141922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141919%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141922%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e141922%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e141922%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141919%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn141919%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn141919%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn141915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141915%_))
            (let ((_%e141917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141915%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e141917%_))
            (macro-wrong-number-of-values-exception? _%exn141915%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn141911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141911%_))
            (let ((_%e141913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141911%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141913%_)
                  (macro-wrong-number-of-values-exception-code _%e141913%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e141913%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141911%_)
                (macro-wrong-number-of-values-exception-code _%exn141911%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn141911%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn141907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141907%_))
            (let ((_%e141909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141907%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141909%_)
                  (macro-wrong-number-of-values-exception-rte _%e141909%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e141909%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141907%_)
                (macro-wrong-number-of-values-exception-rte _%exn141907%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn141907%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn141901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141901%_))
            (let ((_%e141904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141901%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141904%_)
                  (macro-wrong-number-of-values-exception-vals _%e141904%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e141904%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141901%_)
                (macro-wrong-number-of-values-exception-vals _%exn141901%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn141901%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn141895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141895%_))
            (let ((_%e141898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141895%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e141898%_))
            (macro-wrong-processor-c-return-exception? _%exn141895%_))))))
