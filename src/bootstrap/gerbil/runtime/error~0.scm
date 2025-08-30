(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1756224514)
  (begin
    (define Exception::t
      (let ((__tmp111391 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp111391
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args111361%_
        (apply make-instance Exception::t _%$args111361%_)))
    (define StackTrace::t
      (let ((__tmp111392 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp111392
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args111358%_
        (apply make-instance StackTrace::t _%$args111358%_)))
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
      (let ((__tmp111393 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp111393
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args111355%_ (apply make-instance Error::t _%$args111355%_)))
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
      (let ((__tmp111394 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp111394
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args111352%_
        (apply make-instance ContractViolation::t _%$args111352%_)))
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
      (let ((__tmp111395 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp111395
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args111349%_
        (apply make-instance RuntimeException::t _%$args111349%_)))
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
      (lambda (_%exn111344%_ _%continue111345%_)
        (let ((_%exn111347%_ (wrap-runtime-exception _%exn111344%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn111347%_ _%continue111345%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn111340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn111340%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn111340%_ 'continuation))
                '#!void
                (let ((__tmp111396
                       (lambda (_%cont111342%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn111340%_
                            'continuation
                            _%cont111342%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp111396)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn111340%_))))
    (define error
      (lambda (_%message111337%_ . _%irritants111338%_)
        (raise (let ((__obj111388
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj111388
                  _%message111337%_
                  'irritants:
                  _%irritants111338%_)
                 __obj111388))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords111309%_
               _%ctx111304111310%_
               _%contract-expr111305111312%_
               _%value111306111314%_
               _%message111316%_)
        (let* ((_%ctx111318%_
                (if (eq? _%ctx111304111310%_ absent-value)
                    '#f
                    _%ctx111304111310%_))
               (_%contract-expr111320%_
                (if (eq? _%contract-expr111305111312%_ absent-value)
                    '#f
                    _%contract-expr111305111312%_))
               (_%value111322%_
                (if (eq? _%value111306111314%_ absent-value)
                    '#f
                    _%value111306111314%_)))
          (raise (let ((__obj111389
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj111389
                    _%message111316%_
                    'where:
                    _%ctx111318%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr111320%_
                                (cons 'value: (cons _%value111322%_ '())))))
                   __obj111389)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords111327%_ . _%args111328%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords111327%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111327%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111327%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords111327%_
                  'value:
                  absent-value))
               _%args111328%_)))
    (define __raise-contract-violation-error
      (lambda _%args111307111334%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args111307111334%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler111278%_ _%thunk111279%_)
        (if (procedure? _%handler111278%_)
            (let ((_%handler111283%_ _%handler111278%_))
              (if (procedure? _%thunk111279%_)
                  (let ((_%thunk111293%_ _%thunk111279%_))
                    (__with-exception-handler
                     _%handler111283%_
                     _%thunk111293%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk111279%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler111278%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler111253%_ _%thunk111254%_)
        (let* ((_%handler111257%_ _%handler111253%_)
               (_%thunk111265%_ _%thunk111254%_)
               (__tmp111397
                (lambda (_%exn111274%_)
                  (let ((_%exn111276%_ (wrap-runtime-exception _%exn111274%_)))
                    (declare (not safe))
                    (_%handler111257%_ _%exn111276%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp111397 _%thunk111265%_))))
    (define with-catch
      (lambda (_%handler111228%_ _%thunk111229%_)
        (if (procedure? _%handler111228%_)
            (let ((_%handler111233%_ _%handler111228%_))
              (if (procedure? _%thunk111229%_)
                  (let ((_%thunk111243%_ _%thunk111229%_))
                    (__with-catch _%handler111233%_ _%thunk111243%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk111229%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler111228%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler111203%_ _%thunk111204%_)
        (let* ((_%handler111207%_ _%handler111203%_)
               (_%thunk111215%_ _%thunk111204%_)
               (__tmp111398
                (lambda (_%cont111224%_)
                  (__with-exception-handler
                   (lambda (_%exn111226%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont111224%_
                        _%handler111207%_
                        _%exn111226%_)))
                   _%thunk111215%_))))
          (declare (not safe))
          (##continuation-capture __tmp111398))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn111190%_)
        (if (or (heap-overflow-exception? _%exn111190%_)
                (stack-overflow-exception? _%exn111190%_))
            _%exn111190%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn111190%_))
                _%exn111190%_
                (if (macro-exception? _%exn111190%_)
                    (let ((_%rte111198%_
                           (let ((__obj111390
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj111390
                                _%exn111190%_
                                '2
                                '#f
                                '#f))
                             __obj111390)))
                      (let ((__tmp111399
                             (lambda (_%cont111200%_)
                               (let ((__tmp111400
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont111200%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte111198%_
                                  'continuation
                                  __tmp111400)))))
                        (declare (not safe))
                        (##continuation-capture __tmp111399))
                      _%rte111198%_)
                    _%exn111190%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj111185%_)
        (let ((_%$e111187%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj111185%_))))
          (if _%$e111187%_ _%$e111187%_ (error-exception? _%obj111185%_)))))
    (define error-message
      (lambda (_%obj111178%_)
        (let ((_%$e111180%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj111178%_ 'message false))))
          (if _%$e111180%_
              _%$e111180%_
              (if (error-exception? _%obj111178%_)
                  (error-exception-message _%obj111178%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj111173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj111173%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj111173%_ 'irritants))
            (if (error-exception? _%obj111173%_)
                (error-exception-parameters _%obj111173%_)
                '#f))))
    (define error-trace
      (lambda (_%obj111171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj111171%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj111171%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e111152%_ _%port111153%_)
        (let ((_%$e111155%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e111152%_ 'display-exception))))
          (if _%$e111155%_
              ((lambda (_%f111158%_) (_%f111158%_ _%e111152%_ _%port111153%_))
               _%$e111155%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e111152%_ _%port111153%_))))))
    (define display-exception__0
      (lambda (_%e111164%_)
        (let ((_%port111166%_ (current-error-port)))
          (display-exception__% _%e111164%_ _%port111166%_))))
    (define display-exception
      (lambda _g111401_
        (let ((_g111402_ (let () (declare (not safe)) (##length _g111401_))))
          (cond ((let () (declare (not safe)) (##fx= _g111402_ 1))
                 (apply display-exception__0 _g111401_))
                ((let () (declare (not safe)) (##fx= _g111402_ 2))
                 (apply display-exception__% _g111401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g111401_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self111130%_ _%message111131%_ . _%rest111132%_)
        (let* ((_%self111135%_ _%self111130%_)
               (_%message111149%_
                (if (string? _%message111131%_)
                    _%message111131%_
                    (call-with-output-string
                     '""
                     (lambda (_%g111144111146%_)
                       (display _%message111131%_ _%g111144111146%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self111135%_ 'message _%message111149%_))
          (apply class-instance-init! _%self111135%_ _%rest111132%_))))
    (define Error:::init!::specialize
      (lambda (__klass111363 __method-table111364)
        (let ((__message111365
               (let ((__slot111366
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111363 'message))))
                 (if __slot111366
                     __slot111366
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self111130%_ _%message111131%_ . _%rest111132%_)
            (let* ((_%self111135%_ _%self111130%_)
                   (_%message111149%_
                    (if (string? _%message111131%_)
                        _%message111131%_
                        (call-with-output-string
                         '""
                         (lambda (_%g111144111146%_)
                           (display _%message111131%_ _%g111144111146%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self111135%_
                 _%message111149%_
                 __message111365
                 '#f
                 '#f))
              (apply class-instance-init! _%self111135%_ _%rest111132%_))))))
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
      (lambda (_%self110854%_ _%port110855%_)
        (let ((_%self110858%_ _%self110854%_))
          (let ((_%tmp-port110868%_ (open-output-string))
                (_%display-error-newline110869%_
                 (> (output-port-column _%port110855%_) '0)))
            (fix-port-width! _%tmp-port110868%_)
            (let ((__tmp111403
                   (lambda ()
                     (if _%display-error-newline110869%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e110872%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self110858%_ 'where))))
                       (if _%$e110872%_ (display _%$e110872%_) (display '"?")))
                     (let ((__tmp111404
                            (let ((__tmp111405
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self110858%_))))
                              (declare (not safe))
                              (##type-name __tmp111405))))
                       (declare (not safe))
                       (display* '" [" __tmp111404 '"]: "))
                     (let ((__tmp111406
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self110858%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp111406))
                     (let ((_%irritants110876%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self110858%_ 'irritants))))
                       (if (null? _%irritants110876%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj110878%_)
                                (if (u8vector? _%obj110878%_)
                                    (let ((__tmp111407
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj110878%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp111407))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj110878%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants110876%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont110879110881%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self110858%_
                                   'continuation))))
                           (if _%cont110879110881%_
                               (let ((_%cont110884%_ _%cont110879110881%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont110884%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp111403
               current-output-port
               _%tmp-port110868%_))
            (let ((__tmp111408 (get-output-string _%tmp-port110868%_)))
              (declare (not safe))
              (##write-string __tmp111408 _%port110855%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass111367 __method-table111368)
        (let ((__irritants111369
               (let ((__slot111373
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111367 'irritants))))
                 (if __slot111373
                     __slot111373
                     (error '"Unknown slot" 'irritants))))
              (__continuation111370
               (let ((__slot111374
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111367 'continuation))))
                 (if __slot111374
                     __slot111374
                     (error '"Unknown slot" 'continuation))))
              (__message111371
               (let ((__slot111375
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111367 'message))))
                 (if __slot111375
                     __slot111375
                     (error '"Unknown slot" 'message))))
              (__where111372
               (let ((__slot111376
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111367 'where))))
                 (if __slot111376
                     __slot111376
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self110854%_ _%port110855%_)
            (let ((_%self110858%_ _%self110854%_))
              (let ((_%tmp-port110868%_ (open-output-string))
                    (_%display-error-newline110869%_
                     (> (output-port-column _%port110855%_) '0)))
                (fix-port-width! _%tmp-port110868%_)
                (let ((__tmp111409
                       (lambda ()
                         (if _%display-error-newline110869%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e110872%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self110858%_
                                   __where111372
                                   '#f
                                   '#f))))
                           (if _%$e110872%_
                               (display _%$e110872%_)
                               (display '"?")))
                         (let ((__tmp111410
                                (let ((__tmp111411
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self110858%_))))
                                  (declare (not safe))
                                  (##type-name __tmp111411))))
                           (declare (not safe))
                           (display* '" [" __tmp111410 '"]: "))
                         (let ((__tmp111412
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self110858%_
                                   __message111371
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp111412))
                         (let ((_%irritants110876%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self110858%_
                                   __irritants111369
                                   '#f
                                   '#f))))
                           (if (null? _%irritants110876%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj110878%_)
                                    (if (u8vector? _%obj110878%_)
                                        (let ((__tmp111413
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj110878%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp111413))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj110878%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants110876%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont110879110881%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self110858%_
                                       __continuation111370
                                       '#f
                                       '#f))))
                               (if _%cont110879110881%_
                                   (let ((_%cont110884%_ _%cont110879110881%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont110884%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp111409
                   current-output-port
                   _%tmp-port110868%_))
                (let ((__tmp111414 (get-output-string _%tmp-port110868%_)))
                  (declare (not safe))
                  (##write-string __tmp111414 _%port110855%_))))))))
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
      (lambda (_%self110710%_ _%port110711%_)
        (let* ((_%self110714%_ _%self110710%_)
               (_%tmp-port110724%_ (open-output-string)))
          (fix-port-width! _%tmp-port110724%_)
          (let ((__tmp111415
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self110714%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp111415 _%tmp-port110724%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont110725110727%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self110714%_ 'continuation))))
                (if _%cont110725110727%_
                    (let ((_%cont110730%_ _%cont110725110727%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port110724%_)
                      (newline _%tmp-port110724%_)
                      (display-continuation-backtrace
                       _%cont110730%_
                       _%tmp-port110724%_))
                    '#f))
              '#!void)
          (let ((__tmp111416 (get-output-string _%tmp-port110724%_)))
            (declare (not safe))
            (##write-string __tmp111416 _%port110711%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass111377 __method-table111378)
        (let ((__exception111379
               (let ((__slot111381
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111377 'exception))))
                 (if __slot111381
                     __slot111381
                     (error '"Unknown slot" 'exception))))
              (__continuation111380
               (let ((__slot111382
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111377 'continuation))))
                 (if __slot111382
                     __slot111382
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self110710%_ _%port110711%_)
            (let* ((_%self110714%_ _%self110710%_)
                   (_%tmp-port110724%_ (open-output-string)))
              (fix-port-width! _%tmp-port110724%_)
              (let ((__tmp111417
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self110714%_
                        __exception111379
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp111417 _%tmp-port110724%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont110725110727%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self110714%_
                            __continuation111380
                            '#f
                            '#f))))
                    (if _%cont110725110727%_
                        (let ((_%cont110730%_ _%cont110725110727%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port110724%_)
                          (newline _%tmp-port110724%_)
                          (display-continuation-backtrace
                           _%cont110730%_
                           _%tmp-port110724%_))
                        '#f))
                  '#!void)
              (let ((__tmp111418 (get-output-string _%tmp-port110724%_)))
                (declare (not safe))
                (##write-string __tmp111418 _%port110711%_)))))))
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
      (lambda (_%port110582%_)
        (if (macro-character-port? _%port110582%_)
            (let ((_%old-width110584%_
                   (macro-character-port-output-width _%port110582%_)))
              (macro-character-port-output-width-set!
               _%port110582%_
               (lambda (_%port110586%_) '256))
              _%old-width110584%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port110579%_ _%old-width110580%_)
        (if (macro-character-port? _%port110579%_)
            (macro-character-port-output-width-set!
             _%port110579%_
             _%old-width110580%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e110577%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e110577%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn110571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110571%_))
            (let ((_%e110574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110571%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e110574%_))
            (macro-abandoned-mutex-exception? _%exn110571%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn110567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110567%_))
            (let ((_%e110569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110567%_ 'exception))))
              (macro-cfun-conversion-exception? _%e110569%_))
            (macro-cfun-conversion-exception? _%exn110567%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn110563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110563%_))
            (let ((_%e110565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110563%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110565%_)
                  (macro-cfun-conversion-exception-arguments _%e110565%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e110565%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110563%_)
                (macro-cfun-conversion-exception-arguments _%exn110563%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn110563%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn110559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110559%_))
            (let ((_%e110561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110559%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110561%_)
                  (macro-cfun-conversion-exception-code _%e110561%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e110561%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110559%_)
                (macro-cfun-conversion-exception-code _%exn110559%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn110559%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn110555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110555%_))
            (let ((_%e110557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110555%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110557%_)
                  (macro-cfun-conversion-exception-message _%e110557%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e110557%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110555%_)
                (macro-cfun-conversion-exception-message _%exn110555%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn110555%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn110549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110549%_))
            (let ((_%e110552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110549%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e110552%_)
                  (macro-cfun-conversion-exception-procedure _%e110552%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e110552%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn110549%_)
                (macro-cfun-conversion-exception-procedure _%exn110549%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn110549%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn110545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110545%_))
            (let ((_%e110547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110545%_ 'exception))))
              (macro-datum-parsing-exception? _%e110547%_))
            (macro-datum-parsing-exception? _%exn110545%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn110541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110541%_))
            (let ((_%e110543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110541%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110543%_)
                  (macro-datum-parsing-exception-kind _%e110543%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e110543%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110541%_)
                (macro-datum-parsing-exception-kind _%exn110541%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn110541%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn110537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110537%_))
            (let ((_%e110539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110537%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110539%_)
                  (macro-datum-parsing-exception-parameters _%e110539%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e110539%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110537%_)
                (macro-datum-parsing-exception-parameters _%exn110537%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn110537%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn110531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110531%_))
            (let ((_%e110534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110531%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e110534%_)
                  (macro-datum-parsing-exception-readenv _%e110534%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e110534%_ '())))))
            (if (macro-datum-parsing-exception? _%exn110531%_)
                (macro-datum-parsing-exception-readenv _%exn110531%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn110531%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn110525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110525%_))
            (let ((_%e110528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110525%_ 'exception))))
              (macro-deadlock-exception? _%e110528%_))
            (macro-deadlock-exception? _%exn110525%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn110521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110521%_))
            (let ((_%e110523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110521%_ 'exception))))
              (macro-divide-by-zero-exception? _%e110523%_))
            (macro-divide-by-zero-exception? _%exn110521%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn110517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110517%_))
            (let ((_%e110519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110517%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e110519%_)
                  (macro-divide-by-zero-exception-arguments _%e110519%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e110519%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn110517%_)
                (macro-divide-by-zero-exception-arguments _%exn110517%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn110517%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn110511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110511%_))
            (let ((_%e110514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110511%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e110514%_)
                  (macro-divide-by-zero-exception-procedure _%e110514%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e110514%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn110511%_)
                (macro-divide-by-zero-exception-procedure _%exn110511%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn110511%_ '())))))))
    (define error-exception?
      (lambda (_%exn110507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110507%_))
            (let ((_%e110509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110507%_ 'exception))))
              (macro-error-exception? _%e110509%_))
            (macro-error-exception? _%exn110507%_))))
    (define error-exception-message
      (lambda (_%exn110503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110503%_))
            (let ((_%e110505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110503%_ 'exception))))
              (if (macro-error-exception? _%e110505%_)
                  (macro-error-exception-message _%e110505%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e110505%_ '())))))
            (if (macro-error-exception? _%exn110503%_)
                (macro-error-exception-message _%exn110503%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn110503%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn110497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110497%_))
            (let ((_%e110500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110497%_ 'exception))))
              (if (macro-error-exception? _%e110500%_)
                  (macro-error-exception-parameters _%e110500%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e110500%_ '())))))
            (if (macro-error-exception? _%exn110497%_)
                (macro-error-exception-parameters _%exn110497%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn110497%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn110493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110493%_))
            (let ((_%e110495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110493%_ 'exception))))
              (macro-expression-parsing-exception? _%e110495%_))
            (macro-expression-parsing-exception? _%exn110493%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn110489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110489%_))
            (let ((_%e110491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110489%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110491%_)
                  (macro-expression-parsing-exception-kind _%e110491%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e110491%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110489%_)
                (macro-expression-parsing-exception-kind _%exn110489%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn110489%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn110485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110485%_))
            (let ((_%e110487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110485%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110487%_)
                  (macro-expression-parsing-exception-parameters _%e110487%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e110487%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110485%_)
                (macro-expression-parsing-exception-parameters _%exn110485%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn110485%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn110479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110479%_))
            (let ((_%e110482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110479%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e110482%_)
                  (macro-expression-parsing-exception-source _%e110482%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e110482%_ '())))))
            (if (macro-expression-parsing-exception? _%exn110479%_)
                (macro-expression-parsing-exception-source _%exn110479%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn110479%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn110475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110475%_))
            (let ((_%e110477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110475%_ 'exception))))
              (macro-file-exists-exception? _%e110477%_))
            (macro-file-exists-exception? _%exn110475%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn110471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110471%_))
            (let ((_%e110473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110471%_ 'exception))))
              (if (macro-file-exists-exception? _%e110473%_)
                  (macro-file-exists-exception-arguments _%e110473%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e110473%_ '())))))
            (if (macro-file-exists-exception? _%exn110471%_)
                (macro-file-exists-exception-arguments _%exn110471%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn110471%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn110465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110465%_))
            (let ((_%e110468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110465%_ 'exception))))
              (if (macro-file-exists-exception? _%e110468%_)
                  (macro-file-exists-exception-procedure _%e110468%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e110468%_ '())))))
            (if (macro-file-exists-exception? _%exn110465%_)
                (macro-file-exists-exception-procedure _%exn110465%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn110465%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn110461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110461%_))
            (let ((_%e110463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110461%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e110463%_))
            (macro-fixnum-overflow-exception? _%exn110461%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn110457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110457%_))
            (let ((_%e110459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110457%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e110459%_)
                  (macro-fixnum-overflow-exception-arguments _%e110459%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e110459%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn110457%_)
                (macro-fixnum-overflow-exception-arguments _%exn110457%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn110457%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn110451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110451%_))
            (let ((_%e110454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110451%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e110454%_)
                  (macro-fixnum-overflow-exception-procedure _%e110454%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e110454%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn110451%_)
                (macro-fixnum-overflow-exception-procedure _%exn110451%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn110451%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn110445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110445%_))
            (let ((_%e110448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110445%_ 'exception))))
              (macro-heap-overflow-exception? _%e110448%_))
            (macro-heap-overflow-exception? _%exn110445%_))))
    (define inactive-thread-exception?
      (lambda (_%exn110441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110441%_))
            (let ((_%e110443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110441%_ 'exception))))
              (macro-inactive-thread-exception? _%e110443%_))
            (macro-inactive-thread-exception? _%exn110441%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn110437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110437%_))
            (let ((_%e110439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110437%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e110439%_)
                  (macro-inactive-thread-exception-arguments _%e110439%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e110439%_ '())))))
            (if (macro-inactive-thread-exception? _%exn110437%_)
                (macro-inactive-thread-exception-arguments _%exn110437%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn110437%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn110431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110431%_))
            (let ((_%e110434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110431%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e110434%_)
                  (macro-inactive-thread-exception-procedure _%e110434%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e110434%_ '())))))
            (if (macro-inactive-thread-exception? _%exn110431%_)
                (macro-inactive-thread-exception-procedure _%exn110431%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn110431%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn110427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110427%_))
            (let ((_%e110429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110427%_ 'exception))))
              (macro-initialized-thread-exception? _%e110429%_))
            (macro-initialized-thread-exception? _%exn110427%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn110423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110423%_))
            (let ((_%e110425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110423%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e110425%_)
                  (macro-initialized-thread-exception-arguments _%e110425%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e110425%_ '())))))
            (if (macro-initialized-thread-exception? _%exn110423%_)
                (macro-initialized-thread-exception-arguments _%exn110423%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn110423%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn110417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110417%_))
            (let ((_%e110420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110417%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e110420%_)
                  (macro-initialized-thread-exception-procedure _%e110420%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e110420%_ '())))))
            (if (macro-initialized-thread-exception? _%exn110417%_)
                (macro-initialized-thread-exception-procedure _%exn110417%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn110417%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn110413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110413%_))
            (let ((_%e110415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110413%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e110415%_))
            (macro-invalid-hash-number-exception? _%exn110413%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn110409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110409%_))
            (let ((_%e110411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110409%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e110411%_)
                  (macro-invalid-hash-number-exception-arguments _%e110411%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e110411%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn110409%_)
                (macro-invalid-hash-number-exception-arguments _%exn110409%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn110409%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn110403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110403%_))
            (let ((_%e110406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110403%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e110406%_)
                  (macro-invalid-hash-number-exception-procedure _%e110406%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e110406%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn110403%_)
                (macro-invalid-hash-number-exception-procedure _%exn110403%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn110403%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn110399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110399%_))
            (let ((_%e110401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110399%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e110401%_))
            (macro-invalid-utf8-encoding-exception? _%exn110399%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn110395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110395%_))
            (let ((_%e110397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110395%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e110397%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e110397%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e110397%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn110395%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn110395%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn110395%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn110389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110389%_))
            (let ((_%e110392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110389%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e110392%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e110392%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e110392%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn110389%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn110389%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn110389%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn110385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110385%_))
            (let ((_%e110387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110385%_ 'exception))))
              (macro-join-timeout-exception? _%e110387%_))
            (macro-join-timeout-exception? _%exn110385%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn110381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110381%_))
            (let ((_%e110383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110381%_ 'exception))))
              (if (macro-join-timeout-exception? _%e110383%_)
                  (macro-join-timeout-exception-arguments _%e110383%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e110383%_ '())))))
            (if (macro-join-timeout-exception? _%exn110381%_)
                (macro-join-timeout-exception-arguments _%exn110381%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn110381%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn110375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110375%_))
            (let ((_%e110378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110375%_ 'exception))))
              (if (macro-join-timeout-exception? _%e110378%_)
                  (macro-join-timeout-exception-procedure _%e110378%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e110378%_ '())))))
            (if (macro-join-timeout-exception? _%exn110375%_)
                (macro-join-timeout-exception-procedure _%exn110375%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn110375%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn110371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110371%_))
            (let ((_%e110373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110371%_ 'exception))))
              (macro-keyword-expected-exception? _%e110373%_))
            (macro-keyword-expected-exception? _%exn110371%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn110367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110367%_))
            (let ((_%e110369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110367%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e110369%_)
                  (macro-keyword-expected-exception-arguments _%e110369%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e110369%_ '())))))
            (if (macro-keyword-expected-exception? _%exn110367%_)
                (macro-keyword-expected-exception-arguments _%exn110367%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn110367%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn110361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110361%_))
            (let ((_%e110364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110361%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e110364%_)
                  (macro-keyword-expected-exception-procedure _%e110364%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e110364%_ '())))))
            (if (macro-keyword-expected-exception? _%exn110361%_)
                (macro-keyword-expected-exception-procedure _%exn110361%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn110361%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn110357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110357%_))
            (let ((_%e110359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110357%_ 'exception))))
              (macro-length-mismatch-exception? _%e110359%_))
            (macro-length-mismatch-exception? _%exn110357%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn110353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110353%_))
            (let ((_%e110355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110353%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110355%_)
                  (macro-length-mismatch-exception-arg-id _%e110355%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e110355%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110353%_)
                (macro-length-mismatch-exception-arg-id _%exn110353%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn110353%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn110349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110349%_))
            (let ((_%e110351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110349%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110351%_)
                  (macro-length-mismatch-exception-arguments _%e110351%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e110351%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110349%_)
                (macro-length-mismatch-exception-arguments _%exn110349%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn110349%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn110343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110343%_))
            (let ((_%e110346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110343%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e110346%_)
                  (macro-length-mismatch-exception-procedure _%e110346%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e110346%_ '())))))
            (if (macro-length-mismatch-exception? _%exn110343%_)
                (macro-length-mismatch-exception-procedure _%exn110343%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn110343%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn110339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110339%_))
            (let ((_%e110341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110339%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e110341%_))
            (macro-mailbox-receive-timeout-exception? _%exn110339%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn110335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110335%_))
            (let ((_%e110337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110335%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e110337%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e110337%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e110337%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn110335%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn110335%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn110335%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn110329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110329%_))
            (let ((_%e110332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110329%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e110332%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e110332%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e110332%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn110329%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn110329%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn110329%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn110325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110325%_))
            (let ((_%e110327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110325%_ 'exception))))
              (macro-module-not-found-exception? _%e110327%_))
            (macro-module-not-found-exception? _%exn110325%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn110321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110321%_))
            (let ((_%e110323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110321%_ 'exception))))
              (if (macro-module-not-found-exception? _%e110323%_)
                  (macro-module-not-found-exception-arguments _%e110323%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e110323%_ '())))))
            (if (macro-module-not-found-exception? _%exn110321%_)
                (macro-module-not-found-exception-arguments _%exn110321%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn110321%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn110315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110315%_))
            (let ((_%e110318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110315%_ 'exception))))
              (if (macro-module-not-found-exception? _%e110318%_)
                  (macro-module-not-found-exception-procedure _%e110318%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e110318%_ '())))))
            (if (macro-module-not-found-exception? _%exn110315%_)
                (macro-module-not-found-exception-procedure _%exn110315%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn110315%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn110309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110309%_))
            (let ((_%e110312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110309%_ 'exception))))
              (macro-multiple-c-return-exception? _%e110312%_))
            (macro-multiple-c-return-exception? _%exn110309%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn110305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110305%_))
            (let ((_%e110307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110305%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e110307%_))
            (macro-no-such-file-or-directory-exception? _%exn110305%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn110301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110301%_))
            (let ((_%e110303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110301%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e110303%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e110303%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e110303%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn110301%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn110301%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn110301%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn110295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110295%_))
            (let ((_%e110298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110295%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e110298%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e110298%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e110298%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn110295%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn110295%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn110295%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn110291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110291%_))
            (let ((_%e110293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110291%_ 'exception))))
              (macro-noncontinuable-exception? _%e110293%_))
            (macro-noncontinuable-exception? _%exn110291%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn110285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110285%_))
            (let ((_%e110288%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110285%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e110288%_)
                  (macro-noncontinuable-exception-reason _%e110288%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e110288%_ '())))))
            (if (macro-noncontinuable-exception? _%exn110285%_)
                (macro-noncontinuable-exception-reason _%exn110285%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn110285%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn110281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110281%_))
            (let ((_%e110283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110281%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e110283%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn110281%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn110277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110277%_))
            (let ((_%e110279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110277%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e110279%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e110279%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e110279%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn110277%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn110277%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn110277%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn110271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110271%_))
            (let ((_%e110274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110271%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e110274%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e110274%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e110274%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn110271%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn110271%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn110271%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn110267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110267%_))
            (let ((_%e110269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110267%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e110269%_))
            (macro-nonprocedure-operator-exception? _%exn110267%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn110263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110263%_))
            (let ((_%e110265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110263%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110265%_)
                  (macro-nonprocedure-operator-exception-arguments _%e110265%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e110265%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110263%_)
                (macro-nonprocedure-operator-exception-arguments _%exn110263%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn110263%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn110259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110259%_))
            (let ((_%e110261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110259%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110261%_)
                  (macro-nonprocedure-operator-exception-code _%e110261%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e110261%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110259%_)
                (macro-nonprocedure-operator-exception-code _%exn110259%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn110259%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn110255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110255%_))
            (let ((_%e110257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110255%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110257%_)
                  (macro-nonprocedure-operator-exception-operator _%e110257%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e110257%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110255%_)
                (macro-nonprocedure-operator-exception-operator _%exn110255%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn110255%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn110249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110249%_))
            (let ((_%e110252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110249%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e110252%_)
                  (macro-nonprocedure-operator-exception-rte _%e110252%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e110252%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn110249%_)
                (macro-nonprocedure-operator-exception-rte _%exn110249%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn110249%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn110245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110245%_))
            (let ((_%e110247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110245%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e110247%_))
            (macro-not-in-compilation-context-exception? _%exn110245%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn110241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110241%_))
            (let ((_%e110243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110241%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e110243%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e110243%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e110243%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn110241%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn110241%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn110241%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn110235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110235%_))
            (let ((_%e110238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110235%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e110238%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e110238%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e110238%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn110235%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn110235%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn110235%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn110231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110231%_))
            (let ((_%e110233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110231%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e110233%_))
            (macro-number-of-arguments-limit-exception? _%exn110231%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn110227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110227%_))
            (let ((_%e110229%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110227%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e110229%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e110229%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e110229%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn110227%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn110227%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn110227%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn110221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110221%_))
            (let ((_%e110224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110221%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e110224%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e110224%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e110224%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn110221%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn110221%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn110221%_ '())))))))
    (define os-exception?
      (lambda (_%exn110217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110217%_))
            (let ((_%e110219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110217%_ 'exception))))
              (macro-os-exception? _%e110219%_))
            (macro-os-exception? _%exn110217%_))))
    (define os-exception-arguments
      (lambda (_%exn110213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110213%_))
            (let ((_%e110215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110213%_ 'exception))))
              (if (macro-os-exception? _%e110215%_)
                  (macro-os-exception-arguments _%e110215%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e110215%_ '())))))
            (if (macro-os-exception? _%exn110213%_)
                (macro-os-exception-arguments _%exn110213%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn110213%_ '())))))))
    (define os-exception-code
      (lambda (_%exn110209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110209%_))
            (let ((_%e110211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110209%_ 'exception))))
              (if (macro-os-exception? _%e110211%_)
                  (macro-os-exception-code _%e110211%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e110211%_ '())))))
            (if (macro-os-exception? _%exn110209%_)
                (macro-os-exception-code _%exn110209%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn110209%_ '())))))))
    (define os-exception-message
      (lambda (_%exn110205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110205%_))
            (let ((_%e110207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110205%_ 'exception))))
              (if (macro-os-exception? _%e110207%_)
                  (macro-os-exception-message _%e110207%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e110207%_ '())))))
            (if (macro-os-exception? _%exn110205%_)
                (macro-os-exception-message _%exn110205%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn110205%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn110199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110199%_))
            (let ((_%e110202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110199%_ 'exception))))
              (if (macro-os-exception? _%e110202%_)
                  (macro-os-exception-procedure _%e110202%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e110202%_ '())))))
            (if (macro-os-exception? _%exn110199%_)
                (macro-os-exception-procedure _%exn110199%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn110199%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn110195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110195%_))
            (let ((_%e110197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110195%_ 'exception))))
              (macro-permission-denied-exception? _%e110197%_))
            (macro-permission-denied-exception? _%exn110195%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn110191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110191%_))
            (let ((_%e110193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110191%_ 'exception))))
              (if (macro-permission-denied-exception? _%e110193%_)
                  (macro-permission-denied-exception-arguments _%e110193%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e110193%_ '())))))
            (if (macro-permission-denied-exception? _%exn110191%_)
                (macro-permission-denied-exception-arguments _%exn110191%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn110191%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn110185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110185%_))
            (let ((_%e110188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110185%_ 'exception))))
              (if (macro-permission-denied-exception? _%e110188%_)
                  (macro-permission-denied-exception-procedure _%e110188%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e110188%_ '())))))
            (if (macro-permission-denied-exception? _%exn110185%_)
                (macro-permission-denied-exception-procedure _%exn110185%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn110185%_ '())))))))
    (define range-exception?
      (lambda (_%exn110181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110181%_))
            (let ((_%e110183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110181%_ 'exception))))
              (macro-range-exception? _%e110183%_))
            (macro-range-exception? _%exn110181%_))))
    (define range-exception-arg-id
      (lambda (_%exn110177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110177%_))
            (let ((_%e110179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110177%_ 'exception))))
              (if (macro-range-exception? _%e110179%_)
                  (macro-range-exception-arg-id _%e110179%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e110179%_ '())))))
            (if (macro-range-exception? _%exn110177%_)
                (macro-range-exception-arg-id _%exn110177%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn110177%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn110173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110173%_))
            (let ((_%e110175%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110173%_ 'exception))))
              (if (macro-range-exception? _%e110175%_)
                  (macro-range-exception-arguments _%e110175%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e110175%_ '())))))
            (if (macro-range-exception? _%exn110173%_)
                (macro-range-exception-arguments _%exn110173%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn110173%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn110167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110167%_))
            (let ((_%e110170%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110167%_ 'exception))))
              (if (macro-range-exception? _%e110170%_)
                  (macro-range-exception-procedure _%e110170%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e110170%_ '())))))
            (if (macro-range-exception? _%exn110167%_)
                (macro-range-exception-procedure _%exn110167%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn110167%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn110163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110163%_))
            (let ((_%e110165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110163%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e110165%_))
            (macro-rpc-remote-error-exception? _%exn110163%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn110159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110159%_))
            (let ((_%e110161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110159%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110161%_)
                  (macro-rpc-remote-error-exception-arguments _%e110161%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e110161%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110159%_)
                (macro-rpc-remote-error-exception-arguments _%exn110159%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn110159%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn110155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110155%_))
            (let ((_%e110157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110155%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110157%_)
                  (macro-rpc-remote-error-exception-message _%e110157%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e110157%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110155%_)
                (macro-rpc-remote-error-exception-message _%exn110155%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn110155%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn110149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110149%_))
            (let ((_%e110152%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110149%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e110152%_)
                  (macro-rpc-remote-error-exception-procedure _%e110152%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e110152%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn110149%_)
                (macro-rpc-remote-error-exception-procedure _%exn110149%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn110149%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn110145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110145%_))
            (let ((_%e110147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110145%_ 'exception))))
              (macro-scheduler-exception? _%e110147%_))
            (macro-scheduler-exception? _%exn110145%_))))
    (define scheduler-exception-reason
      (lambda (_%exn110139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110139%_))
            (let ((_%e110142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110139%_ 'exception))))
              (if (macro-scheduler-exception? _%e110142%_)
                  (macro-scheduler-exception-reason _%e110142%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e110142%_ '())))))
            (if (macro-scheduler-exception? _%exn110139%_)
                (macro-scheduler-exception-reason _%exn110139%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn110139%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn110135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110135%_))
            (let ((_%e110137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110135%_ 'exception))))
              (macro-sfun-conversion-exception? _%e110137%_))
            (macro-sfun-conversion-exception? _%exn110135%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn110131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110131%_))
            (let ((_%e110133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110131%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110133%_)
                  (macro-sfun-conversion-exception-arguments _%e110133%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e110133%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110131%_)
                (macro-sfun-conversion-exception-arguments _%exn110131%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn110131%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn110127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110127%_))
            (let ((_%e110129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110127%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110129%_)
                  (macro-sfun-conversion-exception-code _%e110129%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e110129%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110127%_)
                (macro-sfun-conversion-exception-code _%exn110127%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn110127%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn110123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110123%_))
            (let ((_%e110125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110123%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110125%_)
                  (macro-sfun-conversion-exception-message _%e110125%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e110125%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110123%_)
                (macro-sfun-conversion-exception-message _%exn110123%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn110123%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn110117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110117%_))
            (let ((_%e110120%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110117%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e110120%_)
                  (macro-sfun-conversion-exception-procedure _%e110120%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e110120%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn110117%_)
                (macro-sfun-conversion-exception-procedure _%exn110117%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn110117%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn110111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110111%_))
            (let ((_%e110114%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110111%_ 'exception))))
              (macro-stack-overflow-exception? _%e110114%_))
            (macro-stack-overflow-exception? _%exn110111%_))))
    (define started-thread-exception?
      (lambda (_%exn110107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110107%_))
            (let ((_%e110109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110107%_ 'exception))))
              (macro-started-thread-exception? _%e110109%_))
            (macro-started-thread-exception? _%exn110107%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn110103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110103%_))
            (let ((_%e110105%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110103%_ 'exception))))
              (if (macro-started-thread-exception? _%e110105%_)
                  (macro-started-thread-exception-arguments _%e110105%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e110105%_ '())))))
            (if (macro-started-thread-exception? _%exn110103%_)
                (macro-started-thread-exception-arguments _%exn110103%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn110103%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn110097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110097%_))
            (let ((_%e110100%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110097%_ 'exception))))
              (if (macro-started-thread-exception? _%e110100%_)
                  (macro-started-thread-exception-procedure _%e110100%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e110100%_ '())))))
            (if (macro-started-thread-exception? _%exn110097%_)
                (macro-started-thread-exception-procedure _%exn110097%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn110097%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn110093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110093%_))
            (let ((_%e110095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110093%_ 'exception))))
              (macro-terminated-thread-exception? _%e110095%_))
            (macro-terminated-thread-exception? _%exn110093%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn110089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110089%_))
            (let ((_%e110091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110089%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e110091%_)
                  (macro-terminated-thread-exception-arguments _%e110091%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e110091%_ '())))))
            (if (macro-terminated-thread-exception? _%exn110089%_)
                (macro-terminated-thread-exception-arguments _%exn110089%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn110089%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn110083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110083%_))
            (let ((_%e110086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110083%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e110086%_)
                  (macro-terminated-thread-exception-procedure _%e110086%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e110086%_ '())))))
            (if (macro-terminated-thread-exception? _%exn110083%_)
                (macro-terminated-thread-exception-procedure _%exn110083%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn110083%_ '())))))))
    (define type-exception?
      (lambda (_%exn110079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110079%_))
            (let ((_%e110081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110079%_ 'exception))))
              (macro-type-exception? _%e110081%_))
            (macro-type-exception? _%exn110079%_))))
    (define type-exception-arg-id
      (lambda (_%exn110075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110075%_))
            (let ((_%e110077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110075%_ 'exception))))
              (if (macro-type-exception? _%e110077%_)
                  (macro-type-exception-arg-id _%e110077%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e110077%_ '())))))
            (if (macro-type-exception? _%exn110075%_)
                (macro-type-exception-arg-id _%exn110075%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn110075%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn110071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110071%_))
            (let ((_%e110073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110071%_ 'exception))))
              (if (macro-type-exception? _%e110073%_)
                  (macro-type-exception-arguments _%e110073%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e110073%_ '())))))
            (if (macro-type-exception? _%exn110071%_)
                (macro-type-exception-arguments _%exn110071%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn110071%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn110067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110067%_))
            (let ((_%e110069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110067%_ 'exception))))
              (if (macro-type-exception? _%e110069%_)
                  (macro-type-exception-procedure _%e110069%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e110069%_ '())))))
            (if (macro-type-exception? _%exn110067%_)
                (macro-type-exception-procedure _%exn110067%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn110067%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn110061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110061%_))
            (let ((_%e110064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110061%_ 'exception))))
              (if (macro-type-exception? _%e110064%_)
                  (macro-type-exception-type-id _%e110064%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e110064%_ '())))))
            (if (macro-type-exception? _%exn110061%_)
                (macro-type-exception-type-id _%exn110061%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn110061%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn110057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110057%_))
            (let ((_%e110059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110057%_ 'exception))))
              (macro-unbound-global-exception? _%e110059%_))
            (macro-unbound-global-exception? _%exn110057%_))))
    (define unbound-global-exception-code
      (lambda (_%exn110053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110053%_))
            (let ((_%e110055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110053%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110055%_)
                  (macro-unbound-global-exception-code _%e110055%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e110055%_ '())))))
            (if (macro-unbound-global-exception? _%exn110053%_)
                (macro-unbound-global-exception-code _%exn110053%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn110053%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn110049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110049%_))
            (let ((_%e110051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110049%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110051%_)
                  (macro-unbound-global-exception-rte _%e110051%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e110051%_ '())))))
            (if (macro-unbound-global-exception? _%exn110049%_)
                (macro-unbound-global-exception-rte _%exn110049%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn110049%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn110043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110043%_))
            (let ((_%e110046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110043%_ 'exception))))
              (if (macro-unbound-global-exception? _%e110046%_)
                  (macro-unbound-global-exception-variable _%e110046%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e110046%_ '())))))
            (if (macro-unbound-global-exception? _%exn110043%_)
                (macro-unbound-global-exception-variable _%exn110043%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn110043%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn110039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110039%_))
            (let ((_%e110041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110039%_ 'exception))))
              (macro-unbound-key-exception? _%e110041%_))
            (macro-unbound-key-exception? _%exn110039%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn110035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110035%_))
            (let ((_%e110037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110035%_ 'exception))))
              (if (macro-unbound-key-exception? _%e110037%_)
                  (macro-unbound-key-exception-arguments _%e110037%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e110037%_ '())))))
            (if (macro-unbound-key-exception? _%exn110035%_)
                (macro-unbound-key-exception-arguments _%exn110035%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn110035%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn110029%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110029%_))
            (let ((_%e110032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110029%_ 'exception))))
              (if (macro-unbound-key-exception? _%e110032%_)
                  (macro-unbound-key-exception-procedure _%e110032%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e110032%_ '())))))
            (if (macro-unbound-key-exception? _%exn110029%_)
                (macro-unbound-key-exception-procedure _%exn110029%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn110029%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn110025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110025%_))
            (let ((_%e110027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110025%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e110027%_))
            (macro-unbound-os-environment-variable-exception? _%exn110025%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn110021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110021%_))
            (let ((_%e110023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110021%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e110023%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e110023%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e110023%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn110021%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn110021%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn110021%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn110015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110015%_))
            (let ((_%e110018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110015%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e110018%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e110018%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e110018%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn110015%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn110015%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn110015%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn110011%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110011%_))
            (let ((_%e110013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110011%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e110013%_))
            (macro-unbound-serial-number-exception? _%exn110011%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn110007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110007%_))
            (let ((_%e110009%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110007%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e110009%_)
                  (macro-unbound-serial-number-exception-arguments _%e110009%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e110009%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn110007%_)
                (macro-unbound-serial-number-exception-arguments _%exn110007%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn110007%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn110001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn110001%_))
            (let ((_%e110004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn110001%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e110004%_)
                  (macro-unbound-serial-number-exception-procedure _%e110004%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e110004%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn110001%_)
                (macro-unbound-serial-number-exception-procedure _%exn110001%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn110001%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn109997%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109997%_))
            (let ((_%e109999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109997%_ 'exception))))
              (macro-uncaught-exception? _%e109999%_))
            (macro-uncaught-exception? _%exn109997%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn109993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109993%_))
            (let ((_%e109995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109993%_ 'exception))))
              (if (macro-uncaught-exception? _%e109995%_)
                  (macro-uncaught-exception-arguments _%e109995%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e109995%_ '())))))
            (if (macro-uncaught-exception? _%exn109993%_)
                (macro-uncaught-exception-arguments _%exn109993%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn109993%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn109989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109989%_))
            (let ((_%e109991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109989%_ 'exception))))
              (if (macro-uncaught-exception? _%e109991%_)
                  (macro-uncaught-exception-procedure _%e109991%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e109991%_ '())))))
            (if (macro-uncaught-exception? _%exn109989%_)
                (macro-uncaught-exception-procedure _%exn109989%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn109989%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn109983%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109983%_))
            (let ((_%e109986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109983%_ 'exception))))
              (if (macro-uncaught-exception? _%e109986%_)
                  (macro-uncaught-exception-reason _%e109986%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e109986%_ '())))))
            (if (macro-uncaught-exception? _%exn109983%_)
                (macro-uncaught-exception-reason _%exn109983%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn109983%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn109979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109979%_))
            (let ((_%e109981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109979%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e109981%_))
            (macro-uninitialized-thread-exception? _%exn109979%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn109975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109975%_))
            (let ((_%e109977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109975%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e109977%_)
                  (macro-uninitialized-thread-exception-arguments _%e109977%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e109977%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn109975%_)
                (macro-uninitialized-thread-exception-arguments _%exn109975%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn109975%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn109969%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109969%_))
            (let ((_%e109972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109969%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e109972%_)
                  (macro-uninitialized-thread-exception-procedure _%e109972%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e109972%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn109969%_)
                (macro-uninitialized-thread-exception-procedure _%exn109969%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn109969%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn109965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109965%_))
            (let ((_%e109967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109965%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e109967%_))
            (macro-unknown-keyword-argument-exception? _%exn109965%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn109961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109961%_))
            (let ((_%e109963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109961%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e109963%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e109963%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e109963%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn109961%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn109961%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn109961%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn109955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109955%_))
            (let ((_%e109958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109955%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e109958%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e109958%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e109958%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn109955%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn109955%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn109955%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn109951%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109951%_))
            (let ((_%e109953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109951%_ 'exception))))
              (macro-unterminated-process-exception? _%e109953%_))
            (macro-unterminated-process-exception? _%exn109951%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn109947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109947%_))
            (let ((_%e109949%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109947%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e109949%_)
                  (macro-unterminated-process-exception-arguments _%e109949%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e109949%_ '())))))
            (if (macro-unterminated-process-exception? _%exn109947%_)
                (macro-unterminated-process-exception-arguments _%exn109947%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn109947%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn109941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109941%_))
            (let ((_%e109944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109941%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e109944%_)
                  (macro-unterminated-process-exception-procedure _%e109944%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e109944%_ '())))))
            (if (macro-unterminated-process-exception? _%exn109941%_)
                (macro-unterminated-process-exception-procedure _%exn109941%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn109941%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn109937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109937%_))
            (let ((_%e109939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109937%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e109939%_))
            (macro-wrong-number-of-arguments-exception? _%exn109937%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn109933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109933%_))
            (let ((_%e109935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109933%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e109935%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e109935%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e109935%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn109933%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn109933%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn109933%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn109927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109927%_))
            (let ((_%e109930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109927%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e109930%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e109930%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e109930%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn109927%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn109927%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn109927%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn109923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109923%_))
            (let ((_%e109925%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109923%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e109925%_))
            (macro-wrong-number-of-values-exception? _%exn109923%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn109919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109919%_))
            (let ((_%e109921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109919%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e109921%_)
                  (macro-wrong-number-of-values-exception-code _%e109921%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e109921%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn109919%_)
                (macro-wrong-number-of-values-exception-code _%exn109919%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn109919%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn109915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109915%_))
            (let ((_%e109917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109915%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e109917%_)
                  (macro-wrong-number-of-values-exception-rte _%e109917%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e109917%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn109915%_)
                (macro-wrong-number-of-values-exception-rte _%exn109915%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn109915%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn109909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109909%_))
            (let ((_%e109912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109909%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e109912%_)
                  (macro-wrong-number-of-values-exception-vals _%e109912%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e109912%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn109909%_)
                (macro-wrong-number-of-values-exception-vals _%exn109909%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn109909%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn109903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn109903%_))
            (let ((_%e109906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn109903%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e109906%_))
            (macro-wrong-processor-c-return-exception? _%exn109903%_))))))
