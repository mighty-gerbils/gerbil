(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1755903075)
  (begin
    (define Exception::t
      (let ((__tmp108339 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp108339
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args108309%_
        (apply make-instance Exception::t _%$args108309%_)))
    (define StackTrace::t
      (let ((__tmp108340 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp108340
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args108306%_
        (apply make-instance StackTrace::t _%$args108306%_)))
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
      (let ((__tmp108341 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp108341
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args108303%_ (apply make-instance Error::t _%$args108303%_)))
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
      (let ((__tmp108342 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp108342
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args108300%_
        (apply make-instance ContractViolation::t _%$args108300%_)))
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
      (let ((__tmp108343 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp108343
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args108297%_
        (apply make-instance RuntimeException::t _%$args108297%_)))
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
      (lambda (_%exn108292%_ _%continue108293%_)
        (let ((_%exn108295%_ (wrap-runtime-exception _%exn108292%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn108295%_ _%continue108293%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn108288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn108288%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn108288%_ 'continuation))
                '#!void
                (let ((__tmp108344
                       (lambda (_%cont108290%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn108288%_
                            'continuation
                            _%cont108290%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp108344)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn108288%_))))
    (define error
      (lambda (_%message108285%_ . _%irritants108286%_)
        (raise (let ((__obj108336
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj108336
                  _%message108285%_
                  'irritants:
                  _%irritants108286%_)
                 __obj108336))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords108257%_
               _%ctx108252108258%_
               _%contract-expr108253108260%_
               _%value108254108262%_
               _%message108264%_)
        (let* ((_%ctx108266%_
                (if (eq? _%ctx108252108258%_ absent-value)
                    '#f
                    _%ctx108252108258%_))
               (_%contract-expr108268%_
                (if (eq? _%contract-expr108253108260%_ absent-value)
                    '#f
                    _%contract-expr108253108260%_))
               (_%value108270%_
                (if (eq? _%value108254108262%_ absent-value)
                    '#f
                    _%value108254108262%_)))
          (raise (let ((__obj108337
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj108337
                    _%message108264%_
                    'where:
                    _%ctx108266%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr108268%_
                                (cons 'value: (cons _%value108270%_ '())))))
                   __obj108337)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords108275%_ . _%args108276%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords108275%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108275%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108275%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords108275%_
                  'value:
                  absent-value))
               _%args108276%_)))
    (define __raise-contract-violation-error
      (lambda _%args108255108282%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args108255108282%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler108226%_ _%thunk108227%_)
        (if (procedure? _%handler108226%_)
            (let ((_%handler108231%_ _%handler108226%_))
              (if (procedure? _%thunk108227%_)
                  (let ((_%thunk108241%_ _%thunk108227%_))
                    (__with-exception-handler
                     _%handler108231%_
                     _%thunk108241%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk108227%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler108226%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler108201%_ _%thunk108202%_)
        (let* ((_%handler108205%_ _%handler108201%_)
               (_%thunk108213%_ _%thunk108202%_)
               (__tmp108345
                (lambda (_%exn108222%_)
                  (let ((_%exn108224%_ (wrap-runtime-exception _%exn108222%_)))
                    (declare (not safe))
                    (_%handler108205%_ _%exn108224%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp108345 _%thunk108213%_))))
    (define with-catch
      (lambda (_%handler108176%_ _%thunk108177%_)
        (if (procedure? _%handler108176%_)
            (let ((_%handler108181%_ _%handler108176%_))
              (if (procedure? _%thunk108177%_)
                  (let ((_%thunk108191%_ _%thunk108177%_))
                    (__with-catch _%handler108181%_ _%thunk108191%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk108177%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler108176%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler108151%_ _%thunk108152%_)
        (let* ((_%handler108155%_ _%handler108151%_)
               (_%thunk108163%_ _%thunk108152%_)
               (__tmp108346
                (lambda (_%cont108172%_)
                  (__with-exception-handler
                   (lambda (_%exn108174%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont108172%_
                        _%handler108155%_
                        _%exn108174%_)))
                   _%thunk108163%_))))
          (declare (not safe))
          (##continuation-capture __tmp108346))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn108138%_)
        (if (or (heap-overflow-exception? _%exn108138%_)
                (stack-overflow-exception? _%exn108138%_))
            _%exn108138%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn108138%_))
                _%exn108138%_
                (if (macro-exception? _%exn108138%_)
                    (let ((_%rte108146%_
                           (let ((__obj108338
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj108338
                                _%exn108138%_
                                '2
                                '#f
                                '#f))
                             __obj108338)))
                      (let ((__tmp108347
                             (lambda (_%cont108148%_)
                               (let ((__tmp108348
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont108148%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte108146%_
                                  'continuation
                                  __tmp108348)))))
                        (declare (not safe))
                        (##continuation-capture __tmp108347))
                      _%rte108146%_)
                    _%exn108138%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj108133%_)
        (let ((_%$e108135%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj108133%_))))
          (if _%$e108135%_ _%$e108135%_ (error-exception? _%obj108133%_)))))
    (define error-message
      (lambda (_%obj108126%_)
        (let ((_%$e108128%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj108126%_ 'message false))))
          (if _%$e108128%_
              _%$e108128%_
              (if (error-exception? _%obj108126%_)
                  (error-exception-message _%obj108126%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj108121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj108121%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj108121%_ 'irritants))
            (if (error-exception? _%obj108121%_)
                (error-exception-parameters _%obj108121%_)
                '#f))))
    (define error-trace
      (lambda (_%obj108119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj108119%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj108119%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e108100%_ _%port108101%_)
        (let ((_%$e108103%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e108100%_ 'display-exception))))
          (if _%$e108103%_
              ((lambda (_%f108106%_) (_%f108106%_ _%e108100%_ _%port108101%_))
               _%$e108103%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e108100%_ _%port108101%_))))))
    (define display-exception__0
      (lambda (_%e108112%_)
        (let ((_%port108114%_ (current-error-port)))
          (display-exception__% _%e108112%_ _%port108114%_))))
    (define display-exception
      (lambda _g108349_
        (let ((_g108350_ (let () (declare (not safe)) (##length _g108349_))))
          (cond ((let () (declare (not safe)) (##fx= _g108350_ 1))
                 (apply display-exception__0 _g108349_))
                ((let () (declare (not safe)) (##fx= _g108350_ 2))
                 (apply display-exception__% _g108349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g108349_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self106469108076%_ _%message108078%_ . _%rest108079%_)
        (let* ((_%self108081%_ _%self106469108076%_)
               (_%self108083%_ _%self108081%_)
               (_%message108097%_
                (if (string? _%message108078%_)
                    _%message108078%_
                    (call-with-output-string
                     '""
                     (lambda (_%g108092108094%_)
                       (display _%message108078%_ _%g108092108094%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self108083%_ 'message _%message108097%_))
          (apply class-instance-init! _%self108083%_ _%rest108079%_))))
    (define Error:::init!::specialize
      (lambda (__klass108311 __method-table108312)
        (let ((__message108313
               (let ((__slot108314
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108311 'message))))
                 (if __slot108314
                     __slot108314
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self106469108076%_ _%message108078%_ . _%rest108079%_)
            (let* ((_%self108081%_ _%self106469108076%_)
                   (_%self108083%_ _%self108081%_)
                   (_%message108097%_
                    (if (string? _%message108078%_)
                        _%message108078%_
                        (call-with-output-string
                         '""
                         (lambda (_%g108092108094%_)
                           (display _%message108078%_ _%g108092108094%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self108083%_
                 _%message108097%_
                 __message108313
                 '#f
                 '#f))
              (apply class-instance-init! _%self108083%_ _%rest108079%_))))))
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
      (lambda (_%self106470107798%_ _%port107800%_)
        (let* ((_%self107802%_ _%self106470107798%_)
               (_%self107804%_ _%self107802%_))
          (let ((_%tmp-port107814%_ (open-output-string))
                (_%display-error-newline107815%_
                 (> (output-port-column _%port107800%_) '0)))
            (fix-port-width! _%tmp-port107814%_)
            (let ((__tmp108351
                   (lambda ()
                     (if _%display-error-newline107815%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e107818%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self107804%_ 'where))))
                       (if _%$e107818%_ (display _%$e107818%_) (display '"?")))
                     (let ((__tmp108352
                            (let ((__tmp108353
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self107804%_))))
                              (declare (not safe))
                              (##type-name __tmp108353))))
                       (declare (not safe))
                       (display* '" [" __tmp108352 '"]: "))
                     (let ((__tmp108354
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self107804%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp108354))
                     (let ((_%irritants107822%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self107804%_ 'irritants))))
                       (if (null? _%irritants107822%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj107824%_)
                                (if (u8vector? _%obj107824%_)
                                    (let ((__tmp108355
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj107824%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp108355))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj107824%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants107822%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont107825107827%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self107804%_
                                   'continuation))))
                           (if _%cont107825107827%_
                               (let ((_%cont107830%_ _%cont107825107827%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont107830%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp108351
               current-output-port
               _%tmp-port107814%_))
            (let ((__tmp108356 (get-output-string _%tmp-port107814%_)))
              (declare (not safe))
              (##write-string __tmp108356 _%port107800%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass108315 __method-table108316)
        (let ((__continuation108317
               (let ((__slot108321
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108315 'continuation))))
                 (if __slot108321
                     __slot108321
                     (error '"Unknown slot" 'continuation))))
              (__message108318
               (let ((__slot108322
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108315 'message))))
                 (if __slot108322
                     __slot108322
                     (error '"Unknown slot" 'message))))
              (__irritants108319
               (let ((__slot108323
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108315 'irritants))))
                 (if __slot108323
                     __slot108323
                     (error '"Unknown slot" 'irritants))))
              (__where108320
               (let ((__slot108324
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108315 'where))))
                 (if __slot108324
                     __slot108324
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self106470107798%_ _%port107800%_)
            (let* ((_%self107802%_ _%self106470107798%_)
                   (_%self107804%_ _%self107802%_))
              (let ((_%tmp-port107814%_ (open-output-string))
                    (_%display-error-newline107815%_
                     (> (output-port-column _%port107800%_) '0)))
                (fix-port-width! _%tmp-port107814%_)
                (let ((__tmp108357
                       (lambda ()
                         (if _%display-error-newline107815%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e107818%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self107804%_
                                   __where108320
                                   '#f
                                   '#f))))
                           (if _%$e107818%_
                               (display _%$e107818%_)
                               (display '"?")))
                         (let ((__tmp108358
                                (let ((__tmp108359
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self107804%_))))
                                  (declare (not safe))
                                  (##type-name __tmp108359))))
                           (declare (not safe))
                           (display* '" [" __tmp108358 '"]: "))
                         (let ((__tmp108360
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self107804%_
                                   __message108318
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp108360))
                         (let ((_%irritants107822%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self107804%_
                                   __irritants108319
                                   '#f
                                   '#f))))
                           (if (null? _%irritants107822%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj107824%_)
                                    (if (u8vector? _%obj107824%_)
                                        (let ((__tmp108361
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj107824%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp108361))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj107824%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants107822%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont107825107827%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self107804%_
                                       __continuation108317
                                       '#f
                                       '#f))))
                               (if _%cont107825107827%_
                                   (let ((_%cont107830%_ _%cont107825107827%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont107830%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp108357
                   current-output-port
                   _%tmp-port107814%_))
                (let ((__tmp108362 (get-output-string _%tmp-port107814%_)))
                  (declare (not safe))
                  (##write-string __tmp108362 _%port107800%_))))))))
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
      (lambda (_%self106471107652%_ _%port107654%_)
        (let* ((_%self107656%_ _%self106471107652%_)
               (_%self107658%_ _%self107656%_)
               (_%tmp-port107668%_ (open-output-string)))
          (fix-port-width! _%tmp-port107668%_)
          (let ((__tmp108363
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self107658%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp108363 _%tmp-port107668%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont107669107671%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self107658%_ 'continuation))))
                (if _%cont107669107671%_
                    (let ((_%cont107674%_ _%cont107669107671%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port107668%_)
                      (newline _%tmp-port107668%_)
                      (display-continuation-backtrace
                       _%cont107674%_
                       _%tmp-port107668%_))
                    '#f))
              '#!void)
          (let ((__tmp108364 (get-output-string _%tmp-port107668%_)))
            (declare (not safe))
            (##write-string __tmp108364 _%port107654%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass108325 __method-table108326)
        (let ((__continuation108327
               (let ((__slot108329
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108325 'continuation))))
                 (if __slot108329
                     __slot108329
                     (error '"Unknown slot" 'continuation))))
              (__exception108328
               (let ((__slot108330
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass108325 'exception))))
                 (if __slot108330
                     __slot108330
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self106471107652%_ _%port107654%_)
            (let* ((_%self107656%_ _%self106471107652%_)
                   (_%self107658%_ _%self107656%_)
                   (_%tmp-port107668%_ (open-output-string)))
              (fix-port-width! _%tmp-port107668%_)
              (let ((__tmp108365
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self107658%_
                        __exception108328
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp108365 _%tmp-port107668%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont107669107671%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self107658%_
                            __continuation108327
                            '#f
                            '#f))))
                    (if _%cont107669107671%_
                        (let ((_%cont107674%_ _%cont107669107671%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port107668%_)
                          (newline _%tmp-port107668%_)
                          (display-continuation-backtrace
                           _%cont107674%_
                           _%tmp-port107668%_))
                        '#f))
                  '#!void)
              (let ((__tmp108366 (get-output-string _%tmp-port107668%_)))
                (declare (not safe))
                (##write-string __tmp108366 _%port107654%_)))))))
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
      (lambda (_%port107524%_)
        (if (macro-character-port? _%port107524%_)
            (let ((_%old-width107526%_
                   (macro-character-port-output-width _%port107524%_)))
              (macro-character-port-output-width-set!
               _%port107524%_
               (lambda (_%port107528%_) '256))
              _%old-width107526%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port107521%_ _%old-width107522%_)
        (if (macro-character-port? _%port107521%_)
            (macro-character-port-output-width-set!
             _%port107521%_
             _%old-width107522%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e107519%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e107519%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn107513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107513%_))
            (let ((_%e107516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107513%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e107516%_))
            (macro-abandoned-mutex-exception? _%exn107513%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn107509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107509%_))
            (let ((_%e107511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107509%_ 'exception))))
              (macro-cfun-conversion-exception? _%e107511%_))
            (macro-cfun-conversion-exception? _%exn107509%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn107505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107505%_))
            (let ((_%e107507%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107505%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e107507%_)
                  (macro-cfun-conversion-exception-arguments _%e107507%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e107507%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn107505%_)
                (macro-cfun-conversion-exception-arguments _%exn107505%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn107505%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn107501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107501%_))
            (let ((_%e107503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107501%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e107503%_)
                  (macro-cfun-conversion-exception-code _%e107503%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e107503%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn107501%_)
                (macro-cfun-conversion-exception-code _%exn107501%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn107501%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn107497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107497%_))
            (let ((_%e107499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107497%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e107499%_)
                  (macro-cfun-conversion-exception-message _%e107499%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e107499%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn107497%_)
                (macro-cfun-conversion-exception-message _%exn107497%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn107497%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn107491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107491%_))
            (let ((_%e107494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107491%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e107494%_)
                  (macro-cfun-conversion-exception-procedure _%e107494%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e107494%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn107491%_)
                (macro-cfun-conversion-exception-procedure _%exn107491%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn107491%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn107487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107487%_))
            (let ((_%e107489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107487%_ 'exception))))
              (macro-datum-parsing-exception? _%e107489%_))
            (macro-datum-parsing-exception? _%exn107487%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn107483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107483%_))
            (let ((_%e107485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107483%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e107485%_)
                  (macro-datum-parsing-exception-kind _%e107485%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e107485%_ '())))))
            (if (macro-datum-parsing-exception? _%exn107483%_)
                (macro-datum-parsing-exception-kind _%exn107483%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn107483%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn107479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107479%_))
            (let ((_%e107481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107479%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e107481%_)
                  (macro-datum-parsing-exception-parameters _%e107481%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e107481%_ '())))))
            (if (macro-datum-parsing-exception? _%exn107479%_)
                (macro-datum-parsing-exception-parameters _%exn107479%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn107479%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn107473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107473%_))
            (let ((_%e107476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107473%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e107476%_)
                  (macro-datum-parsing-exception-readenv _%e107476%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e107476%_ '())))))
            (if (macro-datum-parsing-exception? _%exn107473%_)
                (macro-datum-parsing-exception-readenv _%exn107473%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn107473%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn107467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107467%_))
            (let ((_%e107470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107467%_ 'exception))))
              (macro-deadlock-exception? _%e107470%_))
            (macro-deadlock-exception? _%exn107467%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn107463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107463%_))
            (let ((_%e107465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107463%_ 'exception))))
              (macro-divide-by-zero-exception? _%e107465%_))
            (macro-divide-by-zero-exception? _%exn107463%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn107459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107459%_))
            (let ((_%e107461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107459%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e107461%_)
                  (macro-divide-by-zero-exception-arguments _%e107461%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e107461%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn107459%_)
                (macro-divide-by-zero-exception-arguments _%exn107459%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn107459%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn107453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107453%_))
            (let ((_%e107456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107453%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e107456%_)
                  (macro-divide-by-zero-exception-procedure _%e107456%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e107456%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn107453%_)
                (macro-divide-by-zero-exception-procedure _%exn107453%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn107453%_ '())))))))
    (define error-exception?
      (lambda (_%exn107449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107449%_))
            (let ((_%e107451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107449%_ 'exception))))
              (macro-error-exception? _%e107451%_))
            (macro-error-exception? _%exn107449%_))))
    (define error-exception-message
      (lambda (_%exn107445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107445%_))
            (let ((_%e107447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107445%_ 'exception))))
              (if (macro-error-exception? _%e107447%_)
                  (macro-error-exception-message _%e107447%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e107447%_ '())))))
            (if (macro-error-exception? _%exn107445%_)
                (macro-error-exception-message _%exn107445%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn107445%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn107439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107439%_))
            (let ((_%e107442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107439%_ 'exception))))
              (if (macro-error-exception? _%e107442%_)
                  (macro-error-exception-parameters _%e107442%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e107442%_ '())))))
            (if (macro-error-exception? _%exn107439%_)
                (macro-error-exception-parameters _%exn107439%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn107439%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn107435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107435%_))
            (let ((_%e107437%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107435%_ 'exception))))
              (macro-expression-parsing-exception? _%e107437%_))
            (macro-expression-parsing-exception? _%exn107435%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn107431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107431%_))
            (let ((_%e107433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107431%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e107433%_)
                  (macro-expression-parsing-exception-kind _%e107433%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e107433%_ '())))))
            (if (macro-expression-parsing-exception? _%exn107431%_)
                (macro-expression-parsing-exception-kind _%exn107431%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn107431%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn107427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107427%_))
            (let ((_%e107429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107427%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e107429%_)
                  (macro-expression-parsing-exception-parameters _%e107429%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e107429%_ '())))))
            (if (macro-expression-parsing-exception? _%exn107427%_)
                (macro-expression-parsing-exception-parameters _%exn107427%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn107427%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn107421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107421%_))
            (let ((_%e107424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107421%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e107424%_)
                  (macro-expression-parsing-exception-source _%e107424%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e107424%_ '())))))
            (if (macro-expression-parsing-exception? _%exn107421%_)
                (macro-expression-parsing-exception-source _%exn107421%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn107421%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn107417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107417%_))
            (let ((_%e107419%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107417%_ 'exception))))
              (macro-file-exists-exception? _%e107419%_))
            (macro-file-exists-exception? _%exn107417%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn107413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107413%_))
            (let ((_%e107415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107413%_ 'exception))))
              (if (macro-file-exists-exception? _%e107415%_)
                  (macro-file-exists-exception-arguments _%e107415%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e107415%_ '())))))
            (if (macro-file-exists-exception? _%exn107413%_)
                (macro-file-exists-exception-arguments _%exn107413%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn107413%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn107407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107407%_))
            (let ((_%e107410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107407%_ 'exception))))
              (if (macro-file-exists-exception? _%e107410%_)
                  (macro-file-exists-exception-procedure _%e107410%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e107410%_ '())))))
            (if (macro-file-exists-exception? _%exn107407%_)
                (macro-file-exists-exception-procedure _%exn107407%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn107407%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn107403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107403%_))
            (let ((_%e107405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107403%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e107405%_))
            (macro-fixnum-overflow-exception? _%exn107403%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn107399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107399%_))
            (let ((_%e107401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107399%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e107401%_)
                  (macro-fixnum-overflow-exception-arguments _%e107401%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e107401%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn107399%_)
                (macro-fixnum-overflow-exception-arguments _%exn107399%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn107399%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn107393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107393%_))
            (let ((_%e107396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107393%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e107396%_)
                  (macro-fixnum-overflow-exception-procedure _%e107396%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e107396%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn107393%_)
                (macro-fixnum-overflow-exception-procedure _%exn107393%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn107393%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn107387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107387%_))
            (let ((_%e107390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107387%_ 'exception))))
              (macro-heap-overflow-exception? _%e107390%_))
            (macro-heap-overflow-exception? _%exn107387%_))))
    (define inactive-thread-exception?
      (lambda (_%exn107383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107383%_))
            (let ((_%e107385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107383%_ 'exception))))
              (macro-inactive-thread-exception? _%e107385%_))
            (macro-inactive-thread-exception? _%exn107383%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn107379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107379%_))
            (let ((_%e107381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107379%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e107381%_)
                  (macro-inactive-thread-exception-arguments _%e107381%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e107381%_ '())))))
            (if (macro-inactive-thread-exception? _%exn107379%_)
                (macro-inactive-thread-exception-arguments _%exn107379%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn107379%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn107373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107373%_))
            (let ((_%e107376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107373%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e107376%_)
                  (macro-inactive-thread-exception-procedure _%e107376%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e107376%_ '())))))
            (if (macro-inactive-thread-exception? _%exn107373%_)
                (macro-inactive-thread-exception-procedure _%exn107373%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn107373%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn107369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107369%_))
            (let ((_%e107371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107369%_ 'exception))))
              (macro-initialized-thread-exception? _%e107371%_))
            (macro-initialized-thread-exception? _%exn107369%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn107365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107365%_))
            (let ((_%e107367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107365%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e107367%_)
                  (macro-initialized-thread-exception-arguments _%e107367%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e107367%_ '())))))
            (if (macro-initialized-thread-exception? _%exn107365%_)
                (macro-initialized-thread-exception-arguments _%exn107365%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn107365%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn107359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107359%_))
            (let ((_%e107362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107359%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e107362%_)
                  (macro-initialized-thread-exception-procedure _%e107362%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e107362%_ '())))))
            (if (macro-initialized-thread-exception? _%exn107359%_)
                (macro-initialized-thread-exception-procedure _%exn107359%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn107359%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn107355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107355%_))
            (let ((_%e107357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107355%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e107357%_))
            (macro-invalid-hash-number-exception? _%exn107355%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn107351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107351%_))
            (let ((_%e107353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107351%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e107353%_)
                  (macro-invalid-hash-number-exception-arguments _%e107353%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e107353%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn107351%_)
                (macro-invalid-hash-number-exception-arguments _%exn107351%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn107351%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn107345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107345%_))
            (let ((_%e107348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107345%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e107348%_)
                  (macro-invalid-hash-number-exception-procedure _%e107348%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e107348%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn107345%_)
                (macro-invalid-hash-number-exception-procedure _%exn107345%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn107345%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn107341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107341%_))
            (let ((_%e107343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107341%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e107343%_))
            (macro-invalid-utf8-encoding-exception? _%exn107341%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn107337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107337%_))
            (let ((_%e107339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107337%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e107339%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e107339%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e107339%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn107337%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn107337%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn107337%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn107331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107331%_))
            (let ((_%e107334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107331%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e107334%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e107334%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e107334%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn107331%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn107331%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn107331%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn107327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107327%_))
            (let ((_%e107329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107327%_ 'exception))))
              (macro-join-timeout-exception? _%e107329%_))
            (macro-join-timeout-exception? _%exn107327%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn107323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107323%_))
            (let ((_%e107325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107323%_ 'exception))))
              (if (macro-join-timeout-exception? _%e107325%_)
                  (macro-join-timeout-exception-arguments _%e107325%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e107325%_ '())))))
            (if (macro-join-timeout-exception? _%exn107323%_)
                (macro-join-timeout-exception-arguments _%exn107323%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn107323%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn107317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107317%_))
            (let ((_%e107320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107317%_ 'exception))))
              (if (macro-join-timeout-exception? _%e107320%_)
                  (macro-join-timeout-exception-procedure _%e107320%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e107320%_ '())))))
            (if (macro-join-timeout-exception? _%exn107317%_)
                (macro-join-timeout-exception-procedure _%exn107317%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn107317%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn107313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107313%_))
            (let ((_%e107315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107313%_ 'exception))))
              (macro-keyword-expected-exception? _%e107315%_))
            (macro-keyword-expected-exception? _%exn107313%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn107309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107309%_))
            (let ((_%e107311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107309%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e107311%_)
                  (macro-keyword-expected-exception-arguments _%e107311%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e107311%_ '())))))
            (if (macro-keyword-expected-exception? _%exn107309%_)
                (macro-keyword-expected-exception-arguments _%exn107309%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn107309%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn107303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107303%_))
            (let ((_%e107306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107303%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e107306%_)
                  (macro-keyword-expected-exception-procedure _%e107306%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e107306%_ '())))))
            (if (macro-keyword-expected-exception? _%exn107303%_)
                (macro-keyword-expected-exception-procedure _%exn107303%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn107303%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn107299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107299%_))
            (let ((_%e107301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107299%_ 'exception))))
              (macro-length-mismatch-exception? _%e107301%_))
            (macro-length-mismatch-exception? _%exn107299%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn107295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107295%_))
            (let ((_%e107297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107295%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e107297%_)
                  (macro-length-mismatch-exception-arg-id _%e107297%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e107297%_ '())))))
            (if (macro-length-mismatch-exception? _%exn107295%_)
                (macro-length-mismatch-exception-arg-id _%exn107295%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn107295%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn107291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107291%_))
            (let ((_%e107293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107291%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e107293%_)
                  (macro-length-mismatch-exception-arguments _%e107293%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e107293%_ '())))))
            (if (macro-length-mismatch-exception? _%exn107291%_)
                (macro-length-mismatch-exception-arguments _%exn107291%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn107291%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn107285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107285%_))
            (let ((_%e107288%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107285%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e107288%_)
                  (macro-length-mismatch-exception-procedure _%e107288%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e107288%_ '())))))
            (if (macro-length-mismatch-exception? _%exn107285%_)
                (macro-length-mismatch-exception-procedure _%exn107285%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn107285%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn107281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107281%_))
            (let ((_%e107283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107281%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e107283%_))
            (macro-mailbox-receive-timeout-exception? _%exn107281%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn107277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107277%_))
            (let ((_%e107279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107277%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e107279%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e107279%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e107279%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn107277%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn107277%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn107277%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn107271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107271%_))
            (let ((_%e107274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107271%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e107274%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e107274%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e107274%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn107271%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn107271%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn107271%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn107267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107267%_))
            (let ((_%e107269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107267%_ 'exception))))
              (macro-module-not-found-exception? _%e107269%_))
            (macro-module-not-found-exception? _%exn107267%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn107263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107263%_))
            (let ((_%e107265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107263%_ 'exception))))
              (if (macro-module-not-found-exception? _%e107265%_)
                  (macro-module-not-found-exception-arguments _%e107265%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e107265%_ '())))))
            (if (macro-module-not-found-exception? _%exn107263%_)
                (macro-module-not-found-exception-arguments _%exn107263%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn107263%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn107257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107257%_))
            (let ((_%e107260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107257%_ 'exception))))
              (if (macro-module-not-found-exception? _%e107260%_)
                  (macro-module-not-found-exception-procedure _%e107260%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e107260%_ '())))))
            (if (macro-module-not-found-exception? _%exn107257%_)
                (macro-module-not-found-exception-procedure _%exn107257%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn107257%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn107251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107251%_))
            (let ((_%e107254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107251%_ 'exception))))
              (macro-multiple-c-return-exception? _%e107254%_))
            (macro-multiple-c-return-exception? _%exn107251%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn107247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107247%_))
            (let ((_%e107249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107247%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e107249%_))
            (macro-no-such-file-or-directory-exception? _%exn107247%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn107243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107243%_))
            (let ((_%e107245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107243%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e107245%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e107245%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e107245%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn107243%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn107243%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn107243%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn107237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107237%_))
            (let ((_%e107240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107237%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e107240%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e107240%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e107240%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn107237%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn107237%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn107237%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn107233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107233%_))
            (let ((_%e107235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107233%_ 'exception))))
              (macro-noncontinuable-exception? _%e107235%_))
            (macro-noncontinuable-exception? _%exn107233%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn107227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107227%_))
            (let ((_%e107230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107227%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e107230%_)
                  (macro-noncontinuable-exception-reason _%e107230%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e107230%_ '())))))
            (if (macro-noncontinuable-exception? _%exn107227%_)
                (macro-noncontinuable-exception-reason _%exn107227%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn107227%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn107223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107223%_))
            (let ((_%e107225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107223%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e107225%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn107223%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn107219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107219%_))
            (let ((_%e107221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107219%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e107221%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e107221%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e107221%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn107219%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn107219%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn107219%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn107213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107213%_))
            (let ((_%e107216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107213%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e107216%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e107216%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e107216%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn107213%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn107213%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn107213%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn107209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107209%_))
            (let ((_%e107211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107209%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e107211%_))
            (macro-nonprocedure-operator-exception? _%exn107209%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn107205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107205%_))
            (let ((_%e107207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107205%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e107207%_)
                  (macro-nonprocedure-operator-exception-arguments _%e107207%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e107207%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn107205%_)
                (macro-nonprocedure-operator-exception-arguments _%exn107205%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn107205%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn107201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107201%_))
            (let ((_%e107203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107201%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e107203%_)
                  (macro-nonprocedure-operator-exception-code _%e107203%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e107203%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn107201%_)
                (macro-nonprocedure-operator-exception-code _%exn107201%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn107201%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn107197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107197%_))
            (let ((_%e107199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107197%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e107199%_)
                  (macro-nonprocedure-operator-exception-operator _%e107199%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e107199%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn107197%_)
                (macro-nonprocedure-operator-exception-operator _%exn107197%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn107197%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn107191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107191%_))
            (let ((_%e107194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107191%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e107194%_)
                  (macro-nonprocedure-operator-exception-rte _%e107194%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e107194%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn107191%_)
                (macro-nonprocedure-operator-exception-rte _%exn107191%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn107191%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn107187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107187%_))
            (let ((_%e107189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107187%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e107189%_))
            (macro-not-in-compilation-context-exception? _%exn107187%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn107183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107183%_))
            (let ((_%e107185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107183%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e107185%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e107185%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e107185%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn107183%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn107183%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn107183%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn107177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107177%_))
            (let ((_%e107180%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107177%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e107180%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e107180%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e107180%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn107177%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn107177%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn107177%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn107173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107173%_))
            (let ((_%e107175%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107173%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e107175%_))
            (macro-number-of-arguments-limit-exception? _%exn107173%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn107169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107169%_))
            (let ((_%e107171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107169%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e107171%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e107171%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e107171%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn107169%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn107169%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn107169%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn107163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107163%_))
            (let ((_%e107166%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107163%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e107166%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e107166%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e107166%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn107163%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn107163%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn107163%_ '())))))))
    (define os-exception?
      (lambda (_%exn107159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107159%_))
            (let ((_%e107161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107159%_ 'exception))))
              (macro-os-exception? _%e107161%_))
            (macro-os-exception? _%exn107159%_))))
    (define os-exception-arguments
      (lambda (_%exn107155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107155%_))
            (let ((_%e107157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107155%_ 'exception))))
              (if (macro-os-exception? _%e107157%_)
                  (macro-os-exception-arguments _%e107157%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e107157%_ '())))))
            (if (macro-os-exception? _%exn107155%_)
                (macro-os-exception-arguments _%exn107155%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn107155%_ '())))))))
    (define os-exception-code
      (lambda (_%exn107151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107151%_))
            (let ((_%e107153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107151%_ 'exception))))
              (if (macro-os-exception? _%e107153%_)
                  (macro-os-exception-code _%e107153%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e107153%_ '())))))
            (if (macro-os-exception? _%exn107151%_)
                (macro-os-exception-code _%exn107151%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn107151%_ '())))))))
    (define os-exception-message
      (lambda (_%exn107147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107147%_))
            (let ((_%e107149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107147%_ 'exception))))
              (if (macro-os-exception? _%e107149%_)
                  (macro-os-exception-message _%e107149%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e107149%_ '())))))
            (if (macro-os-exception? _%exn107147%_)
                (macro-os-exception-message _%exn107147%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn107147%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn107141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107141%_))
            (let ((_%e107144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107141%_ 'exception))))
              (if (macro-os-exception? _%e107144%_)
                  (macro-os-exception-procedure _%e107144%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e107144%_ '())))))
            (if (macro-os-exception? _%exn107141%_)
                (macro-os-exception-procedure _%exn107141%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn107141%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn107137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107137%_))
            (let ((_%e107139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107137%_ 'exception))))
              (macro-permission-denied-exception? _%e107139%_))
            (macro-permission-denied-exception? _%exn107137%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn107133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107133%_))
            (let ((_%e107135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107133%_ 'exception))))
              (if (macro-permission-denied-exception? _%e107135%_)
                  (macro-permission-denied-exception-arguments _%e107135%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e107135%_ '())))))
            (if (macro-permission-denied-exception? _%exn107133%_)
                (macro-permission-denied-exception-arguments _%exn107133%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn107133%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn107127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107127%_))
            (let ((_%e107130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107127%_ 'exception))))
              (if (macro-permission-denied-exception? _%e107130%_)
                  (macro-permission-denied-exception-procedure _%e107130%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e107130%_ '())))))
            (if (macro-permission-denied-exception? _%exn107127%_)
                (macro-permission-denied-exception-procedure _%exn107127%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn107127%_ '())))))))
    (define range-exception?
      (lambda (_%exn107123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107123%_))
            (let ((_%e107125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107123%_ 'exception))))
              (macro-range-exception? _%e107125%_))
            (macro-range-exception? _%exn107123%_))))
    (define range-exception-arg-id
      (lambda (_%exn107119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107119%_))
            (let ((_%e107121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107119%_ 'exception))))
              (if (macro-range-exception? _%e107121%_)
                  (macro-range-exception-arg-id _%e107121%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e107121%_ '())))))
            (if (macro-range-exception? _%exn107119%_)
                (macro-range-exception-arg-id _%exn107119%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn107119%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn107115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107115%_))
            (let ((_%e107117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107115%_ 'exception))))
              (if (macro-range-exception? _%e107117%_)
                  (macro-range-exception-arguments _%e107117%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e107117%_ '())))))
            (if (macro-range-exception? _%exn107115%_)
                (macro-range-exception-arguments _%exn107115%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn107115%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn107109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107109%_))
            (let ((_%e107112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107109%_ 'exception))))
              (if (macro-range-exception? _%e107112%_)
                  (macro-range-exception-procedure _%e107112%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e107112%_ '())))))
            (if (macro-range-exception? _%exn107109%_)
                (macro-range-exception-procedure _%exn107109%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn107109%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn107105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107105%_))
            (let ((_%e107107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107105%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e107107%_))
            (macro-rpc-remote-error-exception? _%exn107105%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn107101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107101%_))
            (let ((_%e107103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107101%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e107103%_)
                  (macro-rpc-remote-error-exception-arguments _%e107103%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e107103%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn107101%_)
                (macro-rpc-remote-error-exception-arguments _%exn107101%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn107101%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn107097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107097%_))
            (let ((_%e107099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107097%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e107099%_)
                  (macro-rpc-remote-error-exception-message _%e107099%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e107099%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn107097%_)
                (macro-rpc-remote-error-exception-message _%exn107097%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn107097%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn107091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107091%_))
            (let ((_%e107094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107091%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e107094%_)
                  (macro-rpc-remote-error-exception-procedure _%e107094%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e107094%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn107091%_)
                (macro-rpc-remote-error-exception-procedure _%exn107091%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn107091%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn107087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107087%_))
            (let ((_%e107089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107087%_ 'exception))))
              (macro-scheduler-exception? _%e107089%_))
            (macro-scheduler-exception? _%exn107087%_))))
    (define scheduler-exception-reason
      (lambda (_%exn107081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107081%_))
            (let ((_%e107084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107081%_ 'exception))))
              (if (macro-scheduler-exception? _%e107084%_)
                  (macro-scheduler-exception-reason _%e107084%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e107084%_ '())))))
            (if (macro-scheduler-exception? _%exn107081%_)
                (macro-scheduler-exception-reason _%exn107081%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn107081%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn107077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107077%_))
            (let ((_%e107079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107077%_ 'exception))))
              (macro-sfun-conversion-exception? _%e107079%_))
            (macro-sfun-conversion-exception? _%exn107077%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn107073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107073%_))
            (let ((_%e107075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107073%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e107075%_)
                  (macro-sfun-conversion-exception-arguments _%e107075%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e107075%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn107073%_)
                (macro-sfun-conversion-exception-arguments _%exn107073%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn107073%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn107069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107069%_))
            (let ((_%e107071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107069%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e107071%_)
                  (macro-sfun-conversion-exception-code _%e107071%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e107071%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn107069%_)
                (macro-sfun-conversion-exception-code _%exn107069%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn107069%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn107065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107065%_))
            (let ((_%e107067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107065%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e107067%_)
                  (macro-sfun-conversion-exception-message _%e107067%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e107067%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn107065%_)
                (macro-sfun-conversion-exception-message _%exn107065%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn107065%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn107059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107059%_))
            (let ((_%e107062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107059%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e107062%_)
                  (macro-sfun-conversion-exception-procedure _%e107062%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e107062%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn107059%_)
                (macro-sfun-conversion-exception-procedure _%exn107059%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn107059%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn107053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107053%_))
            (let ((_%e107056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107053%_ 'exception))))
              (macro-stack-overflow-exception? _%e107056%_))
            (macro-stack-overflow-exception? _%exn107053%_))))
    (define started-thread-exception?
      (lambda (_%exn107049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107049%_))
            (let ((_%e107051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107049%_ 'exception))))
              (macro-started-thread-exception? _%e107051%_))
            (macro-started-thread-exception? _%exn107049%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn107045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107045%_))
            (let ((_%e107047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107045%_ 'exception))))
              (if (macro-started-thread-exception? _%e107047%_)
                  (macro-started-thread-exception-arguments _%e107047%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e107047%_ '())))))
            (if (macro-started-thread-exception? _%exn107045%_)
                (macro-started-thread-exception-arguments _%exn107045%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn107045%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn107039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107039%_))
            (let ((_%e107042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107039%_ 'exception))))
              (if (macro-started-thread-exception? _%e107042%_)
                  (macro-started-thread-exception-procedure _%e107042%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e107042%_ '())))))
            (if (macro-started-thread-exception? _%exn107039%_)
                (macro-started-thread-exception-procedure _%exn107039%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn107039%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn107035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107035%_))
            (let ((_%e107037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107035%_ 'exception))))
              (macro-terminated-thread-exception? _%e107037%_))
            (macro-terminated-thread-exception? _%exn107035%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn107031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107031%_))
            (let ((_%e107033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107031%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e107033%_)
                  (macro-terminated-thread-exception-arguments _%e107033%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e107033%_ '())))))
            (if (macro-terminated-thread-exception? _%exn107031%_)
                (macro-terminated-thread-exception-arguments _%exn107031%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn107031%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn107025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107025%_))
            (let ((_%e107028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107025%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e107028%_)
                  (macro-terminated-thread-exception-procedure _%e107028%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e107028%_ '())))))
            (if (macro-terminated-thread-exception? _%exn107025%_)
                (macro-terminated-thread-exception-procedure _%exn107025%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn107025%_ '())))))))
    (define type-exception?
      (lambda (_%exn107021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107021%_))
            (let ((_%e107023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107021%_ 'exception))))
              (macro-type-exception? _%e107023%_))
            (macro-type-exception? _%exn107021%_))))
    (define type-exception-arg-id
      (lambda (_%exn107017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107017%_))
            (let ((_%e107019%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107017%_ 'exception))))
              (if (macro-type-exception? _%e107019%_)
                  (macro-type-exception-arg-id _%e107019%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e107019%_ '())))))
            (if (macro-type-exception? _%exn107017%_)
                (macro-type-exception-arg-id _%exn107017%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn107017%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn107013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107013%_))
            (let ((_%e107015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107013%_ 'exception))))
              (if (macro-type-exception? _%e107015%_)
                  (macro-type-exception-arguments _%e107015%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e107015%_ '())))))
            (if (macro-type-exception? _%exn107013%_)
                (macro-type-exception-arguments _%exn107013%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn107013%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn107009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107009%_))
            (let ((_%e107011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107009%_ 'exception))))
              (if (macro-type-exception? _%e107011%_)
                  (macro-type-exception-procedure _%e107011%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e107011%_ '())))))
            (if (macro-type-exception? _%exn107009%_)
                (macro-type-exception-procedure _%exn107009%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn107009%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn107003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn107003%_))
            (let ((_%e107006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn107003%_ 'exception))))
              (if (macro-type-exception? _%e107006%_)
                  (macro-type-exception-type-id _%e107006%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e107006%_ '())))))
            (if (macro-type-exception? _%exn107003%_)
                (macro-type-exception-type-id _%exn107003%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn107003%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn106999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106999%_))
            (let ((_%e107001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106999%_ 'exception))))
              (macro-unbound-global-exception? _%e107001%_))
            (macro-unbound-global-exception? _%exn106999%_))))
    (define unbound-global-exception-code
      (lambda (_%exn106995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106995%_))
            (let ((_%e106997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106995%_ 'exception))))
              (if (macro-unbound-global-exception? _%e106997%_)
                  (macro-unbound-global-exception-code _%e106997%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e106997%_ '())))))
            (if (macro-unbound-global-exception? _%exn106995%_)
                (macro-unbound-global-exception-code _%exn106995%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn106995%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn106991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106991%_))
            (let ((_%e106993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106991%_ 'exception))))
              (if (macro-unbound-global-exception? _%e106993%_)
                  (macro-unbound-global-exception-rte _%e106993%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e106993%_ '())))))
            (if (macro-unbound-global-exception? _%exn106991%_)
                (macro-unbound-global-exception-rte _%exn106991%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn106991%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn106985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106985%_))
            (let ((_%e106988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106985%_ 'exception))))
              (if (macro-unbound-global-exception? _%e106988%_)
                  (macro-unbound-global-exception-variable _%e106988%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e106988%_ '())))))
            (if (macro-unbound-global-exception? _%exn106985%_)
                (macro-unbound-global-exception-variable _%exn106985%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn106985%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn106981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106981%_))
            (let ((_%e106983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106981%_ 'exception))))
              (macro-unbound-key-exception? _%e106983%_))
            (macro-unbound-key-exception? _%exn106981%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn106977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106977%_))
            (let ((_%e106979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106977%_ 'exception))))
              (if (macro-unbound-key-exception? _%e106979%_)
                  (macro-unbound-key-exception-arguments _%e106979%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e106979%_ '())))))
            (if (macro-unbound-key-exception? _%exn106977%_)
                (macro-unbound-key-exception-arguments _%exn106977%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn106977%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn106971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106971%_))
            (let ((_%e106974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106971%_ 'exception))))
              (if (macro-unbound-key-exception? _%e106974%_)
                  (macro-unbound-key-exception-procedure _%e106974%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e106974%_ '())))))
            (if (macro-unbound-key-exception? _%exn106971%_)
                (macro-unbound-key-exception-procedure _%exn106971%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn106971%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn106967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106967%_))
            (let ((_%e106969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106967%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e106969%_))
            (macro-unbound-os-environment-variable-exception? _%exn106967%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn106963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106963%_))
            (let ((_%e106965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106963%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e106965%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e106965%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e106965%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn106963%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn106963%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn106963%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn106957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106957%_))
            (let ((_%e106960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106957%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e106960%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e106960%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e106960%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn106957%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn106957%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn106957%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn106953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106953%_))
            (let ((_%e106955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106953%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e106955%_))
            (macro-unbound-serial-number-exception? _%exn106953%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn106949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106949%_))
            (let ((_%e106951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106949%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e106951%_)
                  (macro-unbound-serial-number-exception-arguments _%e106951%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e106951%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn106949%_)
                (macro-unbound-serial-number-exception-arguments _%exn106949%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn106949%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn106943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106943%_))
            (let ((_%e106946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106943%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e106946%_)
                  (macro-unbound-serial-number-exception-procedure _%e106946%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e106946%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn106943%_)
                (macro-unbound-serial-number-exception-procedure _%exn106943%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn106943%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn106939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106939%_))
            (let ((_%e106941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106939%_ 'exception))))
              (macro-uncaught-exception? _%e106941%_))
            (macro-uncaught-exception? _%exn106939%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn106935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106935%_))
            (let ((_%e106937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106935%_ 'exception))))
              (if (macro-uncaught-exception? _%e106937%_)
                  (macro-uncaught-exception-arguments _%e106937%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e106937%_ '())))))
            (if (macro-uncaught-exception? _%exn106935%_)
                (macro-uncaught-exception-arguments _%exn106935%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn106935%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn106931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106931%_))
            (let ((_%e106933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106931%_ 'exception))))
              (if (macro-uncaught-exception? _%e106933%_)
                  (macro-uncaught-exception-procedure _%e106933%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e106933%_ '())))))
            (if (macro-uncaught-exception? _%exn106931%_)
                (macro-uncaught-exception-procedure _%exn106931%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn106931%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn106925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106925%_))
            (let ((_%e106928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106925%_ 'exception))))
              (if (macro-uncaught-exception? _%e106928%_)
                  (macro-uncaught-exception-reason _%e106928%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e106928%_ '())))))
            (if (macro-uncaught-exception? _%exn106925%_)
                (macro-uncaught-exception-reason _%exn106925%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn106925%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn106921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106921%_))
            (let ((_%e106923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106921%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e106923%_))
            (macro-uninitialized-thread-exception? _%exn106921%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn106917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106917%_))
            (let ((_%e106919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106917%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e106919%_)
                  (macro-uninitialized-thread-exception-arguments _%e106919%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e106919%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn106917%_)
                (macro-uninitialized-thread-exception-arguments _%exn106917%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn106917%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn106911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106911%_))
            (let ((_%e106914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106911%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e106914%_)
                  (macro-uninitialized-thread-exception-procedure _%e106914%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e106914%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn106911%_)
                (macro-uninitialized-thread-exception-procedure _%exn106911%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn106911%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn106907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106907%_))
            (let ((_%e106909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106907%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e106909%_))
            (macro-unknown-keyword-argument-exception? _%exn106907%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn106903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106903%_))
            (let ((_%e106905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106903%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e106905%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e106905%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e106905%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn106903%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn106903%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn106903%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn106897%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106897%_))
            (let ((_%e106900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106897%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e106900%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e106900%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e106900%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn106897%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn106897%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn106897%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn106893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106893%_))
            (let ((_%e106895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106893%_ 'exception))))
              (macro-unterminated-process-exception? _%e106895%_))
            (macro-unterminated-process-exception? _%exn106893%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn106889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106889%_))
            (let ((_%e106891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106889%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e106891%_)
                  (macro-unterminated-process-exception-arguments _%e106891%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e106891%_ '())))))
            (if (macro-unterminated-process-exception? _%exn106889%_)
                (macro-unterminated-process-exception-arguments _%exn106889%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn106889%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn106883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106883%_))
            (let ((_%e106886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106883%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e106886%_)
                  (macro-unterminated-process-exception-procedure _%e106886%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e106886%_ '())))))
            (if (macro-unterminated-process-exception? _%exn106883%_)
                (macro-unterminated-process-exception-procedure _%exn106883%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn106883%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn106879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106879%_))
            (let ((_%e106881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106879%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e106881%_))
            (macro-wrong-number-of-arguments-exception? _%exn106879%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn106875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106875%_))
            (let ((_%e106877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106875%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e106877%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e106877%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e106877%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn106875%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn106875%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn106875%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn106869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106869%_))
            (let ((_%e106872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106869%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e106872%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e106872%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e106872%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn106869%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn106869%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn106869%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn106865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106865%_))
            (let ((_%e106867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106865%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e106867%_))
            (macro-wrong-number-of-values-exception? _%exn106865%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn106861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106861%_))
            (let ((_%e106863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106861%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e106863%_)
                  (macro-wrong-number-of-values-exception-code _%e106863%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e106863%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn106861%_)
                (macro-wrong-number-of-values-exception-code _%exn106861%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn106861%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn106857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106857%_))
            (let ((_%e106859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106857%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e106859%_)
                  (macro-wrong-number-of-values-exception-rte _%e106859%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e106859%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn106857%_)
                (macro-wrong-number-of-values-exception-rte _%exn106857%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn106857%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn106851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106851%_))
            (let ((_%e106854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106851%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e106854%_)
                  (macro-wrong-number-of-values-exception-vals _%e106854%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e106854%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn106851%_)
                (macro-wrong-number-of-values-exception-vals _%exn106851%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn106851%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn106845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn106845%_))
            (let ((_%e106848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn106845%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e106848%_))
            (macro-wrong-processor-c-return-exception? _%exn106845%_))))))
