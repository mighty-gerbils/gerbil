(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1713001406)
  (begin
    (define Exception::t
      (let ((__tmp102349 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp102349
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args102319%_
        (apply make-instance Exception::t _%$args102319%_)))
    (define StackTrace::t
      (let ((__tmp102350 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp102350
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args102316%_
        (apply make-instance StackTrace::t _%$args102316%_)))
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
      (let ((__tmp102351 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp102351
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args102313%_ (apply make-instance Error::t _%$args102313%_)))
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
      (let ((__tmp102352 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp102352
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args102310%_
        (apply make-instance ContractViolation::t _%$args102310%_)))
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
      (let ((__tmp102353 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp102353
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args102307%_
        (apply make-instance RuntimeException::t _%$args102307%_)))
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
      (lambda (_%exn102302%_ _%continue102303%_)
        (let ((_%exn102305%_ (wrap-runtime-exception _%exn102302%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn102305%_ _%continue102303%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn102298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn102298%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn102298%_ 'continuation))
                '#!void
                (let ((__tmp102354
                       (lambda (_%cont102300%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn102298%_
                            'continuation
                            _%cont102300%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp102354)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn102298%_))))
    (define error
      (lambda (_%message102295%_ . _%irritants102296%_)
        (raise (let ((__obj102346
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj102346
                  _%message102295%_
                  'irritants:
                  _%irritants102296%_)
                 __obj102346))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords102267%_
               _%ctx102262102268%_
               _%contract-expr102263102270%_
               _%value102264102272%_
               _%message102274%_)
        (let* ((_%ctx102276%_
                (if (eq? _%ctx102262102268%_ absent-value)
                    '#f
                    _%ctx102262102268%_))
               (_%contract-expr102278%_
                (if (eq? _%contract-expr102263102270%_ absent-value)
                    '#f
                    _%contract-expr102263102270%_))
               (_%value102280%_
                (if (eq? _%value102264102272%_ absent-value)
                    '#f
                    _%value102264102272%_)))
          (raise (let ((__obj102347
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj102347
                    _%message102274%_
                    'where:
                    _%ctx102276%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr102278%_
                                (cons 'value: (cons _%value102280%_ '())))))
                   __obj102347)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords102285%_ . _%args102286%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords102285%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102285%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102285%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102285%_
                  'value:
                  absent-value))
               _%args102286%_)))
    (define __raise-contract-violation-error
      (lambda _%args102265102292%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args102265102292%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler102236%_ _%thunk102237%_)
        (if (procedure? _%handler102236%_)
            (let ((_%handler102241%_ _%handler102236%_))
              (if (procedure? _%thunk102237%_)
                  (let ((_%thunk102251%_ _%thunk102237%_))
                    (__with-exception-handler
                     _%handler102241%_
                     _%thunk102251%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102237%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler102236%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler102211%_ _%thunk102212%_)
        (let* ((_%handler102215%_ _%handler102211%_)
               (_%thunk102223%_ _%thunk102212%_)
               (__tmp102355
                (lambda (_%exn102232%_)
                  (let ((_%exn102234%_ (wrap-runtime-exception _%exn102232%_)))
                    (declare (not safe))
                    (_%handler102215%_ _%exn102234%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp102355 _%thunk102223%_))))
    (define with-catch
      (lambda (_%handler102186%_ _%thunk102187%_)
        (if (procedure? _%handler102186%_)
            (let ((_%handler102191%_ _%handler102186%_))
              (if (procedure? _%thunk102187%_)
                  (let ((_%thunk102201%_ _%thunk102187%_))
                    (__with-catch _%handler102191%_ _%thunk102201%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102187%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler102186%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler102161%_ _%thunk102162%_)
        (let* ((_%handler102165%_ _%handler102161%_)
               (_%thunk102173%_ _%thunk102162%_)
               (__tmp102356
                (lambda (_%cont102182%_)
                  (__with-exception-handler
                   (lambda (_%exn102184%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont102182%_
                        _%handler102165%_
                        _%exn102184%_)))
                   _%thunk102173%_))))
          (declare (not safe))
          (##continuation-capture __tmp102356))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn102148%_)
        (if (or (heap-overflow-exception? _%exn102148%_)
                (stack-overflow-exception? _%exn102148%_))
            _%exn102148%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn102148%_))
                _%exn102148%_
                (if (macro-exception? _%exn102148%_)
                    (let ((_%rte102156%_
                           (let ((__obj102348
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj102348
                                _%exn102148%_
                                '2
                                '#f
                                '#f))
                             __obj102348)))
                      (let ((__tmp102357
                             (lambda (_%cont102158%_)
                               (let ((__tmp102358
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont102158%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte102156%_
                                  'continuation
                                  __tmp102358)))))
                        (declare (not safe))
                        (##continuation-capture __tmp102357))
                      _%rte102156%_)
                    _%exn102148%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj102143%_)
        (let ((_%$e102145%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj102143%_))))
          (if _%$e102145%_ _%$e102145%_ (error-exception? _%obj102143%_)))))
    (define error-message
      (lambda (_%obj102136%_)
        (let ((_%$e102138%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj102136%_ 'message false))))
          (if _%$e102138%_
              _%$e102138%_
              (if (error-exception? _%obj102136%_)
                  (error-exception-message _%obj102136%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj102131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102131%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102131%_ 'irritants))
            (if (error-exception? _%obj102131%_)
                (error-exception-parameters _%obj102131%_)
                '#f))))
    (define error-trace
      (lambda (_%obj102129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102129%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102129%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e102110%_ _%port102111%_)
        (let ((_%$e102113%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e102110%_ 'display-exception))))
          (if _%$e102113%_
              ((lambda (_%f102116%_) (_%f102116%_ _%e102110%_ _%port102111%_))
               _%$e102113%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e102110%_ _%port102111%_))))))
    (define display-exception__0
      (lambda (_%e102122%_)
        (let ((_%port102124%_ (current-error-port)))
          (display-exception__% _%e102122%_ _%port102124%_))))
    (define display-exception
      (lambda _g102360_
        (let ((_g102359_ (let () (declare (not safe)) (##length _g102360_))))
          (cond ((let () (declare (not safe)) (##fx= _g102359_ 1))
                 (apply display-exception__0 _g102360_))
                ((let () (declare (not safe)) (##fx= _g102359_ 2))
                 (apply display-exception__% _g102360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g102360_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100479102086%_ _%message102088%_ . _%rest102089%_)
        (let* ((_%self102091%_ _%self100479102086%_)
               (_%self102093%_ _%self102091%_)
               (_%message102107%_
                (if (string? _%message102088%_)
                    _%message102088%_
                    (call-with-output-string
                     '""
                     (lambda (_%g102102102104%_)
                       (display _%message102088%_ _%g102102102104%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self102093%_ 'message _%message102107%_))
          (apply class-instance-init! _%self102093%_ _%rest102089%_))))
    (define Error:::init!::specialize
      (lambda (__klass102321 __method-table102322)
        (let ((__message102323
               (let ((__slot102324
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102321 'message))))
                 (if __slot102324
                     __slot102324
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self100479102086%_ _%message102088%_ . _%rest102089%_)
            (let* ((_%self102091%_ _%self100479102086%_)
                   (_%self102093%_ _%self102091%_)
                   (_%message102107%_
                    (if (string? _%message102088%_)
                        _%message102088%_
                        (call-with-output-string
                         '""
                         (lambda (_%g102102102104%_)
                           (display _%message102088%_ _%g102102102104%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self102093%_
                 _%message102107%_
                 __message102323
                 '#f
                 '#f))
              (apply class-instance-init! _%self102093%_ _%rest102089%_))))))
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
      (lambda (_%self100480101808%_ _%port101810%_)
        (let* ((_%self101812%_ _%self100480101808%_)
               (_%self101814%_ _%self101812%_))
          (let ((_%tmp-port101824%_ (open-output-string))
                (_%display-error-newline101825%_
                 (> (output-port-column _%port101810%_) '0)))
            (fix-port-width! _%tmp-port101824%_)
            (let ((__tmp102361
                   (lambda ()
                     (if _%display-error-newline101825%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e101828%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101814%_ 'where))))
                       (if _%$e101828%_ (display _%$e101828%_) (display '"?")))
                     (let ((__tmp102362
                            (let ((__tmp102363
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self101814%_))))
                              (declare (not safe))
                              (##type-name __tmp102363))))
                       (declare (not safe))
                       (display* '" [" __tmp102362 '"]: "))
                     (let ((__tmp102364
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101814%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp102364))
                     (let ((_%irritants101832%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101814%_ 'irritants))))
                       (if (null? _%irritants101832%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj101834%_)
                                (if (u8vector? _%obj101834%_)
                                    (let ((__tmp102365
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj101834%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp102365))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj101834%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants101832%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont101835101837%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self101814%_
                                   'continuation))))
                           (if _%cont101835101837%_
                               (let ((_%cont101840%_ _%cont101835101837%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont101840%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp102361
               current-output-port
               _%tmp-port101824%_))
            (let ((__tmp102366 (get-output-string _%tmp-port101824%_)))
              (declare (not safe))
              (##write-string __tmp102366 _%port101810%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass102325 __method-table102326)
        (let ((__irritants102327
               (let ((__slot102331
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102325 'irritants))))
                 (if __slot102331
                     __slot102331
                     (error '"Unknown slot" 'irritants))))
              (__continuation102328
               (let ((__slot102332
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102325 'continuation))))
                 (if __slot102332
                     __slot102332
                     (error '"Unknown slot" 'continuation))))
              (__where102329
               (let ((__slot102333
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102325 'where))))
                 (if __slot102333
                     __slot102333
                     (error '"Unknown slot" 'where))))
              (__message102330
               (let ((__slot102334
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102325 'message))))
                 (if __slot102334
                     __slot102334
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self100480101808%_ _%port101810%_)
            (let* ((_%self101812%_ _%self100480101808%_)
                   (_%self101814%_ _%self101812%_))
              (let ((_%tmp-port101824%_ (open-output-string))
                    (_%display-error-newline101825%_
                     (> (output-port-column _%port101810%_) '0)))
                (fix-port-width! _%tmp-port101824%_)
                (let ((__tmp102367
                       (lambda ()
                         (if _%display-error-newline101825%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e101828%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101814%_
                                   __where102329
                                   '#f
                                   '#f))))
                           (if _%$e101828%_
                               (display _%$e101828%_)
                               (display '"?")))
                         (let ((__tmp102368
                                (let ((__tmp102369
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self101814%_))))
                                  (declare (not safe))
                                  (##type-name __tmp102369))))
                           (declare (not safe))
                           (display* '" [" __tmp102368 '"]: "))
                         (let ((__tmp102370
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101814%_
                                   __message102330
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp102370))
                         (let ((_%irritants101832%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101814%_
                                   __irritants102327
                                   '#f
                                   '#f))))
                           (if (null? _%irritants101832%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj101834%_)
                                    (if (u8vector? _%obj101834%_)
                                        (let ((__tmp102371
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj101834%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp102371))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj101834%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants101832%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont101835101837%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self101814%_
                                       __continuation102328
                                       '#f
                                       '#f))))
                               (if _%cont101835101837%_
                                   (let ((_%cont101840%_ _%cont101835101837%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont101840%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp102367
                   current-output-port
                   _%tmp-port101824%_))
                (let ((__tmp102372 (get-output-string _%tmp-port101824%_)))
                  (declare (not safe))
                  (##write-string __tmp102372 _%port101810%_))))))))
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
      (lambda (_%self100481101662%_ _%port101664%_)
        (let* ((_%self101666%_ _%self100481101662%_)
               (_%self101668%_ _%self101666%_)
               (_%tmp-port101678%_ (open-output-string)))
          (fix-port-width! _%tmp-port101678%_)
          (let ((__tmp102373
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self101668%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp102373 _%tmp-port101678%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont101679101681%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self101668%_ 'continuation))))
                (if _%cont101679101681%_
                    (let ((_%cont101684%_ _%cont101679101681%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port101678%_)
                      (newline _%tmp-port101678%_)
                      (display-continuation-backtrace
                       _%cont101684%_
                       _%tmp-port101678%_))
                    '#f))
              '#!void)
          (let ((__tmp102374 (get-output-string _%tmp-port101678%_)))
            (declare (not safe))
            (##write-string __tmp102374 _%port101664%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass102335 __method-table102336)
        (let ((__exception102337
               (let ((__slot102339
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102335 'exception))))
                 (if __slot102339
                     __slot102339
                     (error '"Unknown slot" 'exception))))
              (__continuation102338
               (let ((__slot102340
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102335 'continuation))))
                 (if __slot102340
                     __slot102340
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100481101662%_ _%port101664%_)
            (let* ((_%self101666%_ _%self100481101662%_)
                   (_%self101668%_ _%self101666%_)
                   (_%tmp-port101678%_ (open-output-string)))
              (fix-port-width! _%tmp-port101678%_)
              (let ((__tmp102375
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self101668%_
                        __exception102337
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp102375 _%tmp-port101678%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont101679101681%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self101668%_
                            __continuation102338
                            '#f
                            '#f))))
                    (if _%cont101679101681%_
                        (let ((_%cont101684%_ _%cont101679101681%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port101678%_)
                          (newline _%tmp-port101678%_)
                          (display-continuation-backtrace
                           _%cont101684%_
                           _%tmp-port101678%_))
                        '#f))
                  '#!void)
              (let ((__tmp102376 (get-output-string _%tmp-port101678%_)))
                (declare (not safe))
                (##write-string __tmp102376 _%port101664%_)))))))
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
      (lambda (_%port101534%_)
        (if (macro-character-port? _%port101534%_)
            (let ((_%old-width101536%_
                   (macro-character-port-output-width _%port101534%_)))
              (macro-character-port-output-width-set!
               _%port101534%_
               (lambda (_%port101538%_) '256))
              _%old-width101536%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port101531%_ _%old-width101532%_)
        (if (macro-character-port? _%port101531%_)
            (macro-character-port-output-width-set!
             _%port101531%_
             _%old-width101532%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e101529%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e101529%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn101523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101523%_))
            (let ((_%e101526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101523%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e101526%_))
            (macro-abandoned-mutex-exception? _%exn101523%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn101519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101519%_))
            (let ((_%e101521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101519%_ 'exception))))
              (macro-cfun-conversion-exception? _%e101521%_))
            (macro-cfun-conversion-exception? _%exn101519%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn101515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101515%_))
            (let ((_%e101517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101515%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101517%_)
                  (macro-cfun-conversion-exception-arguments _%e101517%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e101517%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101515%_)
                (macro-cfun-conversion-exception-arguments _%exn101515%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn101515%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn101511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101511%_))
            (let ((_%e101513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101511%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101513%_)
                  (macro-cfun-conversion-exception-code _%e101513%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e101513%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101511%_)
                (macro-cfun-conversion-exception-code _%exn101511%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn101511%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn101507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101507%_))
            (let ((_%e101509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101507%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101509%_)
                  (macro-cfun-conversion-exception-message _%e101509%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e101509%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101507%_)
                (macro-cfun-conversion-exception-message _%exn101507%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn101507%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn101501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101501%_))
            (let ((_%e101504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101501%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101504%_)
                  (macro-cfun-conversion-exception-procedure _%e101504%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e101504%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101501%_)
                (macro-cfun-conversion-exception-procedure _%exn101501%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn101501%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn101497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101497%_))
            (let ((_%e101499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101497%_ 'exception))))
              (macro-datum-parsing-exception? _%e101499%_))
            (macro-datum-parsing-exception? _%exn101497%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn101493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101493%_))
            (let ((_%e101495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101493%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101495%_)
                  (macro-datum-parsing-exception-kind _%e101495%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e101495%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101493%_)
                (macro-datum-parsing-exception-kind _%exn101493%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn101493%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn101489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101489%_))
            (let ((_%e101491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101489%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101491%_)
                  (macro-datum-parsing-exception-parameters _%e101491%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e101491%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101489%_)
                (macro-datum-parsing-exception-parameters _%exn101489%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn101489%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn101483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101483%_))
            (let ((_%e101486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101483%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101486%_)
                  (macro-datum-parsing-exception-readenv _%e101486%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e101486%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101483%_)
                (macro-datum-parsing-exception-readenv _%exn101483%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn101483%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn101477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101477%_))
            (let ((_%e101480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101477%_ 'exception))))
              (macro-deadlock-exception? _%e101480%_))
            (macro-deadlock-exception? _%exn101477%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn101473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101473%_))
            (let ((_%e101475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101473%_ 'exception))))
              (macro-divide-by-zero-exception? _%e101475%_))
            (macro-divide-by-zero-exception? _%exn101473%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn101469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101469%_))
            (let ((_%e101471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101469%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101471%_)
                  (macro-divide-by-zero-exception-arguments _%e101471%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e101471%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101469%_)
                (macro-divide-by-zero-exception-arguments _%exn101469%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn101469%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn101463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101463%_))
            (let ((_%e101466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101463%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101466%_)
                  (macro-divide-by-zero-exception-procedure _%e101466%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e101466%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101463%_)
                (macro-divide-by-zero-exception-procedure _%exn101463%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn101463%_ '())))))))
    (define error-exception?
      (lambda (_%exn101459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101459%_))
            (let ((_%e101461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101459%_ 'exception))))
              (macro-error-exception? _%e101461%_))
            (macro-error-exception? _%exn101459%_))))
    (define error-exception-message
      (lambda (_%exn101455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101455%_))
            (let ((_%e101457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101455%_ 'exception))))
              (if (macro-error-exception? _%e101457%_)
                  (macro-error-exception-message _%e101457%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e101457%_ '())))))
            (if (macro-error-exception? _%exn101455%_)
                (macro-error-exception-message _%exn101455%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn101455%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn101449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101449%_))
            (let ((_%e101452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101449%_ 'exception))))
              (if (macro-error-exception? _%e101452%_)
                  (macro-error-exception-parameters _%e101452%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e101452%_ '())))))
            (if (macro-error-exception? _%exn101449%_)
                (macro-error-exception-parameters _%exn101449%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn101449%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn101445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101445%_))
            (let ((_%e101447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101445%_ 'exception))))
              (macro-expression-parsing-exception? _%e101447%_))
            (macro-expression-parsing-exception? _%exn101445%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn101441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101441%_))
            (let ((_%e101443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101441%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101443%_)
                  (macro-expression-parsing-exception-kind _%e101443%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e101443%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101441%_)
                (macro-expression-parsing-exception-kind _%exn101441%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn101441%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn101437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101437%_))
            (let ((_%e101439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101437%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101439%_)
                  (macro-expression-parsing-exception-parameters _%e101439%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e101439%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101437%_)
                (macro-expression-parsing-exception-parameters _%exn101437%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn101437%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn101431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101431%_))
            (let ((_%e101434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101431%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101434%_)
                  (macro-expression-parsing-exception-source _%e101434%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e101434%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101431%_)
                (macro-expression-parsing-exception-source _%exn101431%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn101431%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn101427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101427%_))
            (let ((_%e101429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101427%_ 'exception))))
              (macro-file-exists-exception? _%e101429%_))
            (macro-file-exists-exception? _%exn101427%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn101423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101423%_))
            (let ((_%e101425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101423%_ 'exception))))
              (if (macro-file-exists-exception? _%e101425%_)
                  (macro-file-exists-exception-arguments _%e101425%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e101425%_ '())))))
            (if (macro-file-exists-exception? _%exn101423%_)
                (macro-file-exists-exception-arguments _%exn101423%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn101423%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn101417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101417%_))
            (let ((_%e101420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101417%_ 'exception))))
              (if (macro-file-exists-exception? _%e101420%_)
                  (macro-file-exists-exception-procedure _%e101420%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e101420%_ '())))))
            (if (macro-file-exists-exception? _%exn101417%_)
                (macro-file-exists-exception-procedure _%exn101417%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn101417%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn101413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101413%_))
            (let ((_%e101415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101413%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e101415%_))
            (macro-fixnum-overflow-exception? _%exn101413%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn101409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101409%_))
            (let ((_%e101411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101409%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101411%_)
                  (macro-fixnum-overflow-exception-arguments _%e101411%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e101411%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101409%_)
                (macro-fixnum-overflow-exception-arguments _%exn101409%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn101409%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn101403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101403%_))
            (let ((_%e101406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101403%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101406%_)
                  (macro-fixnum-overflow-exception-procedure _%e101406%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e101406%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101403%_)
                (macro-fixnum-overflow-exception-procedure _%exn101403%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn101403%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn101397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101397%_))
            (let ((_%e101400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101397%_ 'exception))))
              (macro-heap-overflow-exception? _%e101400%_))
            (macro-heap-overflow-exception? _%exn101397%_))))
    (define inactive-thread-exception?
      (lambda (_%exn101393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101393%_))
            (let ((_%e101395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101393%_ 'exception))))
              (macro-inactive-thread-exception? _%e101395%_))
            (macro-inactive-thread-exception? _%exn101393%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn101389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101389%_))
            (let ((_%e101391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101389%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101391%_)
                  (macro-inactive-thread-exception-arguments _%e101391%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e101391%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101389%_)
                (macro-inactive-thread-exception-arguments _%exn101389%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn101389%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn101383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101383%_))
            (let ((_%e101386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101383%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101386%_)
                  (macro-inactive-thread-exception-procedure _%e101386%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e101386%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101383%_)
                (macro-inactive-thread-exception-procedure _%exn101383%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn101383%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn101379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101379%_))
            (let ((_%e101381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101379%_ 'exception))))
              (macro-initialized-thread-exception? _%e101381%_))
            (macro-initialized-thread-exception? _%exn101379%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn101375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101375%_))
            (let ((_%e101377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101375%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101377%_)
                  (macro-initialized-thread-exception-arguments _%e101377%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e101377%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101375%_)
                (macro-initialized-thread-exception-arguments _%exn101375%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn101375%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn101369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101369%_))
            (let ((_%e101372%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101369%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101372%_)
                  (macro-initialized-thread-exception-procedure _%e101372%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e101372%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101369%_)
                (macro-initialized-thread-exception-procedure _%exn101369%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn101369%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn101365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101365%_))
            (let ((_%e101367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101365%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e101367%_))
            (macro-invalid-hash-number-exception? _%exn101365%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn101361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101361%_))
            (let ((_%e101363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101361%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101363%_)
                  (macro-invalid-hash-number-exception-arguments _%e101363%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e101363%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101361%_)
                (macro-invalid-hash-number-exception-arguments _%exn101361%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn101361%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn101355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101355%_))
            (let ((_%e101358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101355%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101358%_)
                  (macro-invalid-hash-number-exception-procedure _%e101358%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e101358%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101355%_)
                (macro-invalid-hash-number-exception-procedure _%exn101355%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn101355%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn101351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101351%_))
            (let ((_%e101353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101351%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e101353%_))
            (macro-invalid-utf8-encoding-exception? _%exn101351%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn101347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101347%_))
            (let ((_%e101349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101347%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101349%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e101349%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e101349%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101347%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn101347%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn101347%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn101341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101341%_))
            (let ((_%e101344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101341%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101344%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e101344%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e101344%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101341%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn101341%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn101341%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn101337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101337%_))
            (let ((_%e101339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101337%_ 'exception))))
              (macro-join-timeout-exception? _%e101339%_))
            (macro-join-timeout-exception? _%exn101337%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn101333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101333%_))
            (let ((_%e101335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101333%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101335%_)
                  (macro-join-timeout-exception-arguments _%e101335%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e101335%_ '())))))
            (if (macro-join-timeout-exception? _%exn101333%_)
                (macro-join-timeout-exception-arguments _%exn101333%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn101333%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn101327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101327%_))
            (let ((_%e101330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101327%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101330%_)
                  (macro-join-timeout-exception-procedure _%e101330%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e101330%_ '())))))
            (if (macro-join-timeout-exception? _%exn101327%_)
                (macro-join-timeout-exception-procedure _%exn101327%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn101327%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn101323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101323%_))
            (let ((_%e101325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101323%_ 'exception))))
              (macro-keyword-expected-exception? _%e101325%_))
            (macro-keyword-expected-exception? _%exn101323%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn101319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101319%_))
            (let ((_%e101321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101319%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101321%_)
                  (macro-keyword-expected-exception-arguments _%e101321%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e101321%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101319%_)
                (macro-keyword-expected-exception-arguments _%exn101319%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn101319%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn101313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101313%_))
            (let ((_%e101316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101313%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101316%_)
                  (macro-keyword-expected-exception-procedure _%e101316%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e101316%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101313%_)
                (macro-keyword-expected-exception-procedure _%exn101313%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn101313%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn101309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101309%_))
            (let ((_%e101311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101309%_ 'exception))))
              (macro-length-mismatch-exception? _%e101311%_))
            (macro-length-mismatch-exception? _%exn101309%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn101305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101305%_))
            (let ((_%e101307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101305%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101307%_)
                  (macro-length-mismatch-exception-arg-id _%e101307%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e101307%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101305%_)
                (macro-length-mismatch-exception-arg-id _%exn101305%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn101305%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn101301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101301%_))
            (let ((_%e101303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101301%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101303%_)
                  (macro-length-mismatch-exception-arguments _%e101303%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e101303%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101301%_)
                (macro-length-mismatch-exception-arguments _%exn101301%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn101301%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn101295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101295%_))
            (let ((_%e101298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101295%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101298%_)
                  (macro-length-mismatch-exception-procedure _%e101298%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e101298%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101295%_)
                (macro-length-mismatch-exception-procedure _%exn101295%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn101295%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn101291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101291%_))
            (let ((_%e101293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101291%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e101293%_))
            (macro-mailbox-receive-timeout-exception? _%exn101291%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn101287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101287%_))
            (let ((_%e101289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101287%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101289%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e101289%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e101289%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101287%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn101287%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn101287%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn101281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101281%_))
            (let ((_%e101284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101281%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101284%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e101284%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e101284%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101281%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn101281%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn101281%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn101277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101277%_))
            (let ((_%e101279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101277%_ 'exception))))
              (macro-module-not-found-exception? _%e101279%_))
            (macro-module-not-found-exception? _%exn101277%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn101273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101273%_))
            (let ((_%e101275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101273%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101275%_)
                  (macro-module-not-found-exception-arguments _%e101275%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e101275%_ '())))))
            (if (macro-module-not-found-exception? _%exn101273%_)
                (macro-module-not-found-exception-arguments _%exn101273%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn101273%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn101267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101267%_))
            (let ((_%e101270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101267%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101270%_)
                  (macro-module-not-found-exception-procedure _%e101270%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e101270%_ '())))))
            (if (macro-module-not-found-exception? _%exn101267%_)
                (macro-module-not-found-exception-procedure _%exn101267%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn101267%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn101261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101261%_))
            (let ((_%e101264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101261%_ 'exception))))
              (macro-multiple-c-return-exception? _%e101264%_))
            (macro-multiple-c-return-exception? _%exn101261%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn101257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101257%_))
            (let ((_%e101259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101257%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e101259%_))
            (macro-no-such-file-or-directory-exception? _%exn101257%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn101253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101253%_))
            (let ((_%e101255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101253%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101255%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e101255%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e101255%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101253%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn101253%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn101253%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn101247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101247%_))
            (let ((_%e101250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101247%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101250%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e101250%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e101250%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101247%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn101247%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn101247%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn101243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101243%_))
            (let ((_%e101245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101243%_ 'exception))))
              (macro-noncontinuable-exception? _%e101245%_))
            (macro-noncontinuable-exception? _%exn101243%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn101237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101237%_))
            (let ((_%e101240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101237%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e101240%_)
                  (macro-noncontinuable-exception-reason _%e101240%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e101240%_ '())))))
            (if (macro-noncontinuable-exception? _%exn101237%_)
                (macro-noncontinuable-exception-reason _%exn101237%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn101237%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn101233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101233%_))
            (let ((_%e101235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101233%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e101235%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn101233%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn101229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101229%_))
            (let ((_%e101231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101229%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101231%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e101231%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e101231%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101229%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn101229%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn101229%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn101223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101223%_))
            (let ((_%e101226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101223%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101226%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e101226%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e101226%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101223%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn101223%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn101223%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn101219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101219%_))
            (let ((_%e101221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101219%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e101221%_))
            (macro-nonprocedure-operator-exception? _%exn101219%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn101215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101215%_))
            (let ((_%e101217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101215%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101217%_)
                  (macro-nonprocedure-operator-exception-arguments _%e101217%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e101217%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101215%_)
                (macro-nonprocedure-operator-exception-arguments _%exn101215%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn101215%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn101211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101211%_))
            (let ((_%e101213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101211%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101213%_)
                  (macro-nonprocedure-operator-exception-code _%e101213%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e101213%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101211%_)
                (macro-nonprocedure-operator-exception-code _%exn101211%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn101211%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn101207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101207%_))
            (let ((_%e101209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101207%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101209%_)
                  (macro-nonprocedure-operator-exception-operator _%e101209%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e101209%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101207%_)
                (macro-nonprocedure-operator-exception-operator _%exn101207%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn101207%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn101201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101201%_))
            (let ((_%e101204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101201%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101204%_)
                  (macro-nonprocedure-operator-exception-rte _%e101204%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e101204%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101201%_)
                (macro-nonprocedure-operator-exception-rte _%exn101201%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn101201%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn101197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101197%_))
            (let ((_%e101199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101197%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e101199%_))
            (macro-not-in-compilation-context-exception? _%exn101197%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn101193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101193%_))
            (let ((_%e101195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101193%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101195%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e101195%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e101195%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101193%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn101193%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn101193%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn101187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101187%_))
            (let ((_%e101190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101187%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101190%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e101190%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e101190%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101187%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn101187%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn101187%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn101183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101183%_))
            (let ((_%e101185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101183%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e101185%_))
            (macro-number-of-arguments-limit-exception? _%exn101183%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn101179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101179%_))
            (let ((_%e101181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101179%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101181%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e101181%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e101181%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101179%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn101179%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn101179%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn101173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101173%_))
            (let ((_%e101176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101173%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101176%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e101176%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e101176%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101173%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn101173%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn101173%_ '())))))))
    (define os-exception?
      (lambda (_%exn101169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101169%_))
            (let ((_%e101171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101169%_ 'exception))))
              (macro-os-exception? _%e101171%_))
            (macro-os-exception? _%exn101169%_))))
    (define os-exception-arguments
      (lambda (_%exn101165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101165%_))
            (let ((_%e101167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101165%_ 'exception))))
              (if (macro-os-exception? _%e101167%_)
                  (macro-os-exception-arguments _%e101167%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e101167%_ '())))))
            (if (macro-os-exception? _%exn101165%_)
                (macro-os-exception-arguments _%exn101165%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn101165%_ '())))))))
    (define os-exception-code
      (lambda (_%exn101161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101161%_))
            (let ((_%e101163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101161%_ 'exception))))
              (if (macro-os-exception? _%e101163%_)
                  (macro-os-exception-code _%e101163%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e101163%_ '())))))
            (if (macro-os-exception? _%exn101161%_)
                (macro-os-exception-code _%exn101161%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn101161%_ '())))))))
    (define os-exception-message
      (lambda (_%exn101157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101157%_))
            (let ((_%e101159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101157%_ 'exception))))
              (if (macro-os-exception? _%e101159%_)
                  (macro-os-exception-message _%e101159%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e101159%_ '())))))
            (if (macro-os-exception? _%exn101157%_)
                (macro-os-exception-message _%exn101157%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn101157%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn101151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101151%_))
            (let ((_%e101154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101151%_ 'exception))))
              (if (macro-os-exception? _%e101154%_)
                  (macro-os-exception-procedure _%e101154%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e101154%_ '())))))
            (if (macro-os-exception? _%exn101151%_)
                (macro-os-exception-procedure _%exn101151%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn101151%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn101147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101147%_))
            (let ((_%e101149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101147%_ 'exception))))
              (macro-permission-denied-exception? _%e101149%_))
            (macro-permission-denied-exception? _%exn101147%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn101143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101143%_))
            (let ((_%e101145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101143%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101145%_)
                  (macro-permission-denied-exception-arguments _%e101145%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e101145%_ '())))))
            (if (macro-permission-denied-exception? _%exn101143%_)
                (macro-permission-denied-exception-arguments _%exn101143%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn101143%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn101137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101137%_))
            (let ((_%e101140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101137%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101140%_)
                  (macro-permission-denied-exception-procedure _%e101140%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e101140%_ '())))))
            (if (macro-permission-denied-exception? _%exn101137%_)
                (macro-permission-denied-exception-procedure _%exn101137%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn101137%_ '())))))))
    (define range-exception?
      (lambda (_%exn101133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101133%_))
            (let ((_%e101135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101133%_ 'exception))))
              (macro-range-exception? _%e101135%_))
            (macro-range-exception? _%exn101133%_))))
    (define range-exception-arg-id
      (lambda (_%exn101129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101129%_))
            (let ((_%e101131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101129%_ 'exception))))
              (if (macro-range-exception? _%e101131%_)
                  (macro-range-exception-arg-id _%e101131%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e101131%_ '())))))
            (if (macro-range-exception? _%exn101129%_)
                (macro-range-exception-arg-id _%exn101129%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn101129%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn101125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101125%_))
            (let ((_%e101127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101125%_ 'exception))))
              (if (macro-range-exception? _%e101127%_)
                  (macro-range-exception-arguments _%e101127%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e101127%_ '())))))
            (if (macro-range-exception? _%exn101125%_)
                (macro-range-exception-arguments _%exn101125%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn101125%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn101119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101119%_))
            (let ((_%e101122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101119%_ 'exception))))
              (if (macro-range-exception? _%e101122%_)
                  (macro-range-exception-procedure _%e101122%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e101122%_ '())))))
            (if (macro-range-exception? _%exn101119%_)
                (macro-range-exception-procedure _%exn101119%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn101119%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn101115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101115%_))
            (let ((_%e101117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101115%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e101117%_))
            (macro-rpc-remote-error-exception? _%exn101115%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn101111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101111%_))
            (let ((_%e101113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101111%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101113%_)
                  (macro-rpc-remote-error-exception-arguments _%e101113%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e101113%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101111%_)
                (macro-rpc-remote-error-exception-arguments _%exn101111%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn101111%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn101107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101107%_))
            (let ((_%e101109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101107%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101109%_)
                  (macro-rpc-remote-error-exception-message _%e101109%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e101109%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101107%_)
                (macro-rpc-remote-error-exception-message _%exn101107%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn101107%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn101101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101101%_))
            (let ((_%e101104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101101%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101104%_)
                  (macro-rpc-remote-error-exception-procedure _%e101104%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e101104%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101101%_)
                (macro-rpc-remote-error-exception-procedure _%exn101101%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn101101%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn101097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101097%_))
            (let ((_%e101099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101097%_ 'exception))))
              (macro-scheduler-exception? _%e101099%_))
            (macro-scheduler-exception? _%exn101097%_))))
    (define scheduler-exception-reason
      (lambda (_%exn101091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101091%_))
            (let ((_%e101094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101091%_ 'exception))))
              (if (macro-scheduler-exception? _%e101094%_)
                  (macro-scheduler-exception-reason _%e101094%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e101094%_ '())))))
            (if (macro-scheduler-exception? _%exn101091%_)
                (macro-scheduler-exception-reason _%exn101091%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn101091%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn101087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101087%_))
            (let ((_%e101089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101087%_ 'exception))))
              (macro-sfun-conversion-exception? _%e101089%_))
            (macro-sfun-conversion-exception? _%exn101087%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn101083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101083%_))
            (let ((_%e101085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101083%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101085%_)
                  (macro-sfun-conversion-exception-arguments _%e101085%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e101085%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101083%_)
                (macro-sfun-conversion-exception-arguments _%exn101083%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn101083%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn101079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101079%_))
            (let ((_%e101081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101079%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101081%_)
                  (macro-sfun-conversion-exception-code _%e101081%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e101081%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101079%_)
                (macro-sfun-conversion-exception-code _%exn101079%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn101079%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn101075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101075%_))
            (let ((_%e101077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101075%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101077%_)
                  (macro-sfun-conversion-exception-message _%e101077%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e101077%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101075%_)
                (macro-sfun-conversion-exception-message _%exn101075%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn101075%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn101069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101069%_))
            (let ((_%e101072%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101069%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101072%_)
                  (macro-sfun-conversion-exception-procedure _%e101072%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e101072%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101069%_)
                (macro-sfun-conversion-exception-procedure _%exn101069%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn101069%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn101063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101063%_))
            (let ((_%e101066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101063%_ 'exception))))
              (macro-stack-overflow-exception? _%e101066%_))
            (macro-stack-overflow-exception? _%exn101063%_))))
    (define started-thread-exception?
      (lambda (_%exn101059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101059%_))
            (let ((_%e101061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101059%_ 'exception))))
              (macro-started-thread-exception? _%e101061%_))
            (macro-started-thread-exception? _%exn101059%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn101055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101055%_))
            (let ((_%e101057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101055%_ 'exception))))
              (if (macro-started-thread-exception? _%e101057%_)
                  (macro-started-thread-exception-arguments _%e101057%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e101057%_ '())))))
            (if (macro-started-thread-exception? _%exn101055%_)
                (macro-started-thread-exception-arguments _%exn101055%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn101055%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn101049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101049%_))
            (let ((_%e101052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101049%_ 'exception))))
              (if (macro-started-thread-exception? _%e101052%_)
                  (macro-started-thread-exception-procedure _%e101052%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e101052%_ '())))))
            (if (macro-started-thread-exception? _%exn101049%_)
                (macro-started-thread-exception-procedure _%exn101049%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn101049%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn101045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101045%_))
            (let ((_%e101047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101045%_ 'exception))))
              (macro-terminated-thread-exception? _%e101047%_))
            (macro-terminated-thread-exception? _%exn101045%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn101041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101041%_))
            (let ((_%e101043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101041%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101043%_)
                  (macro-terminated-thread-exception-arguments _%e101043%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e101043%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101041%_)
                (macro-terminated-thread-exception-arguments _%exn101041%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn101041%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn101035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101035%_))
            (let ((_%e101038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101035%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101038%_)
                  (macro-terminated-thread-exception-procedure _%e101038%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e101038%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101035%_)
                (macro-terminated-thread-exception-procedure _%exn101035%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn101035%_ '())))))))
    (define type-exception?
      (lambda (_%exn101031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101031%_))
            (let ((_%e101033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101031%_ 'exception))))
              (macro-type-exception? _%e101033%_))
            (macro-type-exception? _%exn101031%_))))
    (define type-exception-arg-id
      (lambda (_%exn101027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101027%_))
            (let ((_%e101029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101027%_ 'exception))))
              (if (macro-type-exception? _%e101029%_)
                  (macro-type-exception-arg-id _%e101029%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e101029%_ '())))))
            (if (macro-type-exception? _%exn101027%_)
                (macro-type-exception-arg-id _%exn101027%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn101027%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn101023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101023%_))
            (let ((_%e101025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101023%_ 'exception))))
              (if (macro-type-exception? _%e101025%_)
                  (macro-type-exception-arguments _%e101025%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e101025%_ '())))))
            (if (macro-type-exception? _%exn101023%_)
                (macro-type-exception-arguments _%exn101023%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn101023%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn101019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101019%_))
            (let ((_%e101021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101019%_ 'exception))))
              (if (macro-type-exception? _%e101021%_)
                  (macro-type-exception-procedure _%e101021%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e101021%_ '())))))
            (if (macro-type-exception? _%exn101019%_)
                (macro-type-exception-procedure _%exn101019%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn101019%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn101013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101013%_))
            (let ((_%e101016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101013%_ 'exception))))
              (if (macro-type-exception? _%e101016%_)
                  (macro-type-exception-type-id _%e101016%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e101016%_ '())))))
            (if (macro-type-exception? _%exn101013%_)
                (macro-type-exception-type-id _%exn101013%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn101013%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn101009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101009%_))
            (let ((_%e101011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101009%_ 'exception))))
              (macro-unbound-global-exception? _%e101011%_))
            (macro-unbound-global-exception? _%exn101009%_))))
    (define unbound-global-exception-code
      (lambda (_%exn101005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101005%_))
            (let ((_%e101007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101005%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101007%_)
                  (macro-unbound-global-exception-code _%e101007%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e101007%_ '())))))
            (if (macro-unbound-global-exception? _%exn101005%_)
                (macro-unbound-global-exception-code _%exn101005%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn101005%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn101001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101001%_))
            (let ((_%e101003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101001%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101003%_)
                  (macro-unbound-global-exception-rte _%e101003%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e101003%_ '())))))
            (if (macro-unbound-global-exception? _%exn101001%_)
                (macro-unbound-global-exception-rte _%exn101001%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn101001%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn100995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100995%_))
            (let ((_%e100998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100995%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100998%_)
                  (macro-unbound-global-exception-variable _%e100998%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e100998%_ '())))))
            (if (macro-unbound-global-exception? _%exn100995%_)
                (macro-unbound-global-exception-variable _%exn100995%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn100995%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn100991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100991%_))
            (let ((_%e100993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100991%_ 'exception))))
              (macro-unbound-key-exception? _%e100993%_))
            (macro-unbound-key-exception? _%exn100991%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn100987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100987%_))
            (let ((_%e100989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100987%_ 'exception))))
              (if (macro-unbound-key-exception? _%e100989%_)
                  (macro-unbound-key-exception-arguments _%e100989%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e100989%_ '())))))
            (if (macro-unbound-key-exception? _%exn100987%_)
                (macro-unbound-key-exception-arguments _%exn100987%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn100987%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn100981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100981%_))
            (let ((_%e100984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100981%_ 'exception))))
              (if (macro-unbound-key-exception? _%e100984%_)
                  (macro-unbound-key-exception-procedure _%e100984%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e100984%_ '())))))
            (if (macro-unbound-key-exception? _%exn100981%_)
                (macro-unbound-key-exception-procedure _%exn100981%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn100981%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn100977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100977%_))
            (let ((_%e100979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100977%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e100979%_))
            (macro-unbound-os-environment-variable-exception? _%exn100977%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn100973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100973%_))
            (let ((_%e100975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100973%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e100975%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e100975%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e100975%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn100973%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn100973%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn100973%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn100967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100967%_))
            (let ((_%e100970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100967%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e100970%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e100970%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e100970%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn100967%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn100967%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn100967%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn100963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100963%_))
            (let ((_%e100965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100963%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e100965%_))
            (macro-unbound-serial-number-exception? _%exn100963%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn100959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100959%_))
            (let ((_%e100961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100959%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e100961%_)
                  (macro-unbound-serial-number-exception-arguments _%e100961%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e100961%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn100959%_)
                (macro-unbound-serial-number-exception-arguments _%exn100959%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn100959%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn100953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100953%_))
            (let ((_%e100956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100953%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e100956%_)
                  (macro-unbound-serial-number-exception-procedure _%e100956%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e100956%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn100953%_)
                (macro-unbound-serial-number-exception-procedure _%exn100953%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn100953%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn100949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100949%_))
            (let ((_%e100951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100949%_ 'exception))))
              (macro-uncaught-exception? _%e100951%_))
            (macro-uncaught-exception? _%exn100949%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn100945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100945%_))
            (let ((_%e100947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100945%_ 'exception))))
              (if (macro-uncaught-exception? _%e100947%_)
                  (macro-uncaught-exception-arguments _%e100947%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e100947%_ '())))))
            (if (macro-uncaught-exception? _%exn100945%_)
                (macro-uncaught-exception-arguments _%exn100945%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn100945%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn100941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100941%_))
            (let ((_%e100943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100941%_ 'exception))))
              (if (macro-uncaught-exception? _%e100943%_)
                  (macro-uncaught-exception-procedure _%e100943%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e100943%_ '())))))
            (if (macro-uncaught-exception? _%exn100941%_)
                (macro-uncaught-exception-procedure _%exn100941%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn100941%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn100935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100935%_))
            (let ((_%e100938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100935%_ 'exception))))
              (if (macro-uncaught-exception? _%e100938%_)
                  (macro-uncaught-exception-reason _%e100938%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e100938%_ '())))))
            (if (macro-uncaught-exception? _%exn100935%_)
                (macro-uncaught-exception-reason _%exn100935%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn100935%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn100931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100931%_))
            (let ((_%e100933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100931%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e100933%_))
            (macro-uninitialized-thread-exception? _%exn100931%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn100927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100927%_))
            (let ((_%e100929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100927%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e100929%_)
                  (macro-uninitialized-thread-exception-arguments _%e100929%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e100929%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn100927%_)
                (macro-uninitialized-thread-exception-arguments _%exn100927%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn100927%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn100921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100921%_))
            (let ((_%e100924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100921%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e100924%_)
                  (macro-uninitialized-thread-exception-procedure _%e100924%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e100924%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn100921%_)
                (macro-uninitialized-thread-exception-procedure _%exn100921%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn100921%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn100917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100917%_))
            (let ((_%e100919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100917%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e100919%_))
            (macro-unknown-keyword-argument-exception? _%exn100917%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn100913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100913%_))
            (let ((_%e100915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100913%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e100915%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e100915%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e100915%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn100913%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn100913%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn100913%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn100907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100907%_))
            (let ((_%e100910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100907%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e100910%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e100910%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e100910%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn100907%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn100907%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn100907%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn100903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100903%_))
            (let ((_%e100905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100903%_ 'exception))))
              (macro-unterminated-process-exception? _%e100905%_))
            (macro-unterminated-process-exception? _%exn100903%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn100899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100899%_))
            (let ((_%e100901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100899%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e100901%_)
                  (macro-unterminated-process-exception-arguments _%e100901%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e100901%_ '())))))
            (if (macro-unterminated-process-exception? _%exn100899%_)
                (macro-unterminated-process-exception-arguments _%exn100899%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn100899%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn100893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100893%_))
            (let ((_%e100896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100893%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e100896%_)
                  (macro-unterminated-process-exception-procedure _%e100896%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e100896%_ '())))))
            (if (macro-unterminated-process-exception? _%exn100893%_)
                (macro-unterminated-process-exception-procedure _%exn100893%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn100893%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn100889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100889%_))
            (let ((_%e100891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100889%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e100891%_))
            (macro-wrong-number-of-arguments-exception? _%exn100889%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn100885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100885%_))
            (let ((_%e100887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100885%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100887%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e100887%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e100887%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100885%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn100885%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn100885%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn100879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100879%_))
            (let ((_%e100882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100879%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100882%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e100882%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e100882%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100879%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn100879%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn100879%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn100875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100875%_))
            (let ((_%e100877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100875%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e100877%_))
            (macro-wrong-number-of-values-exception? _%exn100875%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn100871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100871%_))
            (let ((_%e100873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100871%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100873%_)
                  (macro-wrong-number-of-values-exception-code _%e100873%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e100873%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100871%_)
                (macro-wrong-number-of-values-exception-code _%exn100871%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn100871%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn100867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100867%_))
            (let ((_%e100869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100867%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100869%_)
                  (macro-wrong-number-of-values-exception-rte _%e100869%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e100869%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100867%_)
                (macro-wrong-number-of-values-exception-rte _%exn100867%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn100867%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn100861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100861%_))
            (let ((_%e100864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100861%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100864%_)
                  (macro-wrong-number-of-values-exception-vals _%e100864%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e100864%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100861%_)
                (macro-wrong-number-of-values-exception-vals _%exn100861%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn100861%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn100855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100855%_))
            (let ((_%e100858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100855%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e100858%_))
            (macro-wrong-processor-c-return-exception? _%exn100855%_))))))
