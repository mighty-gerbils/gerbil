(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1768864947)
  (begin
    (define Exception::t
      (let ((__tmp114311 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp114311
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args114281%_
        (apply make-instance Exception::t _%$args114281%_)))
    (define StackTrace::t
      (let ((__tmp114312 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp114312
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args114278%_
        (apply make-instance StackTrace::t _%$args114278%_)))
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
      (let ((__tmp114313 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp114313
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args114275%_ (apply make-instance Error::t _%$args114275%_)))
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
      (let ((__tmp114314 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp114314
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args114272%_
        (apply make-instance ContractViolation::t _%$args114272%_)))
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
      (let ((__tmp114315 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp114315
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args114269%_
        (apply make-instance RuntimeException::t _%$args114269%_)))
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
      (lambda (_%exn114264%_ _%continue114265%_)
        (let ((_%exn114267%_ (wrap-runtime-exception _%exn114264%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn114267%_ _%continue114265%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn114260%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn114260%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn114260%_ 'continuation))
                '#!void
                (let ((__tmp114316
                       (lambda (_%cont114262%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn114260%_
                            'continuation
                            _%cont114262%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp114316)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn114260%_))))
    (define error
      (lambda (_%message114257%_ . _%irritants114258%_)
        (raise (let ((__obj114308
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj114308
                  _%message114257%_
                  'irritants:
                  _%irritants114258%_)
                 __obj114308))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords114229%_
               _%ctx114224114230%_
               _%contract-expr114225114232%_
               _%value114226114234%_
               _%message114236%_)
        (let* ((_%ctx114238%_
                (if (eq? _%ctx114224114230%_ absent-value)
                    '#f
                    _%ctx114224114230%_))
               (_%contract-expr114240%_
                (if (eq? _%contract-expr114225114232%_ absent-value)
                    '#f
                    _%contract-expr114225114232%_))
               (_%value114242%_
                (if (eq? _%value114226114234%_ absent-value)
                    '#f
                    _%value114226114234%_)))
          (raise (let ((__obj114309
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj114309
                    _%message114236%_
                    'where:
                    _%ctx114238%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr114240%_
                                (cons 'value: (cons _%value114242%_ '())))))
                   __obj114309)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords114247%_ . _%args114248%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords114247%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114247%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114247%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114247%_
                  'value:
                  absent-value))
               _%args114248%_)))
    (define __raise-contract-violation-error
      (lambda _%args114227114254%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args114227114254%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler114198%_ _%thunk114199%_)
        (if (procedure? _%handler114198%_)
            (let ((_%handler114203%_ _%handler114198%_))
              (if (procedure? _%thunk114199%_)
                  (let ((_%thunk114213%_ _%thunk114199%_))
                    (__with-exception-handler
                     _%handler114203%_
                     _%thunk114213%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114199%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler114198%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler114173%_ _%thunk114174%_)
        (let* ((_%handler114177%_ _%handler114173%_)
               (_%thunk114185%_ _%thunk114174%_)
               (__tmp114317
                (lambda (_%exn114194%_)
                  (let ((_%exn114196%_ (wrap-runtime-exception _%exn114194%_)))
                    (declare (not safe))
                    (_%handler114177%_ _%exn114196%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp114317 _%thunk114185%_))))
    (define with-catch
      (lambda (_%handler114148%_ _%thunk114149%_)
        (if (procedure? _%handler114148%_)
            (let ((_%handler114153%_ _%handler114148%_))
              (if (procedure? _%thunk114149%_)
                  (let ((_%thunk114163%_ _%thunk114149%_))
                    (__with-catch _%handler114153%_ _%thunk114163%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114149%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler114148%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler114123%_ _%thunk114124%_)
        (let* ((_%handler114127%_ _%handler114123%_)
               (_%thunk114135%_ _%thunk114124%_)
               (__tmp114318
                (lambda (_%cont114144%_)
                  (__with-exception-handler
                   (lambda (_%exn114146%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont114144%_
                        _%handler114127%_
                        _%exn114146%_)))
                   _%thunk114135%_))))
          (declare (not safe))
          (##continuation-capture __tmp114318))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn114110%_)
        (if (or (heap-overflow-exception? _%exn114110%_)
                (stack-overflow-exception? _%exn114110%_))
            _%exn114110%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn114110%_))
                _%exn114110%_
                (if (macro-exception? _%exn114110%_)
                    (let ((_%rte114118%_
                           (let ((__obj114310
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj114310
                                _%exn114110%_
                                '2
                                '#f
                                '#f))
                             __obj114310)))
                      (let ((__tmp114319
                             (lambda (_%cont114120%_)
                               (let ((__tmp114320
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont114120%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte114118%_
                                  'continuation
                                  __tmp114320)))))
                        (declare (not safe))
                        (##continuation-capture __tmp114319))
                      _%rte114118%_)
                    _%exn114110%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj114105%_)
        (let ((_%$e114107%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj114105%_))))
          (if _%$e114107%_ _%$e114107%_ (error-exception? _%obj114105%_)))))
    (define error-message
      (lambda (_%obj114098%_)
        (let ((_%$e114100%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj114098%_ 'message false))))
          (if _%$e114100%_
              _%$e114100%_
              (if (error-exception? _%obj114098%_)
                  (error-exception-message _%obj114098%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj114093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114093%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114093%_ 'irritants))
            (if (error-exception? _%obj114093%_)
                (error-exception-parameters _%obj114093%_)
                '#f))))
    (define error-trace
      (lambda (_%obj114091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114091%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114091%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e114072%_ _%port114073%_)
        (let ((_%$e114075%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e114072%_ 'display-exception))))
          (if _%$e114075%_
              ((lambda (_%f114078%_) (_%f114078%_ _%e114072%_ _%port114073%_))
               _%$e114075%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e114072%_ _%port114073%_))))))
    (define display-exception__0
      (lambda (_%e114084%_)
        (let ((_%port114086%_ (current-error-port)))
          (display-exception__% _%e114084%_ _%port114086%_))))
    (define display-exception
      (lambda _g114321_
        (let ((_g114322_ (let () (declare (not safe)) (##length _g114321_))))
          (cond ((let () (declare (not safe)) (##fx= _g114322_ 1))
                 (apply display-exception__0 _g114321_))
                ((let () (declare (not safe)) (##fx= _g114322_ 2))
                 (apply display-exception__% _g114321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g114321_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self114050%_ _%message114051%_ . _%rest114052%_)
        (let* ((_%self114055%_ _%self114050%_)
               (_%message114069%_
                (if (string? _%message114051%_)
                    _%message114051%_
                    (call-with-output-string
                     '""
                     (lambda (_%g114064114066%_)
                       (display _%message114051%_ _%g114064114066%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self114055%_ 'message _%message114069%_))
          (apply class-instance-init! _%self114055%_ _%rest114052%_))))
    (define Error:::init!::specialize
      (lambda (__klass114283 __method-table114284)
        (let ((__message114285
               (let ((__slot114286
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114283 'message))))
                 (if __slot114286
                     __slot114286
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self114050%_ _%message114051%_ . _%rest114052%_)
            (let* ((_%self114055%_ _%self114050%_)
                   (_%message114069%_
                    (if (string? _%message114051%_)
                        _%message114051%_
                        (call-with-output-string
                         '""
                         (lambda (_%g114064114066%_)
                           (display _%message114051%_ _%g114064114066%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self114055%_
                 _%message114069%_
                 __message114285
                 '#f
                 '#f))
              (apply class-instance-init! _%self114055%_ _%rest114052%_))))))
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
      (lambda (_%self113774%_ _%port113775%_)
        (let ((_%self113778%_ _%self113774%_))
          (let ((_%tmp-port113788%_ (open-output-string))
                (_%display-error-newline113789%_
                 (> (output-port-column _%port113775%_) '0)))
            (fix-port-width! _%tmp-port113788%_)
            (let ((__tmp114323
                   (lambda ()
                     (if _%display-error-newline113789%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e113792%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113778%_ 'where))))
                       (if _%$e113792%_ (display _%$e113792%_) (display '"?")))
                     (let ((__tmp114324
                            (let ((__tmp114325
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self113778%_))))
                              (declare (not safe))
                              (##type-name __tmp114325))))
                       (declare (not safe))
                       (display* '" [" __tmp114324 '"]: "))
                     (let ((__tmp114326
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113778%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp114326))
                     (let ((_%irritants113796%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113778%_ 'irritants))))
                       (if (null? _%irritants113796%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj113798%_)
                                (if (u8vector? _%obj113798%_)
                                    (let ((__tmp114327
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj113798%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp114327))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj113798%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants113796%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont113799113801%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self113778%_
                                   'continuation))))
                           (if _%cont113799113801%_
                               (let ((_%cont113804%_ _%cont113799113801%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont113804%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp114323
               current-output-port
               _%tmp-port113788%_))
            (let ((__tmp114328 (get-output-string _%tmp-port113788%_)))
              (declare (not safe))
              (##write-string __tmp114328 _%port113775%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass114287 __method-table114288)
        (let ((__message114289
               (let ((__slot114293
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114287 'message))))
                 (if __slot114293
                     __slot114293
                     (error '"Unknown slot" 'message))))
              (__continuation114290
               (let ((__slot114294
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114287 'continuation))))
                 (if __slot114294
                     __slot114294
                     (error '"Unknown slot" 'continuation))))
              (__where114291
               (let ((__slot114295
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114287 'where))))
                 (if __slot114295
                     __slot114295
                     (error '"Unknown slot" 'where))))
              (__irritants114292
               (let ((__slot114296
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114287 'irritants))))
                 (if __slot114296
                     __slot114296
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self113774%_ _%port113775%_)
            (let ((_%self113778%_ _%self113774%_))
              (let ((_%tmp-port113788%_ (open-output-string))
                    (_%display-error-newline113789%_
                     (> (output-port-column _%port113775%_) '0)))
                (fix-port-width! _%tmp-port113788%_)
                (let ((__tmp114329
                       (lambda ()
                         (if _%display-error-newline113789%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e113792%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113778%_
                                   __where114291
                                   '#f
                                   '#f))))
                           (if _%$e113792%_
                               (display _%$e113792%_)
                               (display '"?")))
                         (let ((__tmp114330
                                (let ((__tmp114331
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self113778%_))))
                                  (declare (not safe))
                                  (##type-name __tmp114331))))
                           (declare (not safe))
                           (display* '" [" __tmp114330 '"]: "))
                         (let ((__tmp114332
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113778%_
                                   __message114289
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp114332))
                         (let ((_%irritants113796%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113778%_
                                   __irritants114292
                                   '#f
                                   '#f))))
                           (if (null? _%irritants113796%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj113798%_)
                                    (if (u8vector? _%obj113798%_)
                                        (let ((__tmp114333
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj113798%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp114333))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj113798%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants113796%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont113799113801%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self113778%_
                                       __continuation114290
                                       '#f
                                       '#f))))
                               (if _%cont113799113801%_
                                   (let ((_%cont113804%_ _%cont113799113801%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont113804%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp114329
                   current-output-port
                   _%tmp-port113788%_))
                (let ((__tmp114334 (get-output-string _%tmp-port113788%_)))
                  (declare (not safe))
                  (##write-string __tmp114334 _%port113775%_))))))))
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
      (lambda (_%self113630%_ _%port113631%_)
        (let* ((_%self113634%_ _%self113630%_)
               (_%tmp-port113644%_ (open-output-string)))
          (fix-port-width! _%tmp-port113644%_)
          (let ((__tmp114335
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self113634%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp114335 _%tmp-port113644%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont113645113647%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self113634%_ 'continuation))))
                (if _%cont113645113647%_
                    (let ((_%cont113650%_ _%cont113645113647%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port113644%_)
                      (newline _%tmp-port113644%_)
                      (display-continuation-backtrace
                       _%cont113650%_
                       _%tmp-port113644%_))
                    '#f))
              '#!void)
          (let ((__tmp114336 (get-output-string _%tmp-port113644%_)))
            (declare (not safe))
            (##write-string __tmp114336 _%port113631%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass114297 __method-table114298)
        (let ((__continuation114299
               (let ((__slot114301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114297 'continuation))))
                 (if __slot114301
                     __slot114301
                     (error '"Unknown slot" 'continuation))))
              (__exception114300
               (let ((__slot114302
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114297 'exception))))
                 (if __slot114302
                     __slot114302
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self113630%_ _%port113631%_)
            (let* ((_%self113634%_ _%self113630%_)
                   (_%tmp-port113644%_ (open-output-string)))
              (fix-port-width! _%tmp-port113644%_)
              (let ((__tmp114337
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self113634%_
                        __exception114300
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp114337 _%tmp-port113644%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont113645113647%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self113634%_
                            __continuation114299
                            '#f
                            '#f))))
                    (if _%cont113645113647%_
                        (let ((_%cont113650%_ _%cont113645113647%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port113644%_)
                          (newline _%tmp-port113644%_)
                          (display-continuation-backtrace
                           _%cont113650%_
                           _%tmp-port113644%_))
                        '#f))
                  '#!void)
              (let ((__tmp114338 (get-output-string _%tmp-port113644%_)))
                (declare (not safe))
                (##write-string __tmp114338 _%port113631%_)))))))
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
      (lambda (_%port113502%_)
        (if (macro-character-port? _%port113502%_)
            (let ((_%old-width113504%_
                   (macro-character-port-output-width _%port113502%_)))
              (macro-character-port-output-width-set!
               _%port113502%_
               (lambda (_%port113506%_) '256))
              _%old-width113504%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port113499%_ _%old-width113500%_)
        (if (macro-character-port? _%port113499%_)
            (macro-character-port-output-width-set!
             _%port113499%_
             _%old-width113500%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e113497%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e113497%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn113491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113491%_))
            (let ((_%e113494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113491%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e113494%_))
            (macro-abandoned-mutex-exception? _%exn113491%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn113487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113487%_))
            (let ((_%e113489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113487%_ 'exception))))
              (macro-cfun-conversion-exception? _%e113489%_))
            (macro-cfun-conversion-exception? _%exn113487%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn113483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113483%_))
            (let ((_%e113485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113483%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113485%_)
                  (macro-cfun-conversion-exception-arguments _%e113485%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e113485%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113483%_)
                (macro-cfun-conversion-exception-arguments _%exn113483%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn113483%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn113479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113479%_))
            (let ((_%e113481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113479%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113481%_)
                  (macro-cfun-conversion-exception-code _%e113481%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e113481%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113479%_)
                (macro-cfun-conversion-exception-code _%exn113479%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn113479%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn113475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113475%_))
            (let ((_%e113477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113475%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113477%_)
                  (macro-cfun-conversion-exception-message _%e113477%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e113477%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113475%_)
                (macro-cfun-conversion-exception-message _%exn113475%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn113475%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn113469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113469%_))
            (let ((_%e113472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113469%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113472%_)
                  (macro-cfun-conversion-exception-procedure _%e113472%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e113472%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113469%_)
                (macro-cfun-conversion-exception-procedure _%exn113469%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn113469%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn113465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113465%_))
            (let ((_%e113467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113465%_ 'exception))))
              (macro-datum-parsing-exception? _%e113467%_))
            (macro-datum-parsing-exception? _%exn113465%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn113461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113461%_))
            (let ((_%e113463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113461%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113463%_)
                  (macro-datum-parsing-exception-kind _%e113463%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e113463%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113461%_)
                (macro-datum-parsing-exception-kind _%exn113461%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn113461%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn113457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113457%_))
            (let ((_%e113459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113457%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113459%_)
                  (macro-datum-parsing-exception-parameters _%e113459%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e113459%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113457%_)
                (macro-datum-parsing-exception-parameters _%exn113457%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn113457%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn113451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113451%_))
            (let ((_%e113454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113451%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113454%_)
                  (macro-datum-parsing-exception-readenv _%e113454%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e113454%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113451%_)
                (macro-datum-parsing-exception-readenv _%exn113451%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn113451%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn113445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113445%_))
            (let ((_%e113448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113445%_ 'exception))))
              (macro-deadlock-exception? _%e113448%_))
            (macro-deadlock-exception? _%exn113445%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn113441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113441%_))
            (let ((_%e113443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113441%_ 'exception))))
              (macro-divide-by-zero-exception? _%e113443%_))
            (macro-divide-by-zero-exception? _%exn113441%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn113437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113437%_))
            (let ((_%e113439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113437%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113439%_)
                  (macro-divide-by-zero-exception-arguments _%e113439%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e113439%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113437%_)
                (macro-divide-by-zero-exception-arguments _%exn113437%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn113437%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn113431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113431%_))
            (let ((_%e113434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113431%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113434%_)
                  (macro-divide-by-zero-exception-procedure _%e113434%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e113434%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113431%_)
                (macro-divide-by-zero-exception-procedure _%exn113431%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn113431%_ '())))))))
    (define error-exception?
      (lambda (_%exn113427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113427%_))
            (let ((_%e113429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113427%_ 'exception))))
              (macro-error-exception? _%e113429%_))
            (macro-error-exception? _%exn113427%_))))
    (define error-exception-message
      (lambda (_%exn113423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113423%_))
            (let ((_%e113425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113423%_ 'exception))))
              (if (macro-error-exception? _%e113425%_)
                  (macro-error-exception-message _%e113425%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e113425%_ '())))))
            (if (macro-error-exception? _%exn113423%_)
                (macro-error-exception-message _%exn113423%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn113423%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn113417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113417%_))
            (let ((_%e113420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113417%_ 'exception))))
              (if (macro-error-exception? _%e113420%_)
                  (macro-error-exception-parameters _%e113420%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e113420%_ '())))))
            (if (macro-error-exception? _%exn113417%_)
                (macro-error-exception-parameters _%exn113417%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn113417%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn113413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113413%_))
            (let ((_%e113415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113413%_ 'exception))))
              (macro-expression-parsing-exception? _%e113415%_))
            (macro-expression-parsing-exception? _%exn113413%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn113409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113409%_))
            (let ((_%e113411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113409%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113411%_)
                  (macro-expression-parsing-exception-kind _%e113411%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e113411%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113409%_)
                (macro-expression-parsing-exception-kind _%exn113409%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn113409%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn113405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113405%_))
            (let ((_%e113407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113405%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113407%_)
                  (macro-expression-parsing-exception-parameters _%e113407%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e113407%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113405%_)
                (macro-expression-parsing-exception-parameters _%exn113405%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn113405%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn113399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113399%_))
            (let ((_%e113402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113399%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113402%_)
                  (macro-expression-parsing-exception-source _%e113402%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e113402%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113399%_)
                (macro-expression-parsing-exception-source _%exn113399%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn113399%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn113395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113395%_))
            (let ((_%e113397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113395%_ 'exception))))
              (macro-file-exists-exception? _%e113397%_))
            (macro-file-exists-exception? _%exn113395%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn113391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113391%_))
            (let ((_%e113393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113391%_ 'exception))))
              (if (macro-file-exists-exception? _%e113393%_)
                  (macro-file-exists-exception-arguments _%e113393%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e113393%_ '())))))
            (if (macro-file-exists-exception? _%exn113391%_)
                (macro-file-exists-exception-arguments _%exn113391%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn113391%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn113385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113385%_))
            (let ((_%e113388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113385%_ 'exception))))
              (if (macro-file-exists-exception? _%e113388%_)
                  (macro-file-exists-exception-procedure _%e113388%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e113388%_ '())))))
            (if (macro-file-exists-exception? _%exn113385%_)
                (macro-file-exists-exception-procedure _%exn113385%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn113385%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn113381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113381%_))
            (let ((_%e113383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113381%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e113383%_))
            (macro-fixnum-overflow-exception? _%exn113381%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn113377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113377%_))
            (let ((_%e113379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113377%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113379%_)
                  (macro-fixnum-overflow-exception-arguments _%e113379%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e113379%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113377%_)
                (macro-fixnum-overflow-exception-arguments _%exn113377%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn113377%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn113371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113371%_))
            (let ((_%e113374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113371%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113374%_)
                  (macro-fixnum-overflow-exception-procedure _%e113374%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e113374%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113371%_)
                (macro-fixnum-overflow-exception-procedure _%exn113371%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn113371%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn113365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113365%_))
            (let ((_%e113368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113365%_ 'exception))))
              (macro-heap-overflow-exception? _%e113368%_))
            (macro-heap-overflow-exception? _%exn113365%_))))
    (define inactive-thread-exception?
      (lambda (_%exn113361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113361%_))
            (let ((_%e113363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113361%_ 'exception))))
              (macro-inactive-thread-exception? _%e113363%_))
            (macro-inactive-thread-exception? _%exn113361%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn113357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113357%_))
            (let ((_%e113359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113357%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113359%_)
                  (macro-inactive-thread-exception-arguments _%e113359%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e113359%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113357%_)
                (macro-inactive-thread-exception-arguments _%exn113357%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn113357%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn113351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113351%_))
            (let ((_%e113354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113351%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113354%_)
                  (macro-inactive-thread-exception-procedure _%e113354%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e113354%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113351%_)
                (macro-inactive-thread-exception-procedure _%exn113351%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn113351%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn113347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113347%_))
            (let ((_%e113349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113347%_ 'exception))))
              (macro-initialized-thread-exception? _%e113349%_))
            (macro-initialized-thread-exception? _%exn113347%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn113343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113343%_))
            (let ((_%e113345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113343%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113345%_)
                  (macro-initialized-thread-exception-arguments _%e113345%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e113345%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113343%_)
                (macro-initialized-thread-exception-arguments _%exn113343%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn113343%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn113337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113337%_))
            (let ((_%e113340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113337%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113340%_)
                  (macro-initialized-thread-exception-procedure _%e113340%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e113340%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113337%_)
                (macro-initialized-thread-exception-procedure _%exn113337%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn113337%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn113333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113333%_))
            (let ((_%e113335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113333%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e113335%_))
            (macro-invalid-hash-number-exception? _%exn113333%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn113329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113329%_))
            (let ((_%e113331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113329%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113331%_)
                  (macro-invalid-hash-number-exception-arguments _%e113331%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e113331%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113329%_)
                (macro-invalid-hash-number-exception-arguments _%exn113329%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn113329%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn113323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113323%_))
            (let ((_%e113326%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113323%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113326%_)
                  (macro-invalid-hash-number-exception-procedure _%e113326%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e113326%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113323%_)
                (macro-invalid-hash-number-exception-procedure _%exn113323%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn113323%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn113319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113319%_))
            (let ((_%e113321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113319%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e113321%_))
            (macro-invalid-utf8-encoding-exception? _%exn113319%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn113315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113315%_))
            (let ((_%e113317%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113315%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113317%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e113317%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e113317%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113315%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn113315%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn113315%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn113309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113309%_))
            (let ((_%e113312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113309%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113312%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e113312%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e113312%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113309%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn113309%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn113309%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn113305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113305%_))
            (let ((_%e113307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113305%_ 'exception))))
              (macro-join-timeout-exception? _%e113307%_))
            (macro-join-timeout-exception? _%exn113305%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn113301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113301%_))
            (let ((_%e113303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113301%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113303%_)
                  (macro-join-timeout-exception-arguments _%e113303%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e113303%_ '())))))
            (if (macro-join-timeout-exception? _%exn113301%_)
                (macro-join-timeout-exception-arguments _%exn113301%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn113301%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn113295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113295%_))
            (let ((_%e113298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113295%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113298%_)
                  (macro-join-timeout-exception-procedure _%e113298%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e113298%_ '())))))
            (if (macro-join-timeout-exception? _%exn113295%_)
                (macro-join-timeout-exception-procedure _%exn113295%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn113295%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn113291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113291%_))
            (let ((_%e113293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113291%_ 'exception))))
              (macro-keyword-expected-exception? _%e113293%_))
            (macro-keyword-expected-exception? _%exn113291%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn113287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113287%_))
            (let ((_%e113289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113287%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113289%_)
                  (macro-keyword-expected-exception-arguments _%e113289%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e113289%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113287%_)
                (macro-keyword-expected-exception-arguments _%exn113287%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn113287%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn113281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113281%_))
            (let ((_%e113284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113281%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113284%_)
                  (macro-keyword-expected-exception-procedure _%e113284%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e113284%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113281%_)
                (macro-keyword-expected-exception-procedure _%exn113281%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn113281%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn113277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113277%_))
            (let ((_%e113279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113277%_ 'exception))))
              (macro-length-mismatch-exception? _%e113279%_))
            (macro-length-mismatch-exception? _%exn113277%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn113273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113273%_))
            (let ((_%e113275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113273%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113275%_)
                  (macro-length-mismatch-exception-arg-id _%e113275%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e113275%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113273%_)
                (macro-length-mismatch-exception-arg-id _%exn113273%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn113273%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn113269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113269%_))
            (let ((_%e113271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113269%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113271%_)
                  (macro-length-mismatch-exception-arguments _%e113271%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e113271%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113269%_)
                (macro-length-mismatch-exception-arguments _%exn113269%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn113269%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn113263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113263%_))
            (let ((_%e113266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113263%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113266%_)
                  (macro-length-mismatch-exception-procedure _%e113266%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e113266%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113263%_)
                (macro-length-mismatch-exception-procedure _%exn113263%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn113263%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn113259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113259%_))
            (let ((_%e113261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113259%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e113261%_))
            (macro-mailbox-receive-timeout-exception? _%exn113259%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn113255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113255%_))
            (let ((_%e113257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113255%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113257%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e113257%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e113257%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113255%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn113255%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn113255%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn113249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113249%_))
            (let ((_%e113252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113249%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113252%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e113252%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e113252%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113249%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn113249%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn113249%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn113245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113245%_))
            (let ((_%e113247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113245%_ 'exception))))
              (macro-module-not-found-exception? _%e113247%_))
            (macro-module-not-found-exception? _%exn113245%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn113241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113241%_))
            (let ((_%e113243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113241%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113243%_)
                  (macro-module-not-found-exception-arguments _%e113243%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e113243%_ '())))))
            (if (macro-module-not-found-exception? _%exn113241%_)
                (macro-module-not-found-exception-arguments _%exn113241%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn113241%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn113235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113235%_))
            (let ((_%e113238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113235%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113238%_)
                  (macro-module-not-found-exception-procedure _%e113238%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e113238%_ '())))))
            (if (macro-module-not-found-exception? _%exn113235%_)
                (macro-module-not-found-exception-procedure _%exn113235%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn113235%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn113229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113229%_))
            (let ((_%e113232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113229%_ 'exception))))
              (macro-multiple-c-return-exception? _%e113232%_))
            (macro-multiple-c-return-exception? _%exn113229%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn113225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113225%_))
            (let ((_%e113227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113225%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e113227%_))
            (macro-no-such-file-or-directory-exception? _%exn113225%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn113221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113221%_))
            (let ((_%e113223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113221%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113223%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e113223%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e113223%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113221%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn113221%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn113221%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn113215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113215%_))
            (let ((_%e113218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113215%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113218%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e113218%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e113218%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113215%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn113215%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn113215%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn113211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113211%_))
            (let ((_%e113213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113211%_ 'exception))))
              (macro-noncontinuable-exception? _%e113213%_))
            (macro-noncontinuable-exception? _%exn113211%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn113205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113205%_))
            (let ((_%e113208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113205%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e113208%_)
                  (macro-noncontinuable-exception-reason _%e113208%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e113208%_ '())))))
            (if (macro-noncontinuable-exception? _%exn113205%_)
                (macro-noncontinuable-exception-reason _%exn113205%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn113205%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn113201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113201%_))
            (let ((_%e113203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113201%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e113203%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn113201%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn113197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113197%_))
            (let ((_%e113199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113197%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113199%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e113199%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e113199%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113197%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn113197%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn113197%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn113191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113191%_))
            (let ((_%e113194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113191%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113194%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e113194%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e113194%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113191%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn113191%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn113191%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn113187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113187%_))
            (let ((_%e113189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113187%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e113189%_))
            (macro-nonprocedure-operator-exception? _%exn113187%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn113183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113183%_))
            (let ((_%e113185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113183%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113185%_)
                  (macro-nonprocedure-operator-exception-arguments _%e113185%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e113185%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113183%_)
                (macro-nonprocedure-operator-exception-arguments _%exn113183%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn113183%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn113179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113179%_))
            (let ((_%e113181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113179%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113181%_)
                  (macro-nonprocedure-operator-exception-code _%e113181%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e113181%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113179%_)
                (macro-nonprocedure-operator-exception-code _%exn113179%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn113179%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn113175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113175%_))
            (let ((_%e113177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113175%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113177%_)
                  (macro-nonprocedure-operator-exception-operator _%e113177%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e113177%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113175%_)
                (macro-nonprocedure-operator-exception-operator _%exn113175%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn113175%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn113169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113169%_))
            (let ((_%e113172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113169%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113172%_)
                  (macro-nonprocedure-operator-exception-rte _%e113172%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e113172%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113169%_)
                (macro-nonprocedure-operator-exception-rte _%exn113169%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn113169%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn113165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113165%_))
            (let ((_%e113167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113165%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e113167%_))
            (macro-not-in-compilation-context-exception? _%exn113165%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn113161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113161%_))
            (let ((_%e113163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113161%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113163%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e113163%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e113163%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113161%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn113161%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn113161%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn113155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113155%_))
            (let ((_%e113158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113155%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113158%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e113158%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e113158%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113155%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn113155%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn113155%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn113151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113151%_))
            (let ((_%e113153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113151%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e113153%_))
            (macro-number-of-arguments-limit-exception? _%exn113151%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn113147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113147%_))
            (let ((_%e113149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113147%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113149%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e113149%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e113149%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113147%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn113147%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn113147%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn113141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113141%_))
            (let ((_%e113144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113141%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113144%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e113144%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e113144%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113141%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn113141%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn113141%_ '())))))))
    (define os-exception?
      (lambda (_%exn113137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113137%_))
            (let ((_%e113139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113137%_ 'exception))))
              (macro-os-exception? _%e113139%_))
            (macro-os-exception? _%exn113137%_))))
    (define os-exception-arguments
      (lambda (_%exn113133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113133%_))
            (let ((_%e113135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113133%_ 'exception))))
              (if (macro-os-exception? _%e113135%_)
                  (macro-os-exception-arguments _%e113135%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e113135%_ '())))))
            (if (macro-os-exception? _%exn113133%_)
                (macro-os-exception-arguments _%exn113133%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn113133%_ '())))))))
    (define os-exception-code
      (lambda (_%exn113129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113129%_))
            (let ((_%e113131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113129%_ 'exception))))
              (if (macro-os-exception? _%e113131%_)
                  (macro-os-exception-code _%e113131%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e113131%_ '())))))
            (if (macro-os-exception? _%exn113129%_)
                (macro-os-exception-code _%exn113129%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn113129%_ '())))))))
    (define os-exception-message
      (lambda (_%exn113125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113125%_))
            (let ((_%e113127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113125%_ 'exception))))
              (if (macro-os-exception? _%e113127%_)
                  (macro-os-exception-message _%e113127%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e113127%_ '())))))
            (if (macro-os-exception? _%exn113125%_)
                (macro-os-exception-message _%exn113125%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn113125%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn113119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113119%_))
            (let ((_%e113122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113119%_ 'exception))))
              (if (macro-os-exception? _%e113122%_)
                  (macro-os-exception-procedure _%e113122%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e113122%_ '())))))
            (if (macro-os-exception? _%exn113119%_)
                (macro-os-exception-procedure _%exn113119%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn113119%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn113115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113115%_))
            (let ((_%e113117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113115%_ 'exception))))
              (macro-permission-denied-exception? _%e113117%_))
            (macro-permission-denied-exception? _%exn113115%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn113111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113111%_))
            (let ((_%e113113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113111%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113113%_)
                  (macro-permission-denied-exception-arguments _%e113113%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e113113%_ '())))))
            (if (macro-permission-denied-exception? _%exn113111%_)
                (macro-permission-denied-exception-arguments _%exn113111%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn113111%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn113105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113105%_))
            (let ((_%e113108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113105%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113108%_)
                  (macro-permission-denied-exception-procedure _%e113108%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e113108%_ '())))))
            (if (macro-permission-denied-exception? _%exn113105%_)
                (macro-permission-denied-exception-procedure _%exn113105%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn113105%_ '())))))))
    (define range-exception?
      (lambda (_%exn113101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113101%_))
            (let ((_%e113103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113101%_ 'exception))))
              (macro-range-exception? _%e113103%_))
            (macro-range-exception? _%exn113101%_))))
    (define range-exception-arg-id
      (lambda (_%exn113097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113097%_))
            (let ((_%e113099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113097%_ 'exception))))
              (if (macro-range-exception? _%e113099%_)
                  (macro-range-exception-arg-id _%e113099%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e113099%_ '())))))
            (if (macro-range-exception? _%exn113097%_)
                (macro-range-exception-arg-id _%exn113097%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn113097%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn113093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113093%_))
            (let ((_%e113095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113093%_ 'exception))))
              (if (macro-range-exception? _%e113095%_)
                  (macro-range-exception-arguments _%e113095%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e113095%_ '())))))
            (if (macro-range-exception? _%exn113093%_)
                (macro-range-exception-arguments _%exn113093%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn113093%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn113087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113087%_))
            (let ((_%e113090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113087%_ 'exception))))
              (if (macro-range-exception? _%e113090%_)
                  (macro-range-exception-procedure _%e113090%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e113090%_ '())))))
            (if (macro-range-exception? _%exn113087%_)
                (macro-range-exception-procedure _%exn113087%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn113087%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn113083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113083%_))
            (let ((_%e113085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113083%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e113085%_))
            (macro-rpc-remote-error-exception? _%exn113083%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn113079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113079%_))
            (let ((_%e113081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113079%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113081%_)
                  (macro-rpc-remote-error-exception-arguments _%e113081%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e113081%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113079%_)
                (macro-rpc-remote-error-exception-arguments _%exn113079%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn113079%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn113075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113075%_))
            (let ((_%e113077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113075%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113077%_)
                  (macro-rpc-remote-error-exception-message _%e113077%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e113077%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113075%_)
                (macro-rpc-remote-error-exception-message _%exn113075%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn113075%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn113069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113069%_))
            (let ((_%e113072%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113069%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113072%_)
                  (macro-rpc-remote-error-exception-procedure _%e113072%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e113072%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113069%_)
                (macro-rpc-remote-error-exception-procedure _%exn113069%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn113069%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn113065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113065%_))
            (let ((_%e113067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113065%_ 'exception))))
              (macro-scheduler-exception? _%e113067%_))
            (macro-scheduler-exception? _%exn113065%_))))
    (define scheduler-exception-reason
      (lambda (_%exn113059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113059%_))
            (let ((_%e113062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113059%_ 'exception))))
              (if (macro-scheduler-exception? _%e113062%_)
                  (macro-scheduler-exception-reason _%e113062%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e113062%_ '())))))
            (if (macro-scheduler-exception? _%exn113059%_)
                (macro-scheduler-exception-reason _%exn113059%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn113059%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn113055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113055%_))
            (let ((_%e113057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113055%_ 'exception))))
              (macro-sfun-conversion-exception? _%e113057%_))
            (macro-sfun-conversion-exception? _%exn113055%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn113051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113051%_))
            (let ((_%e113053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113051%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113053%_)
                  (macro-sfun-conversion-exception-arguments _%e113053%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e113053%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113051%_)
                (macro-sfun-conversion-exception-arguments _%exn113051%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn113051%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn113047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113047%_))
            (let ((_%e113049%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113047%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113049%_)
                  (macro-sfun-conversion-exception-code _%e113049%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e113049%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113047%_)
                (macro-sfun-conversion-exception-code _%exn113047%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn113047%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn113043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113043%_))
            (let ((_%e113045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113043%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113045%_)
                  (macro-sfun-conversion-exception-message _%e113045%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e113045%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113043%_)
                (macro-sfun-conversion-exception-message _%exn113043%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn113043%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn113037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113037%_))
            (let ((_%e113040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113037%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113040%_)
                  (macro-sfun-conversion-exception-procedure _%e113040%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e113040%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113037%_)
                (macro-sfun-conversion-exception-procedure _%exn113037%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn113037%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn113031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113031%_))
            (let ((_%e113034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113031%_ 'exception))))
              (macro-stack-overflow-exception? _%e113034%_))
            (macro-stack-overflow-exception? _%exn113031%_))))
    (define started-thread-exception?
      (lambda (_%exn113027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113027%_))
            (let ((_%e113029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113027%_ 'exception))))
              (macro-started-thread-exception? _%e113029%_))
            (macro-started-thread-exception? _%exn113027%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn113023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113023%_))
            (let ((_%e113025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113023%_ 'exception))))
              (if (macro-started-thread-exception? _%e113025%_)
                  (macro-started-thread-exception-arguments _%e113025%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e113025%_ '())))))
            (if (macro-started-thread-exception? _%exn113023%_)
                (macro-started-thread-exception-arguments _%exn113023%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn113023%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn113017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113017%_))
            (let ((_%e113020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113017%_ 'exception))))
              (if (macro-started-thread-exception? _%e113020%_)
                  (macro-started-thread-exception-procedure _%e113020%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e113020%_ '())))))
            (if (macro-started-thread-exception? _%exn113017%_)
                (macro-started-thread-exception-procedure _%exn113017%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn113017%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn113013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113013%_))
            (let ((_%e113015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113013%_ 'exception))))
              (macro-terminated-thread-exception? _%e113015%_))
            (macro-terminated-thread-exception? _%exn113013%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn113009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113009%_))
            (let ((_%e113011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113009%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113011%_)
                  (macro-terminated-thread-exception-arguments _%e113011%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e113011%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113009%_)
                (macro-terminated-thread-exception-arguments _%exn113009%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn113009%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn113003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113003%_))
            (let ((_%e113006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113003%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113006%_)
                  (macro-terminated-thread-exception-procedure _%e113006%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e113006%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113003%_)
                (macro-terminated-thread-exception-procedure _%exn113003%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn113003%_ '())))))))
    (define type-exception?
      (lambda (_%exn112999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112999%_))
            (let ((_%e113001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112999%_ 'exception))))
              (macro-type-exception? _%e113001%_))
            (macro-type-exception? _%exn112999%_))))
    (define type-exception-arg-id
      (lambda (_%exn112995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112995%_))
            (let ((_%e112997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112995%_ 'exception))))
              (if (macro-type-exception? _%e112997%_)
                  (macro-type-exception-arg-id _%e112997%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e112997%_ '())))))
            (if (macro-type-exception? _%exn112995%_)
                (macro-type-exception-arg-id _%exn112995%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn112995%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn112991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112991%_))
            (let ((_%e112993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112991%_ 'exception))))
              (if (macro-type-exception? _%e112993%_)
                  (macro-type-exception-arguments _%e112993%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e112993%_ '())))))
            (if (macro-type-exception? _%exn112991%_)
                (macro-type-exception-arguments _%exn112991%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn112991%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn112987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112987%_))
            (let ((_%e112989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112987%_ 'exception))))
              (if (macro-type-exception? _%e112989%_)
                  (macro-type-exception-procedure _%e112989%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e112989%_ '())))))
            (if (macro-type-exception? _%exn112987%_)
                (macro-type-exception-procedure _%exn112987%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn112987%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn112981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112981%_))
            (let ((_%e112984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112981%_ 'exception))))
              (if (macro-type-exception? _%e112984%_)
                  (macro-type-exception-type-id _%e112984%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e112984%_ '())))))
            (if (macro-type-exception? _%exn112981%_)
                (macro-type-exception-type-id _%exn112981%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn112981%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn112977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112977%_))
            (let ((_%e112979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112977%_ 'exception))))
              (macro-unbound-global-exception? _%e112979%_))
            (macro-unbound-global-exception? _%exn112977%_))))
    (define unbound-global-exception-code
      (lambda (_%exn112973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112973%_))
            (let ((_%e112975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112973%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112975%_)
                  (macro-unbound-global-exception-code _%e112975%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e112975%_ '())))))
            (if (macro-unbound-global-exception? _%exn112973%_)
                (macro-unbound-global-exception-code _%exn112973%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn112973%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn112969%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112969%_))
            (let ((_%e112971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112969%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112971%_)
                  (macro-unbound-global-exception-rte _%e112971%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e112971%_ '())))))
            (if (macro-unbound-global-exception? _%exn112969%_)
                (macro-unbound-global-exception-rte _%exn112969%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn112969%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn112963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112963%_))
            (let ((_%e112966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112963%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112966%_)
                  (macro-unbound-global-exception-variable _%e112966%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e112966%_ '())))))
            (if (macro-unbound-global-exception? _%exn112963%_)
                (macro-unbound-global-exception-variable _%exn112963%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn112963%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn112959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112959%_))
            (let ((_%e112961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112959%_ 'exception))))
              (macro-unbound-key-exception? _%e112961%_))
            (macro-unbound-key-exception? _%exn112959%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn112955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112955%_))
            (let ((_%e112957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112955%_ 'exception))))
              (if (macro-unbound-key-exception? _%e112957%_)
                  (macro-unbound-key-exception-arguments _%e112957%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e112957%_ '())))))
            (if (macro-unbound-key-exception? _%exn112955%_)
                (macro-unbound-key-exception-arguments _%exn112955%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn112955%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn112949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112949%_))
            (let ((_%e112952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112949%_ 'exception))))
              (if (macro-unbound-key-exception? _%e112952%_)
                  (macro-unbound-key-exception-procedure _%e112952%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e112952%_ '())))))
            (if (macro-unbound-key-exception? _%exn112949%_)
                (macro-unbound-key-exception-procedure _%exn112949%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn112949%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn112945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112945%_))
            (let ((_%e112947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112945%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e112947%_))
            (macro-unbound-os-environment-variable-exception? _%exn112945%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn112941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112941%_))
            (let ((_%e112943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112941%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e112943%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e112943%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e112943%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn112941%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn112941%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn112941%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn112935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112935%_))
            (let ((_%e112938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112935%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e112938%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e112938%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e112938%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn112935%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn112935%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn112935%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn112931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112931%_))
            (let ((_%e112933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112931%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e112933%_))
            (macro-unbound-serial-number-exception? _%exn112931%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn112927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112927%_))
            (let ((_%e112929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112927%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e112929%_)
                  (macro-unbound-serial-number-exception-arguments _%e112929%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e112929%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn112927%_)
                (macro-unbound-serial-number-exception-arguments _%exn112927%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn112927%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn112921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112921%_))
            (let ((_%e112924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112921%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e112924%_)
                  (macro-unbound-serial-number-exception-procedure _%e112924%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e112924%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn112921%_)
                (macro-unbound-serial-number-exception-procedure _%exn112921%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn112921%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn112917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112917%_))
            (let ((_%e112919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112917%_ 'exception))))
              (macro-uncaught-exception? _%e112919%_))
            (macro-uncaught-exception? _%exn112917%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn112913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112913%_))
            (let ((_%e112915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112913%_ 'exception))))
              (if (macro-uncaught-exception? _%e112915%_)
                  (macro-uncaught-exception-arguments _%e112915%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e112915%_ '())))))
            (if (macro-uncaught-exception? _%exn112913%_)
                (macro-uncaught-exception-arguments _%exn112913%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn112913%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn112909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112909%_))
            (let ((_%e112911%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112909%_ 'exception))))
              (if (macro-uncaught-exception? _%e112911%_)
                  (macro-uncaught-exception-procedure _%e112911%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e112911%_ '())))))
            (if (macro-uncaught-exception? _%exn112909%_)
                (macro-uncaught-exception-procedure _%exn112909%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn112909%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn112903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112903%_))
            (let ((_%e112906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112903%_ 'exception))))
              (if (macro-uncaught-exception? _%e112906%_)
                  (macro-uncaught-exception-reason _%e112906%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e112906%_ '())))))
            (if (macro-uncaught-exception? _%exn112903%_)
                (macro-uncaught-exception-reason _%exn112903%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn112903%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn112899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112899%_))
            (let ((_%e112901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112899%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e112901%_))
            (macro-uninitialized-thread-exception? _%exn112899%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn112895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112895%_))
            (let ((_%e112897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112895%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e112897%_)
                  (macro-uninitialized-thread-exception-arguments _%e112897%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e112897%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn112895%_)
                (macro-uninitialized-thread-exception-arguments _%exn112895%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn112895%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn112889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112889%_))
            (let ((_%e112892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112889%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e112892%_)
                  (macro-uninitialized-thread-exception-procedure _%e112892%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e112892%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn112889%_)
                (macro-uninitialized-thread-exception-procedure _%exn112889%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn112889%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn112885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112885%_))
            (let ((_%e112887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112885%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e112887%_))
            (macro-unknown-keyword-argument-exception? _%exn112885%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn112881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112881%_))
            (let ((_%e112883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112881%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e112883%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e112883%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e112883%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn112881%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn112881%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn112881%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn112875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112875%_))
            (let ((_%e112878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112875%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e112878%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e112878%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e112878%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn112875%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn112875%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn112875%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn112871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112871%_))
            (let ((_%e112873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112871%_ 'exception))))
              (macro-unterminated-process-exception? _%e112873%_))
            (macro-unterminated-process-exception? _%exn112871%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn112867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112867%_))
            (let ((_%e112869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112867%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e112869%_)
                  (macro-unterminated-process-exception-arguments _%e112869%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e112869%_ '())))))
            (if (macro-unterminated-process-exception? _%exn112867%_)
                (macro-unterminated-process-exception-arguments _%exn112867%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn112867%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn112861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112861%_))
            (let ((_%e112864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112861%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e112864%_)
                  (macro-unterminated-process-exception-procedure _%e112864%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e112864%_ '())))))
            (if (macro-unterminated-process-exception? _%exn112861%_)
                (macro-unterminated-process-exception-procedure _%exn112861%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn112861%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn112857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112857%_))
            (let ((_%e112859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112857%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e112859%_))
            (macro-wrong-number-of-arguments-exception? _%exn112857%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn112853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112853%_))
            (let ((_%e112855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112853%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e112855%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e112855%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e112855%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn112853%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn112853%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn112853%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn112847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112847%_))
            (let ((_%e112850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112847%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e112850%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e112850%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e112850%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn112847%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn112847%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn112847%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn112843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112843%_))
            (let ((_%e112845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112843%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e112845%_))
            (macro-wrong-number-of-values-exception? _%exn112843%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn112839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112839%_))
            (let ((_%e112841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112839%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112841%_)
                  (macro-wrong-number-of-values-exception-code _%e112841%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e112841%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112839%_)
                (macro-wrong-number-of-values-exception-code _%exn112839%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn112839%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn112835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112835%_))
            (let ((_%e112837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112835%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112837%_)
                  (macro-wrong-number-of-values-exception-rte _%e112837%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e112837%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112835%_)
                (macro-wrong-number-of-values-exception-rte _%exn112835%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn112835%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn112829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112829%_))
            (let ((_%e112832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112829%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112832%_)
                  (macro-wrong-number-of-values-exception-vals _%e112832%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e112832%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112829%_)
                (macro-wrong-number-of-values-exception-vals _%exn112829%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn112829%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn112823%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112823%_))
            (let ((_%e112826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112823%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e112826%_))
            (macro-wrong-processor-c-return-exception? _%exn112823%_))))))
