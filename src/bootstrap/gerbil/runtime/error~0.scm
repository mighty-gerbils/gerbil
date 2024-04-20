(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1713631265)
  (begin
    (define Exception::t
      (let ((__tmp103865 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp103865
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args103835%_
        (apply make-instance Exception::t _%$args103835%_)))
    (define StackTrace::t
      (let ((__tmp103866 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp103866
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args103832%_
        (apply make-instance StackTrace::t _%$args103832%_)))
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
      (let ((__tmp103867 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp103867
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args103829%_ (apply make-instance Error::t _%$args103829%_)))
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
      (let ((__tmp103868 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp103868
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args103826%_
        (apply make-instance ContractViolation::t _%$args103826%_)))
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
      (let ((__tmp103869 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp103869
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args103823%_
        (apply make-instance RuntimeException::t _%$args103823%_)))
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
      (lambda (_%exn103818%_ _%continue103819%_)
        (let ((_%exn103821%_ (wrap-runtime-exception _%exn103818%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn103821%_ _%continue103819%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn103814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn103814%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn103814%_ 'continuation))
                '#!void
                (let ((__tmp103870
                       (lambda (_%cont103816%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn103814%_
                            'continuation
                            _%cont103816%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp103870)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn103814%_))))
    (define error
      (lambda (_%message103811%_ . _%irritants103812%_)
        (raise (let ((__obj103862
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj103862
                  _%message103811%_
                  'irritants:
                  _%irritants103812%_)
                 __obj103862))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords103783%_
               _%ctx103778103784%_
               _%contract-expr103779103786%_
               _%value103780103788%_
               _%message103790%_)
        (let* ((_%ctx103792%_
                (if (eq? _%ctx103778103784%_ absent-value)
                    '#f
                    _%ctx103778103784%_))
               (_%contract-expr103794%_
                (if (eq? _%contract-expr103779103786%_ absent-value)
                    '#f
                    _%contract-expr103779103786%_))
               (_%value103796%_
                (if (eq? _%value103780103788%_ absent-value)
                    '#f
                    _%value103780103788%_)))
          (raise (let ((__obj103863
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj103863
                    _%message103790%_
                    'where:
                    _%ctx103792%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr103794%_
                                (cons 'value: (cons _%value103796%_ '())))))
                   __obj103863)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords103801%_ . _%args103802%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords103801%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103801%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103801%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords103801%_
                  'value:
                  absent-value))
               _%args103802%_)))
    (define __raise-contract-violation-error
      (lambda _%args103781103808%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args103781103808%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler103752%_ _%thunk103753%_)
        (if (procedure? _%handler103752%_)
            (let ((_%handler103757%_ _%handler103752%_))
              (if (procedure? _%thunk103753%_)
                  (let ((_%thunk103767%_ _%thunk103753%_))
                    (__with-exception-handler
                     _%handler103757%_
                     _%thunk103767%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk103753%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler103752%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler103727%_ _%thunk103728%_)
        (let* ((_%handler103731%_ _%handler103727%_)
               (_%thunk103739%_ _%thunk103728%_)
               (__tmp103871
                (lambda (_%exn103748%_)
                  (let ((_%exn103750%_ (wrap-runtime-exception _%exn103748%_)))
                    (declare (not safe))
                    (_%handler103731%_ _%exn103750%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp103871 _%thunk103739%_))))
    (define with-catch
      (lambda (_%handler103702%_ _%thunk103703%_)
        (if (procedure? _%handler103702%_)
            (let ((_%handler103707%_ _%handler103702%_))
              (if (procedure? _%thunk103703%_)
                  (let ((_%thunk103717%_ _%thunk103703%_))
                    (__with-catch _%handler103707%_ _%thunk103717%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk103703%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler103702%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler103677%_ _%thunk103678%_)
        (let* ((_%handler103681%_ _%handler103677%_)
               (_%thunk103689%_ _%thunk103678%_)
               (__tmp103872
                (lambda (_%cont103698%_)
                  (__with-exception-handler
                   (lambda (_%exn103700%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont103698%_
                        _%handler103681%_
                        _%exn103700%_)))
                   _%thunk103689%_))))
          (declare (not safe))
          (##continuation-capture __tmp103872))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn103664%_)
        (if (or (heap-overflow-exception? _%exn103664%_)
                (stack-overflow-exception? _%exn103664%_))
            _%exn103664%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn103664%_))
                _%exn103664%_
                (if (macro-exception? _%exn103664%_)
                    (let ((_%rte103672%_
                           (let ((__obj103864
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj103864
                                _%exn103664%_
                                '2
                                '#f
                                '#f))
                             __obj103864)))
                      (let ((__tmp103873
                             (lambda (_%cont103674%_)
                               (let ((__tmp103874
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont103674%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte103672%_
                                  'continuation
                                  __tmp103874)))))
                        (declare (not safe))
                        (##continuation-capture __tmp103873))
                      _%rte103672%_)
                    _%exn103664%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj103659%_)
        (let ((_%$e103661%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj103659%_))))
          (if _%$e103661%_ _%$e103661%_ (error-exception? _%obj103659%_)))))
    (define error-message
      (lambda (_%obj103652%_)
        (let ((_%$e103654%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj103652%_ 'message false))))
          (if _%$e103654%_
              _%$e103654%_
              (if (error-exception? _%obj103652%_)
                  (error-exception-message _%obj103652%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj103647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj103647%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj103647%_ 'irritants))
            (if (error-exception? _%obj103647%_)
                (error-exception-parameters _%obj103647%_)
                '#f))))
    (define error-trace
      (lambda (_%obj103645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj103645%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj103645%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e103626%_ _%port103627%_)
        (let ((_%$e103629%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e103626%_ 'display-exception))))
          (if _%$e103629%_
              ((lambda (_%f103632%_) (_%f103632%_ _%e103626%_ _%port103627%_))
               _%$e103629%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e103626%_ _%port103627%_))))))
    (define display-exception__0
      (lambda (_%e103638%_)
        (let ((_%port103640%_ (current-error-port)))
          (display-exception__% _%e103638%_ _%port103640%_))))
    (define display-exception
      (lambda _g103876_
        (let ((_g103875_ (let () (declare (not safe)) (##length _g103876_))))
          (cond ((let () (declare (not safe)) (##fx= _g103875_ 1))
                 (apply display-exception__0 _g103876_))
                ((let () (declare (not safe)) (##fx= _g103875_ 2))
                 (apply display-exception__% _g103876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g103876_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self101995103602%_ _%message103604%_ . _%rest103605%_)
        (let* ((_%self103607%_ _%self101995103602%_)
               (_%self103609%_ _%self103607%_)
               (_%message103623%_
                (if (string? _%message103604%_)
                    _%message103604%_
                    (call-with-output-string
                     '""
                     (lambda (_%g103618103620%_)
                       (display _%message103604%_ _%g103618103620%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self103609%_ 'message _%message103623%_))
          (apply class-instance-init! _%self103609%_ _%rest103605%_))))
    (define Error:::init!::specialize
      (lambda (__klass103837 __method-table103838)
        (let ((__message103839
               (let ((__slot103840
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103837 'message))))
                 (if __slot103840
                     __slot103840
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self101995103602%_ _%message103604%_ . _%rest103605%_)
            (let* ((_%self103607%_ _%self101995103602%_)
                   (_%self103609%_ _%self103607%_)
                   (_%message103623%_
                    (if (string? _%message103604%_)
                        _%message103604%_
                        (call-with-output-string
                         '""
                         (lambda (_%g103618103620%_)
                           (display _%message103604%_ _%g103618103620%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self103609%_
                 _%message103623%_
                 __message103839
                 '#f
                 '#f))
              (apply class-instance-init! _%self103609%_ _%rest103605%_))))))
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
      (lambda (_%self101996103324%_ _%port103326%_)
        (let* ((_%self103328%_ _%self101996103324%_)
               (_%self103330%_ _%self103328%_))
          (let ((_%tmp-port103340%_ (open-output-string))
                (_%display-error-newline103341%_
                 (> (output-port-column _%port103326%_) '0)))
            (fix-port-width! _%tmp-port103340%_)
            (let ((__tmp103877
                   (lambda ()
                     (if _%display-error-newline103341%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e103344%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103330%_ 'where))))
                       (if _%$e103344%_ (display _%$e103344%_) (display '"?")))
                     (let ((__tmp103878
                            (let ((__tmp103879
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self103330%_))))
                              (declare (not safe))
                              (##type-name __tmp103879))))
                       (declare (not safe))
                       (display* '" [" __tmp103878 '"]: "))
                     (let ((__tmp103880
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103330%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp103880))
                     (let ((_%irritants103348%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103330%_ 'irritants))))
                       (if (null? _%irritants103348%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj103350%_)
                                (if (u8vector? _%obj103350%_)
                                    (let ((__tmp103881
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj103350%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp103881))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj103350%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants103348%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont103351103353%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self103330%_
                                   'continuation))))
                           (if _%cont103351103353%_
                               (let ((_%cont103356%_ _%cont103351103353%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont103356%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp103877
               current-output-port
               _%tmp-port103340%_))
            (let ((__tmp103882 (get-output-string _%tmp-port103340%_)))
              (declare (not safe))
              (##write-string __tmp103882 _%port103326%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass103841 __method-table103842)
        (let ((__where103843
               (let ((__slot103847
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103841 'where))))
                 (if __slot103847
                     __slot103847
                     (error '"Unknown slot" 'where))))
              (__irritants103844
               (let ((__slot103848
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103841 'irritants))))
                 (if __slot103848
                     __slot103848
                     (error '"Unknown slot" 'irritants))))
              (__continuation103845
               (let ((__slot103849
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103841 'continuation))))
                 (if __slot103849
                     __slot103849
                     (error '"Unknown slot" 'continuation))))
              (__message103846
               (let ((__slot103850
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103841 'message))))
                 (if __slot103850
                     __slot103850
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self101996103324%_ _%port103326%_)
            (let* ((_%self103328%_ _%self101996103324%_)
                   (_%self103330%_ _%self103328%_))
              (let ((_%tmp-port103340%_ (open-output-string))
                    (_%display-error-newline103341%_
                     (> (output-port-column _%port103326%_) '0)))
                (fix-port-width! _%tmp-port103340%_)
                (let ((__tmp103883
                       (lambda ()
                         (if _%display-error-newline103341%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e103344%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103330%_
                                   __where103843
                                   '#f
                                   '#f))))
                           (if _%$e103344%_
                               (display _%$e103344%_)
                               (display '"?")))
                         (let ((__tmp103884
                                (let ((__tmp103885
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self103330%_))))
                                  (declare (not safe))
                                  (##type-name __tmp103885))))
                           (declare (not safe))
                           (display* '" [" __tmp103884 '"]: "))
                         (let ((__tmp103886
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103330%_
                                   __message103846
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp103886))
                         (let ((_%irritants103348%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103330%_
                                   __irritants103844
                                   '#f
                                   '#f))))
                           (if (null? _%irritants103348%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj103350%_)
                                    (if (u8vector? _%obj103350%_)
                                        (let ((__tmp103887
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj103350%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp103887))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj103350%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants103348%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont103351103353%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self103330%_
                                       __continuation103845
                                       '#f
                                       '#f))))
                               (if _%cont103351103353%_
                                   (let ((_%cont103356%_ _%cont103351103353%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont103356%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp103883
                   current-output-port
                   _%tmp-port103340%_))
                (let ((__tmp103888 (get-output-string _%tmp-port103340%_)))
                  (declare (not safe))
                  (##write-string __tmp103888 _%port103326%_))))))))
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
      (lambda (_%self101997103178%_ _%port103180%_)
        (let* ((_%self103182%_ _%self101997103178%_)
               (_%self103184%_ _%self103182%_)
               (_%tmp-port103194%_ (open-output-string)))
          (fix-port-width! _%tmp-port103194%_)
          (let ((__tmp103889
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self103184%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp103889 _%tmp-port103194%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont103195103197%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self103184%_ 'continuation))))
                (if _%cont103195103197%_
                    (let ((_%cont103200%_ _%cont103195103197%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port103194%_)
                      (newline _%tmp-port103194%_)
                      (display-continuation-backtrace
                       _%cont103200%_
                       _%tmp-port103194%_))
                    '#f))
              '#!void)
          (let ((__tmp103890 (get-output-string _%tmp-port103194%_)))
            (declare (not safe))
            (##write-string __tmp103890 _%port103180%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass103851 __method-table103852)
        (let ((__continuation103853
               (let ((__slot103855
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103851 'continuation))))
                 (if __slot103855
                     __slot103855
                     (error '"Unknown slot" 'continuation))))
              (__exception103854
               (let ((__slot103856
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103851 'exception))))
                 (if __slot103856
                     __slot103856
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self101997103178%_ _%port103180%_)
            (let* ((_%self103182%_ _%self101997103178%_)
                   (_%self103184%_ _%self103182%_)
                   (_%tmp-port103194%_ (open-output-string)))
              (fix-port-width! _%tmp-port103194%_)
              (let ((__tmp103891
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self103184%_
                        __exception103854
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp103891 _%tmp-port103194%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont103195103197%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self103184%_
                            __continuation103853
                            '#f
                            '#f))))
                    (if _%cont103195103197%_
                        (let ((_%cont103200%_ _%cont103195103197%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port103194%_)
                          (newline _%tmp-port103194%_)
                          (display-continuation-backtrace
                           _%cont103200%_
                           _%tmp-port103194%_))
                        '#f))
                  '#!void)
              (let ((__tmp103892 (get-output-string _%tmp-port103194%_)))
                (declare (not safe))
                (##write-string __tmp103892 _%port103180%_)))))))
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
      (lambda (_%port103050%_)
        (if (macro-character-port? _%port103050%_)
            (let ((_%old-width103052%_
                   (macro-character-port-output-width _%port103050%_)))
              (macro-character-port-output-width-set!
               _%port103050%_
               (lambda (_%port103054%_) '256))
              _%old-width103052%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port103047%_ _%old-width103048%_)
        (if (macro-character-port? _%port103047%_)
            (macro-character-port-output-width-set!
             _%port103047%_
             _%old-width103048%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e103045%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e103045%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn103039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103039%_))
            (let ((_%e103042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103039%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e103042%_))
            (macro-abandoned-mutex-exception? _%exn103039%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn103035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103035%_))
            (let ((_%e103037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103035%_ 'exception))))
              (macro-cfun-conversion-exception? _%e103037%_))
            (macro-cfun-conversion-exception? _%exn103035%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn103031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103031%_))
            (let ((_%e103033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103031%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103033%_)
                  (macro-cfun-conversion-exception-arguments _%e103033%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e103033%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103031%_)
                (macro-cfun-conversion-exception-arguments _%exn103031%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn103031%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn103027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103027%_))
            (let ((_%e103029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103027%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103029%_)
                  (macro-cfun-conversion-exception-code _%e103029%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e103029%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103027%_)
                (macro-cfun-conversion-exception-code _%exn103027%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn103027%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn103023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103023%_))
            (let ((_%e103025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103023%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103025%_)
                  (macro-cfun-conversion-exception-message _%e103025%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e103025%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103023%_)
                (macro-cfun-conversion-exception-message _%exn103023%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn103023%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn103017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103017%_))
            (let ((_%e103020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103017%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103020%_)
                  (macro-cfun-conversion-exception-procedure _%e103020%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e103020%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103017%_)
                (macro-cfun-conversion-exception-procedure _%exn103017%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn103017%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn103013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103013%_))
            (let ((_%e103015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103013%_ 'exception))))
              (macro-datum-parsing-exception? _%e103015%_))
            (macro-datum-parsing-exception? _%exn103013%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn103009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103009%_))
            (let ((_%e103011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103009%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103011%_)
                  (macro-datum-parsing-exception-kind _%e103011%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e103011%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103009%_)
                (macro-datum-parsing-exception-kind _%exn103009%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn103009%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn103005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103005%_))
            (let ((_%e103007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103005%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103007%_)
                  (macro-datum-parsing-exception-parameters _%e103007%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e103007%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103005%_)
                (macro-datum-parsing-exception-parameters _%exn103005%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn103005%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn102999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102999%_))
            (let ((_%e103002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102999%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103002%_)
                  (macro-datum-parsing-exception-readenv _%e103002%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e103002%_ '())))))
            (if (macro-datum-parsing-exception? _%exn102999%_)
                (macro-datum-parsing-exception-readenv _%exn102999%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn102999%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn102993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102993%_))
            (let ((_%e102996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102993%_ 'exception))))
              (macro-deadlock-exception? _%e102996%_))
            (macro-deadlock-exception? _%exn102993%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn102989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102989%_))
            (let ((_%e102991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102989%_ 'exception))))
              (macro-divide-by-zero-exception? _%e102991%_))
            (macro-divide-by-zero-exception? _%exn102989%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn102985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102985%_))
            (let ((_%e102987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102985%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e102987%_)
                  (macro-divide-by-zero-exception-arguments _%e102987%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e102987%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn102985%_)
                (macro-divide-by-zero-exception-arguments _%exn102985%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn102985%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn102979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102979%_))
            (let ((_%e102982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102979%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e102982%_)
                  (macro-divide-by-zero-exception-procedure _%e102982%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e102982%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn102979%_)
                (macro-divide-by-zero-exception-procedure _%exn102979%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn102979%_ '())))))))
    (define error-exception?
      (lambda (_%exn102975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102975%_))
            (let ((_%e102977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102975%_ 'exception))))
              (macro-error-exception? _%e102977%_))
            (macro-error-exception? _%exn102975%_))))
    (define error-exception-message
      (lambda (_%exn102971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102971%_))
            (let ((_%e102973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102971%_ 'exception))))
              (if (macro-error-exception? _%e102973%_)
                  (macro-error-exception-message _%e102973%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e102973%_ '())))))
            (if (macro-error-exception? _%exn102971%_)
                (macro-error-exception-message _%exn102971%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn102971%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn102965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102965%_))
            (let ((_%e102968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102965%_ 'exception))))
              (if (macro-error-exception? _%e102968%_)
                  (macro-error-exception-parameters _%e102968%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e102968%_ '())))))
            (if (macro-error-exception? _%exn102965%_)
                (macro-error-exception-parameters _%exn102965%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn102965%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn102961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102961%_))
            (let ((_%e102963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102961%_ 'exception))))
              (macro-expression-parsing-exception? _%e102963%_))
            (macro-expression-parsing-exception? _%exn102961%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn102957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102957%_))
            (let ((_%e102959%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102957%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e102959%_)
                  (macro-expression-parsing-exception-kind _%e102959%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e102959%_ '())))))
            (if (macro-expression-parsing-exception? _%exn102957%_)
                (macro-expression-parsing-exception-kind _%exn102957%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn102957%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn102953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102953%_))
            (let ((_%e102955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102953%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e102955%_)
                  (macro-expression-parsing-exception-parameters _%e102955%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e102955%_ '())))))
            (if (macro-expression-parsing-exception? _%exn102953%_)
                (macro-expression-parsing-exception-parameters _%exn102953%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn102953%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn102947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102947%_))
            (let ((_%e102950%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102947%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e102950%_)
                  (macro-expression-parsing-exception-source _%e102950%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e102950%_ '())))))
            (if (macro-expression-parsing-exception? _%exn102947%_)
                (macro-expression-parsing-exception-source _%exn102947%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn102947%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn102943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102943%_))
            (let ((_%e102945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102943%_ 'exception))))
              (macro-file-exists-exception? _%e102945%_))
            (macro-file-exists-exception? _%exn102943%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn102939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102939%_))
            (let ((_%e102941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102939%_ 'exception))))
              (if (macro-file-exists-exception? _%e102941%_)
                  (macro-file-exists-exception-arguments _%e102941%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e102941%_ '())))))
            (if (macro-file-exists-exception? _%exn102939%_)
                (macro-file-exists-exception-arguments _%exn102939%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn102939%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn102933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102933%_))
            (let ((_%e102936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102933%_ 'exception))))
              (if (macro-file-exists-exception? _%e102936%_)
                  (macro-file-exists-exception-procedure _%e102936%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e102936%_ '())))))
            (if (macro-file-exists-exception? _%exn102933%_)
                (macro-file-exists-exception-procedure _%exn102933%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn102933%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn102929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102929%_))
            (let ((_%e102931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102929%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e102931%_))
            (macro-fixnum-overflow-exception? _%exn102929%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn102925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102925%_))
            (let ((_%e102927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102925%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e102927%_)
                  (macro-fixnum-overflow-exception-arguments _%e102927%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e102927%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn102925%_)
                (macro-fixnum-overflow-exception-arguments _%exn102925%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn102925%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn102919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102919%_))
            (let ((_%e102922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102919%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e102922%_)
                  (macro-fixnum-overflow-exception-procedure _%e102922%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e102922%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn102919%_)
                (macro-fixnum-overflow-exception-procedure _%exn102919%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn102919%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn102913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102913%_))
            (let ((_%e102916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102913%_ 'exception))))
              (macro-heap-overflow-exception? _%e102916%_))
            (macro-heap-overflow-exception? _%exn102913%_))))
    (define inactive-thread-exception?
      (lambda (_%exn102909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102909%_))
            (let ((_%e102911%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102909%_ 'exception))))
              (macro-inactive-thread-exception? _%e102911%_))
            (macro-inactive-thread-exception? _%exn102909%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn102905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102905%_))
            (let ((_%e102907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102905%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e102907%_)
                  (macro-inactive-thread-exception-arguments _%e102907%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e102907%_ '())))))
            (if (macro-inactive-thread-exception? _%exn102905%_)
                (macro-inactive-thread-exception-arguments _%exn102905%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn102905%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn102899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102899%_))
            (let ((_%e102902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102899%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e102902%_)
                  (macro-inactive-thread-exception-procedure _%e102902%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e102902%_ '())))))
            (if (macro-inactive-thread-exception? _%exn102899%_)
                (macro-inactive-thread-exception-procedure _%exn102899%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn102899%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn102895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102895%_))
            (let ((_%e102897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102895%_ 'exception))))
              (macro-initialized-thread-exception? _%e102897%_))
            (macro-initialized-thread-exception? _%exn102895%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn102891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102891%_))
            (let ((_%e102893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102891%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e102893%_)
                  (macro-initialized-thread-exception-arguments _%e102893%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e102893%_ '())))))
            (if (macro-initialized-thread-exception? _%exn102891%_)
                (macro-initialized-thread-exception-arguments _%exn102891%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn102891%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn102885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102885%_))
            (let ((_%e102888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102885%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e102888%_)
                  (macro-initialized-thread-exception-procedure _%e102888%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e102888%_ '())))))
            (if (macro-initialized-thread-exception? _%exn102885%_)
                (macro-initialized-thread-exception-procedure _%exn102885%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn102885%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn102881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102881%_))
            (let ((_%e102883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102881%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e102883%_))
            (macro-invalid-hash-number-exception? _%exn102881%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn102877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102877%_))
            (let ((_%e102879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102877%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e102879%_)
                  (macro-invalid-hash-number-exception-arguments _%e102879%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e102879%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn102877%_)
                (macro-invalid-hash-number-exception-arguments _%exn102877%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn102877%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn102871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102871%_))
            (let ((_%e102874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102871%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e102874%_)
                  (macro-invalid-hash-number-exception-procedure _%e102874%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e102874%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn102871%_)
                (macro-invalid-hash-number-exception-procedure _%exn102871%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn102871%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn102867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102867%_))
            (let ((_%e102869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102867%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e102869%_))
            (macro-invalid-utf8-encoding-exception? _%exn102867%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn102863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102863%_))
            (let ((_%e102865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102863%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e102865%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e102865%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e102865%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn102863%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn102863%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn102863%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn102857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102857%_))
            (let ((_%e102860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102857%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e102860%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e102860%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e102860%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn102857%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn102857%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn102857%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn102853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102853%_))
            (let ((_%e102855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102853%_ 'exception))))
              (macro-join-timeout-exception? _%e102855%_))
            (macro-join-timeout-exception? _%exn102853%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn102849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102849%_))
            (let ((_%e102851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102849%_ 'exception))))
              (if (macro-join-timeout-exception? _%e102851%_)
                  (macro-join-timeout-exception-arguments _%e102851%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e102851%_ '())))))
            (if (macro-join-timeout-exception? _%exn102849%_)
                (macro-join-timeout-exception-arguments _%exn102849%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn102849%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn102843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102843%_))
            (let ((_%e102846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102843%_ 'exception))))
              (if (macro-join-timeout-exception? _%e102846%_)
                  (macro-join-timeout-exception-procedure _%e102846%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e102846%_ '())))))
            (if (macro-join-timeout-exception? _%exn102843%_)
                (macro-join-timeout-exception-procedure _%exn102843%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn102843%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn102839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102839%_))
            (let ((_%e102841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102839%_ 'exception))))
              (macro-keyword-expected-exception? _%e102841%_))
            (macro-keyword-expected-exception? _%exn102839%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn102835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102835%_))
            (let ((_%e102837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102835%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e102837%_)
                  (macro-keyword-expected-exception-arguments _%e102837%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e102837%_ '())))))
            (if (macro-keyword-expected-exception? _%exn102835%_)
                (macro-keyword-expected-exception-arguments _%exn102835%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn102835%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn102829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102829%_))
            (let ((_%e102832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102829%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e102832%_)
                  (macro-keyword-expected-exception-procedure _%e102832%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e102832%_ '())))))
            (if (macro-keyword-expected-exception? _%exn102829%_)
                (macro-keyword-expected-exception-procedure _%exn102829%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn102829%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn102825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102825%_))
            (let ((_%e102827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102825%_ 'exception))))
              (macro-length-mismatch-exception? _%e102827%_))
            (macro-length-mismatch-exception? _%exn102825%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn102821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102821%_))
            (let ((_%e102823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102821%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e102823%_)
                  (macro-length-mismatch-exception-arg-id _%e102823%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e102823%_ '())))))
            (if (macro-length-mismatch-exception? _%exn102821%_)
                (macro-length-mismatch-exception-arg-id _%exn102821%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn102821%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn102817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102817%_))
            (let ((_%e102819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102817%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e102819%_)
                  (macro-length-mismatch-exception-arguments _%e102819%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e102819%_ '())))))
            (if (macro-length-mismatch-exception? _%exn102817%_)
                (macro-length-mismatch-exception-arguments _%exn102817%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn102817%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn102811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102811%_))
            (let ((_%e102814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102811%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e102814%_)
                  (macro-length-mismatch-exception-procedure _%e102814%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e102814%_ '())))))
            (if (macro-length-mismatch-exception? _%exn102811%_)
                (macro-length-mismatch-exception-procedure _%exn102811%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn102811%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn102807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102807%_))
            (let ((_%e102809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102807%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e102809%_))
            (macro-mailbox-receive-timeout-exception? _%exn102807%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn102803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102803%_))
            (let ((_%e102805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102803%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e102805%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e102805%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e102805%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn102803%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn102803%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn102803%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn102797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102797%_))
            (let ((_%e102800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102797%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e102800%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e102800%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e102800%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn102797%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn102797%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn102797%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn102793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102793%_))
            (let ((_%e102795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102793%_ 'exception))))
              (macro-module-not-found-exception? _%e102795%_))
            (macro-module-not-found-exception? _%exn102793%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn102789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102789%_))
            (let ((_%e102791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102789%_ 'exception))))
              (if (macro-module-not-found-exception? _%e102791%_)
                  (macro-module-not-found-exception-arguments _%e102791%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e102791%_ '())))))
            (if (macro-module-not-found-exception? _%exn102789%_)
                (macro-module-not-found-exception-arguments _%exn102789%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn102789%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn102783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102783%_))
            (let ((_%e102786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102783%_ 'exception))))
              (if (macro-module-not-found-exception? _%e102786%_)
                  (macro-module-not-found-exception-procedure _%e102786%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e102786%_ '())))))
            (if (macro-module-not-found-exception? _%exn102783%_)
                (macro-module-not-found-exception-procedure _%exn102783%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn102783%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn102777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102777%_))
            (let ((_%e102780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102777%_ 'exception))))
              (macro-multiple-c-return-exception? _%e102780%_))
            (macro-multiple-c-return-exception? _%exn102777%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn102773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102773%_))
            (let ((_%e102775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102773%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e102775%_))
            (macro-no-such-file-or-directory-exception? _%exn102773%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn102769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102769%_))
            (let ((_%e102771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102769%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e102771%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e102771%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e102771%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn102769%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn102769%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn102769%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn102763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102763%_))
            (let ((_%e102766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102763%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e102766%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e102766%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e102766%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn102763%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn102763%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn102763%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn102759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102759%_))
            (let ((_%e102761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102759%_ 'exception))))
              (macro-noncontinuable-exception? _%e102761%_))
            (macro-noncontinuable-exception? _%exn102759%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn102753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102753%_))
            (let ((_%e102756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102753%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e102756%_)
                  (macro-noncontinuable-exception-reason _%e102756%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e102756%_ '())))))
            (if (macro-noncontinuable-exception? _%exn102753%_)
                (macro-noncontinuable-exception-reason _%exn102753%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn102753%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn102749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102749%_))
            (let ((_%e102751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102749%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e102751%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn102749%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn102745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102745%_))
            (let ((_%e102747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102745%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e102747%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e102747%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e102747%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn102745%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn102745%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn102745%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn102739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102739%_))
            (let ((_%e102742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102739%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e102742%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e102742%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e102742%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn102739%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn102739%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn102739%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn102735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102735%_))
            (let ((_%e102737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102735%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e102737%_))
            (macro-nonprocedure-operator-exception? _%exn102735%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn102731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102731%_))
            (let ((_%e102733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102731%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102733%_)
                  (macro-nonprocedure-operator-exception-arguments _%e102733%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e102733%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102731%_)
                (macro-nonprocedure-operator-exception-arguments _%exn102731%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn102731%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn102727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102727%_))
            (let ((_%e102729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102727%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102729%_)
                  (macro-nonprocedure-operator-exception-code _%e102729%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e102729%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102727%_)
                (macro-nonprocedure-operator-exception-code _%exn102727%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn102727%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn102723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102723%_))
            (let ((_%e102725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102723%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102725%_)
                  (macro-nonprocedure-operator-exception-operator _%e102725%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e102725%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102723%_)
                (macro-nonprocedure-operator-exception-operator _%exn102723%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn102723%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn102717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102717%_))
            (let ((_%e102720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102717%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102720%_)
                  (macro-nonprocedure-operator-exception-rte _%e102720%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e102720%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102717%_)
                (macro-nonprocedure-operator-exception-rte _%exn102717%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn102717%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn102713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102713%_))
            (let ((_%e102715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102713%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e102715%_))
            (macro-not-in-compilation-context-exception? _%exn102713%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn102709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102709%_))
            (let ((_%e102711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102709%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e102711%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e102711%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e102711%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn102709%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn102709%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn102709%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn102703%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102703%_))
            (let ((_%e102706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102703%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e102706%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e102706%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e102706%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn102703%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn102703%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn102703%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn102699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102699%_))
            (let ((_%e102701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102699%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e102701%_))
            (macro-number-of-arguments-limit-exception? _%exn102699%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn102695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102695%_))
            (let ((_%e102697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102695%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e102697%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e102697%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e102697%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn102695%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn102695%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn102695%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn102689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102689%_))
            (let ((_%e102692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102689%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e102692%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e102692%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e102692%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn102689%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn102689%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn102689%_ '())))))))
    (define os-exception?
      (lambda (_%exn102685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102685%_))
            (let ((_%e102687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102685%_ 'exception))))
              (macro-os-exception? _%e102687%_))
            (macro-os-exception? _%exn102685%_))))
    (define os-exception-arguments
      (lambda (_%exn102681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102681%_))
            (let ((_%e102683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102681%_ 'exception))))
              (if (macro-os-exception? _%e102683%_)
                  (macro-os-exception-arguments _%e102683%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e102683%_ '())))))
            (if (macro-os-exception? _%exn102681%_)
                (macro-os-exception-arguments _%exn102681%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn102681%_ '())))))))
    (define os-exception-code
      (lambda (_%exn102677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102677%_))
            (let ((_%e102679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102677%_ 'exception))))
              (if (macro-os-exception? _%e102679%_)
                  (macro-os-exception-code _%e102679%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e102679%_ '())))))
            (if (macro-os-exception? _%exn102677%_)
                (macro-os-exception-code _%exn102677%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn102677%_ '())))))))
    (define os-exception-message
      (lambda (_%exn102673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102673%_))
            (let ((_%e102675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102673%_ 'exception))))
              (if (macro-os-exception? _%e102675%_)
                  (macro-os-exception-message _%e102675%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e102675%_ '())))))
            (if (macro-os-exception? _%exn102673%_)
                (macro-os-exception-message _%exn102673%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn102673%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn102667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102667%_))
            (let ((_%e102670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102667%_ 'exception))))
              (if (macro-os-exception? _%e102670%_)
                  (macro-os-exception-procedure _%e102670%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e102670%_ '())))))
            (if (macro-os-exception? _%exn102667%_)
                (macro-os-exception-procedure _%exn102667%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn102667%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn102663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102663%_))
            (let ((_%e102665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102663%_ 'exception))))
              (macro-permission-denied-exception? _%e102665%_))
            (macro-permission-denied-exception? _%exn102663%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn102659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102659%_))
            (let ((_%e102661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102659%_ 'exception))))
              (if (macro-permission-denied-exception? _%e102661%_)
                  (macro-permission-denied-exception-arguments _%e102661%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e102661%_ '())))))
            (if (macro-permission-denied-exception? _%exn102659%_)
                (macro-permission-denied-exception-arguments _%exn102659%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn102659%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn102653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102653%_))
            (let ((_%e102656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102653%_ 'exception))))
              (if (macro-permission-denied-exception? _%e102656%_)
                  (macro-permission-denied-exception-procedure _%e102656%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e102656%_ '())))))
            (if (macro-permission-denied-exception? _%exn102653%_)
                (macro-permission-denied-exception-procedure _%exn102653%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn102653%_ '())))))))
    (define range-exception?
      (lambda (_%exn102649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102649%_))
            (let ((_%e102651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102649%_ 'exception))))
              (macro-range-exception? _%e102651%_))
            (macro-range-exception? _%exn102649%_))))
    (define range-exception-arg-id
      (lambda (_%exn102645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102645%_))
            (let ((_%e102647%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102645%_ 'exception))))
              (if (macro-range-exception? _%e102647%_)
                  (macro-range-exception-arg-id _%e102647%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e102647%_ '())))))
            (if (macro-range-exception? _%exn102645%_)
                (macro-range-exception-arg-id _%exn102645%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn102645%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn102641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102641%_))
            (let ((_%e102643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102641%_ 'exception))))
              (if (macro-range-exception? _%e102643%_)
                  (macro-range-exception-arguments _%e102643%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e102643%_ '())))))
            (if (macro-range-exception? _%exn102641%_)
                (macro-range-exception-arguments _%exn102641%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn102641%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn102635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102635%_))
            (let ((_%e102638%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102635%_ 'exception))))
              (if (macro-range-exception? _%e102638%_)
                  (macro-range-exception-procedure _%e102638%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e102638%_ '())))))
            (if (macro-range-exception? _%exn102635%_)
                (macro-range-exception-procedure _%exn102635%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn102635%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn102631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102631%_))
            (let ((_%e102633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102631%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e102633%_))
            (macro-rpc-remote-error-exception? _%exn102631%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn102627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102627%_))
            (let ((_%e102629%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102627%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102629%_)
                  (macro-rpc-remote-error-exception-arguments _%e102629%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e102629%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102627%_)
                (macro-rpc-remote-error-exception-arguments _%exn102627%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn102627%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn102623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102623%_))
            (let ((_%e102625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102623%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102625%_)
                  (macro-rpc-remote-error-exception-message _%e102625%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e102625%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102623%_)
                (macro-rpc-remote-error-exception-message _%exn102623%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn102623%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn102617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102617%_))
            (let ((_%e102620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102617%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102620%_)
                  (macro-rpc-remote-error-exception-procedure _%e102620%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e102620%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102617%_)
                (macro-rpc-remote-error-exception-procedure _%exn102617%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn102617%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn102613%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102613%_))
            (let ((_%e102615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102613%_ 'exception))))
              (macro-scheduler-exception? _%e102615%_))
            (macro-scheduler-exception? _%exn102613%_))))
    (define scheduler-exception-reason
      (lambda (_%exn102607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102607%_))
            (let ((_%e102610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102607%_ 'exception))))
              (if (macro-scheduler-exception? _%e102610%_)
                  (macro-scheduler-exception-reason _%e102610%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e102610%_ '())))))
            (if (macro-scheduler-exception? _%exn102607%_)
                (macro-scheduler-exception-reason _%exn102607%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn102607%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn102603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102603%_))
            (let ((_%e102605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102603%_ 'exception))))
              (macro-sfun-conversion-exception? _%e102605%_))
            (macro-sfun-conversion-exception? _%exn102603%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn102599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102599%_))
            (let ((_%e102601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102599%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102601%_)
                  (macro-sfun-conversion-exception-arguments _%e102601%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e102601%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102599%_)
                (macro-sfun-conversion-exception-arguments _%exn102599%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn102599%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn102595%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102595%_))
            (let ((_%e102597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102595%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102597%_)
                  (macro-sfun-conversion-exception-code _%e102597%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e102597%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102595%_)
                (macro-sfun-conversion-exception-code _%exn102595%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn102595%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn102591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102591%_))
            (let ((_%e102593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102591%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102593%_)
                  (macro-sfun-conversion-exception-message _%e102593%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e102593%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102591%_)
                (macro-sfun-conversion-exception-message _%exn102591%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn102591%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn102585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102585%_))
            (let ((_%e102588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102585%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102588%_)
                  (macro-sfun-conversion-exception-procedure _%e102588%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e102588%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102585%_)
                (macro-sfun-conversion-exception-procedure _%exn102585%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn102585%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn102579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102579%_))
            (let ((_%e102582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102579%_ 'exception))))
              (macro-stack-overflow-exception? _%e102582%_))
            (macro-stack-overflow-exception? _%exn102579%_))))
    (define started-thread-exception?
      (lambda (_%exn102575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102575%_))
            (let ((_%e102577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102575%_ 'exception))))
              (macro-started-thread-exception? _%e102577%_))
            (macro-started-thread-exception? _%exn102575%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn102571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102571%_))
            (let ((_%e102573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102571%_ 'exception))))
              (if (macro-started-thread-exception? _%e102573%_)
                  (macro-started-thread-exception-arguments _%e102573%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e102573%_ '())))))
            (if (macro-started-thread-exception? _%exn102571%_)
                (macro-started-thread-exception-arguments _%exn102571%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn102571%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn102565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102565%_))
            (let ((_%e102568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102565%_ 'exception))))
              (if (macro-started-thread-exception? _%e102568%_)
                  (macro-started-thread-exception-procedure _%e102568%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e102568%_ '())))))
            (if (macro-started-thread-exception? _%exn102565%_)
                (macro-started-thread-exception-procedure _%exn102565%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn102565%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn102561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102561%_))
            (let ((_%e102563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102561%_ 'exception))))
              (macro-terminated-thread-exception? _%e102563%_))
            (macro-terminated-thread-exception? _%exn102561%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn102557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102557%_))
            (let ((_%e102559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102557%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e102559%_)
                  (macro-terminated-thread-exception-arguments _%e102559%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e102559%_ '())))))
            (if (macro-terminated-thread-exception? _%exn102557%_)
                (macro-terminated-thread-exception-arguments _%exn102557%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn102557%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn102551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102551%_))
            (let ((_%e102554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102551%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e102554%_)
                  (macro-terminated-thread-exception-procedure _%e102554%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e102554%_ '())))))
            (if (macro-terminated-thread-exception? _%exn102551%_)
                (macro-terminated-thread-exception-procedure _%exn102551%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn102551%_ '())))))))
    (define type-exception?
      (lambda (_%exn102547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102547%_))
            (let ((_%e102549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102547%_ 'exception))))
              (macro-type-exception? _%e102549%_))
            (macro-type-exception? _%exn102547%_))))
    (define type-exception-arg-id
      (lambda (_%exn102543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102543%_))
            (let ((_%e102545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102543%_ 'exception))))
              (if (macro-type-exception? _%e102545%_)
                  (macro-type-exception-arg-id _%e102545%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e102545%_ '())))))
            (if (macro-type-exception? _%exn102543%_)
                (macro-type-exception-arg-id _%exn102543%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn102543%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn102539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102539%_))
            (let ((_%e102541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102539%_ 'exception))))
              (if (macro-type-exception? _%e102541%_)
                  (macro-type-exception-arguments _%e102541%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e102541%_ '())))))
            (if (macro-type-exception? _%exn102539%_)
                (macro-type-exception-arguments _%exn102539%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn102539%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn102535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102535%_))
            (let ((_%e102537%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102535%_ 'exception))))
              (if (macro-type-exception? _%e102537%_)
                  (macro-type-exception-procedure _%e102537%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e102537%_ '())))))
            (if (macro-type-exception? _%exn102535%_)
                (macro-type-exception-procedure _%exn102535%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn102535%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn102529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102529%_))
            (let ((_%e102532%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102529%_ 'exception))))
              (if (macro-type-exception? _%e102532%_)
                  (macro-type-exception-type-id _%e102532%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e102532%_ '())))))
            (if (macro-type-exception? _%exn102529%_)
                (macro-type-exception-type-id _%exn102529%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn102529%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn102525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102525%_))
            (let ((_%e102527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102525%_ 'exception))))
              (macro-unbound-global-exception? _%e102527%_))
            (macro-unbound-global-exception? _%exn102525%_))))
    (define unbound-global-exception-code
      (lambda (_%exn102521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102521%_))
            (let ((_%e102523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102521%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102523%_)
                  (macro-unbound-global-exception-code _%e102523%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e102523%_ '())))))
            (if (macro-unbound-global-exception? _%exn102521%_)
                (macro-unbound-global-exception-code _%exn102521%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn102521%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn102517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102517%_))
            (let ((_%e102519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102517%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102519%_)
                  (macro-unbound-global-exception-rte _%e102519%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e102519%_ '())))))
            (if (macro-unbound-global-exception? _%exn102517%_)
                (macro-unbound-global-exception-rte _%exn102517%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn102517%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn102511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102511%_))
            (let ((_%e102514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102511%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102514%_)
                  (macro-unbound-global-exception-variable _%e102514%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e102514%_ '())))))
            (if (macro-unbound-global-exception? _%exn102511%_)
                (macro-unbound-global-exception-variable _%exn102511%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn102511%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn102507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102507%_))
            (let ((_%e102509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102507%_ 'exception))))
              (macro-unbound-key-exception? _%e102509%_))
            (macro-unbound-key-exception? _%exn102507%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn102503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102503%_))
            (let ((_%e102505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102503%_ 'exception))))
              (if (macro-unbound-key-exception? _%e102505%_)
                  (macro-unbound-key-exception-arguments _%e102505%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e102505%_ '())))))
            (if (macro-unbound-key-exception? _%exn102503%_)
                (macro-unbound-key-exception-arguments _%exn102503%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn102503%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn102497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102497%_))
            (let ((_%e102500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102497%_ 'exception))))
              (if (macro-unbound-key-exception? _%e102500%_)
                  (macro-unbound-key-exception-procedure _%e102500%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e102500%_ '())))))
            (if (macro-unbound-key-exception? _%exn102497%_)
                (macro-unbound-key-exception-procedure _%exn102497%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn102497%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn102493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102493%_))
            (let ((_%e102495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102493%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e102495%_))
            (macro-unbound-os-environment-variable-exception? _%exn102493%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn102489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102489%_))
            (let ((_%e102491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102489%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e102491%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e102491%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e102491%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn102489%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn102489%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn102489%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn102483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102483%_))
            (let ((_%e102486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102483%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e102486%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e102486%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e102486%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn102483%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn102483%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn102483%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn102479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102479%_))
            (let ((_%e102481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102479%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e102481%_))
            (macro-unbound-serial-number-exception? _%exn102479%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn102475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102475%_))
            (let ((_%e102477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102475%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e102477%_)
                  (macro-unbound-serial-number-exception-arguments _%e102477%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e102477%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn102475%_)
                (macro-unbound-serial-number-exception-arguments _%exn102475%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn102475%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn102469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102469%_))
            (let ((_%e102472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102469%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e102472%_)
                  (macro-unbound-serial-number-exception-procedure _%e102472%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e102472%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn102469%_)
                (macro-unbound-serial-number-exception-procedure _%exn102469%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn102469%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn102465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102465%_))
            (let ((_%e102467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102465%_ 'exception))))
              (macro-uncaught-exception? _%e102467%_))
            (macro-uncaught-exception? _%exn102465%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn102461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102461%_))
            (let ((_%e102463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102461%_ 'exception))))
              (if (macro-uncaught-exception? _%e102463%_)
                  (macro-uncaught-exception-arguments _%e102463%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e102463%_ '())))))
            (if (macro-uncaught-exception? _%exn102461%_)
                (macro-uncaught-exception-arguments _%exn102461%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn102461%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn102457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102457%_))
            (let ((_%e102459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102457%_ 'exception))))
              (if (macro-uncaught-exception? _%e102459%_)
                  (macro-uncaught-exception-procedure _%e102459%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e102459%_ '())))))
            (if (macro-uncaught-exception? _%exn102457%_)
                (macro-uncaught-exception-procedure _%exn102457%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn102457%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn102451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102451%_))
            (let ((_%e102454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102451%_ 'exception))))
              (if (macro-uncaught-exception? _%e102454%_)
                  (macro-uncaught-exception-reason _%e102454%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e102454%_ '())))))
            (if (macro-uncaught-exception? _%exn102451%_)
                (macro-uncaught-exception-reason _%exn102451%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn102451%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn102447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102447%_))
            (let ((_%e102449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102447%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e102449%_))
            (macro-uninitialized-thread-exception? _%exn102447%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn102443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102443%_))
            (let ((_%e102445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102443%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e102445%_)
                  (macro-uninitialized-thread-exception-arguments _%e102445%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e102445%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn102443%_)
                (macro-uninitialized-thread-exception-arguments _%exn102443%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn102443%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn102437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102437%_))
            (let ((_%e102440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102437%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e102440%_)
                  (macro-uninitialized-thread-exception-procedure _%e102440%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e102440%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn102437%_)
                (macro-uninitialized-thread-exception-procedure _%exn102437%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn102437%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn102433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102433%_))
            (let ((_%e102435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102433%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e102435%_))
            (macro-unknown-keyword-argument-exception? _%exn102433%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn102429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102429%_))
            (let ((_%e102431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102429%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e102431%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e102431%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e102431%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn102429%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn102429%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn102429%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn102423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102423%_))
            (let ((_%e102426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102423%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e102426%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e102426%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e102426%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn102423%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn102423%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn102423%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn102419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102419%_))
            (let ((_%e102421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102419%_ 'exception))))
              (macro-unterminated-process-exception? _%e102421%_))
            (macro-unterminated-process-exception? _%exn102419%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn102415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102415%_))
            (let ((_%e102417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102415%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e102417%_)
                  (macro-unterminated-process-exception-arguments _%e102417%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e102417%_ '())))))
            (if (macro-unterminated-process-exception? _%exn102415%_)
                (macro-unterminated-process-exception-arguments _%exn102415%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn102415%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn102409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102409%_))
            (let ((_%e102412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102409%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e102412%_)
                  (macro-unterminated-process-exception-procedure _%e102412%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e102412%_ '())))))
            (if (macro-unterminated-process-exception? _%exn102409%_)
                (macro-unterminated-process-exception-procedure _%exn102409%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn102409%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn102405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102405%_))
            (let ((_%e102407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102405%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e102407%_))
            (macro-wrong-number-of-arguments-exception? _%exn102405%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn102401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102401%_))
            (let ((_%e102403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102401%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e102403%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e102403%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e102403%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn102401%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn102401%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn102401%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn102395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102395%_))
            (let ((_%e102398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102395%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e102398%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e102398%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e102398%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn102395%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn102395%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn102395%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn102391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102391%_))
            (let ((_%e102393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102391%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e102393%_))
            (macro-wrong-number-of-values-exception? _%exn102391%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn102387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102387%_))
            (let ((_%e102389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102387%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102389%_)
                  (macro-wrong-number-of-values-exception-code _%e102389%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e102389%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102387%_)
                (macro-wrong-number-of-values-exception-code _%exn102387%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn102387%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn102383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102383%_))
            (let ((_%e102385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102383%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102385%_)
                  (macro-wrong-number-of-values-exception-rte _%e102385%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e102385%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102383%_)
                (macro-wrong-number-of-values-exception-rte _%exn102383%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn102383%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn102377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102377%_))
            (let ((_%e102380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102377%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102380%_)
                  (macro-wrong-number-of-values-exception-vals _%e102380%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e102380%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102377%_)
                (macro-wrong-number-of-values-exception-vals _%exn102377%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn102377%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn102371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102371%_))
            (let ((_%e102374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102371%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e102374%_))
            (macro-wrong-processor-c-return-exception? _%exn102371%_))))))
