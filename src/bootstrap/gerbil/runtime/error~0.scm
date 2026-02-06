(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1770405371)
  (begin
    (define Exception::t
      (let ((__tmp138816 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp138816
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args138734%_
        (apply make-instance Exception::t _%$args138734%_)))
    (define StackTrace::t
      (let ((__tmp138817 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp138817
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args138731%_
        (apply make-instance StackTrace::t _%$args138731%_)))
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
      (let ((__tmp138818 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp138818
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args138728%_ (apply make-instance Error::t _%$args138728%_)))
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
      (let ((__tmp138819 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp138819
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args138725%_
        (apply make-instance ContractViolation::t _%$args138725%_)))
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
      (let ((__tmp138820 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp138820
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args138722%_
        (apply make-instance RuntimeException::t _%$args138722%_)))
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
      (lambda (_%exn138717%_ _%continue138718%_)
        (let ((_%exn138720%_ (wrap-runtime-exception _%exn138717%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn138720%_ _%continue138718%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn138713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn138713%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn138713%_ 'continuation))
                '#!void
                (let ((__tmp138821
                       (lambda (_%cont138715%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn138713%_
                            'continuation
                            _%cont138715%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp138821)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn138713%_))))
    (define error
      (lambda (_%message138710%_ . _%irritants138711%_)
        (raise (let ((__obj138813
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj138813
                  _%message138710%_
                  'irritants:
                  _%irritants138711%_)
                 __obj138813))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords138685%_
               _%ctx138680138686%_
               _%contract-expr138681138687%_
               _%value138682138688%_
               _%message138689%_)
        (let* ((_%ctx138691%_
                (if (eq? _%ctx138680138686%_ absent-value)
                    '#f
                    _%ctx138680138686%_))
               (_%contract-expr138693%_
                (if (eq? _%contract-expr138681138687%_ absent-value)
                    '#f
                    _%contract-expr138681138687%_))
               (_%value138695%_
                (if (eq? _%value138682138688%_ absent-value)
                    '#f
                    _%value138682138688%_)))
          (raise (let ((__obj138814
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj138814
                    _%message138689%_
                    'where:
                    _%ctx138691%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr138693%_
                                (cons 'value: (cons _%value138695%_ '())))))
                   __obj138814)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords138700%_ . _%args138701%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords138700%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138700%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138700%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138700%_
                  'value:
                  absent-value))
               _%args138701%_)))
    (define __raise-contract-violation-error
      (lambda _%args138683138707%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args138683138707%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler138654%_ _%thunk138655%_)
        (let* ((_%handler138658%_ _%handler138654%_)
               (_%thunk138666%_ _%thunk138655%_)
               (__tmp138822
                (lambda (_%exn138675%_)
                  (let ((_%exn138677%_ (wrap-runtime-exception _%exn138675%_)))
                    (declare (not safe))
                    (_%handler138658%_ _%exn138677%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp138822 _%thunk138666%_))))
    (define with-exception-handler
      (lambda (_%handler136689%_ _%thunk136690%_)
        (if (procedure? _%handler136689%_)
            (let ((_%handler136694%_ _%handler136689%_))
              (if (procedure? _%thunk136690%_)
                  (let ((_%thunk136704%_ _%thunk136690%_))
                    (__with-exception-handler
                     _%handler136694%_
                     _%thunk136704%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk136690%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler136689%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler138596%_ _%thunk138597%_)
        (let* ((_%handler138600%_ _%handler138596%_)
               (_%thunk138608%_ _%thunk138597%_)
               (__tmp138823
                (lambda (_%cont138617%_)
                  (let* ((_%handler138621%_
                          (lambda (_%exn138619%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont138617%_
                               _%handler138600%_
                               _%exn138619%_))))
                         (_%thunk138624%_ _%thunk138608%_)
                         (_%handler138629%_ _%handler138621%_)
                         (_%thunk138644%_ _%thunk138624%_))
                    (__with-exception-handler
                     _%handler138629%_
                     _%thunk138644%_)))))
          (declare (not safe))
          (##continuation-capture __tmp138823))))
    (define with-catch
      (lambda (_%handler136834%_ _%thunk136835%_)
        (if (procedure? _%handler136834%_)
            (let ((_%handler136839%_ _%handler136834%_))
              (if (procedure? _%thunk136835%_)
                  (let ((_%thunk136849%_ _%thunk136835%_))
                    (__with-catch _%handler136839%_ _%thunk136849%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk136835%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler136834%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn138583%_)
        (if (or (heap-overflow-exception? _%exn138583%_)
                (stack-overflow-exception? _%exn138583%_))
            _%exn138583%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn138583%_))
                _%exn138583%_
                (if (macro-exception? _%exn138583%_)
                    (let ((_%rte138591%_
                           (let ((__obj138815
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj138815
                                _%exn138583%_
                                '2
                                '#f
                                '#f))
                             __obj138815)))
                      (let ((__tmp138824
                             (lambda (_%cont138593%_)
                               (let ((__tmp138825
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont138593%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte138591%_
                                  'continuation
                                  __tmp138825)))))
                        (declare (not safe))
                        (##continuation-capture __tmp138824))
                      _%rte138591%_)
                    _%exn138583%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj138578%_)
        (let ((_%$e138580%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj138578%_))))
          (if _%$e138580%_ _%$e138580%_ (error-exception? _%obj138578%_)))))
    (define error-message
      (lambda (_%obj138537%_)
        (let ((_%$e138573%_
               (let* ((_%obj138539%_ _%obj138537%_)
                      (_%slot138542%_ 'message)
                      (_%E138545%_ false)
                      (_%slot138550%_ _%slot138542%_)
                      (_%E138563%_ _%E138545%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj138539%_ _%slot138550%_ _%E138563%_))))
          (if _%$e138573%_
              _%$e138573%_
              (if (error-exception? _%obj138537%_)
                  (error-exception-message _%obj138537%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj138532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj138532%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj138532%_ 'irritants))
            (if (error-exception? _%obj138532%_)
                (error-exception-parameters _%obj138532%_)
                '#f))))
    (define error-trace
      (lambda (_%obj138530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj138530%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj138530%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e138491%_ _%port138492%_)
        (let ((_%$e138514%_
               (let* ((_%obj138494%_ _%e138491%_)
                      (_%id138497%_ 'display-exception)
                      (_%id138502%_ _%id138497%_))
                 (declare (not safe))
                 (__method-ref _%obj138494%_ _%id138502%_))))
          (if _%$e138514%_
              ((lambda (_%f138517%_) (_%f138517%_ _%e138491%_ _%port138492%_))
               _%$e138514%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e138491%_ _%port138492%_))))))
    (define display-exception__0
      (lambda (_%e138523%_)
        (let ((_%port138525%_ (current-error-port)))
          (display-exception__% _%e138523%_ _%port138525%_))))
    (define display-exception
      (lambda _g138826_
        (let ((_g138827_ (let () (declare (not safe)) (##length _g138826_))))
          (cond ((let () (declare (not safe)) (##fx= _g138827_ 1))
                 (apply display-exception__0 _g138826_))
                ((let () (declare (not safe)) (##fx= _g138827_ 2))
                 (apply display-exception__% _g138826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g138826_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self138469%_ _%message138470%_ . _%rest138471%_)
        (let* ((_%self138474%_ _%self138469%_)
               (_%message138488%_
                (if (string? _%message138470%_)
                    _%message138470%_
                    (call-with-output-string
                     '""
                     (lambda (_%g138483138485%_)
                       (display _%message138470%_ _%g138483138485%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self138474%_ 'message _%message138488%_))
          (apply class-instance-init! _%self138474%_ _%rest138471%_))))
    (define Error:::init!::specialize
      (lambda (__klass138736 __method-table138737)
        (let ((__message138738
               (let ((__slot138739
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138736 'message))))
                 (if __slot138739
                     __slot138739
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self138469%_ _%message138470%_ . _%rest138471%_)
            (let* ((_%self138474%_ _%self138469%_)
                   (_%message138488%_
                    (if (string? _%message138470%_)
                        _%message138470%_
                        (call-with-output-string
                         '""
                         (lambda (_%g138483138485%_)
                           (display _%message138470%_ _%g138483138485%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self138474%_
                 _%message138488%_
                 __message138738
                 '#f
                 '#f))
              (apply class-instance-init! _%self138474%_ _%rest138471%_))))))
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
      (lambda (_%self138174%_ _%port138175%_)
        (let ((_%self138178%_ _%self138174%_))
          (let ((_%tmp-port138188%_ (open-output-string))
                (_%display-error-newline138189%_
                 (> (output-port-column _%port138175%_) '0)))
            (fix-port-width! _%tmp-port138188%_)
            (let ((__tmp138828
                   (lambda ()
                     (if _%display-error-newline138189%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e138192%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138178%_ 'where))))
                       (if _%$e138192%_ (display _%$e138192%_) (display '"?")))
                     (let ((__tmp138829
                            (let ((__tmp138830
                                   (let ((_%obj138196%_ _%self138178%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj138196%_))
                                         (let ((_%obj138201%_ _%obj138196%_))
                                           (declare (not safe))
                                           (__object-class _%obj138201%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj138196%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp138830))))
                       (declare (not safe))
                       (display* '" [" __tmp138829 '"]: "))
                     (let ((__tmp138831
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138178%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp138831))
                     (let ((_%irritants138216%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138178%_ 'irritants))))
                       (if (null? _%irritants138216%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj138218%_)
                                (if (u8vector? _%obj138218%_)
                                    (let ((__tmp138832
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj138218%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp138832))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj138218%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants138216%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont138219138221%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self138178%_
                                   'continuation))))
                           (if _%cont138219138221%_
                               (let ((_%cont138223%_ _%cont138219138221%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont138223%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp138828
               current-output-port
               _%tmp-port138188%_))
            (let ((__tmp138833 (get-output-string _%tmp-port138188%_)))
              (declare (not safe))
              (##write-string __tmp138833 _%port138175%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass138740 __method-table138741)
        (let ((__irritants138742
               (let ((__slot138746
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138740 'irritants))))
                 (if __slot138746
                     __slot138746
                     (error '"Unknown slot" 'irritants))))
              (__message138743
               (let ((__slot138747
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138740 'message))))
                 (if __slot138747
                     __slot138747
                     (error '"Unknown slot" 'message))))
              (__continuation138744
               (let ((__slot138748
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138740 'continuation))))
                 (if __slot138748
                     __slot138748
                     (error '"Unknown slot" 'continuation))))
              (__where138745
               (let ((__slot138749
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138740 'where))))
                 (if __slot138749
                     __slot138749
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self138174%_ _%port138175%_)
            (let ((_%self138178%_ _%self138174%_))
              (let ((_%tmp-port138188%_ (open-output-string))
                    (_%display-error-newline138189%_
                     (> (output-port-column _%port138175%_) '0)))
                (fix-port-width! _%tmp-port138188%_)
                (let ((__tmp138834
                       (lambda ()
                         (if _%display-error-newline138189%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e138192%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138178%_
                                   __where138745
                                   '#f
                                   '#f))))
                           (if _%$e138192%_
                               (display _%$e138192%_)
                               (display '"?")))
                         (let ((__tmp138835
                                (let ((__tmp138836
                                       (let ((_%obj138196%_ _%self138178%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj138196%_))
                                             (let ((_%obj138201%_
                                                    _%obj138196%_))
                                               (declare (not safe))
                                               (__object-class _%obj138201%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj138196%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp138836))))
                           (declare (not safe))
                           (display* '" [" __tmp138835 '"]: "))
                         (let ((__tmp138837
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138178%_
                                   __message138743
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp138837))
                         (let ((_%irritants138216%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138178%_
                                   __irritants138742
                                   '#f
                                   '#f))))
                           (if (null? _%irritants138216%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj138218%_)
                                    (if (u8vector? _%obj138218%_)
                                        (let ((__tmp138838
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj138218%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp138838))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj138218%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants138216%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont138219138221%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self138178%_
                                       __continuation138744
                                       '#f
                                       '#f))))
                               (if _%cont138219138221%_
                                   (let ((_%cont138223%_ _%cont138219138221%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont138223%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp138834
                   current-output-port
                   _%tmp-port138188%_))
                (let ((__tmp138839 (get-output-string _%tmp-port138188%_)))
                  (declare (not safe))
                  (##write-string __tmp138839 _%port138175%_))))))))
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
      (lambda (_%self138031%_ _%port138032%_)
        (let* ((_%self138035%_ _%self138031%_)
               (_%tmp-port138045%_ (open-output-string)))
          (fix-port-width! _%tmp-port138045%_)
          (let ((__tmp138840
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self138035%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp138840 _%tmp-port138045%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont138046138048%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self138035%_ 'continuation))))
                (if _%cont138046138048%_
                    (let ((_%cont138050%_ _%cont138046138048%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port138045%_)
                      (newline _%tmp-port138045%_)
                      (display-continuation-backtrace
                       _%cont138050%_
                       _%tmp-port138045%_))
                    '#f))
              '#!void)
          (let ((__tmp138841 (get-output-string _%tmp-port138045%_)))
            (declare (not safe))
            (##write-string __tmp138841 _%port138032%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass138750 __method-table138751)
        (let ((__continuation138752
               (let ((__slot138754
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138750 'continuation))))
                 (if __slot138754
                     __slot138754
                     (error '"Unknown slot" 'continuation))))
              (__exception138753
               (let ((__slot138755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138750 'exception))))
                 (if __slot138755
                     __slot138755
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self138031%_ _%port138032%_)
            (let* ((_%self138035%_ _%self138031%_)
                   (_%tmp-port138045%_ (open-output-string)))
              (fix-port-width! _%tmp-port138045%_)
              (let ((__tmp138842
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self138035%_
                        __exception138753
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp138842 _%tmp-port138045%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont138046138048%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self138035%_
                            __continuation138752
                            '#f
                            '#f))))
                    (if _%cont138046138048%_
                        (let ((_%cont138050%_ _%cont138046138048%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port138045%_)
                          (newline _%tmp-port138045%_)
                          (display-continuation-backtrace
                           _%cont138050%_
                           _%tmp-port138045%_))
                        '#f))
                  '#!void)
              (let ((__tmp138843 (get-output-string _%tmp-port138045%_)))
                (declare (not safe))
                (##write-string __tmp138843 _%port138032%_)))))))
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
      (lambda (_%port137903%_)
        (if (macro-character-port? _%port137903%_)
            (let ((_%old-width137905%_
                   (macro-character-port-output-width _%port137903%_)))
              (macro-character-port-output-width-set!
               _%port137903%_
               (lambda (_%port137907%_) '256))
              _%old-width137905%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port137900%_ _%old-width137901%_)
        (if (macro-character-port? _%port137900%_)
            (macro-character-port-output-width-set!
             _%port137900%_
             _%old-width137901%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e137898%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e137898%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn137892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137892%_))
            (let ((_%e137895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137892%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e137895%_))
            (macro-abandoned-mutex-exception? _%exn137892%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn137888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137888%_))
            (let ((_%e137890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137888%_ 'exception))))
              (macro-cfun-conversion-exception? _%e137890%_))
            (macro-cfun-conversion-exception? _%exn137888%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn137884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137884%_))
            (let ((_%e137886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137884%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137886%_)
                  (macro-cfun-conversion-exception-arguments _%e137886%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e137886%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137884%_)
                (macro-cfun-conversion-exception-arguments _%exn137884%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn137884%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn137880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137880%_))
            (let ((_%e137882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137880%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137882%_)
                  (macro-cfun-conversion-exception-code _%e137882%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e137882%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137880%_)
                (macro-cfun-conversion-exception-code _%exn137880%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn137880%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn137876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137876%_))
            (let ((_%e137878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137876%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137878%_)
                  (macro-cfun-conversion-exception-message _%e137878%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e137878%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137876%_)
                (macro-cfun-conversion-exception-message _%exn137876%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn137876%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn137870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137870%_))
            (let ((_%e137873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137870%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137873%_)
                  (macro-cfun-conversion-exception-procedure _%e137873%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e137873%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137870%_)
                (macro-cfun-conversion-exception-procedure _%exn137870%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn137870%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn137866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137866%_))
            (let ((_%e137868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137866%_ 'exception))))
              (macro-datum-parsing-exception? _%e137868%_))
            (macro-datum-parsing-exception? _%exn137866%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn137862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137862%_))
            (let ((_%e137864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137862%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137864%_)
                  (macro-datum-parsing-exception-kind _%e137864%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e137864%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137862%_)
                (macro-datum-parsing-exception-kind _%exn137862%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn137862%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn137858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137858%_))
            (let ((_%e137860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137858%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137860%_)
                  (macro-datum-parsing-exception-parameters _%e137860%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e137860%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137858%_)
                (macro-datum-parsing-exception-parameters _%exn137858%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn137858%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn137852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137852%_))
            (let ((_%e137855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137852%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137855%_)
                  (macro-datum-parsing-exception-readenv _%e137855%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e137855%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137852%_)
                (macro-datum-parsing-exception-readenv _%exn137852%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn137852%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn137846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137846%_))
            (let ((_%e137849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137846%_ 'exception))))
              (macro-deadlock-exception? _%e137849%_))
            (macro-deadlock-exception? _%exn137846%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn137842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137842%_))
            (let ((_%e137844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137842%_ 'exception))))
              (macro-divide-by-zero-exception? _%e137844%_))
            (macro-divide-by-zero-exception? _%exn137842%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn137838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137838%_))
            (let ((_%e137840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137838%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e137840%_)
                  (macro-divide-by-zero-exception-arguments _%e137840%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e137840%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn137838%_)
                (macro-divide-by-zero-exception-arguments _%exn137838%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn137838%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn137832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137832%_))
            (let ((_%e137835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137832%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e137835%_)
                  (macro-divide-by-zero-exception-procedure _%e137835%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e137835%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn137832%_)
                (macro-divide-by-zero-exception-procedure _%exn137832%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn137832%_ '())))))))
    (define error-exception?
      (lambda (_%exn137828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137828%_))
            (let ((_%e137830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137828%_ 'exception))))
              (macro-error-exception? _%e137830%_))
            (macro-error-exception? _%exn137828%_))))
    (define error-exception-message
      (lambda (_%exn137824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137824%_))
            (let ((_%e137826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137824%_ 'exception))))
              (if (macro-error-exception? _%e137826%_)
                  (macro-error-exception-message _%e137826%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e137826%_ '())))))
            (if (macro-error-exception? _%exn137824%_)
                (macro-error-exception-message _%exn137824%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn137824%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn137818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137818%_))
            (let ((_%e137821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137818%_ 'exception))))
              (if (macro-error-exception? _%e137821%_)
                  (macro-error-exception-parameters _%e137821%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e137821%_ '())))))
            (if (macro-error-exception? _%exn137818%_)
                (macro-error-exception-parameters _%exn137818%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn137818%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn137814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137814%_))
            (let ((_%e137816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137814%_ 'exception))))
              (macro-expression-parsing-exception? _%e137816%_))
            (macro-expression-parsing-exception? _%exn137814%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn137810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137810%_))
            (let ((_%e137812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137810%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137812%_)
                  (macro-expression-parsing-exception-kind _%e137812%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e137812%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137810%_)
                (macro-expression-parsing-exception-kind _%exn137810%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn137810%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn137806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137806%_))
            (let ((_%e137808%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137806%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137808%_)
                  (macro-expression-parsing-exception-parameters _%e137808%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e137808%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137806%_)
                (macro-expression-parsing-exception-parameters _%exn137806%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn137806%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn137800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137800%_))
            (let ((_%e137803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137800%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137803%_)
                  (macro-expression-parsing-exception-source _%e137803%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e137803%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137800%_)
                (macro-expression-parsing-exception-source _%exn137800%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn137800%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn137796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137796%_))
            (let ((_%e137798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137796%_ 'exception))))
              (macro-file-exists-exception? _%e137798%_))
            (macro-file-exists-exception? _%exn137796%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn137792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137792%_))
            (let ((_%e137794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137792%_ 'exception))))
              (if (macro-file-exists-exception? _%e137794%_)
                  (macro-file-exists-exception-arguments _%e137794%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e137794%_ '())))))
            (if (macro-file-exists-exception? _%exn137792%_)
                (macro-file-exists-exception-arguments _%exn137792%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn137792%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn137786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137786%_))
            (let ((_%e137789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137786%_ 'exception))))
              (if (macro-file-exists-exception? _%e137789%_)
                  (macro-file-exists-exception-procedure _%e137789%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e137789%_ '())))))
            (if (macro-file-exists-exception? _%exn137786%_)
                (macro-file-exists-exception-procedure _%exn137786%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn137786%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn137782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137782%_))
            (let ((_%e137784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137782%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e137784%_))
            (macro-fixnum-overflow-exception? _%exn137782%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn137778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137778%_))
            (let ((_%e137780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137778%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e137780%_)
                  (macro-fixnum-overflow-exception-arguments _%e137780%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e137780%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn137778%_)
                (macro-fixnum-overflow-exception-arguments _%exn137778%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn137778%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn137772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137772%_))
            (let ((_%e137775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137772%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e137775%_)
                  (macro-fixnum-overflow-exception-procedure _%e137775%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e137775%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn137772%_)
                (macro-fixnum-overflow-exception-procedure _%exn137772%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn137772%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn137766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137766%_))
            (let ((_%e137769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137766%_ 'exception))))
              (macro-heap-overflow-exception? _%e137769%_))
            (macro-heap-overflow-exception? _%exn137766%_))))
    (define inactive-thread-exception?
      (lambda (_%exn137762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137762%_))
            (let ((_%e137764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137762%_ 'exception))))
              (macro-inactive-thread-exception? _%e137764%_))
            (macro-inactive-thread-exception? _%exn137762%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn137758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137758%_))
            (let ((_%e137760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137758%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e137760%_)
                  (macro-inactive-thread-exception-arguments _%e137760%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e137760%_ '())))))
            (if (macro-inactive-thread-exception? _%exn137758%_)
                (macro-inactive-thread-exception-arguments _%exn137758%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn137758%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn137752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137752%_))
            (let ((_%e137755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137752%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e137755%_)
                  (macro-inactive-thread-exception-procedure _%e137755%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e137755%_ '())))))
            (if (macro-inactive-thread-exception? _%exn137752%_)
                (macro-inactive-thread-exception-procedure _%exn137752%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn137752%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn137748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137748%_))
            (let ((_%e137750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137748%_ 'exception))))
              (macro-initialized-thread-exception? _%e137750%_))
            (macro-initialized-thread-exception? _%exn137748%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn137744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137744%_))
            (let ((_%e137746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137744%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e137746%_)
                  (macro-initialized-thread-exception-arguments _%e137746%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e137746%_ '())))))
            (if (macro-initialized-thread-exception? _%exn137744%_)
                (macro-initialized-thread-exception-arguments _%exn137744%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn137744%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn137738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137738%_))
            (let ((_%e137741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137738%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e137741%_)
                  (macro-initialized-thread-exception-procedure _%e137741%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e137741%_ '())))))
            (if (macro-initialized-thread-exception? _%exn137738%_)
                (macro-initialized-thread-exception-procedure _%exn137738%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn137738%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn137734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137734%_))
            (let ((_%e137736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137734%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e137736%_))
            (macro-invalid-hash-number-exception? _%exn137734%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn137730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137730%_))
            (let ((_%e137732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137730%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e137732%_)
                  (macro-invalid-hash-number-exception-arguments _%e137732%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e137732%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn137730%_)
                (macro-invalid-hash-number-exception-arguments _%exn137730%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn137730%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn137724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137724%_))
            (let ((_%e137727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137724%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e137727%_)
                  (macro-invalid-hash-number-exception-procedure _%e137727%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e137727%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn137724%_)
                (macro-invalid-hash-number-exception-procedure _%exn137724%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn137724%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn137720%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137720%_))
            (let ((_%e137722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137720%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e137722%_))
            (macro-invalid-utf8-encoding-exception? _%exn137720%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn137716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137716%_))
            (let ((_%e137718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137716%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e137718%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e137718%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e137718%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn137716%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn137716%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn137716%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn137710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137710%_))
            (let ((_%e137713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137710%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e137713%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e137713%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e137713%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn137710%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn137710%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn137710%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn137706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137706%_))
            (let ((_%e137708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137706%_ 'exception))))
              (macro-join-timeout-exception? _%e137708%_))
            (macro-join-timeout-exception? _%exn137706%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn137702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137702%_))
            (let ((_%e137704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137702%_ 'exception))))
              (if (macro-join-timeout-exception? _%e137704%_)
                  (macro-join-timeout-exception-arguments _%e137704%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e137704%_ '())))))
            (if (macro-join-timeout-exception? _%exn137702%_)
                (macro-join-timeout-exception-arguments _%exn137702%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn137702%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn137696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137696%_))
            (let ((_%e137699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137696%_ 'exception))))
              (if (macro-join-timeout-exception? _%e137699%_)
                  (macro-join-timeout-exception-procedure _%e137699%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e137699%_ '())))))
            (if (macro-join-timeout-exception? _%exn137696%_)
                (macro-join-timeout-exception-procedure _%exn137696%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn137696%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn137692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137692%_))
            (let ((_%e137694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137692%_ 'exception))))
              (macro-keyword-expected-exception? _%e137694%_))
            (macro-keyword-expected-exception? _%exn137692%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn137688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137688%_))
            (let ((_%e137690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137688%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e137690%_)
                  (macro-keyword-expected-exception-arguments _%e137690%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e137690%_ '())))))
            (if (macro-keyword-expected-exception? _%exn137688%_)
                (macro-keyword-expected-exception-arguments _%exn137688%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn137688%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn137682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137682%_))
            (let ((_%e137685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137682%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e137685%_)
                  (macro-keyword-expected-exception-procedure _%e137685%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e137685%_ '())))))
            (if (macro-keyword-expected-exception? _%exn137682%_)
                (macro-keyword-expected-exception-procedure _%exn137682%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn137682%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn137678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137678%_))
            (let ((_%e137680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137678%_ 'exception))))
              (macro-length-mismatch-exception? _%e137680%_))
            (macro-length-mismatch-exception? _%exn137678%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn137674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137674%_))
            (let ((_%e137676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137674%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137676%_)
                  (macro-length-mismatch-exception-arg-id _%e137676%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e137676%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137674%_)
                (macro-length-mismatch-exception-arg-id _%exn137674%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn137674%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn137670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137670%_))
            (let ((_%e137672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137670%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137672%_)
                  (macro-length-mismatch-exception-arguments _%e137672%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e137672%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137670%_)
                (macro-length-mismatch-exception-arguments _%exn137670%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn137670%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn137664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137664%_))
            (let ((_%e137667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137664%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137667%_)
                  (macro-length-mismatch-exception-procedure _%e137667%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e137667%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137664%_)
                (macro-length-mismatch-exception-procedure _%exn137664%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn137664%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn137660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137660%_))
            (let ((_%e137662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137660%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e137662%_))
            (macro-mailbox-receive-timeout-exception? _%exn137660%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn137656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137656%_))
            (let ((_%e137658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137656%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e137658%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e137658%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e137658%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn137656%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn137656%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn137656%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn137650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137650%_))
            (let ((_%e137653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137650%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e137653%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e137653%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e137653%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn137650%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn137650%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn137650%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn137646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137646%_))
            (let ((_%e137648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137646%_ 'exception))))
              (macro-module-not-found-exception? _%e137648%_))
            (macro-module-not-found-exception? _%exn137646%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn137642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137642%_))
            (let ((_%e137644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137642%_ 'exception))))
              (if (macro-module-not-found-exception? _%e137644%_)
                  (macro-module-not-found-exception-arguments _%e137644%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e137644%_ '())))))
            (if (macro-module-not-found-exception? _%exn137642%_)
                (macro-module-not-found-exception-arguments _%exn137642%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn137642%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn137636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137636%_))
            (let ((_%e137639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137636%_ 'exception))))
              (if (macro-module-not-found-exception? _%e137639%_)
                  (macro-module-not-found-exception-procedure _%e137639%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e137639%_ '())))))
            (if (macro-module-not-found-exception? _%exn137636%_)
                (macro-module-not-found-exception-procedure _%exn137636%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn137636%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn137630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137630%_))
            (let ((_%e137633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137630%_ 'exception))))
              (macro-multiple-c-return-exception? _%e137633%_))
            (macro-multiple-c-return-exception? _%exn137630%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn137626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137626%_))
            (let ((_%e137628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137626%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e137628%_))
            (macro-no-such-file-or-directory-exception? _%exn137626%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn137622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137622%_))
            (let ((_%e137624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137622%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e137624%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e137624%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e137624%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn137622%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn137622%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn137622%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn137616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137616%_))
            (let ((_%e137619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137616%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e137619%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e137619%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e137619%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn137616%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn137616%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn137616%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn137612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137612%_))
            (let ((_%e137614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137612%_ 'exception))))
              (macro-noncontinuable-exception? _%e137614%_))
            (macro-noncontinuable-exception? _%exn137612%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn137606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137606%_))
            (let ((_%e137609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137606%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e137609%_)
                  (macro-noncontinuable-exception-reason _%e137609%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e137609%_ '())))))
            (if (macro-noncontinuable-exception? _%exn137606%_)
                (macro-noncontinuable-exception-reason _%exn137606%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn137606%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn137602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137602%_))
            (let ((_%e137604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137602%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e137604%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn137602%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn137598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137598%_))
            (let ((_%e137600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137598%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e137600%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e137600%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e137600%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn137598%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn137598%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn137598%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn137592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137592%_))
            (let ((_%e137595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137592%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e137595%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e137595%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e137595%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn137592%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn137592%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn137592%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn137588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137588%_))
            (let ((_%e137590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137588%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e137590%_))
            (macro-nonprocedure-operator-exception? _%exn137588%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn137584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137584%_))
            (let ((_%e137586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137584%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137586%_)
                  (macro-nonprocedure-operator-exception-arguments _%e137586%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e137586%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137584%_)
                (macro-nonprocedure-operator-exception-arguments _%exn137584%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn137584%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn137580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137580%_))
            (let ((_%e137582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137580%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137582%_)
                  (macro-nonprocedure-operator-exception-code _%e137582%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e137582%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137580%_)
                (macro-nonprocedure-operator-exception-code _%exn137580%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn137580%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn137576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137576%_))
            (let ((_%e137578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137576%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137578%_)
                  (macro-nonprocedure-operator-exception-operator _%e137578%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e137578%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137576%_)
                (macro-nonprocedure-operator-exception-operator _%exn137576%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn137576%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn137570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137570%_))
            (let ((_%e137573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137570%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137573%_)
                  (macro-nonprocedure-operator-exception-rte _%e137573%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e137573%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137570%_)
                (macro-nonprocedure-operator-exception-rte _%exn137570%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn137570%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn137566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137566%_))
            (let ((_%e137568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137566%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e137568%_))
            (macro-not-in-compilation-context-exception? _%exn137566%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn137562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137562%_))
            (let ((_%e137564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137562%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e137564%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e137564%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e137564%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn137562%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn137562%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn137562%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn137556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137556%_))
            (let ((_%e137559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137556%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e137559%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e137559%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e137559%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn137556%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn137556%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn137556%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn137552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137552%_))
            (let ((_%e137554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137552%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e137554%_))
            (macro-number-of-arguments-limit-exception? _%exn137552%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn137548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137548%_))
            (let ((_%e137550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137548%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e137550%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e137550%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e137550%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn137548%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn137548%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn137548%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn137542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137542%_))
            (let ((_%e137545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137542%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e137545%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e137545%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e137545%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn137542%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn137542%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn137542%_ '())))))))
    (define os-exception?
      (lambda (_%exn137538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137538%_))
            (let ((_%e137540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137538%_ 'exception))))
              (macro-os-exception? _%e137540%_))
            (macro-os-exception? _%exn137538%_))))
    (define os-exception-arguments
      (lambda (_%exn137534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137534%_))
            (let ((_%e137536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137534%_ 'exception))))
              (if (macro-os-exception? _%e137536%_)
                  (macro-os-exception-arguments _%e137536%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e137536%_ '())))))
            (if (macro-os-exception? _%exn137534%_)
                (macro-os-exception-arguments _%exn137534%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn137534%_ '())))))))
    (define os-exception-code
      (lambda (_%exn137530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137530%_))
            (let ((_%e137532%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137530%_ 'exception))))
              (if (macro-os-exception? _%e137532%_)
                  (macro-os-exception-code _%e137532%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e137532%_ '())))))
            (if (macro-os-exception? _%exn137530%_)
                (macro-os-exception-code _%exn137530%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn137530%_ '())))))))
    (define os-exception-message
      (lambda (_%exn137526%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137526%_))
            (let ((_%e137528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137526%_ 'exception))))
              (if (macro-os-exception? _%e137528%_)
                  (macro-os-exception-message _%e137528%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e137528%_ '())))))
            (if (macro-os-exception? _%exn137526%_)
                (macro-os-exception-message _%exn137526%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn137526%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn137520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137520%_))
            (let ((_%e137523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137520%_ 'exception))))
              (if (macro-os-exception? _%e137523%_)
                  (macro-os-exception-procedure _%e137523%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e137523%_ '())))))
            (if (macro-os-exception? _%exn137520%_)
                (macro-os-exception-procedure _%exn137520%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn137520%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn137516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137516%_))
            (let ((_%e137518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137516%_ 'exception))))
              (macro-permission-denied-exception? _%e137518%_))
            (macro-permission-denied-exception? _%exn137516%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn137512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137512%_))
            (let ((_%e137514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137512%_ 'exception))))
              (if (macro-permission-denied-exception? _%e137514%_)
                  (macro-permission-denied-exception-arguments _%e137514%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e137514%_ '())))))
            (if (macro-permission-denied-exception? _%exn137512%_)
                (macro-permission-denied-exception-arguments _%exn137512%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn137512%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn137506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137506%_))
            (let ((_%e137509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137506%_ 'exception))))
              (if (macro-permission-denied-exception? _%e137509%_)
                  (macro-permission-denied-exception-procedure _%e137509%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e137509%_ '())))))
            (if (macro-permission-denied-exception? _%exn137506%_)
                (macro-permission-denied-exception-procedure _%exn137506%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn137506%_ '())))))))
    (define range-exception?
      (lambda (_%exn137502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137502%_))
            (let ((_%e137504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137502%_ 'exception))))
              (macro-range-exception? _%e137504%_))
            (macro-range-exception? _%exn137502%_))))
    (define range-exception-arg-id
      (lambda (_%exn137498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137498%_))
            (let ((_%e137500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137498%_ 'exception))))
              (if (macro-range-exception? _%e137500%_)
                  (macro-range-exception-arg-id _%e137500%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e137500%_ '())))))
            (if (macro-range-exception? _%exn137498%_)
                (macro-range-exception-arg-id _%exn137498%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn137498%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn137494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137494%_))
            (let ((_%e137496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137494%_ 'exception))))
              (if (macro-range-exception? _%e137496%_)
                  (macro-range-exception-arguments _%e137496%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e137496%_ '())))))
            (if (macro-range-exception? _%exn137494%_)
                (macro-range-exception-arguments _%exn137494%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn137494%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn137488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137488%_))
            (let ((_%e137491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137488%_ 'exception))))
              (if (macro-range-exception? _%e137491%_)
                  (macro-range-exception-procedure _%e137491%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e137491%_ '())))))
            (if (macro-range-exception? _%exn137488%_)
                (macro-range-exception-procedure _%exn137488%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn137488%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn137484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137484%_))
            (let ((_%e137486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137484%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e137486%_))
            (macro-rpc-remote-error-exception? _%exn137484%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn137480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137480%_))
            (let ((_%e137482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137480%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137482%_)
                  (macro-rpc-remote-error-exception-arguments _%e137482%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e137482%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137480%_)
                (macro-rpc-remote-error-exception-arguments _%exn137480%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn137480%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn137476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137476%_))
            (let ((_%e137478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137476%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137478%_)
                  (macro-rpc-remote-error-exception-message _%e137478%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e137478%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137476%_)
                (macro-rpc-remote-error-exception-message _%exn137476%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn137476%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn137470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137470%_))
            (let ((_%e137473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137470%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137473%_)
                  (macro-rpc-remote-error-exception-procedure _%e137473%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e137473%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137470%_)
                (macro-rpc-remote-error-exception-procedure _%exn137470%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn137470%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn137466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137466%_))
            (let ((_%e137468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137466%_ 'exception))))
              (macro-scheduler-exception? _%e137468%_))
            (macro-scheduler-exception? _%exn137466%_))))
    (define scheduler-exception-reason
      (lambda (_%exn137460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137460%_))
            (let ((_%e137463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137460%_ 'exception))))
              (if (macro-scheduler-exception? _%e137463%_)
                  (macro-scheduler-exception-reason _%e137463%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e137463%_ '())))))
            (if (macro-scheduler-exception? _%exn137460%_)
                (macro-scheduler-exception-reason _%exn137460%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn137460%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn137456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137456%_))
            (let ((_%e137458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137456%_ 'exception))))
              (macro-sfun-conversion-exception? _%e137458%_))
            (macro-sfun-conversion-exception? _%exn137456%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn137452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137452%_))
            (let ((_%e137454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137452%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137454%_)
                  (macro-sfun-conversion-exception-arguments _%e137454%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e137454%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137452%_)
                (macro-sfun-conversion-exception-arguments _%exn137452%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn137452%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn137448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137448%_))
            (let ((_%e137450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137448%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137450%_)
                  (macro-sfun-conversion-exception-code _%e137450%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e137450%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137448%_)
                (macro-sfun-conversion-exception-code _%exn137448%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn137448%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn137444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137444%_))
            (let ((_%e137446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137444%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137446%_)
                  (macro-sfun-conversion-exception-message _%e137446%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e137446%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137444%_)
                (macro-sfun-conversion-exception-message _%exn137444%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn137444%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn137438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137438%_))
            (let ((_%e137441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137438%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137441%_)
                  (macro-sfun-conversion-exception-procedure _%e137441%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e137441%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137438%_)
                (macro-sfun-conversion-exception-procedure _%exn137438%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn137438%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn137432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137432%_))
            (let ((_%e137435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137432%_ 'exception))))
              (macro-stack-overflow-exception? _%e137435%_))
            (macro-stack-overflow-exception? _%exn137432%_))))
    (define started-thread-exception?
      (lambda (_%exn137428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137428%_))
            (let ((_%e137430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137428%_ 'exception))))
              (macro-started-thread-exception? _%e137430%_))
            (macro-started-thread-exception? _%exn137428%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn137424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137424%_))
            (let ((_%e137426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137424%_ 'exception))))
              (if (macro-started-thread-exception? _%e137426%_)
                  (macro-started-thread-exception-arguments _%e137426%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e137426%_ '())))))
            (if (macro-started-thread-exception? _%exn137424%_)
                (macro-started-thread-exception-arguments _%exn137424%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn137424%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn137418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137418%_))
            (let ((_%e137421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137418%_ 'exception))))
              (if (macro-started-thread-exception? _%e137421%_)
                  (macro-started-thread-exception-procedure _%e137421%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e137421%_ '())))))
            (if (macro-started-thread-exception? _%exn137418%_)
                (macro-started-thread-exception-procedure _%exn137418%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn137418%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn137414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137414%_))
            (let ((_%e137416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137414%_ 'exception))))
              (macro-terminated-thread-exception? _%e137416%_))
            (macro-terminated-thread-exception? _%exn137414%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn137410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137410%_))
            (let ((_%e137412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137410%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e137412%_)
                  (macro-terminated-thread-exception-arguments _%e137412%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e137412%_ '())))))
            (if (macro-terminated-thread-exception? _%exn137410%_)
                (macro-terminated-thread-exception-arguments _%exn137410%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn137410%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn137404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137404%_))
            (let ((_%e137407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137404%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e137407%_)
                  (macro-terminated-thread-exception-procedure _%e137407%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e137407%_ '())))))
            (if (macro-terminated-thread-exception? _%exn137404%_)
                (macro-terminated-thread-exception-procedure _%exn137404%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn137404%_ '())))))))
    (define type-exception?
      (lambda (_%exn137400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137400%_))
            (let ((_%e137402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137400%_ 'exception))))
              (macro-type-exception? _%e137402%_))
            (macro-type-exception? _%exn137400%_))))
    (define type-exception-arg-id
      (lambda (_%exn137396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137396%_))
            (let ((_%e137398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137396%_ 'exception))))
              (if (macro-type-exception? _%e137398%_)
                  (macro-type-exception-arg-id _%e137398%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e137398%_ '())))))
            (if (macro-type-exception? _%exn137396%_)
                (macro-type-exception-arg-id _%exn137396%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn137396%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn137392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137392%_))
            (let ((_%e137394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137392%_ 'exception))))
              (if (macro-type-exception? _%e137394%_)
                  (macro-type-exception-arguments _%e137394%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e137394%_ '())))))
            (if (macro-type-exception? _%exn137392%_)
                (macro-type-exception-arguments _%exn137392%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn137392%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn137388%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137388%_))
            (let ((_%e137390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137388%_ 'exception))))
              (if (macro-type-exception? _%e137390%_)
                  (macro-type-exception-procedure _%e137390%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e137390%_ '())))))
            (if (macro-type-exception? _%exn137388%_)
                (macro-type-exception-procedure _%exn137388%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn137388%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn137382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137382%_))
            (let ((_%e137385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137382%_ 'exception))))
              (if (macro-type-exception? _%e137385%_)
                  (macro-type-exception-type-id _%e137385%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e137385%_ '())))))
            (if (macro-type-exception? _%exn137382%_)
                (macro-type-exception-type-id _%exn137382%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn137382%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn137378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137378%_))
            (let ((_%e137380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137378%_ 'exception))))
              (macro-unbound-global-exception? _%e137380%_))
            (macro-unbound-global-exception? _%exn137378%_))))
    (define unbound-global-exception-code
      (lambda (_%exn137374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137374%_))
            (let ((_%e137376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137374%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137376%_)
                  (macro-unbound-global-exception-code _%e137376%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e137376%_ '())))))
            (if (macro-unbound-global-exception? _%exn137374%_)
                (macro-unbound-global-exception-code _%exn137374%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn137374%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn137370%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137370%_))
            (let ((_%e137372%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137370%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137372%_)
                  (macro-unbound-global-exception-rte _%e137372%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e137372%_ '())))))
            (if (macro-unbound-global-exception? _%exn137370%_)
                (macro-unbound-global-exception-rte _%exn137370%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn137370%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn137364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137364%_))
            (let ((_%e137367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137364%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137367%_)
                  (macro-unbound-global-exception-variable _%e137367%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e137367%_ '())))))
            (if (macro-unbound-global-exception? _%exn137364%_)
                (macro-unbound-global-exception-variable _%exn137364%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn137364%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn137360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137360%_))
            (let ((_%e137362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137360%_ 'exception))))
              (macro-unbound-key-exception? _%e137362%_))
            (macro-unbound-key-exception? _%exn137360%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn137356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137356%_))
            (let ((_%e137358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137356%_ 'exception))))
              (if (macro-unbound-key-exception? _%e137358%_)
                  (macro-unbound-key-exception-arguments _%e137358%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e137358%_ '())))))
            (if (macro-unbound-key-exception? _%exn137356%_)
                (macro-unbound-key-exception-arguments _%exn137356%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn137356%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn137350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137350%_))
            (let ((_%e137353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137350%_ 'exception))))
              (if (macro-unbound-key-exception? _%e137353%_)
                  (macro-unbound-key-exception-procedure _%e137353%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e137353%_ '())))))
            (if (macro-unbound-key-exception? _%exn137350%_)
                (macro-unbound-key-exception-procedure _%exn137350%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn137350%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn137346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137346%_))
            (let ((_%e137348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137346%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e137348%_))
            (macro-unbound-os-environment-variable-exception? _%exn137346%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn137342%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137342%_))
            (let ((_%e137344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137342%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e137344%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e137344%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e137344%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn137342%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn137342%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn137342%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn137336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137336%_))
            (let ((_%e137339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137336%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e137339%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e137339%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e137339%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn137336%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn137336%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn137336%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn137332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137332%_))
            (let ((_%e137334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137332%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e137334%_))
            (macro-unbound-serial-number-exception? _%exn137332%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn137328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137328%_))
            (let ((_%e137330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137328%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e137330%_)
                  (macro-unbound-serial-number-exception-arguments _%e137330%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e137330%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn137328%_)
                (macro-unbound-serial-number-exception-arguments _%exn137328%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn137328%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn137322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137322%_))
            (let ((_%e137325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137322%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e137325%_)
                  (macro-unbound-serial-number-exception-procedure _%e137325%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e137325%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn137322%_)
                (macro-unbound-serial-number-exception-procedure _%exn137322%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn137322%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn137318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137318%_))
            (let ((_%e137320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137318%_ 'exception))))
              (macro-uncaught-exception? _%e137320%_))
            (macro-uncaught-exception? _%exn137318%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn137314%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137314%_))
            (let ((_%e137316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137314%_ 'exception))))
              (if (macro-uncaught-exception? _%e137316%_)
                  (macro-uncaught-exception-arguments _%e137316%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e137316%_ '())))))
            (if (macro-uncaught-exception? _%exn137314%_)
                (macro-uncaught-exception-arguments _%exn137314%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn137314%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn137310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137310%_))
            (let ((_%e137312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137310%_ 'exception))))
              (if (macro-uncaught-exception? _%e137312%_)
                  (macro-uncaught-exception-procedure _%e137312%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e137312%_ '())))))
            (if (macro-uncaught-exception? _%exn137310%_)
                (macro-uncaught-exception-procedure _%exn137310%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn137310%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn137304%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137304%_))
            (let ((_%e137307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137304%_ 'exception))))
              (if (macro-uncaught-exception? _%e137307%_)
                  (macro-uncaught-exception-reason _%e137307%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e137307%_ '())))))
            (if (macro-uncaught-exception? _%exn137304%_)
                (macro-uncaught-exception-reason _%exn137304%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn137304%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn137300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137300%_))
            (let ((_%e137302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137300%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e137302%_))
            (macro-uninitialized-thread-exception? _%exn137300%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn137296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137296%_))
            (let ((_%e137298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137296%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e137298%_)
                  (macro-uninitialized-thread-exception-arguments _%e137298%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e137298%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn137296%_)
                (macro-uninitialized-thread-exception-arguments _%exn137296%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn137296%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn137290%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137290%_))
            (let ((_%e137293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137290%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e137293%_)
                  (macro-uninitialized-thread-exception-procedure _%e137293%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e137293%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn137290%_)
                (macro-uninitialized-thread-exception-procedure _%exn137290%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn137290%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn137286%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137286%_))
            (let ((_%e137288%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137286%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e137288%_))
            (macro-unknown-keyword-argument-exception? _%exn137286%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn137282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137282%_))
            (let ((_%e137284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137282%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e137284%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e137284%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e137284%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn137282%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn137282%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn137282%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn137276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137276%_))
            (let ((_%e137279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137276%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e137279%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e137279%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e137279%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn137276%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn137276%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn137276%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn137272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137272%_))
            (let ((_%e137274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137272%_ 'exception))))
              (macro-unterminated-process-exception? _%e137274%_))
            (macro-unterminated-process-exception? _%exn137272%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn137268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137268%_))
            (let ((_%e137270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137268%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e137270%_)
                  (macro-unterminated-process-exception-arguments _%e137270%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e137270%_ '())))))
            (if (macro-unterminated-process-exception? _%exn137268%_)
                (macro-unterminated-process-exception-arguments _%exn137268%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn137268%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn137262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137262%_))
            (let ((_%e137265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137262%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e137265%_)
                  (macro-unterminated-process-exception-procedure _%e137265%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e137265%_ '())))))
            (if (macro-unterminated-process-exception? _%exn137262%_)
                (macro-unterminated-process-exception-procedure _%exn137262%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn137262%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn137258%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137258%_))
            (let ((_%e137260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137258%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e137260%_))
            (macro-wrong-number-of-arguments-exception? _%exn137258%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn137254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137254%_))
            (let ((_%e137256%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137254%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e137256%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e137256%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e137256%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn137254%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn137254%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn137254%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn137248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137248%_))
            (let ((_%e137251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137248%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e137251%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e137251%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e137251%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn137248%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn137248%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn137248%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn137244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137244%_))
            (let ((_%e137246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137244%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e137246%_))
            (macro-wrong-number-of-values-exception? _%exn137244%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn137240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137240%_))
            (let ((_%e137242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137240%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137242%_)
                  (macro-wrong-number-of-values-exception-code _%e137242%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e137242%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137240%_)
                (macro-wrong-number-of-values-exception-code _%exn137240%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn137240%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn137236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137236%_))
            (let ((_%e137238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137236%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137238%_)
                  (macro-wrong-number-of-values-exception-rte _%e137238%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e137238%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137236%_)
                (macro-wrong-number-of-values-exception-rte _%exn137236%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn137236%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn137230%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137230%_))
            (let ((_%e137233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137230%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137233%_)
                  (macro-wrong-number-of-values-exception-vals _%e137233%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e137233%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137230%_)
                (macro-wrong-number-of-values-exception-vals _%exn137230%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn137230%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn137224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137224%_))
            (let ((_%e137227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137224%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e137227%_))
            (macro-wrong-processor-c-return-exception? _%exn137224%_))))))
