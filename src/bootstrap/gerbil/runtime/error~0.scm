(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1768865822)
  (begin
    (define Exception::t
      (let ((__tmp114326 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp114326
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args114296%_
        (apply make-instance Exception::t _%$args114296%_)))
    (define StackTrace::t
      (let ((__tmp114327 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp114327
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args114293%_
        (apply make-instance StackTrace::t _%$args114293%_)))
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
      (let ((__tmp114328 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp114328
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args114290%_ (apply make-instance Error::t _%$args114290%_)))
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
      (let ((__tmp114329 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp114329
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args114287%_
        (apply make-instance ContractViolation::t _%$args114287%_)))
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
      (let ((__tmp114330 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp114330
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args114284%_
        (apply make-instance RuntimeException::t _%$args114284%_)))
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
      (lambda (_%exn114279%_ _%continue114280%_)
        (let ((_%exn114282%_ (wrap-runtime-exception _%exn114279%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn114282%_ _%continue114280%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn114275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn114275%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn114275%_ 'continuation))
                '#!void
                (let ((__tmp114331
                       (lambda (_%cont114277%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn114275%_
                            'continuation
                            _%cont114277%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp114331)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn114275%_))))
    (define error
      (lambda (_%message114272%_ . _%irritants114273%_)
        (raise (let ((__obj114323
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj114323
                  _%message114272%_
                  'irritants:
                  _%irritants114273%_)
                 __obj114323))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords114244%_
               _%ctx114239114245%_
               _%contract-expr114240114247%_
               _%value114241114249%_
               _%message114251%_)
        (let* ((_%ctx114253%_
                (if (eq? _%ctx114239114245%_ absent-value)
                    '#f
                    _%ctx114239114245%_))
               (_%contract-expr114255%_
                (if (eq? _%contract-expr114240114247%_ absent-value)
                    '#f
                    _%contract-expr114240114247%_))
               (_%value114257%_
                (if (eq? _%value114241114249%_ absent-value)
                    '#f
                    _%value114241114249%_)))
          (raise (let ((__obj114324
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj114324
                    _%message114251%_
                    'where:
                    _%ctx114253%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr114255%_
                                (cons 'value: (cons _%value114257%_ '())))))
                   __obj114324)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords114262%_ . _%args114263%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords114262%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114262%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114262%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114262%_
                  'value:
                  absent-value))
               _%args114263%_)))
    (define __raise-contract-violation-error
      (lambda _%args114242114269%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args114242114269%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler114213%_ _%thunk114214%_)
        (if (procedure? _%handler114213%_)
            (let ((_%handler114218%_ _%handler114213%_))
              (if (procedure? _%thunk114214%_)
                  (let ((_%thunk114228%_ _%thunk114214%_))
                    (__with-exception-handler
                     _%handler114218%_
                     _%thunk114228%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114214%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler114213%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler114188%_ _%thunk114189%_)
        (let* ((_%handler114192%_ _%handler114188%_)
               (_%thunk114200%_ _%thunk114189%_)
               (__tmp114332
                (lambda (_%exn114209%_)
                  (let ((_%exn114211%_ (wrap-runtime-exception _%exn114209%_)))
                    (declare (not safe))
                    (_%handler114192%_ _%exn114211%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp114332 _%thunk114200%_))))
    (define with-catch
      (lambda (_%handler114163%_ _%thunk114164%_)
        (if (procedure? _%handler114163%_)
            (let ((_%handler114168%_ _%handler114163%_))
              (if (procedure? _%thunk114164%_)
                  (let ((_%thunk114178%_ _%thunk114164%_))
                    (__with-catch _%handler114168%_ _%thunk114178%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114164%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler114163%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler114138%_ _%thunk114139%_)
        (let* ((_%handler114142%_ _%handler114138%_)
               (_%thunk114150%_ _%thunk114139%_)
               (__tmp114333
                (lambda (_%cont114159%_)
                  (__with-exception-handler
                   (lambda (_%exn114161%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont114159%_
                        _%handler114142%_
                        _%exn114161%_)))
                   _%thunk114150%_))))
          (declare (not safe))
          (##continuation-capture __tmp114333))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn114125%_)
        (if (or (heap-overflow-exception? _%exn114125%_)
                (stack-overflow-exception? _%exn114125%_))
            _%exn114125%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn114125%_))
                _%exn114125%_
                (if (macro-exception? _%exn114125%_)
                    (let ((_%rte114133%_
                           (let ((__obj114325
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj114325
                                _%exn114125%_
                                '2
                                '#f
                                '#f))
                             __obj114325)))
                      (let ((__tmp114334
                             (lambda (_%cont114135%_)
                               (let ((__tmp114335
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont114135%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte114133%_
                                  'continuation
                                  __tmp114335)))))
                        (declare (not safe))
                        (##continuation-capture __tmp114334))
                      _%rte114133%_)
                    _%exn114125%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj114120%_)
        (let ((_%$e114122%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj114120%_))))
          (if _%$e114122%_ _%$e114122%_ (error-exception? _%obj114120%_)))))
    (define error-message
      (lambda (_%obj114113%_)
        (let ((_%$e114115%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj114113%_ 'message false))))
          (if _%$e114115%_
              _%$e114115%_
              (if (error-exception? _%obj114113%_)
                  (error-exception-message _%obj114113%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj114108%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114108%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114108%_ 'irritants))
            (if (error-exception? _%obj114108%_)
                (error-exception-parameters _%obj114108%_)
                '#f))))
    (define error-trace
      (lambda (_%obj114106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114106%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114106%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e114087%_ _%port114088%_)
        (let ((_%$e114090%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e114087%_ 'display-exception))))
          (if _%$e114090%_
              ((lambda (_%f114093%_) (_%f114093%_ _%e114087%_ _%port114088%_))
               _%$e114090%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e114087%_ _%port114088%_))))))
    (define display-exception__0
      (lambda (_%e114099%_)
        (let ((_%port114101%_ (current-error-port)))
          (display-exception__% _%e114099%_ _%port114101%_))))
    (define display-exception
      (lambda _g114336_
        (let ((_g114337_ (let () (declare (not safe)) (##length _g114336_))))
          (cond ((let () (declare (not safe)) (##fx= _g114337_ 1))
                 (apply display-exception__0 _g114336_))
                ((let () (declare (not safe)) (##fx= _g114337_ 2))
                 (apply display-exception__% _g114336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g114336_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self114065%_ _%message114066%_ . _%rest114067%_)
        (let* ((_%self114070%_ _%self114065%_)
               (_%message114084%_
                (if (string? _%message114066%_)
                    _%message114066%_
                    (call-with-output-string
                     '""
                     (lambda (_%g114079114081%_)
                       (display _%message114066%_ _%g114079114081%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self114070%_ 'message _%message114084%_))
          (apply class-instance-init! _%self114070%_ _%rest114067%_))))
    (define Error:::init!::specialize
      (lambda (__klass114298 __method-table114299)
        (let ((__message114300
               (let ((__slot114301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114298 'message))))
                 (if __slot114301
                     __slot114301
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self114065%_ _%message114066%_ . _%rest114067%_)
            (let* ((_%self114070%_ _%self114065%_)
                   (_%message114084%_
                    (if (string? _%message114066%_)
                        _%message114066%_
                        (call-with-output-string
                         '""
                         (lambda (_%g114079114081%_)
                           (display _%message114066%_ _%g114079114081%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self114070%_
                 _%message114084%_
                 __message114300
                 '#f
                 '#f))
              (apply class-instance-init! _%self114070%_ _%rest114067%_))))))
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
      (lambda (_%self113789%_ _%port113790%_)
        (let ((_%self113793%_ _%self113789%_))
          (let ((_%tmp-port113803%_ (open-output-string))
                (_%display-error-newline113804%_
                 (> (output-port-column _%port113790%_) '0)))
            (fix-port-width! _%tmp-port113803%_)
            (let ((__tmp114338
                   (lambda ()
                     (if _%display-error-newline113804%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e113807%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113793%_ 'where))))
                       (if _%$e113807%_ (display _%$e113807%_) (display '"?")))
                     (let ((__tmp114339
                            (let ((__tmp114340
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self113793%_))))
                              (declare (not safe))
                              (##type-name __tmp114340))))
                       (declare (not safe))
                       (display* '" [" __tmp114339 '"]: "))
                     (let ((__tmp114341
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113793%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp114341))
                     (let ((_%irritants113811%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113793%_ 'irritants))))
                       (if (null? _%irritants113811%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj113813%_)
                                (if (u8vector? _%obj113813%_)
                                    (let ((__tmp114342
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj113813%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp114342))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj113813%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants113811%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont113814113816%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self113793%_
                                   'continuation))))
                           (if _%cont113814113816%_
                               (let ((_%cont113819%_ _%cont113814113816%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont113819%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp114338
               current-output-port
               _%tmp-port113803%_))
            (let ((__tmp114343 (get-output-string _%tmp-port113803%_)))
              (declare (not safe))
              (##write-string __tmp114343 _%port113790%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass114302 __method-table114303)
        (let ((__message114304
               (let ((__slot114308
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114302 'message))))
                 (if __slot114308
                     __slot114308
                     (error '"Unknown slot" 'message))))
              (__continuation114305
               (let ((__slot114309
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114302 'continuation))))
                 (if __slot114309
                     __slot114309
                     (error '"Unknown slot" 'continuation))))
              (__irritants114306
               (let ((__slot114310
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114302 'irritants))))
                 (if __slot114310
                     __slot114310
                     (error '"Unknown slot" 'irritants))))
              (__where114307
               (let ((__slot114311
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114302 'where))))
                 (if __slot114311
                     __slot114311
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self113789%_ _%port113790%_)
            (let ((_%self113793%_ _%self113789%_))
              (let ((_%tmp-port113803%_ (open-output-string))
                    (_%display-error-newline113804%_
                     (> (output-port-column _%port113790%_) '0)))
                (fix-port-width! _%tmp-port113803%_)
                (let ((__tmp114344
                       (lambda ()
                         (if _%display-error-newline113804%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e113807%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113793%_
                                   __where114307
                                   '#f
                                   '#f))))
                           (if _%$e113807%_
                               (display _%$e113807%_)
                               (display '"?")))
                         (let ((__tmp114345
                                (let ((__tmp114346
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self113793%_))))
                                  (declare (not safe))
                                  (##type-name __tmp114346))))
                           (declare (not safe))
                           (display* '" [" __tmp114345 '"]: "))
                         (let ((__tmp114347
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113793%_
                                   __message114304
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp114347))
                         (let ((_%irritants113811%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113793%_
                                   __irritants114306
                                   '#f
                                   '#f))))
                           (if (null? _%irritants113811%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj113813%_)
                                    (if (u8vector? _%obj113813%_)
                                        (let ((__tmp114348
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj113813%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp114348))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj113813%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants113811%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont113814113816%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self113793%_
                                       __continuation114305
                                       '#f
                                       '#f))))
                               (if _%cont113814113816%_
                                   (let ((_%cont113819%_ _%cont113814113816%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont113819%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp114344
                   current-output-port
                   _%tmp-port113803%_))
                (let ((__tmp114349 (get-output-string _%tmp-port113803%_)))
                  (declare (not safe))
                  (##write-string __tmp114349 _%port113790%_))))))))
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
      (lambda (_%self113645%_ _%port113646%_)
        (let* ((_%self113649%_ _%self113645%_)
               (_%tmp-port113659%_ (open-output-string)))
          (fix-port-width! _%tmp-port113659%_)
          (let ((__tmp114350
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self113649%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp114350 _%tmp-port113659%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont113660113662%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self113649%_ 'continuation))))
                (if _%cont113660113662%_
                    (let ((_%cont113665%_ _%cont113660113662%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port113659%_)
                      (newline _%tmp-port113659%_)
                      (display-continuation-backtrace
                       _%cont113665%_
                       _%tmp-port113659%_))
                    '#f))
              '#!void)
          (let ((__tmp114351 (get-output-string _%tmp-port113659%_)))
            (declare (not safe))
            (##write-string __tmp114351 _%port113646%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass114312 __method-table114313)
        (let ((__exception114314
               (let ((__slot114316
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114312 'exception))))
                 (if __slot114316
                     __slot114316
                     (error '"Unknown slot" 'exception))))
              (__continuation114315
               (let ((__slot114317
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114312 'continuation))))
                 (if __slot114317
                     __slot114317
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self113645%_ _%port113646%_)
            (let* ((_%self113649%_ _%self113645%_)
                   (_%tmp-port113659%_ (open-output-string)))
              (fix-port-width! _%tmp-port113659%_)
              (let ((__tmp114352
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self113649%_
                        __exception114314
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp114352 _%tmp-port113659%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont113660113662%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self113649%_
                            __continuation114315
                            '#f
                            '#f))))
                    (if _%cont113660113662%_
                        (let ((_%cont113665%_ _%cont113660113662%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port113659%_)
                          (newline _%tmp-port113659%_)
                          (display-continuation-backtrace
                           _%cont113665%_
                           _%tmp-port113659%_))
                        '#f))
                  '#!void)
              (let ((__tmp114353 (get-output-string _%tmp-port113659%_)))
                (declare (not safe))
                (##write-string __tmp114353 _%port113646%_)))))))
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
      (lambda (_%port113517%_)
        (if (macro-character-port? _%port113517%_)
            (let ((_%old-width113519%_
                   (macro-character-port-output-width _%port113517%_)))
              (macro-character-port-output-width-set!
               _%port113517%_
               (lambda (_%port113521%_) '256))
              _%old-width113519%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port113514%_ _%old-width113515%_)
        (if (macro-character-port? _%port113514%_)
            (macro-character-port-output-width-set!
             _%port113514%_
             _%old-width113515%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e113512%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e113512%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn113506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113506%_))
            (let ((_%e113509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113506%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e113509%_))
            (macro-abandoned-mutex-exception? _%exn113506%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn113502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113502%_))
            (let ((_%e113504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113502%_ 'exception))))
              (macro-cfun-conversion-exception? _%e113504%_))
            (macro-cfun-conversion-exception? _%exn113502%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn113498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113498%_))
            (let ((_%e113500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113498%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113500%_)
                  (macro-cfun-conversion-exception-arguments _%e113500%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e113500%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113498%_)
                (macro-cfun-conversion-exception-arguments _%exn113498%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn113498%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn113494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113494%_))
            (let ((_%e113496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113494%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113496%_)
                  (macro-cfun-conversion-exception-code _%e113496%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e113496%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113494%_)
                (macro-cfun-conversion-exception-code _%exn113494%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn113494%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn113490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113490%_))
            (let ((_%e113492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113490%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113492%_)
                  (macro-cfun-conversion-exception-message _%e113492%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e113492%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113490%_)
                (macro-cfun-conversion-exception-message _%exn113490%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn113490%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn113484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113484%_))
            (let ((_%e113487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113484%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113487%_)
                  (macro-cfun-conversion-exception-procedure _%e113487%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e113487%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113484%_)
                (macro-cfun-conversion-exception-procedure _%exn113484%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn113484%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn113480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113480%_))
            (let ((_%e113482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113480%_ 'exception))))
              (macro-datum-parsing-exception? _%e113482%_))
            (macro-datum-parsing-exception? _%exn113480%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn113476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113476%_))
            (let ((_%e113478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113476%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113478%_)
                  (macro-datum-parsing-exception-kind _%e113478%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e113478%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113476%_)
                (macro-datum-parsing-exception-kind _%exn113476%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn113476%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn113472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113472%_))
            (let ((_%e113474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113472%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113474%_)
                  (macro-datum-parsing-exception-parameters _%e113474%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e113474%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113472%_)
                (macro-datum-parsing-exception-parameters _%exn113472%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn113472%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn113466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113466%_))
            (let ((_%e113469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113466%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113469%_)
                  (macro-datum-parsing-exception-readenv _%e113469%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e113469%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113466%_)
                (macro-datum-parsing-exception-readenv _%exn113466%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn113466%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn113460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113460%_))
            (let ((_%e113463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113460%_ 'exception))))
              (macro-deadlock-exception? _%e113463%_))
            (macro-deadlock-exception? _%exn113460%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn113456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113456%_))
            (let ((_%e113458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113456%_ 'exception))))
              (macro-divide-by-zero-exception? _%e113458%_))
            (macro-divide-by-zero-exception? _%exn113456%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn113452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113452%_))
            (let ((_%e113454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113452%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113454%_)
                  (macro-divide-by-zero-exception-arguments _%e113454%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e113454%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113452%_)
                (macro-divide-by-zero-exception-arguments _%exn113452%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn113452%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn113446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113446%_))
            (let ((_%e113449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113446%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113449%_)
                  (macro-divide-by-zero-exception-procedure _%e113449%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e113449%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113446%_)
                (macro-divide-by-zero-exception-procedure _%exn113446%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn113446%_ '())))))))
    (define error-exception?
      (lambda (_%exn113442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113442%_))
            (let ((_%e113444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113442%_ 'exception))))
              (macro-error-exception? _%e113444%_))
            (macro-error-exception? _%exn113442%_))))
    (define error-exception-message
      (lambda (_%exn113438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113438%_))
            (let ((_%e113440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113438%_ 'exception))))
              (if (macro-error-exception? _%e113440%_)
                  (macro-error-exception-message _%e113440%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e113440%_ '())))))
            (if (macro-error-exception? _%exn113438%_)
                (macro-error-exception-message _%exn113438%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn113438%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn113432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113432%_))
            (let ((_%e113435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113432%_ 'exception))))
              (if (macro-error-exception? _%e113435%_)
                  (macro-error-exception-parameters _%e113435%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e113435%_ '())))))
            (if (macro-error-exception? _%exn113432%_)
                (macro-error-exception-parameters _%exn113432%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn113432%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn113428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113428%_))
            (let ((_%e113430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113428%_ 'exception))))
              (macro-expression-parsing-exception? _%e113430%_))
            (macro-expression-parsing-exception? _%exn113428%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn113424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113424%_))
            (let ((_%e113426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113424%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113426%_)
                  (macro-expression-parsing-exception-kind _%e113426%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e113426%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113424%_)
                (macro-expression-parsing-exception-kind _%exn113424%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn113424%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn113420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113420%_))
            (let ((_%e113422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113420%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113422%_)
                  (macro-expression-parsing-exception-parameters _%e113422%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e113422%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113420%_)
                (macro-expression-parsing-exception-parameters _%exn113420%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn113420%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn113414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113414%_))
            (let ((_%e113417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113414%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113417%_)
                  (macro-expression-parsing-exception-source _%e113417%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e113417%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113414%_)
                (macro-expression-parsing-exception-source _%exn113414%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn113414%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn113410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113410%_))
            (let ((_%e113412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113410%_ 'exception))))
              (macro-file-exists-exception? _%e113412%_))
            (macro-file-exists-exception? _%exn113410%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn113406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113406%_))
            (let ((_%e113408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113406%_ 'exception))))
              (if (macro-file-exists-exception? _%e113408%_)
                  (macro-file-exists-exception-arguments _%e113408%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e113408%_ '())))))
            (if (macro-file-exists-exception? _%exn113406%_)
                (macro-file-exists-exception-arguments _%exn113406%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn113406%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn113400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113400%_))
            (let ((_%e113403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113400%_ 'exception))))
              (if (macro-file-exists-exception? _%e113403%_)
                  (macro-file-exists-exception-procedure _%e113403%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e113403%_ '())))))
            (if (macro-file-exists-exception? _%exn113400%_)
                (macro-file-exists-exception-procedure _%exn113400%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn113400%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn113396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113396%_))
            (let ((_%e113398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113396%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e113398%_))
            (macro-fixnum-overflow-exception? _%exn113396%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn113392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113392%_))
            (let ((_%e113394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113392%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113394%_)
                  (macro-fixnum-overflow-exception-arguments _%e113394%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e113394%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113392%_)
                (macro-fixnum-overflow-exception-arguments _%exn113392%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn113392%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn113386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113386%_))
            (let ((_%e113389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113386%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113389%_)
                  (macro-fixnum-overflow-exception-procedure _%e113389%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e113389%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113386%_)
                (macro-fixnum-overflow-exception-procedure _%exn113386%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn113386%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn113380%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113380%_))
            (let ((_%e113383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113380%_ 'exception))))
              (macro-heap-overflow-exception? _%e113383%_))
            (macro-heap-overflow-exception? _%exn113380%_))))
    (define inactive-thread-exception?
      (lambda (_%exn113376%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113376%_))
            (let ((_%e113378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113376%_ 'exception))))
              (macro-inactive-thread-exception? _%e113378%_))
            (macro-inactive-thread-exception? _%exn113376%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn113372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113372%_))
            (let ((_%e113374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113372%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113374%_)
                  (macro-inactive-thread-exception-arguments _%e113374%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e113374%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113372%_)
                (macro-inactive-thread-exception-arguments _%exn113372%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn113372%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn113366%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113366%_))
            (let ((_%e113369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113366%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113369%_)
                  (macro-inactive-thread-exception-procedure _%e113369%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e113369%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113366%_)
                (macro-inactive-thread-exception-procedure _%exn113366%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn113366%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn113362%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113362%_))
            (let ((_%e113364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113362%_ 'exception))))
              (macro-initialized-thread-exception? _%e113364%_))
            (macro-initialized-thread-exception? _%exn113362%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn113358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113358%_))
            (let ((_%e113360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113358%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113360%_)
                  (macro-initialized-thread-exception-arguments _%e113360%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e113360%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113358%_)
                (macro-initialized-thread-exception-arguments _%exn113358%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn113358%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn113352%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113352%_))
            (let ((_%e113355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113352%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113355%_)
                  (macro-initialized-thread-exception-procedure _%e113355%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e113355%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113352%_)
                (macro-initialized-thread-exception-procedure _%exn113352%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn113352%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn113348%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113348%_))
            (let ((_%e113350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113348%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e113350%_))
            (macro-invalid-hash-number-exception? _%exn113348%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn113344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113344%_))
            (let ((_%e113346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113344%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113346%_)
                  (macro-invalid-hash-number-exception-arguments _%e113346%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e113346%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113344%_)
                (macro-invalid-hash-number-exception-arguments _%exn113344%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn113344%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn113338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113338%_))
            (let ((_%e113341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113338%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113341%_)
                  (macro-invalid-hash-number-exception-procedure _%e113341%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e113341%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113338%_)
                (macro-invalid-hash-number-exception-procedure _%exn113338%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn113338%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn113334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113334%_))
            (let ((_%e113336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113334%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e113336%_))
            (macro-invalid-utf8-encoding-exception? _%exn113334%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn113330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113330%_))
            (let ((_%e113332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113330%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113332%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e113332%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e113332%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113330%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn113330%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn113330%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn113324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113324%_))
            (let ((_%e113327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113324%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113327%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e113327%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e113327%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113324%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn113324%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn113324%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn113320%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113320%_))
            (let ((_%e113322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113320%_ 'exception))))
              (macro-join-timeout-exception? _%e113322%_))
            (macro-join-timeout-exception? _%exn113320%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn113316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113316%_))
            (let ((_%e113318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113316%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113318%_)
                  (macro-join-timeout-exception-arguments _%e113318%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e113318%_ '())))))
            (if (macro-join-timeout-exception? _%exn113316%_)
                (macro-join-timeout-exception-arguments _%exn113316%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn113316%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn113310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113310%_))
            (let ((_%e113313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113310%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113313%_)
                  (macro-join-timeout-exception-procedure _%e113313%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e113313%_ '())))))
            (if (macro-join-timeout-exception? _%exn113310%_)
                (macro-join-timeout-exception-procedure _%exn113310%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn113310%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn113306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113306%_))
            (let ((_%e113308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113306%_ 'exception))))
              (macro-keyword-expected-exception? _%e113308%_))
            (macro-keyword-expected-exception? _%exn113306%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn113302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113302%_))
            (let ((_%e113304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113302%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113304%_)
                  (macro-keyword-expected-exception-arguments _%e113304%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e113304%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113302%_)
                (macro-keyword-expected-exception-arguments _%exn113302%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn113302%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn113296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113296%_))
            (let ((_%e113299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113296%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113299%_)
                  (macro-keyword-expected-exception-procedure _%e113299%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e113299%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113296%_)
                (macro-keyword-expected-exception-procedure _%exn113296%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn113296%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn113292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113292%_))
            (let ((_%e113294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113292%_ 'exception))))
              (macro-length-mismatch-exception? _%e113294%_))
            (macro-length-mismatch-exception? _%exn113292%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn113288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113288%_))
            (let ((_%e113290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113288%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113290%_)
                  (macro-length-mismatch-exception-arg-id _%e113290%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e113290%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113288%_)
                (macro-length-mismatch-exception-arg-id _%exn113288%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn113288%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn113284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113284%_))
            (let ((_%e113286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113284%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113286%_)
                  (macro-length-mismatch-exception-arguments _%e113286%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e113286%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113284%_)
                (macro-length-mismatch-exception-arguments _%exn113284%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn113284%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn113278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113278%_))
            (let ((_%e113281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113278%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113281%_)
                  (macro-length-mismatch-exception-procedure _%e113281%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e113281%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113278%_)
                (macro-length-mismatch-exception-procedure _%exn113278%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn113278%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn113274%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113274%_))
            (let ((_%e113276%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113274%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e113276%_))
            (macro-mailbox-receive-timeout-exception? _%exn113274%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn113270%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113270%_))
            (let ((_%e113272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113270%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113272%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e113272%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e113272%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113270%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn113270%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn113270%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn113264%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113264%_))
            (let ((_%e113267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113264%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113267%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e113267%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e113267%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113264%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn113264%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn113264%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn113260%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113260%_))
            (let ((_%e113262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113260%_ 'exception))))
              (macro-module-not-found-exception? _%e113262%_))
            (macro-module-not-found-exception? _%exn113260%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn113256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113256%_))
            (let ((_%e113258%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113256%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113258%_)
                  (macro-module-not-found-exception-arguments _%e113258%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e113258%_ '())))))
            (if (macro-module-not-found-exception? _%exn113256%_)
                (macro-module-not-found-exception-arguments _%exn113256%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn113256%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn113250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113250%_))
            (let ((_%e113253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113250%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113253%_)
                  (macro-module-not-found-exception-procedure _%e113253%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e113253%_ '())))))
            (if (macro-module-not-found-exception? _%exn113250%_)
                (macro-module-not-found-exception-procedure _%exn113250%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn113250%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn113244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113244%_))
            (let ((_%e113247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113244%_ 'exception))))
              (macro-multiple-c-return-exception? _%e113247%_))
            (macro-multiple-c-return-exception? _%exn113244%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn113240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113240%_))
            (let ((_%e113242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113240%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e113242%_))
            (macro-no-such-file-or-directory-exception? _%exn113240%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn113236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113236%_))
            (let ((_%e113238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113236%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113238%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e113238%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e113238%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113236%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn113236%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn113236%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn113230%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113230%_))
            (let ((_%e113233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113230%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113233%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e113233%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e113233%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113230%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn113230%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn113230%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn113226%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113226%_))
            (let ((_%e113228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113226%_ 'exception))))
              (macro-noncontinuable-exception? _%e113228%_))
            (macro-noncontinuable-exception? _%exn113226%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn113220%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113220%_))
            (let ((_%e113223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113220%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e113223%_)
                  (macro-noncontinuable-exception-reason _%e113223%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e113223%_ '())))))
            (if (macro-noncontinuable-exception? _%exn113220%_)
                (macro-noncontinuable-exception-reason _%exn113220%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn113220%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn113216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113216%_))
            (let ((_%e113218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113216%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e113218%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn113216%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn113212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113212%_))
            (let ((_%e113214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113212%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113214%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e113214%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e113214%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113212%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn113212%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn113212%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn113206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113206%_))
            (let ((_%e113209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113206%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113209%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e113209%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e113209%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113206%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn113206%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn113206%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn113202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113202%_))
            (let ((_%e113204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113202%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e113204%_))
            (macro-nonprocedure-operator-exception? _%exn113202%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn113198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113198%_))
            (let ((_%e113200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113198%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113200%_)
                  (macro-nonprocedure-operator-exception-arguments _%e113200%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e113200%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113198%_)
                (macro-nonprocedure-operator-exception-arguments _%exn113198%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn113198%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn113194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113194%_))
            (let ((_%e113196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113194%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113196%_)
                  (macro-nonprocedure-operator-exception-code _%e113196%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e113196%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113194%_)
                (macro-nonprocedure-operator-exception-code _%exn113194%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn113194%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn113190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113190%_))
            (let ((_%e113192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113190%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113192%_)
                  (macro-nonprocedure-operator-exception-operator _%e113192%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e113192%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113190%_)
                (macro-nonprocedure-operator-exception-operator _%exn113190%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn113190%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn113184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113184%_))
            (let ((_%e113187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113184%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113187%_)
                  (macro-nonprocedure-operator-exception-rte _%e113187%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e113187%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113184%_)
                (macro-nonprocedure-operator-exception-rte _%exn113184%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn113184%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn113180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113180%_))
            (let ((_%e113182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113180%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e113182%_))
            (macro-not-in-compilation-context-exception? _%exn113180%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn113176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113176%_))
            (let ((_%e113178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113176%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113178%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e113178%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e113178%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113176%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn113176%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn113176%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn113170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113170%_))
            (let ((_%e113173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113170%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113173%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e113173%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e113173%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113170%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn113170%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn113170%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn113166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113166%_))
            (let ((_%e113168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113166%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e113168%_))
            (macro-number-of-arguments-limit-exception? _%exn113166%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn113162%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113162%_))
            (let ((_%e113164%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113162%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113164%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e113164%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e113164%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113162%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn113162%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn113162%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn113156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113156%_))
            (let ((_%e113159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113156%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113159%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e113159%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e113159%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113156%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn113156%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn113156%_ '())))))))
    (define os-exception?
      (lambda (_%exn113152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113152%_))
            (let ((_%e113154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113152%_ 'exception))))
              (macro-os-exception? _%e113154%_))
            (macro-os-exception? _%exn113152%_))))
    (define os-exception-arguments
      (lambda (_%exn113148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113148%_))
            (let ((_%e113150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113148%_ 'exception))))
              (if (macro-os-exception? _%e113150%_)
                  (macro-os-exception-arguments _%e113150%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e113150%_ '())))))
            (if (macro-os-exception? _%exn113148%_)
                (macro-os-exception-arguments _%exn113148%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn113148%_ '())))))))
    (define os-exception-code
      (lambda (_%exn113144%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113144%_))
            (let ((_%e113146%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113144%_ 'exception))))
              (if (macro-os-exception? _%e113146%_)
                  (macro-os-exception-code _%e113146%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e113146%_ '())))))
            (if (macro-os-exception? _%exn113144%_)
                (macro-os-exception-code _%exn113144%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn113144%_ '())))))))
    (define os-exception-message
      (lambda (_%exn113140%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113140%_))
            (let ((_%e113142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113140%_ 'exception))))
              (if (macro-os-exception? _%e113142%_)
                  (macro-os-exception-message _%e113142%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e113142%_ '())))))
            (if (macro-os-exception? _%exn113140%_)
                (macro-os-exception-message _%exn113140%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn113140%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn113134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113134%_))
            (let ((_%e113137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113134%_ 'exception))))
              (if (macro-os-exception? _%e113137%_)
                  (macro-os-exception-procedure _%e113137%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e113137%_ '())))))
            (if (macro-os-exception? _%exn113134%_)
                (macro-os-exception-procedure _%exn113134%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn113134%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn113130%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113130%_))
            (let ((_%e113132%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113130%_ 'exception))))
              (macro-permission-denied-exception? _%e113132%_))
            (macro-permission-denied-exception? _%exn113130%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn113126%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113126%_))
            (let ((_%e113128%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113126%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113128%_)
                  (macro-permission-denied-exception-arguments _%e113128%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e113128%_ '())))))
            (if (macro-permission-denied-exception? _%exn113126%_)
                (macro-permission-denied-exception-arguments _%exn113126%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn113126%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn113120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113120%_))
            (let ((_%e113123%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113120%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113123%_)
                  (macro-permission-denied-exception-procedure _%e113123%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e113123%_ '())))))
            (if (macro-permission-denied-exception? _%exn113120%_)
                (macro-permission-denied-exception-procedure _%exn113120%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn113120%_ '())))))))
    (define range-exception?
      (lambda (_%exn113116%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113116%_))
            (let ((_%e113118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113116%_ 'exception))))
              (macro-range-exception? _%e113118%_))
            (macro-range-exception? _%exn113116%_))))
    (define range-exception-arg-id
      (lambda (_%exn113112%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113112%_))
            (let ((_%e113114%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113112%_ 'exception))))
              (if (macro-range-exception? _%e113114%_)
                  (macro-range-exception-arg-id _%e113114%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e113114%_ '())))))
            (if (macro-range-exception? _%exn113112%_)
                (macro-range-exception-arg-id _%exn113112%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn113112%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn113108%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113108%_))
            (let ((_%e113110%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113108%_ 'exception))))
              (if (macro-range-exception? _%e113110%_)
                  (macro-range-exception-arguments _%e113110%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e113110%_ '())))))
            (if (macro-range-exception? _%exn113108%_)
                (macro-range-exception-arguments _%exn113108%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn113108%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn113102%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113102%_))
            (let ((_%e113105%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113102%_ 'exception))))
              (if (macro-range-exception? _%e113105%_)
                  (macro-range-exception-procedure _%e113105%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e113105%_ '())))))
            (if (macro-range-exception? _%exn113102%_)
                (macro-range-exception-procedure _%exn113102%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn113102%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn113098%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113098%_))
            (let ((_%e113100%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113098%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e113100%_))
            (macro-rpc-remote-error-exception? _%exn113098%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn113094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113094%_))
            (let ((_%e113096%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113094%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113096%_)
                  (macro-rpc-remote-error-exception-arguments _%e113096%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e113096%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113094%_)
                (macro-rpc-remote-error-exception-arguments _%exn113094%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn113094%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn113090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113090%_))
            (let ((_%e113092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113090%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113092%_)
                  (macro-rpc-remote-error-exception-message _%e113092%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e113092%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113090%_)
                (macro-rpc-remote-error-exception-message _%exn113090%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn113090%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn113084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113084%_))
            (let ((_%e113087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113084%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113087%_)
                  (macro-rpc-remote-error-exception-procedure _%e113087%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e113087%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113084%_)
                (macro-rpc-remote-error-exception-procedure _%exn113084%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn113084%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn113080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113080%_))
            (let ((_%e113082%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113080%_ 'exception))))
              (macro-scheduler-exception? _%e113082%_))
            (macro-scheduler-exception? _%exn113080%_))))
    (define scheduler-exception-reason
      (lambda (_%exn113074%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113074%_))
            (let ((_%e113077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113074%_ 'exception))))
              (if (macro-scheduler-exception? _%e113077%_)
                  (macro-scheduler-exception-reason _%e113077%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e113077%_ '())))))
            (if (macro-scheduler-exception? _%exn113074%_)
                (macro-scheduler-exception-reason _%exn113074%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn113074%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn113070%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113070%_))
            (let ((_%e113072%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113070%_ 'exception))))
              (macro-sfun-conversion-exception? _%e113072%_))
            (macro-sfun-conversion-exception? _%exn113070%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn113066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113066%_))
            (let ((_%e113068%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113066%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113068%_)
                  (macro-sfun-conversion-exception-arguments _%e113068%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e113068%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113066%_)
                (macro-sfun-conversion-exception-arguments _%exn113066%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn113066%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn113062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113062%_))
            (let ((_%e113064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113062%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113064%_)
                  (macro-sfun-conversion-exception-code _%e113064%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e113064%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113062%_)
                (macro-sfun-conversion-exception-code _%exn113062%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn113062%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn113058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113058%_))
            (let ((_%e113060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113058%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113060%_)
                  (macro-sfun-conversion-exception-message _%e113060%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e113060%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113058%_)
                (macro-sfun-conversion-exception-message _%exn113058%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn113058%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn113052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113052%_))
            (let ((_%e113055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113052%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113055%_)
                  (macro-sfun-conversion-exception-procedure _%e113055%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e113055%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113052%_)
                (macro-sfun-conversion-exception-procedure _%exn113052%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn113052%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn113046%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113046%_))
            (let ((_%e113049%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113046%_ 'exception))))
              (macro-stack-overflow-exception? _%e113049%_))
            (macro-stack-overflow-exception? _%exn113046%_))))
    (define started-thread-exception?
      (lambda (_%exn113042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113042%_))
            (let ((_%e113044%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113042%_ 'exception))))
              (macro-started-thread-exception? _%e113044%_))
            (macro-started-thread-exception? _%exn113042%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn113038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113038%_))
            (let ((_%e113040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113038%_ 'exception))))
              (if (macro-started-thread-exception? _%e113040%_)
                  (macro-started-thread-exception-arguments _%e113040%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e113040%_ '())))))
            (if (macro-started-thread-exception? _%exn113038%_)
                (macro-started-thread-exception-arguments _%exn113038%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn113038%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn113032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113032%_))
            (let ((_%e113035%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113032%_ 'exception))))
              (if (macro-started-thread-exception? _%e113035%_)
                  (macro-started-thread-exception-procedure _%e113035%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e113035%_ '())))))
            (if (macro-started-thread-exception? _%exn113032%_)
                (macro-started-thread-exception-procedure _%exn113032%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn113032%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn113028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113028%_))
            (let ((_%e113030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113028%_ 'exception))))
              (macro-terminated-thread-exception? _%e113030%_))
            (macro-terminated-thread-exception? _%exn113028%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn113024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113024%_))
            (let ((_%e113026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113024%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113026%_)
                  (macro-terminated-thread-exception-arguments _%e113026%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e113026%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113024%_)
                (macro-terminated-thread-exception-arguments _%exn113024%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn113024%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn113018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113018%_))
            (let ((_%e113021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113018%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113021%_)
                  (macro-terminated-thread-exception-procedure _%e113021%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e113021%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113018%_)
                (macro-terminated-thread-exception-procedure _%exn113018%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn113018%_ '())))))))
    (define type-exception?
      (lambda (_%exn113014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113014%_))
            (let ((_%e113016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113014%_ 'exception))))
              (macro-type-exception? _%e113016%_))
            (macro-type-exception? _%exn113014%_))))
    (define type-exception-arg-id
      (lambda (_%exn113010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113010%_))
            (let ((_%e113012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113010%_ 'exception))))
              (if (macro-type-exception? _%e113012%_)
                  (macro-type-exception-arg-id _%e113012%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e113012%_ '())))))
            (if (macro-type-exception? _%exn113010%_)
                (macro-type-exception-arg-id _%exn113010%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn113010%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn113006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113006%_))
            (let ((_%e113008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113006%_ 'exception))))
              (if (macro-type-exception? _%e113008%_)
                  (macro-type-exception-arguments _%e113008%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e113008%_ '())))))
            (if (macro-type-exception? _%exn113006%_)
                (macro-type-exception-arguments _%exn113006%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn113006%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn113002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113002%_))
            (let ((_%e113004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113002%_ 'exception))))
              (if (macro-type-exception? _%e113004%_)
                  (macro-type-exception-procedure _%e113004%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e113004%_ '())))))
            (if (macro-type-exception? _%exn113002%_)
                (macro-type-exception-procedure _%exn113002%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn113002%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn112996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112996%_))
            (let ((_%e112999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112996%_ 'exception))))
              (if (macro-type-exception? _%e112999%_)
                  (macro-type-exception-type-id _%e112999%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e112999%_ '())))))
            (if (macro-type-exception? _%exn112996%_)
                (macro-type-exception-type-id _%exn112996%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn112996%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn112992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112992%_))
            (let ((_%e112994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112992%_ 'exception))))
              (macro-unbound-global-exception? _%e112994%_))
            (macro-unbound-global-exception? _%exn112992%_))))
    (define unbound-global-exception-code
      (lambda (_%exn112988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112988%_))
            (let ((_%e112990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112988%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112990%_)
                  (macro-unbound-global-exception-code _%e112990%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e112990%_ '())))))
            (if (macro-unbound-global-exception? _%exn112988%_)
                (macro-unbound-global-exception-code _%exn112988%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn112988%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn112984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112984%_))
            (let ((_%e112986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112984%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112986%_)
                  (macro-unbound-global-exception-rte _%e112986%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e112986%_ '())))))
            (if (macro-unbound-global-exception? _%exn112984%_)
                (macro-unbound-global-exception-rte _%exn112984%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn112984%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn112978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112978%_))
            (let ((_%e112981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112978%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112981%_)
                  (macro-unbound-global-exception-variable _%e112981%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e112981%_ '())))))
            (if (macro-unbound-global-exception? _%exn112978%_)
                (macro-unbound-global-exception-variable _%exn112978%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn112978%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn112974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112974%_))
            (let ((_%e112976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112974%_ 'exception))))
              (macro-unbound-key-exception? _%e112976%_))
            (macro-unbound-key-exception? _%exn112974%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn112970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112970%_))
            (let ((_%e112972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112970%_ 'exception))))
              (if (macro-unbound-key-exception? _%e112972%_)
                  (macro-unbound-key-exception-arguments _%e112972%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e112972%_ '())))))
            (if (macro-unbound-key-exception? _%exn112970%_)
                (macro-unbound-key-exception-arguments _%exn112970%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn112970%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn112964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112964%_))
            (let ((_%e112967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112964%_ 'exception))))
              (if (macro-unbound-key-exception? _%e112967%_)
                  (macro-unbound-key-exception-procedure _%e112967%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e112967%_ '())))))
            (if (macro-unbound-key-exception? _%exn112964%_)
                (macro-unbound-key-exception-procedure _%exn112964%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn112964%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn112960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112960%_))
            (let ((_%e112962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112960%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e112962%_))
            (macro-unbound-os-environment-variable-exception? _%exn112960%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn112956%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112956%_))
            (let ((_%e112958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112956%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e112958%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e112958%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e112958%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn112956%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn112956%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn112956%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn112950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112950%_))
            (let ((_%e112953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112950%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e112953%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e112953%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e112953%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn112950%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn112950%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn112950%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn112946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112946%_))
            (let ((_%e112948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112946%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e112948%_))
            (macro-unbound-serial-number-exception? _%exn112946%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn112942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112942%_))
            (let ((_%e112944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112942%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e112944%_)
                  (macro-unbound-serial-number-exception-arguments _%e112944%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e112944%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn112942%_)
                (macro-unbound-serial-number-exception-arguments _%exn112942%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn112942%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn112936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112936%_))
            (let ((_%e112939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112936%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e112939%_)
                  (macro-unbound-serial-number-exception-procedure _%e112939%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e112939%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn112936%_)
                (macro-unbound-serial-number-exception-procedure _%exn112936%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn112936%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn112932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112932%_))
            (let ((_%e112934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112932%_ 'exception))))
              (macro-uncaught-exception? _%e112934%_))
            (macro-uncaught-exception? _%exn112932%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn112928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112928%_))
            (let ((_%e112930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112928%_ 'exception))))
              (if (macro-uncaught-exception? _%e112930%_)
                  (macro-uncaught-exception-arguments _%e112930%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e112930%_ '())))))
            (if (macro-uncaught-exception? _%exn112928%_)
                (macro-uncaught-exception-arguments _%exn112928%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn112928%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn112924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112924%_))
            (let ((_%e112926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112924%_ 'exception))))
              (if (macro-uncaught-exception? _%e112926%_)
                  (macro-uncaught-exception-procedure _%e112926%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e112926%_ '())))))
            (if (macro-uncaught-exception? _%exn112924%_)
                (macro-uncaught-exception-procedure _%exn112924%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn112924%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn112918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112918%_))
            (let ((_%e112921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112918%_ 'exception))))
              (if (macro-uncaught-exception? _%e112921%_)
                  (macro-uncaught-exception-reason _%e112921%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e112921%_ '())))))
            (if (macro-uncaught-exception? _%exn112918%_)
                (macro-uncaught-exception-reason _%exn112918%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn112918%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn112914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112914%_))
            (let ((_%e112916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112914%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e112916%_))
            (macro-uninitialized-thread-exception? _%exn112914%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn112910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112910%_))
            (let ((_%e112912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112910%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e112912%_)
                  (macro-uninitialized-thread-exception-arguments _%e112912%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e112912%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn112910%_)
                (macro-uninitialized-thread-exception-arguments _%exn112910%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn112910%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn112904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112904%_))
            (let ((_%e112907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112904%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e112907%_)
                  (macro-uninitialized-thread-exception-procedure _%e112907%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e112907%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn112904%_)
                (macro-uninitialized-thread-exception-procedure _%exn112904%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn112904%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn112900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112900%_))
            (let ((_%e112902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112900%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e112902%_))
            (macro-unknown-keyword-argument-exception? _%exn112900%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn112896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112896%_))
            (let ((_%e112898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112896%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e112898%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e112898%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e112898%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn112896%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn112896%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn112896%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn112890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112890%_))
            (let ((_%e112893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112890%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e112893%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e112893%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e112893%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn112890%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn112890%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn112890%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn112886%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112886%_))
            (let ((_%e112888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112886%_ 'exception))))
              (macro-unterminated-process-exception? _%e112888%_))
            (macro-unterminated-process-exception? _%exn112886%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn112882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112882%_))
            (let ((_%e112884%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112882%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e112884%_)
                  (macro-unterminated-process-exception-arguments _%e112884%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e112884%_ '())))))
            (if (macro-unterminated-process-exception? _%exn112882%_)
                (macro-unterminated-process-exception-arguments _%exn112882%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn112882%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn112876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112876%_))
            (let ((_%e112879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112876%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e112879%_)
                  (macro-unterminated-process-exception-procedure _%e112879%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e112879%_ '())))))
            (if (macro-unterminated-process-exception? _%exn112876%_)
                (macro-unterminated-process-exception-procedure _%exn112876%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn112876%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn112872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112872%_))
            (let ((_%e112874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112872%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e112874%_))
            (macro-wrong-number-of-arguments-exception? _%exn112872%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn112868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112868%_))
            (let ((_%e112870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112868%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e112870%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e112870%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e112870%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn112868%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn112868%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn112868%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn112862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112862%_))
            (let ((_%e112865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112862%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e112865%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e112865%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e112865%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn112862%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn112862%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn112862%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn112858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112858%_))
            (let ((_%e112860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112858%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e112860%_))
            (macro-wrong-number-of-values-exception? _%exn112858%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn112854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112854%_))
            (let ((_%e112856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112854%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112856%_)
                  (macro-wrong-number-of-values-exception-code _%e112856%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e112856%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112854%_)
                (macro-wrong-number-of-values-exception-code _%exn112854%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn112854%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn112850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112850%_))
            (let ((_%e112852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112850%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112852%_)
                  (macro-wrong-number-of-values-exception-rte _%e112852%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e112852%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112850%_)
                (macro-wrong-number-of-values-exception-rte _%exn112850%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn112850%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn112844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112844%_))
            (let ((_%e112847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112844%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112847%_)
                  (macro-wrong-number-of-values-exception-vals _%e112847%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e112847%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112844%_)
                (macro-wrong-number-of-values-exception-vals _%exn112844%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn112844%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn112838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112838%_))
            (let ((_%e112841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112838%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e112841%_))
            (macro-wrong-processor-c-return-exception? _%exn112838%_))))))
