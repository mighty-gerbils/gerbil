(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1733687558)
  (begin
    (define Exception::t
      (let ((__tmp104024 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104024
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args103994%_
        (apply make-instance Exception::t _%$args103994%_)))
    (define StackTrace::t
      (let ((__tmp104025 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104025
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args103991%_
        (apply make-instance StackTrace::t _%$args103991%_)))
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
      (let ((__tmp104026 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104026
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args103988%_ (apply make-instance Error::t _%$args103988%_)))
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
      (let ((__tmp104027 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104027
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args103985%_
        (apply make-instance ContractViolation::t _%$args103985%_)))
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
      (let ((__tmp104028 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104028
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args103982%_
        (apply make-instance RuntimeException::t _%$args103982%_)))
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
      (lambda (_%exn103977%_ _%continue103978%_)
        (let ((_%exn103980%_ (wrap-runtime-exception _%exn103977%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn103980%_ _%continue103978%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn103973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn103973%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn103973%_ 'continuation))
                '#!void
                (let ((__tmp104029
                       (lambda (_%cont103975%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn103973%_
                            'continuation
                            _%cont103975%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104029)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn103973%_))))
    (define error
      (lambda (_%message103970%_ . _%irritants103971%_)
        (raise (let ((__obj104021
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104021
                  _%message103970%_
                  'irritants:
                  _%irritants103971%_)
                 __obj104021))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords103942%_
               _%ctx103937103943%_
               _%contract-expr103938103945%_
               _%value103939103947%_
               _%message103949%_)
        (let* ((_%ctx103951%_
                (if (eq? _%ctx103937103943%_ absent-value)
                    '#f
                    _%ctx103937103943%_))
               (_%contract-expr103953%_
                (if (eq? _%contract-expr103938103945%_ absent-value)
                    '#f
                    _%contract-expr103938103945%_))
               (_%value103955%_
                (if (eq? _%value103939103947%_ absent-value)
                    '#f
                    _%value103939103947%_)))
          (raise (let ((__obj104022
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104022
                    _%message103949%_
                    'where:
                    _%ctx103951%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr103953%_
                                (cons 'value: (cons _%value103955%_ '())))))
                   __obj104022)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords103960%_ . _%args103961%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords103960%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103960%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103960%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103960%_
                  'value:
                  absent-value))
               _%args103961%_)))
    (define __raise-contract-violation-error
      (lambda _%args103940103967%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args103940103967%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler103911%_ _%thunk103912%_)
        (if (procedure? _%handler103911%_)
            (let ((_%handler103916%_ _%handler103911%_))
              (if (procedure? _%thunk103912%_)
                  (let ((_%thunk103926%_ _%thunk103912%_))
                    (__with-exception-handler
                     _%handler103916%_
                     _%thunk103926%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk103912%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler103911%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler103886%_ _%thunk103887%_)
        (let* ((_%handler103890%_ _%handler103886%_)
               (_%thunk103898%_ _%thunk103887%_)
               (__tmp104030
                (lambda (_%exn103907%_)
                  (let ((_%exn103909%_ (wrap-runtime-exception _%exn103907%_)))
                    (declare (not safe))
                    (_%handler103890%_ _%exn103909%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104030 _%thunk103898%_))))
    (define with-catch
      (lambda (_%handler103861%_ _%thunk103862%_)
        (if (procedure? _%handler103861%_)
            (let ((_%handler103866%_ _%handler103861%_))
              (if (procedure? _%thunk103862%_)
                  (let ((_%thunk103876%_ _%thunk103862%_))
                    (__with-catch _%handler103866%_ _%thunk103876%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk103862%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler103861%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler103836%_ _%thunk103837%_)
        (let* ((_%handler103840%_ _%handler103836%_)
               (_%thunk103848%_ _%thunk103837%_)
               (__tmp104031
                (lambda (_%cont103857%_)
                  (__with-exception-handler
                   (lambda (_%exn103859%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont103857%_
                        _%handler103840%_
                        _%exn103859%_)))
                   _%thunk103848%_))))
          (declare (not safe))
          (##continuation-capture __tmp104031))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn103823%_)
        (if (or (heap-overflow-exception? _%exn103823%_)
                (stack-overflow-exception? _%exn103823%_))
            _%exn103823%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn103823%_))
                _%exn103823%_
                (if (macro-exception? _%exn103823%_)
                    (let ((_%rte103831%_
                           (let ((__obj104023
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104023
                                _%exn103823%_
                                '2
                                '#f
                                '#f))
                             __obj104023)))
                      (let ((__tmp104032
                             (lambda (_%cont103833%_)
                               (let ((__tmp104033
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont103833%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte103831%_
                                  'continuation
                                  __tmp104033)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104032))
                      _%rte103831%_)
                    _%exn103823%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj103818%_)
        (let ((_%$e103820%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj103818%_))))
          (if _%$e103820%_ _%$e103820%_ (error-exception? _%obj103818%_)))))
    (define error-message
      (lambda (_%obj103811%_)
        (let ((_%$e103813%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj103811%_ 'message false))))
          (if _%$e103813%_
              _%$e103813%_
              (if (error-exception? _%obj103811%_)
                  (error-exception-message _%obj103811%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj103806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj103806%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj103806%_ 'irritants))
            (if (error-exception? _%obj103806%_)
                (error-exception-parameters _%obj103806%_)
                '#f))))
    (define error-trace
      (lambda (_%obj103804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj103804%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj103804%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e103785%_ _%port103786%_)
        (let ((_%$e103788%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e103785%_ 'display-exception))))
          (if _%$e103788%_
              ((lambda (_%f103791%_) (_%f103791%_ _%e103785%_ _%port103786%_))
               _%$e103788%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e103785%_ _%port103786%_))))))
    (define display-exception__0
      (lambda (_%e103797%_)
        (let ((_%port103799%_ (current-error-port)))
          (display-exception__% _%e103797%_ _%port103799%_))))
    (define display-exception
      (lambda _g104035_
        (let ((_g104034_ (let () (declare (not safe)) (##length _g104035_))))
          (cond ((let () (declare (not safe)) (##fx= _g104034_ 1))
                 (apply display-exception__0 _g104035_))
                ((let () (declare (not safe)) (##fx= _g104034_ 2))
                 (apply display-exception__% _g104035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104035_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self102154103761%_ _%message103763%_ . _%rest103764%_)
        (let* ((_%self103766%_ _%self102154103761%_)
               (_%self103768%_ _%self103766%_)
               (_%message103782%_
                (if (string? _%message103763%_)
                    _%message103763%_
                    (call-with-output-string
                     '""
                     (lambda (_%g103777103779%_)
                       (display _%message103763%_ _%g103777103779%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self103768%_ 'message _%message103782%_))
          (apply class-instance-init! _%self103768%_ _%rest103764%_))))
    (define Error:::init!::specialize
      (lambda (__klass103996 __method-table103997)
        (let ((__message103998
               (let ((__slot103999
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103996 'message))))
                 (if __slot103999
                     __slot103999
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self102154103761%_ _%message103763%_ . _%rest103764%_)
            (let* ((_%self103766%_ _%self102154103761%_)
                   (_%self103768%_ _%self103766%_)
                   (_%message103782%_
                    (if (string? _%message103763%_)
                        _%message103763%_
                        (call-with-output-string
                         '""
                         (lambda (_%g103777103779%_)
                           (display _%message103763%_ _%g103777103779%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self103768%_
                 _%message103782%_
                 __message103998
                 '#f
                 '#f))
              (apply class-instance-init! _%self103768%_ _%rest103764%_))))))
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
      (lambda (_%self102155103483%_ _%port103485%_)
        (let* ((_%self103487%_ _%self102155103483%_)
               (_%self103489%_ _%self103487%_))
          (let ((_%tmp-port103499%_ (open-output-string))
                (_%display-error-newline103500%_
                 (> (output-port-column _%port103485%_) '0)))
            (fix-port-width! _%tmp-port103499%_)
            (let ((__tmp104036
                   (lambda ()
                     (if _%display-error-newline103500%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e103503%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103489%_ 'where))))
                       (if _%$e103503%_ (display _%$e103503%_) (display '"?")))
                     (let ((__tmp104037
                            (let ((__tmp104038
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self103489%_))))
                              (declare (not safe))
                              (##type-name __tmp104038))))
                       (declare (not safe))
                       (display* '" [" __tmp104037 '"]: "))
                     (let ((__tmp104039
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103489%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104039))
                     (let ((_%irritants103507%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103489%_ 'irritants))))
                       (if (null? _%irritants103507%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj103509%_)
                                (if (u8vector? _%obj103509%_)
                                    (let ((__tmp104040
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj103509%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104040))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj103509%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants103507%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont103510103512%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self103489%_
                                   'continuation))))
                           (if _%cont103510103512%_
                               (let ((_%cont103515%_ _%cont103510103512%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont103515%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104036
               current-output-port
               _%tmp-port103499%_))
            (let ((__tmp104041 (get-output-string _%tmp-port103499%_)))
              (declare (not safe))
              (##write-string __tmp104041 _%port103485%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104000 __method-table104001)
        (let ((__irritants104002
               (let ((__slot104006
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104000 'irritants))))
                 (if __slot104006
                     __slot104006
                     (error '"Unknown slot" 'irritants))))
              (__continuation104003
               (let ((__slot104007
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104000 'continuation))))
                 (if __slot104007
                     __slot104007
                     (error '"Unknown slot" 'continuation))))
              (__where104004
               (let ((__slot104008
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104000 'where))))
                 (if __slot104008
                     __slot104008
                     (error '"Unknown slot" 'where))))
              (__message104005
               (let ((__slot104009
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104000 'message))))
                 (if __slot104009
                     __slot104009
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self102155103483%_ _%port103485%_)
            (let* ((_%self103487%_ _%self102155103483%_)
                   (_%self103489%_ _%self103487%_))
              (let ((_%tmp-port103499%_ (open-output-string))
                    (_%display-error-newline103500%_
                     (> (output-port-column _%port103485%_) '0)))
                (fix-port-width! _%tmp-port103499%_)
                (let ((__tmp104042
                       (lambda ()
                         (if _%display-error-newline103500%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e103503%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103489%_
                                   __where104004
                                   '#f
                                   '#f))))
                           (if _%$e103503%_
                               (display _%$e103503%_)
                               (display '"?")))
                         (let ((__tmp104043
                                (let ((__tmp104044
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self103489%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104044))))
                           (declare (not safe))
                           (display* '" [" __tmp104043 '"]: "))
                         (let ((__tmp104045
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103489%_
                                   __message104005
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104045))
                         (let ((_%irritants103507%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103489%_
                                   __irritants104002
                                   '#f
                                   '#f))))
                           (if (null? _%irritants103507%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj103509%_)
                                    (if (u8vector? _%obj103509%_)
                                        (let ((__tmp104046
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj103509%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104046))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj103509%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants103507%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont103510103512%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self103489%_
                                       __continuation104003
                                       '#f
                                       '#f))))
                               (if _%cont103510103512%_
                                   (let ((_%cont103515%_ _%cont103510103512%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont103515%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104042
                   current-output-port
                   _%tmp-port103499%_))
                (let ((__tmp104047 (get-output-string _%tmp-port103499%_)))
                  (declare (not safe))
                  (##write-string __tmp104047 _%port103485%_))))))))
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
      (lambda (_%self102156103337%_ _%port103339%_)
        (let* ((_%self103341%_ _%self102156103337%_)
               (_%self103343%_ _%self103341%_)
               (_%tmp-port103353%_ (open-output-string)))
          (fix-port-width! _%tmp-port103353%_)
          (let ((__tmp104048
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self103343%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104048 _%tmp-port103353%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont103354103356%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self103343%_ 'continuation))))
                (if _%cont103354103356%_
                    (let ((_%cont103359%_ _%cont103354103356%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port103353%_)
                      (newline _%tmp-port103353%_)
                      (display-continuation-backtrace
                       _%cont103359%_
                       _%tmp-port103353%_))
                    '#f))
              '#!void)
          (let ((__tmp104049 (get-output-string _%tmp-port103353%_)))
            (declare (not safe))
            (##write-string __tmp104049 _%port103339%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104010 __method-table104011)
        (let ((__exception104012
               (let ((__slot104014
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104010 'exception))))
                 (if __slot104014
                     __slot104014
                     (error '"Unknown slot" 'exception))))
              (__continuation104013
               (let ((__slot104015
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104010 'continuation))))
                 (if __slot104015
                     __slot104015
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self102156103337%_ _%port103339%_)
            (let* ((_%self103341%_ _%self102156103337%_)
                   (_%self103343%_ _%self103341%_)
                   (_%tmp-port103353%_ (open-output-string)))
              (fix-port-width! _%tmp-port103353%_)
              (let ((__tmp104050
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self103343%_
                        __exception104012
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104050 _%tmp-port103353%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont103354103356%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self103343%_
                            __continuation104013
                            '#f
                            '#f))))
                    (if _%cont103354103356%_
                        (let ((_%cont103359%_ _%cont103354103356%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port103353%_)
                          (newline _%tmp-port103353%_)
                          (display-continuation-backtrace
                           _%cont103359%_
                           _%tmp-port103353%_))
                        '#f))
                  '#!void)
              (let ((__tmp104051 (get-output-string _%tmp-port103353%_)))
                (declare (not safe))
                (##write-string __tmp104051 _%port103339%_)))))))
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
      (lambda (_%port103209%_)
        (if (macro-character-port? _%port103209%_)
            (let ((_%old-width103211%_
                   (macro-character-port-output-width _%port103209%_)))
              (macro-character-port-output-width-set!
               _%port103209%_
               (lambda (_%port103213%_) '256))
              _%old-width103211%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port103206%_ _%old-width103207%_)
        (if (macro-character-port? _%port103206%_)
            (macro-character-port-output-width-set!
             _%port103206%_
             _%old-width103207%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e103204%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e103204%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn103198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103198%_))
            (let ((_%e103201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103198%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e103201%_))
            (macro-abandoned-mutex-exception? _%exn103198%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn103194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103194%_))
            (let ((_%e103196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103194%_ 'exception))))
              (macro-cfun-conversion-exception? _%e103196%_))
            (macro-cfun-conversion-exception? _%exn103194%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn103190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103190%_))
            (let ((_%e103192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103190%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103192%_)
                  (macro-cfun-conversion-exception-arguments _%e103192%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e103192%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103190%_)
                (macro-cfun-conversion-exception-arguments _%exn103190%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn103190%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn103186%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103186%_))
            (let ((_%e103188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103186%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103188%_)
                  (macro-cfun-conversion-exception-code _%e103188%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e103188%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103186%_)
                (macro-cfun-conversion-exception-code _%exn103186%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn103186%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn103182%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103182%_))
            (let ((_%e103184%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103182%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103184%_)
                  (macro-cfun-conversion-exception-message _%e103184%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e103184%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103182%_)
                (macro-cfun-conversion-exception-message _%exn103182%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn103182%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn103176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103176%_))
            (let ((_%e103179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103176%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103179%_)
                  (macro-cfun-conversion-exception-procedure _%e103179%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e103179%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103176%_)
                (macro-cfun-conversion-exception-procedure _%exn103176%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn103176%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn103172%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103172%_))
            (let ((_%e103174%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103172%_ 'exception))))
              (macro-datum-parsing-exception? _%e103174%_))
            (macro-datum-parsing-exception? _%exn103172%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn103168%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103168%_))
            (let ((_%e103170%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103168%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103170%_)
                  (macro-datum-parsing-exception-kind _%e103170%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e103170%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103168%_)
                (macro-datum-parsing-exception-kind _%exn103168%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn103168%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn103164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103164%_))
            (let ((_%e103166%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103164%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103166%_)
                  (macro-datum-parsing-exception-parameters _%e103166%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e103166%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103164%_)
                (macro-datum-parsing-exception-parameters _%exn103164%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn103164%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn103158%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103158%_))
            (let ((_%e103161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103158%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103161%_)
                  (macro-datum-parsing-exception-readenv _%e103161%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e103161%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103158%_)
                (macro-datum-parsing-exception-readenv _%exn103158%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn103158%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn103152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103152%_))
            (let ((_%e103155%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103152%_ 'exception))))
              (macro-deadlock-exception? _%e103155%_))
            (macro-deadlock-exception? _%exn103152%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn103148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103148%_))
            (let ((_%e103150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103148%_ 'exception))))
              (macro-divide-by-zero-exception? _%e103150%_))
            (macro-divide-by-zero-exception? _%exn103148%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn103144%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103144%_))
            (let ((_%e103146%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103144%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e103146%_)
                  (macro-divide-by-zero-exception-arguments _%e103146%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e103146%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn103144%_)
                (macro-divide-by-zero-exception-arguments _%exn103144%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn103144%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn103138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103138%_))
            (let ((_%e103141%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103138%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e103141%_)
                  (macro-divide-by-zero-exception-procedure _%e103141%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e103141%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn103138%_)
                (macro-divide-by-zero-exception-procedure _%exn103138%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn103138%_ '())))))))
    (define error-exception?
      (lambda (_%exn103134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103134%_))
            (let ((_%e103136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103134%_ 'exception))))
              (macro-error-exception? _%e103136%_))
            (macro-error-exception? _%exn103134%_))))
    (define error-exception-message
      (lambda (_%exn103130%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103130%_))
            (let ((_%e103132%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103130%_ 'exception))))
              (if (macro-error-exception? _%e103132%_)
                  (macro-error-exception-message _%e103132%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e103132%_ '())))))
            (if (macro-error-exception? _%exn103130%_)
                (macro-error-exception-message _%exn103130%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn103130%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn103124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103124%_))
            (let ((_%e103127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103124%_ 'exception))))
              (if (macro-error-exception? _%e103127%_)
                  (macro-error-exception-parameters _%e103127%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e103127%_ '())))))
            (if (macro-error-exception? _%exn103124%_)
                (macro-error-exception-parameters _%exn103124%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn103124%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn103120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103120%_))
            (let ((_%e103122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103120%_ 'exception))))
              (macro-expression-parsing-exception? _%e103122%_))
            (macro-expression-parsing-exception? _%exn103120%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn103116%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103116%_))
            (let ((_%e103118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103116%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103118%_)
                  (macro-expression-parsing-exception-kind _%e103118%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e103118%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103116%_)
                (macro-expression-parsing-exception-kind _%exn103116%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn103116%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn103112%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103112%_))
            (let ((_%e103114%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103112%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103114%_)
                  (macro-expression-parsing-exception-parameters _%e103114%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e103114%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103112%_)
                (macro-expression-parsing-exception-parameters _%exn103112%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn103112%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn103106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103106%_))
            (let ((_%e103109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103106%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103109%_)
                  (macro-expression-parsing-exception-source _%e103109%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e103109%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103106%_)
                (macro-expression-parsing-exception-source _%exn103106%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn103106%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn103102%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103102%_))
            (let ((_%e103104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103102%_ 'exception))))
              (macro-file-exists-exception? _%e103104%_))
            (macro-file-exists-exception? _%exn103102%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn103098%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103098%_))
            (let ((_%e103100%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103098%_ 'exception))))
              (if (macro-file-exists-exception? _%e103100%_)
                  (macro-file-exists-exception-arguments _%e103100%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e103100%_ '())))))
            (if (macro-file-exists-exception? _%exn103098%_)
                (macro-file-exists-exception-arguments _%exn103098%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn103098%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn103092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103092%_))
            (let ((_%e103095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103092%_ 'exception))))
              (if (macro-file-exists-exception? _%e103095%_)
                  (macro-file-exists-exception-procedure _%e103095%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e103095%_ '())))))
            (if (macro-file-exists-exception? _%exn103092%_)
                (macro-file-exists-exception-procedure _%exn103092%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn103092%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn103088%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103088%_))
            (let ((_%e103090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103088%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e103090%_))
            (macro-fixnum-overflow-exception? _%exn103088%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn103084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103084%_))
            (let ((_%e103086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103084%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103086%_)
                  (macro-fixnum-overflow-exception-arguments _%e103086%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e103086%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103084%_)
                (macro-fixnum-overflow-exception-arguments _%exn103084%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn103084%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn103078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103078%_))
            (let ((_%e103081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103078%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103081%_)
                  (macro-fixnum-overflow-exception-procedure _%e103081%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e103081%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103078%_)
                (macro-fixnum-overflow-exception-procedure _%exn103078%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn103078%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn103072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103072%_))
            (let ((_%e103075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103072%_ 'exception))))
              (macro-heap-overflow-exception? _%e103075%_))
            (macro-heap-overflow-exception? _%exn103072%_))))
    (define inactive-thread-exception?
      (lambda (_%exn103068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103068%_))
            (let ((_%e103070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103068%_ 'exception))))
              (macro-inactive-thread-exception? _%e103070%_))
            (macro-inactive-thread-exception? _%exn103068%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn103064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103064%_))
            (let ((_%e103066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103064%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103066%_)
                  (macro-inactive-thread-exception-arguments _%e103066%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e103066%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103064%_)
                (macro-inactive-thread-exception-arguments _%exn103064%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn103064%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn103058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103058%_))
            (let ((_%e103061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103058%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103061%_)
                  (macro-inactive-thread-exception-procedure _%e103061%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e103061%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103058%_)
                (macro-inactive-thread-exception-procedure _%exn103058%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn103058%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103054%_))
            (let ((_%e103056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103054%_ 'exception))))
              (macro-initialized-thread-exception? _%e103056%_))
            (macro-initialized-thread-exception? _%exn103054%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103050%_))
            (let ((_%e103052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103050%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103052%_)
                  (macro-initialized-thread-exception-arguments _%e103052%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103052%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103050%_)
                (macro-initialized-thread-exception-arguments _%exn103050%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103050%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103044%_))
            (let ((_%e103047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103044%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103047%_)
                  (macro-initialized-thread-exception-procedure _%e103047%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103047%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103044%_)
                (macro-initialized-thread-exception-procedure _%exn103044%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103044%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103040%_))
            (let ((_%e103042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103040%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103042%_))
            (macro-invalid-hash-number-exception? _%exn103040%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103036%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103036%_))
            (let ((_%e103038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103036%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103038%_)
                  (macro-invalid-hash-number-exception-arguments _%e103038%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103038%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103036%_)
                (macro-invalid-hash-number-exception-arguments _%exn103036%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103036%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103030%_))
            (let ((_%e103033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103030%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103033%_)
                  (macro-invalid-hash-number-exception-procedure _%e103033%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103033%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103030%_)
                (macro-invalid-hash-number-exception-procedure _%exn103030%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103030%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103026%_))
            (let ((_%e103028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103026%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103028%_))
            (macro-invalid-utf8-encoding-exception? _%exn103026%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103022%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103022%_))
            (let ((_%e103024%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103022%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103024%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103024%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103024%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103022%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103022%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103022%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103016%_))
            (let ((_%e103019%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103016%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103019%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103019%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103019%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103016%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103016%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103016%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103012%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103012%_))
            (let ((_%e103014%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103012%_ 'exception))))
              (macro-join-timeout-exception? _%e103014%_))
            (macro-join-timeout-exception? _%exn103012%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103008%_))
            (let ((_%e103010%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103008%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103010%_)
                  (macro-join-timeout-exception-arguments _%e103010%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103010%_ '())))))
            (if (macro-join-timeout-exception? _%exn103008%_)
                (macro-join-timeout-exception-arguments _%exn103008%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103008%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103002%_))
            (let ((_%e103005%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103002%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103005%_)
                  (macro-join-timeout-exception-procedure _%e103005%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103005%_ '())))))
            (if (macro-join-timeout-exception? _%exn103002%_)
                (macro-join-timeout-exception-procedure _%exn103002%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103002%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn102998%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102998%_))
            (let ((_%e103000%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102998%_ 'exception))))
              (macro-keyword-expected-exception? _%e103000%_))
            (macro-keyword-expected-exception? _%exn102998%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn102994%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102994%_))
            (let ((_%e102996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102994%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e102996%_)
                  (macro-keyword-expected-exception-arguments _%e102996%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e102996%_ '())))))
            (if (macro-keyword-expected-exception? _%exn102994%_)
                (macro-keyword-expected-exception-arguments _%exn102994%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn102994%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn102988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102988%_))
            (let ((_%e102991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102988%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e102991%_)
                  (macro-keyword-expected-exception-procedure _%e102991%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e102991%_ '())))))
            (if (macro-keyword-expected-exception? _%exn102988%_)
                (macro-keyword-expected-exception-procedure _%exn102988%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn102988%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn102984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102984%_))
            (let ((_%e102986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102984%_ 'exception))))
              (macro-length-mismatch-exception? _%e102986%_))
            (macro-length-mismatch-exception? _%exn102984%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn102980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102980%_))
            (let ((_%e102982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102980%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e102982%_)
                  (macro-length-mismatch-exception-arg-id _%e102982%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e102982%_ '())))))
            (if (macro-length-mismatch-exception? _%exn102980%_)
                (macro-length-mismatch-exception-arg-id _%exn102980%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn102980%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn102976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102976%_))
            (let ((_%e102978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102976%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e102978%_)
                  (macro-length-mismatch-exception-arguments _%e102978%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e102978%_ '())))))
            (if (macro-length-mismatch-exception? _%exn102976%_)
                (macro-length-mismatch-exception-arguments _%exn102976%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn102976%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn102970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102970%_))
            (let ((_%e102973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102970%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e102973%_)
                  (macro-length-mismatch-exception-procedure _%e102973%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e102973%_ '())))))
            (if (macro-length-mismatch-exception? _%exn102970%_)
                (macro-length-mismatch-exception-procedure _%exn102970%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn102970%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn102966%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102966%_))
            (let ((_%e102968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102966%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e102968%_))
            (macro-mailbox-receive-timeout-exception? _%exn102966%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn102962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102962%_))
            (let ((_%e102964%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102962%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e102964%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e102964%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e102964%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn102962%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn102962%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn102962%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn102956%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102956%_))
            (let ((_%e102959%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102956%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e102959%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e102959%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e102959%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn102956%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn102956%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn102956%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn102952%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102952%_))
            (let ((_%e102954%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102952%_ 'exception))))
              (macro-module-not-found-exception? _%e102954%_))
            (macro-module-not-found-exception? _%exn102952%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn102948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102948%_))
            (let ((_%e102950%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102948%_ 'exception))))
              (if (macro-module-not-found-exception? _%e102950%_)
                  (macro-module-not-found-exception-arguments _%e102950%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e102950%_ '())))))
            (if (macro-module-not-found-exception? _%exn102948%_)
                (macro-module-not-found-exception-arguments _%exn102948%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn102948%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn102942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102942%_))
            (let ((_%e102945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102942%_ 'exception))))
              (if (macro-module-not-found-exception? _%e102945%_)
                  (macro-module-not-found-exception-procedure _%e102945%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e102945%_ '())))))
            (if (macro-module-not-found-exception? _%exn102942%_)
                (macro-module-not-found-exception-procedure _%exn102942%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn102942%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn102936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102936%_))
            (let ((_%e102939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102936%_ 'exception))))
              (macro-multiple-c-return-exception? _%e102939%_))
            (macro-multiple-c-return-exception? _%exn102936%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn102932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102932%_))
            (let ((_%e102934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102932%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e102934%_))
            (macro-no-such-file-or-directory-exception? _%exn102932%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn102928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102928%_))
            (let ((_%e102930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102928%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e102930%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e102930%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e102930%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn102928%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn102928%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn102928%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn102922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102922%_))
            (let ((_%e102925%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102922%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e102925%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e102925%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e102925%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn102922%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn102922%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn102922%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn102918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102918%_))
            (let ((_%e102920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102918%_ 'exception))))
              (macro-noncontinuable-exception? _%e102920%_))
            (macro-noncontinuable-exception? _%exn102918%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn102912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102912%_))
            (let ((_%e102915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102912%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e102915%_)
                  (macro-noncontinuable-exception-reason _%e102915%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e102915%_ '())))))
            (if (macro-noncontinuable-exception? _%exn102912%_)
                (macro-noncontinuable-exception-reason _%exn102912%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn102912%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn102908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102908%_))
            (let ((_%e102910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102908%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e102910%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn102908%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn102904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102904%_))
            (let ((_%e102906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102904%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e102906%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e102906%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e102906%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn102904%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn102904%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn102904%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn102898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102898%_))
            (let ((_%e102901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102898%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e102901%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e102901%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e102901%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn102898%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn102898%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn102898%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn102894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102894%_))
            (let ((_%e102896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102894%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e102896%_))
            (macro-nonprocedure-operator-exception? _%exn102894%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn102890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102890%_))
            (let ((_%e102892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102890%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102892%_)
                  (macro-nonprocedure-operator-exception-arguments _%e102892%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e102892%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102890%_)
                (macro-nonprocedure-operator-exception-arguments _%exn102890%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn102890%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn102886%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102886%_))
            (let ((_%e102888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102886%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102888%_)
                  (macro-nonprocedure-operator-exception-code _%e102888%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e102888%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102886%_)
                (macro-nonprocedure-operator-exception-code _%exn102886%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn102886%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn102882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102882%_))
            (let ((_%e102884%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102882%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102884%_)
                  (macro-nonprocedure-operator-exception-operator _%e102884%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e102884%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102882%_)
                (macro-nonprocedure-operator-exception-operator _%exn102882%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn102882%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn102876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102876%_))
            (let ((_%e102879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102876%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102879%_)
                  (macro-nonprocedure-operator-exception-rte _%e102879%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e102879%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102876%_)
                (macro-nonprocedure-operator-exception-rte _%exn102876%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn102876%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn102872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102872%_))
            (let ((_%e102874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102872%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e102874%_))
            (macro-not-in-compilation-context-exception? _%exn102872%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn102868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102868%_))
            (let ((_%e102870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102868%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e102870%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e102870%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e102870%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn102868%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn102868%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn102868%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn102862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102862%_))
            (let ((_%e102865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102862%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e102865%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e102865%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e102865%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn102862%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn102862%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn102862%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn102858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102858%_))
            (let ((_%e102860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102858%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e102860%_))
            (macro-number-of-arguments-limit-exception? _%exn102858%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn102854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102854%_))
            (let ((_%e102856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102854%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e102856%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e102856%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e102856%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn102854%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn102854%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn102854%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn102848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102848%_))
            (let ((_%e102851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102848%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e102851%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e102851%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e102851%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn102848%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn102848%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn102848%_ '())))))))
    (define os-exception?
      (lambda (_%exn102844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102844%_))
            (let ((_%e102846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102844%_ 'exception))))
              (macro-os-exception? _%e102846%_))
            (macro-os-exception? _%exn102844%_))))
    (define os-exception-arguments
      (lambda (_%exn102840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102840%_))
            (let ((_%e102842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102840%_ 'exception))))
              (if (macro-os-exception? _%e102842%_)
                  (macro-os-exception-arguments _%e102842%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e102842%_ '())))))
            (if (macro-os-exception? _%exn102840%_)
                (macro-os-exception-arguments _%exn102840%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn102840%_ '())))))))
    (define os-exception-code
      (lambda (_%exn102836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102836%_))
            (let ((_%e102838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102836%_ 'exception))))
              (if (macro-os-exception? _%e102838%_)
                  (macro-os-exception-code _%e102838%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e102838%_ '())))))
            (if (macro-os-exception? _%exn102836%_)
                (macro-os-exception-code _%exn102836%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn102836%_ '())))))))
    (define os-exception-message
      (lambda (_%exn102832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102832%_))
            (let ((_%e102834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102832%_ 'exception))))
              (if (macro-os-exception? _%e102834%_)
                  (macro-os-exception-message _%e102834%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e102834%_ '())))))
            (if (macro-os-exception? _%exn102832%_)
                (macro-os-exception-message _%exn102832%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn102832%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn102826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102826%_))
            (let ((_%e102829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102826%_ 'exception))))
              (if (macro-os-exception? _%e102829%_)
                  (macro-os-exception-procedure _%e102829%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e102829%_ '())))))
            (if (macro-os-exception? _%exn102826%_)
                (macro-os-exception-procedure _%exn102826%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn102826%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn102822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102822%_))
            (let ((_%e102824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102822%_ 'exception))))
              (macro-permission-denied-exception? _%e102824%_))
            (macro-permission-denied-exception? _%exn102822%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn102818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102818%_))
            (let ((_%e102820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102818%_ 'exception))))
              (if (macro-permission-denied-exception? _%e102820%_)
                  (macro-permission-denied-exception-arguments _%e102820%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e102820%_ '())))))
            (if (macro-permission-denied-exception? _%exn102818%_)
                (macro-permission-denied-exception-arguments _%exn102818%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn102818%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn102812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102812%_))
            (let ((_%e102815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102812%_ 'exception))))
              (if (macro-permission-denied-exception? _%e102815%_)
                  (macro-permission-denied-exception-procedure _%e102815%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e102815%_ '())))))
            (if (macro-permission-denied-exception? _%exn102812%_)
                (macro-permission-denied-exception-procedure _%exn102812%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn102812%_ '())))))))
    (define range-exception?
      (lambda (_%exn102808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102808%_))
            (let ((_%e102810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102808%_ 'exception))))
              (macro-range-exception? _%e102810%_))
            (macro-range-exception? _%exn102808%_))))
    (define range-exception-arg-id
      (lambda (_%exn102804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102804%_))
            (let ((_%e102806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102804%_ 'exception))))
              (if (macro-range-exception? _%e102806%_)
                  (macro-range-exception-arg-id _%e102806%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e102806%_ '())))))
            (if (macro-range-exception? _%exn102804%_)
                (macro-range-exception-arg-id _%exn102804%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn102804%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn102800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102800%_))
            (let ((_%e102802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102800%_ 'exception))))
              (if (macro-range-exception? _%e102802%_)
                  (macro-range-exception-arguments _%e102802%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e102802%_ '())))))
            (if (macro-range-exception? _%exn102800%_)
                (macro-range-exception-arguments _%exn102800%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn102800%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn102794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102794%_))
            (let ((_%e102797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102794%_ 'exception))))
              (if (macro-range-exception? _%e102797%_)
                  (macro-range-exception-procedure _%e102797%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e102797%_ '())))))
            (if (macro-range-exception? _%exn102794%_)
                (macro-range-exception-procedure _%exn102794%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn102794%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn102790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102790%_))
            (let ((_%e102792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102790%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e102792%_))
            (macro-rpc-remote-error-exception? _%exn102790%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn102786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102786%_))
            (let ((_%e102788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102786%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102788%_)
                  (macro-rpc-remote-error-exception-arguments _%e102788%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e102788%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102786%_)
                (macro-rpc-remote-error-exception-arguments _%exn102786%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn102786%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn102782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102782%_))
            (let ((_%e102784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102782%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102784%_)
                  (macro-rpc-remote-error-exception-message _%e102784%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e102784%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102782%_)
                (macro-rpc-remote-error-exception-message _%exn102782%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn102782%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn102776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102776%_))
            (let ((_%e102779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102776%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102779%_)
                  (macro-rpc-remote-error-exception-procedure _%e102779%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e102779%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102776%_)
                (macro-rpc-remote-error-exception-procedure _%exn102776%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn102776%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn102772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102772%_))
            (let ((_%e102774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102772%_ 'exception))))
              (macro-scheduler-exception? _%e102774%_))
            (macro-scheduler-exception? _%exn102772%_))))
    (define scheduler-exception-reason
      (lambda (_%exn102766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102766%_))
            (let ((_%e102769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102766%_ 'exception))))
              (if (macro-scheduler-exception? _%e102769%_)
                  (macro-scheduler-exception-reason _%e102769%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e102769%_ '())))))
            (if (macro-scheduler-exception? _%exn102766%_)
                (macro-scheduler-exception-reason _%exn102766%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn102766%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn102762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102762%_))
            (let ((_%e102764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102762%_ 'exception))))
              (macro-sfun-conversion-exception? _%e102764%_))
            (macro-sfun-conversion-exception? _%exn102762%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn102758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102758%_))
            (let ((_%e102760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102758%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102760%_)
                  (macro-sfun-conversion-exception-arguments _%e102760%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e102760%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102758%_)
                (macro-sfun-conversion-exception-arguments _%exn102758%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn102758%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn102754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102754%_))
            (let ((_%e102756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102754%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102756%_)
                  (macro-sfun-conversion-exception-code _%e102756%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e102756%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102754%_)
                (macro-sfun-conversion-exception-code _%exn102754%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn102754%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn102750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102750%_))
            (let ((_%e102752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102750%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102752%_)
                  (macro-sfun-conversion-exception-message _%e102752%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e102752%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102750%_)
                (macro-sfun-conversion-exception-message _%exn102750%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn102750%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn102744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102744%_))
            (let ((_%e102747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102744%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102747%_)
                  (macro-sfun-conversion-exception-procedure _%e102747%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e102747%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102744%_)
                (macro-sfun-conversion-exception-procedure _%exn102744%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn102744%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn102738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102738%_))
            (let ((_%e102741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102738%_ 'exception))))
              (macro-stack-overflow-exception? _%e102741%_))
            (macro-stack-overflow-exception? _%exn102738%_))))
    (define started-thread-exception?
      (lambda (_%exn102734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102734%_))
            (let ((_%e102736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102734%_ 'exception))))
              (macro-started-thread-exception? _%e102736%_))
            (macro-started-thread-exception? _%exn102734%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn102730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102730%_))
            (let ((_%e102732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102730%_ 'exception))))
              (if (macro-started-thread-exception? _%e102732%_)
                  (macro-started-thread-exception-arguments _%e102732%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e102732%_ '())))))
            (if (macro-started-thread-exception? _%exn102730%_)
                (macro-started-thread-exception-arguments _%exn102730%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn102730%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn102724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102724%_))
            (let ((_%e102727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102724%_ 'exception))))
              (if (macro-started-thread-exception? _%e102727%_)
                  (macro-started-thread-exception-procedure _%e102727%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e102727%_ '())))))
            (if (macro-started-thread-exception? _%exn102724%_)
                (macro-started-thread-exception-procedure _%exn102724%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn102724%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn102720%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102720%_))
            (let ((_%e102722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102720%_ 'exception))))
              (macro-terminated-thread-exception? _%e102722%_))
            (macro-terminated-thread-exception? _%exn102720%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn102716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102716%_))
            (let ((_%e102718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102716%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e102718%_)
                  (macro-terminated-thread-exception-arguments _%e102718%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e102718%_ '())))))
            (if (macro-terminated-thread-exception? _%exn102716%_)
                (macro-terminated-thread-exception-arguments _%exn102716%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn102716%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn102710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102710%_))
            (let ((_%e102713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102710%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e102713%_)
                  (macro-terminated-thread-exception-procedure _%e102713%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e102713%_ '())))))
            (if (macro-terminated-thread-exception? _%exn102710%_)
                (macro-terminated-thread-exception-procedure _%exn102710%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn102710%_ '())))))))
    (define type-exception?
      (lambda (_%exn102706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102706%_))
            (let ((_%e102708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102706%_ 'exception))))
              (macro-type-exception? _%e102708%_))
            (macro-type-exception? _%exn102706%_))))
    (define type-exception-arg-id
      (lambda (_%exn102702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102702%_))
            (let ((_%e102704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102702%_ 'exception))))
              (if (macro-type-exception? _%e102704%_)
                  (macro-type-exception-arg-id _%e102704%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e102704%_ '())))))
            (if (macro-type-exception? _%exn102702%_)
                (macro-type-exception-arg-id _%exn102702%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn102702%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn102698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102698%_))
            (let ((_%e102700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102698%_ 'exception))))
              (if (macro-type-exception? _%e102700%_)
                  (macro-type-exception-arguments _%e102700%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e102700%_ '())))))
            (if (macro-type-exception? _%exn102698%_)
                (macro-type-exception-arguments _%exn102698%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn102698%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn102694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102694%_))
            (let ((_%e102696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102694%_ 'exception))))
              (if (macro-type-exception? _%e102696%_)
                  (macro-type-exception-procedure _%e102696%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e102696%_ '())))))
            (if (macro-type-exception? _%exn102694%_)
                (macro-type-exception-procedure _%exn102694%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn102694%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn102688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102688%_))
            (let ((_%e102691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102688%_ 'exception))))
              (if (macro-type-exception? _%e102691%_)
                  (macro-type-exception-type-id _%e102691%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e102691%_ '())))))
            (if (macro-type-exception? _%exn102688%_)
                (macro-type-exception-type-id _%exn102688%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn102688%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn102684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102684%_))
            (let ((_%e102686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102684%_ 'exception))))
              (macro-unbound-global-exception? _%e102686%_))
            (macro-unbound-global-exception? _%exn102684%_))))
    (define unbound-global-exception-code
      (lambda (_%exn102680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102680%_))
            (let ((_%e102682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102680%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102682%_)
                  (macro-unbound-global-exception-code _%e102682%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e102682%_ '())))))
            (if (macro-unbound-global-exception? _%exn102680%_)
                (macro-unbound-global-exception-code _%exn102680%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn102680%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn102676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102676%_))
            (let ((_%e102678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102676%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102678%_)
                  (macro-unbound-global-exception-rte _%e102678%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e102678%_ '())))))
            (if (macro-unbound-global-exception? _%exn102676%_)
                (macro-unbound-global-exception-rte _%exn102676%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn102676%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn102670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102670%_))
            (let ((_%e102673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102670%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102673%_)
                  (macro-unbound-global-exception-variable _%e102673%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e102673%_ '())))))
            (if (macro-unbound-global-exception? _%exn102670%_)
                (macro-unbound-global-exception-variable _%exn102670%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn102670%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn102666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102666%_))
            (let ((_%e102668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102666%_ 'exception))))
              (macro-unbound-key-exception? _%e102668%_))
            (macro-unbound-key-exception? _%exn102666%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn102662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102662%_))
            (let ((_%e102664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102662%_ 'exception))))
              (if (macro-unbound-key-exception? _%e102664%_)
                  (macro-unbound-key-exception-arguments _%e102664%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e102664%_ '())))))
            (if (macro-unbound-key-exception? _%exn102662%_)
                (macro-unbound-key-exception-arguments _%exn102662%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn102662%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn102656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102656%_))
            (let ((_%e102659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102656%_ 'exception))))
              (if (macro-unbound-key-exception? _%e102659%_)
                  (macro-unbound-key-exception-procedure _%e102659%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e102659%_ '())))))
            (if (macro-unbound-key-exception? _%exn102656%_)
                (macro-unbound-key-exception-procedure _%exn102656%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn102656%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn102652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102652%_))
            (let ((_%e102654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102652%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e102654%_))
            (macro-unbound-os-environment-variable-exception? _%exn102652%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn102648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102648%_))
            (let ((_%e102650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102648%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e102650%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e102650%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e102650%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn102648%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn102648%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn102648%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn102642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102642%_))
            (let ((_%e102645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102642%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e102645%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e102645%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e102645%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn102642%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn102642%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn102642%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn102638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102638%_))
            (let ((_%e102640%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102638%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e102640%_))
            (macro-unbound-serial-number-exception? _%exn102638%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn102634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102634%_))
            (let ((_%e102636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102634%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e102636%_)
                  (macro-unbound-serial-number-exception-arguments _%e102636%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e102636%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn102634%_)
                (macro-unbound-serial-number-exception-arguments _%exn102634%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn102634%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn102628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102628%_))
            (let ((_%e102631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102628%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e102631%_)
                  (macro-unbound-serial-number-exception-procedure _%e102631%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e102631%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn102628%_)
                (macro-unbound-serial-number-exception-procedure _%exn102628%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn102628%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn102624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102624%_))
            (let ((_%e102626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102624%_ 'exception))))
              (macro-uncaught-exception? _%e102626%_))
            (macro-uncaught-exception? _%exn102624%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn102620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102620%_))
            (let ((_%e102622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102620%_ 'exception))))
              (if (macro-uncaught-exception? _%e102622%_)
                  (macro-uncaught-exception-arguments _%e102622%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e102622%_ '())))))
            (if (macro-uncaught-exception? _%exn102620%_)
                (macro-uncaught-exception-arguments _%exn102620%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn102620%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn102616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102616%_))
            (let ((_%e102618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102616%_ 'exception))))
              (if (macro-uncaught-exception? _%e102618%_)
                  (macro-uncaught-exception-procedure _%e102618%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e102618%_ '())))))
            (if (macro-uncaught-exception? _%exn102616%_)
                (macro-uncaught-exception-procedure _%exn102616%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn102616%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn102610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102610%_))
            (let ((_%e102613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102610%_ 'exception))))
              (if (macro-uncaught-exception? _%e102613%_)
                  (macro-uncaught-exception-reason _%e102613%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e102613%_ '())))))
            (if (macro-uncaught-exception? _%exn102610%_)
                (macro-uncaught-exception-reason _%exn102610%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn102610%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn102606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102606%_))
            (let ((_%e102608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102606%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e102608%_))
            (macro-uninitialized-thread-exception? _%exn102606%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn102602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102602%_))
            (let ((_%e102604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102602%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e102604%_)
                  (macro-uninitialized-thread-exception-arguments _%e102604%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e102604%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn102602%_)
                (macro-uninitialized-thread-exception-arguments _%exn102602%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn102602%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn102596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102596%_))
            (let ((_%e102599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102596%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e102599%_)
                  (macro-uninitialized-thread-exception-procedure _%e102599%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e102599%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn102596%_)
                (macro-uninitialized-thread-exception-procedure _%exn102596%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn102596%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn102592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102592%_))
            (let ((_%e102594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102592%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e102594%_))
            (macro-unknown-keyword-argument-exception? _%exn102592%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn102588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102588%_))
            (let ((_%e102590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102588%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e102590%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e102590%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e102590%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn102588%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn102588%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn102588%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn102582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102582%_))
            (let ((_%e102585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102582%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e102585%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e102585%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e102585%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn102582%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn102582%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn102582%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn102578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102578%_))
            (let ((_%e102580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102578%_ 'exception))))
              (macro-unterminated-process-exception? _%e102580%_))
            (macro-unterminated-process-exception? _%exn102578%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn102574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102574%_))
            (let ((_%e102576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102574%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e102576%_)
                  (macro-unterminated-process-exception-arguments _%e102576%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e102576%_ '())))))
            (if (macro-unterminated-process-exception? _%exn102574%_)
                (macro-unterminated-process-exception-arguments _%exn102574%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn102574%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn102568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102568%_))
            (let ((_%e102571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102568%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e102571%_)
                  (macro-unterminated-process-exception-procedure _%e102571%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e102571%_ '())))))
            (if (macro-unterminated-process-exception? _%exn102568%_)
                (macro-unterminated-process-exception-procedure _%exn102568%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn102568%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn102564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102564%_))
            (let ((_%e102566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102564%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e102566%_))
            (macro-wrong-number-of-arguments-exception? _%exn102564%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn102560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102560%_))
            (let ((_%e102562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102560%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e102562%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e102562%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e102562%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn102560%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn102560%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn102560%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn102554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102554%_))
            (let ((_%e102557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102554%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e102557%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e102557%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e102557%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn102554%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn102554%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn102554%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn102550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102550%_))
            (let ((_%e102552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102550%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e102552%_))
            (macro-wrong-number-of-values-exception? _%exn102550%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn102546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102546%_))
            (let ((_%e102548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102546%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102548%_)
                  (macro-wrong-number-of-values-exception-code _%e102548%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e102548%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102546%_)
                (macro-wrong-number-of-values-exception-code _%exn102546%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn102546%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn102542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102542%_))
            (let ((_%e102544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102542%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102544%_)
                  (macro-wrong-number-of-values-exception-rte _%e102544%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e102544%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102542%_)
                (macro-wrong-number-of-values-exception-rte _%exn102542%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn102542%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn102536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102536%_))
            (let ((_%e102539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102536%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102539%_)
                  (macro-wrong-number-of-values-exception-vals _%e102539%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e102539%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102536%_)
                (macro-wrong-number-of-values-exception-vals _%exn102536%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn102536%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn102530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102530%_))
            (let ((_%e102533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102530%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e102533%_))
            (macro-wrong-processor-c-return-exception? _%exn102530%_))))))
