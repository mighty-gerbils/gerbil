(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1770505713)
  (begin
    (define Exception::t
      (let ((__tmp138824 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp138824
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args138742%_
        (apply make-instance Exception::t _%$args138742%_)))
    (define StackTrace::t
      (let ((__tmp138825 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp138825
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args138739%_
        (apply make-instance StackTrace::t _%$args138739%_)))
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
      (let ((__tmp138826 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp138826
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args138736%_ (apply make-instance Error::t _%$args138736%_)))
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
      (let ((__tmp138827 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp138827
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args138733%_
        (apply make-instance ContractViolation::t _%$args138733%_)))
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
      (let ((__tmp138828 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp138828
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args138730%_
        (apply make-instance RuntimeException::t _%$args138730%_)))
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
      (lambda (_%exn138725%_ _%continue138726%_)
        (let ((_%exn138728%_ (wrap-runtime-exception _%exn138725%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn138728%_ _%continue138726%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn138721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn138721%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn138721%_ 'continuation))
                '#!void
                (let ((__tmp138829
                       (lambda (_%cont138723%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn138721%_
                            'continuation
                            _%cont138723%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp138829)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn138721%_))))
    (define error
      (lambda (_%message138718%_ . _%irritants138719%_)
        (raise (let ((__obj138821
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj138821
                  _%message138718%_
                  'irritants:
                  _%irritants138719%_)
                 __obj138821))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords138693%_
               _%ctx138688138694%_
               _%contract-expr138689138695%_
               _%value138690138696%_
               _%message138697%_)
        (let* ((_%ctx138699%_
                (if (eq? _%ctx138688138694%_ absent-value)
                    '#f
                    _%ctx138688138694%_))
               (_%contract-expr138701%_
                (if (eq? _%contract-expr138689138695%_ absent-value)
                    '#f
                    _%contract-expr138689138695%_))
               (_%value138703%_
                (if (eq? _%value138690138696%_ absent-value)
                    '#f
                    _%value138690138696%_)))
          (raise (let ((__obj138822
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj138822
                    _%message138697%_
                    'where:
                    _%ctx138699%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr138701%_
                                (cons 'value: (cons _%value138703%_ '())))))
                   __obj138822)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords138708%_ . _%args138709%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords138708%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138708%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138708%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords138708%_
                  'value:
                  absent-value))
               _%args138709%_)))
    (define __raise-contract-violation-error
      (lambda _%args138691138715%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args138691138715%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler138662%_ _%thunk138663%_)
        (let* ((_%handler138666%_ _%handler138662%_)
               (_%thunk138674%_ _%thunk138663%_)
               (__tmp138830
                (lambda (_%exn138683%_)
                  (let ((_%exn138685%_ (wrap-runtime-exception _%exn138683%_)))
                    (declare (not safe))
                    (_%handler138666%_ _%exn138685%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp138830 _%thunk138674%_))))
    (define with-exception-handler
      (lambda (_%handler136697%_ _%thunk136698%_)
        (if (procedure? _%handler136697%_)
            (let ((_%handler136702%_ _%handler136697%_))
              (if (procedure? _%thunk136698%_)
                  (let ((_%thunk136712%_ _%thunk136698%_))
                    (__with-exception-handler
                     _%handler136702%_
                     _%thunk136712%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk136698%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler136697%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler138604%_ _%thunk138605%_)
        (let* ((_%handler138608%_ _%handler138604%_)
               (_%thunk138616%_ _%thunk138605%_)
               (__tmp138831
                (lambda (_%cont138625%_)
                  (let* ((_%handler138629%_
                          (lambda (_%exn138627%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont138625%_
                               _%handler138608%_
                               _%exn138627%_))))
                         (_%thunk138632%_ _%thunk138616%_)
                         (_%handler138637%_ _%handler138629%_)
                         (_%thunk138652%_ _%thunk138632%_))
                    (__with-exception-handler
                     _%handler138637%_
                     _%thunk138652%_)))))
          (declare (not safe))
          (##continuation-capture __tmp138831))))
    (define with-catch
      (lambda (_%handler136842%_ _%thunk136843%_)
        (if (procedure? _%handler136842%_)
            (let ((_%handler136847%_ _%handler136842%_))
              (if (procedure? _%thunk136843%_)
                  (let ((_%thunk136857%_ _%thunk136843%_))
                    (__with-catch _%handler136847%_ _%thunk136857%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk136843%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler136842%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn138591%_)
        (if (or (heap-overflow-exception? _%exn138591%_)
                (stack-overflow-exception? _%exn138591%_))
            _%exn138591%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn138591%_))
                _%exn138591%_
                (if (macro-exception? _%exn138591%_)
                    (let ((_%rte138599%_
                           (let ((__obj138823
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj138823
                                _%exn138591%_
                                '2
                                '#f
                                '#f))
                             __obj138823)))
                      (let ((__tmp138832
                             (lambda (_%cont138601%_)
                               (let ((__tmp138833
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont138601%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte138599%_
                                  'continuation
                                  __tmp138833)))))
                        (declare (not safe))
                        (##continuation-capture __tmp138832))
                      _%rte138599%_)
                    _%exn138591%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj138586%_)
        (let ((_%$e138588%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj138586%_))))
          (if _%$e138588%_ _%$e138588%_ (error-exception? _%obj138586%_)))))
    (define error-message
      (lambda (_%obj138545%_)
        (let ((_%$e138581%_
               (let* ((_%obj138547%_ _%obj138545%_)
                      (_%slot138550%_ 'message)
                      (_%E138553%_ false)
                      (_%slot138558%_ _%slot138550%_)
                      (_%E138571%_ _%E138553%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj138547%_ _%slot138558%_ _%E138571%_))))
          (if _%$e138581%_
              _%$e138581%_
              (if (error-exception? _%obj138545%_)
                  (error-exception-message _%obj138545%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj138540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj138540%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj138540%_ 'irritants))
            (if (error-exception? _%obj138540%_)
                (error-exception-parameters _%obj138540%_)
                '#f))))
    (define error-trace
      (lambda (_%obj138538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj138538%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj138538%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e138499%_ _%port138500%_)
        (let ((_%$e138522%_
               (let* ((_%obj138502%_ _%e138499%_)
                      (_%id138505%_ 'display-exception)
                      (_%id138510%_ _%id138505%_))
                 (declare (not safe))
                 (__method-ref _%obj138502%_ _%id138510%_))))
          (if _%$e138522%_
              ((lambda (_%f138525%_) (_%f138525%_ _%e138499%_ _%port138500%_))
               _%$e138522%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e138499%_ _%port138500%_))))))
    (define display-exception__0
      (lambda (_%e138531%_)
        (let ((_%port138533%_ (current-error-port)))
          (display-exception__% _%e138531%_ _%port138533%_))))
    (define display-exception
      (lambda _g138834_
        (let ((_g138835_ (let () (declare (not safe)) (##length _g138834_))))
          (cond ((let () (declare (not safe)) (##fx= _g138835_ 1))
                 (apply display-exception__0 _g138834_))
                ((let () (declare (not safe)) (##fx= _g138835_ 2))
                 (apply display-exception__% _g138834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g138834_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self138477%_ _%message138478%_ . _%rest138479%_)
        (let* ((_%self138482%_ _%self138477%_)
               (_%message138496%_
                (if (string? _%message138478%_)
                    _%message138478%_
                    (call-with-output-string
                     '""
                     (lambda (_%g138491138493%_)
                       (display _%message138478%_ _%g138491138493%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self138482%_ 'message _%message138496%_))
          (apply class-instance-init! _%self138482%_ _%rest138479%_))))
    (define Error:::init!::specialize
      (lambda (__klass138744 __method-table138745)
        (let ((__message138746
               (let ((__slot138747
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138744 'message))))
                 (if __slot138747
                     __slot138747
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self138477%_ _%message138478%_ . _%rest138479%_)
            (let* ((_%self138482%_ _%self138477%_)
                   (_%message138496%_
                    (if (string? _%message138478%_)
                        _%message138478%_
                        (call-with-output-string
                         '""
                         (lambda (_%g138491138493%_)
                           (display _%message138478%_ _%g138491138493%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self138482%_
                 _%message138496%_
                 __message138746
                 '#f
                 '#f))
              (apply class-instance-init! _%self138482%_ _%rest138479%_))))))
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
      (lambda (_%self138182%_ _%port138183%_)
        (let ((_%self138186%_ _%self138182%_))
          (let ((_%tmp-port138196%_ (open-output-string))
                (_%display-error-newline138197%_
                 (> (output-port-column _%port138183%_) '0)))
            (fix-port-width! _%tmp-port138196%_)
            (let ((__tmp138836
                   (lambda ()
                     (if _%display-error-newline138197%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e138200%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138186%_ 'where))))
                       (if _%$e138200%_ (display _%$e138200%_) (display '"?")))
                     (let ((__tmp138837
                            (let ((__tmp138838
                                   (let ((_%obj138204%_ _%self138186%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj138204%_))
                                         (let ((_%obj138209%_ _%obj138204%_))
                                           (declare (not safe))
                                           (__object-class _%obj138209%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj138204%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp138838))))
                       (declare (not safe))
                       (display* '" [" __tmp138837 '"]: "))
                     (let ((__tmp138839
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138186%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp138839))
                     (let ((_%irritants138224%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self138186%_ 'irritants))))
                       (if (null? _%irritants138224%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj138226%_)
                                (if (u8vector? _%obj138226%_)
                                    (let ((__tmp138840
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj138226%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp138840))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj138226%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants138224%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont138227138229%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self138186%_
                                   'continuation))))
                           (if _%cont138227138229%_
                               (let ((_%cont138231%_ _%cont138227138229%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont138231%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp138836
               current-output-port
               _%tmp-port138196%_))
            (let ((__tmp138841 (get-output-string _%tmp-port138196%_)))
              (declare (not safe))
              (##write-string __tmp138841 _%port138183%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass138748 __method-table138749)
        (let ((__irritants138750
               (let ((__slot138754
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138748 'irritants))))
                 (if __slot138754
                     __slot138754
                     (error '"Unknown slot" 'irritants))))
              (__message138751
               (let ((__slot138755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138748 'message))))
                 (if __slot138755
                     __slot138755
                     (error '"Unknown slot" 'message))))
              (__continuation138752
               (let ((__slot138756
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138748 'continuation))))
                 (if __slot138756
                     __slot138756
                     (error '"Unknown slot" 'continuation))))
              (__where138753
               (let ((__slot138757
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138748 'where))))
                 (if __slot138757
                     __slot138757
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self138182%_ _%port138183%_)
            (let ((_%self138186%_ _%self138182%_))
              (let ((_%tmp-port138196%_ (open-output-string))
                    (_%display-error-newline138197%_
                     (> (output-port-column _%port138183%_) '0)))
                (fix-port-width! _%tmp-port138196%_)
                (let ((__tmp138842
                       (lambda ()
                         (if _%display-error-newline138197%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e138200%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138186%_
                                   __where138753
                                   '#f
                                   '#f))))
                           (if _%$e138200%_
                               (display _%$e138200%_)
                               (display '"?")))
                         (let ((__tmp138843
                                (let ((__tmp138844
                                       (let ((_%obj138204%_ _%self138186%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj138204%_))
                                             (let ((_%obj138209%_
                                                    _%obj138204%_))
                                               (declare (not safe))
                                               (__object-class _%obj138209%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj138204%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp138844))))
                           (declare (not safe))
                           (display* '" [" __tmp138843 '"]: "))
                         (let ((__tmp138845
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138186%_
                                   __message138751
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp138845))
                         (let ((_%irritants138224%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self138186%_
                                   __irritants138750
                                   '#f
                                   '#f))))
                           (if (null? _%irritants138224%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj138226%_)
                                    (if (u8vector? _%obj138226%_)
                                        (let ((__tmp138846
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj138226%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp138846))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj138226%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants138224%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont138227138229%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self138186%_
                                       __continuation138752
                                       '#f
                                       '#f))))
                               (if _%cont138227138229%_
                                   (let ((_%cont138231%_ _%cont138227138229%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont138231%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp138842
                   current-output-port
                   _%tmp-port138196%_))
                (let ((__tmp138847 (get-output-string _%tmp-port138196%_)))
                  (declare (not safe))
                  (##write-string __tmp138847 _%port138183%_))))))))
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
      (lambda (_%self138039%_ _%port138040%_)
        (let* ((_%self138043%_ _%self138039%_)
               (_%tmp-port138053%_ (open-output-string)))
          (fix-port-width! _%tmp-port138053%_)
          (let ((__tmp138848
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self138043%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp138848 _%tmp-port138053%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont138054138056%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self138043%_ 'continuation))))
                (if _%cont138054138056%_
                    (let ((_%cont138058%_ _%cont138054138056%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port138053%_)
                      (newline _%tmp-port138053%_)
                      (display-continuation-backtrace
                       _%cont138058%_
                       _%tmp-port138053%_))
                    '#f))
              '#!void)
          (let ((__tmp138849 (get-output-string _%tmp-port138053%_)))
            (declare (not safe))
            (##write-string __tmp138849 _%port138040%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass138758 __method-table138759)
        (let ((__continuation138760
               (let ((__slot138762
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138758 'continuation))))
                 (if __slot138762
                     __slot138762
                     (error '"Unknown slot" 'continuation))))
              (__exception138761
               (let ((__slot138763
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass138758 'exception))))
                 (if __slot138763
                     __slot138763
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self138039%_ _%port138040%_)
            (let* ((_%self138043%_ _%self138039%_)
                   (_%tmp-port138053%_ (open-output-string)))
              (fix-port-width! _%tmp-port138053%_)
              (let ((__tmp138850
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self138043%_
                        __exception138761
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp138850 _%tmp-port138053%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont138054138056%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self138043%_
                            __continuation138760
                            '#f
                            '#f))))
                    (if _%cont138054138056%_
                        (let ((_%cont138058%_ _%cont138054138056%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port138053%_)
                          (newline _%tmp-port138053%_)
                          (display-continuation-backtrace
                           _%cont138058%_
                           _%tmp-port138053%_))
                        '#f))
                  '#!void)
              (let ((__tmp138851 (get-output-string _%tmp-port138053%_)))
                (declare (not safe))
                (##write-string __tmp138851 _%port138040%_)))))))
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
      (lambda (_%port137911%_)
        (if (macro-character-port? _%port137911%_)
            (let ((_%old-width137913%_
                   (macro-character-port-output-width _%port137911%_)))
              (macro-character-port-output-width-set!
               _%port137911%_
               (lambda (_%port137915%_) '256))
              _%old-width137913%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port137908%_ _%old-width137909%_)
        (if (macro-character-port? _%port137908%_)
            (macro-character-port-output-width-set!
             _%port137908%_
             _%old-width137909%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e137906%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e137906%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn137900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137900%_))
            (let ((_%e137903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137900%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e137903%_))
            (macro-abandoned-mutex-exception? _%exn137900%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn137896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137896%_))
            (let ((_%e137898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137896%_ 'exception))))
              (macro-cfun-conversion-exception? _%e137898%_))
            (macro-cfun-conversion-exception? _%exn137896%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn137892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137892%_))
            (let ((_%e137894%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137892%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137894%_)
                  (macro-cfun-conversion-exception-arguments _%e137894%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e137894%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137892%_)
                (macro-cfun-conversion-exception-arguments _%exn137892%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn137892%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn137888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137888%_))
            (let ((_%e137890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137888%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137890%_)
                  (macro-cfun-conversion-exception-code _%e137890%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e137890%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137888%_)
                (macro-cfun-conversion-exception-code _%exn137888%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn137888%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn137884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137884%_))
            (let ((_%e137886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137884%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137886%_)
                  (macro-cfun-conversion-exception-message _%e137886%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e137886%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137884%_)
                (macro-cfun-conversion-exception-message _%exn137884%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn137884%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn137878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137878%_))
            (let ((_%e137881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137878%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e137881%_)
                  (macro-cfun-conversion-exception-procedure _%e137881%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e137881%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn137878%_)
                (macro-cfun-conversion-exception-procedure _%exn137878%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn137878%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn137874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137874%_))
            (let ((_%e137876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137874%_ 'exception))))
              (macro-datum-parsing-exception? _%e137876%_))
            (macro-datum-parsing-exception? _%exn137874%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn137870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137870%_))
            (let ((_%e137872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137870%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137872%_)
                  (macro-datum-parsing-exception-kind _%e137872%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e137872%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137870%_)
                (macro-datum-parsing-exception-kind _%exn137870%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn137870%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn137866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137866%_))
            (let ((_%e137868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137866%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137868%_)
                  (macro-datum-parsing-exception-parameters _%e137868%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e137868%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137866%_)
                (macro-datum-parsing-exception-parameters _%exn137866%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn137866%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn137860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137860%_))
            (let ((_%e137863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137860%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e137863%_)
                  (macro-datum-parsing-exception-readenv _%e137863%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e137863%_ '())))))
            (if (macro-datum-parsing-exception? _%exn137860%_)
                (macro-datum-parsing-exception-readenv _%exn137860%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn137860%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn137854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137854%_))
            (let ((_%e137857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137854%_ 'exception))))
              (macro-deadlock-exception? _%e137857%_))
            (macro-deadlock-exception? _%exn137854%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn137850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137850%_))
            (let ((_%e137852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137850%_ 'exception))))
              (macro-divide-by-zero-exception? _%e137852%_))
            (macro-divide-by-zero-exception? _%exn137850%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn137846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137846%_))
            (let ((_%e137848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137846%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e137848%_)
                  (macro-divide-by-zero-exception-arguments _%e137848%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e137848%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn137846%_)
                (macro-divide-by-zero-exception-arguments _%exn137846%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn137846%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn137840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137840%_))
            (let ((_%e137843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137840%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e137843%_)
                  (macro-divide-by-zero-exception-procedure _%e137843%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e137843%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn137840%_)
                (macro-divide-by-zero-exception-procedure _%exn137840%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn137840%_ '())))))))
    (define error-exception?
      (lambda (_%exn137836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137836%_))
            (let ((_%e137838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137836%_ 'exception))))
              (macro-error-exception? _%e137838%_))
            (macro-error-exception? _%exn137836%_))))
    (define error-exception-message
      (lambda (_%exn137832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137832%_))
            (let ((_%e137834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137832%_ 'exception))))
              (if (macro-error-exception? _%e137834%_)
                  (macro-error-exception-message _%e137834%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e137834%_ '())))))
            (if (macro-error-exception? _%exn137832%_)
                (macro-error-exception-message _%exn137832%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn137832%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn137826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137826%_))
            (let ((_%e137829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137826%_ 'exception))))
              (if (macro-error-exception? _%e137829%_)
                  (macro-error-exception-parameters _%e137829%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e137829%_ '())))))
            (if (macro-error-exception? _%exn137826%_)
                (macro-error-exception-parameters _%exn137826%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn137826%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn137822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137822%_))
            (let ((_%e137824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137822%_ 'exception))))
              (macro-expression-parsing-exception? _%e137824%_))
            (macro-expression-parsing-exception? _%exn137822%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn137818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137818%_))
            (let ((_%e137820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137818%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137820%_)
                  (macro-expression-parsing-exception-kind _%e137820%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e137820%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137818%_)
                (macro-expression-parsing-exception-kind _%exn137818%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn137818%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn137814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137814%_))
            (let ((_%e137816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137814%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137816%_)
                  (macro-expression-parsing-exception-parameters _%e137816%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e137816%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137814%_)
                (macro-expression-parsing-exception-parameters _%exn137814%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn137814%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn137808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137808%_))
            (let ((_%e137811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137808%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e137811%_)
                  (macro-expression-parsing-exception-source _%e137811%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e137811%_ '())))))
            (if (macro-expression-parsing-exception? _%exn137808%_)
                (macro-expression-parsing-exception-source _%exn137808%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn137808%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn137804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137804%_))
            (let ((_%e137806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137804%_ 'exception))))
              (macro-file-exists-exception? _%e137806%_))
            (macro-file-exists-exception? _%exn137804%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn137800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137800%_))
            (let ((_%e137802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137800%_ 'exception))))
              (if (macro-file-exists-exception? _%e137802%_)
                  (macro-file-exists-exception-arguments _%e137802%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e137802%_ '())))))
            (if (macro-file-exists-exception? _%exn137800%_)
                (macro-file-exists-exception-arguments _%exn137800%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn137800%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn137794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137794%_))
            (let ((_%e137797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137794%_ 'exception))))
              (if (macro-file-exists-exception? _%e137797%_)
                  (macro-file-exists-exception-procedure _%e137797%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e137797%_ '())))))
            (if (macro-file-exists-exception? _%exn137794%_)
                (macro-file-exists-exception-procedure _%exn137794%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn137794%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn137790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137790%_))
            (let ((_%e137792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137790%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e137792%_))
            (macro-fixnum-overflow-exception? _%exn137790%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn137786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137786%_))
            (let ((_%e137788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137786%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e137788%_)
                  (macro-fixnum-overflow-exception-arguments _%e137788%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e137788%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn137786%_)
                (macro-fixnum-overflow-exception-arguments _%exn137786%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn137786%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn137780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137780%_))
            (let ((_%e137783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137780%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e137783%_)
                  (macro-fixnum-overflow-exception-procedure _%e137783%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e137783%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn137780%_)
                (macro-fixnum-overflow-exception-procedure _%exn137780%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn137780%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn137774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137774%_))
            (let ((_%e137777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137774%_ 'exception))))
              (macro-heap-overflow-exception? _%e137777%_))
            (macro-heap-overflow-exception? _%exn137774%_))))
    (define inactive-thread-exception?
      (lambda (_%exn137770%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137770%_))
            (let ((_%e137772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137770%_ 'exception))))
              (macro-inactive-thread-exception? _%e137772%_))
            (macro-inactive-thread-exception? _%exn137770%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn137766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137766%_))
            (let ((_%e137768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137766%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e137768%_)
                  (macro-inactive-thread-exception-arguments _%e137768%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e137768%_ '())))))
            (if (macro-inactive-thread-exception? _%exn137766%_)
                (macro-inactive-thread-exception-arguments _%exn137766%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn137766%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn137760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137760%_))
            (let ((_%e137763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137760%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e137763%_)
                  (macro-inactive-thread-exception-procedure _%e137763%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e137763%_ '())))))
            (if (macro-inactive-thread-exception? _%exn137760%_)
                (macro-inactive-thread-exception-procedure _%exn137760%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn137760%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn137756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137756%_))
            (let ((_%e137758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137756%_ 'exception))))
              (macro-initialized-thread-exception? _%e137758%_))
            (macro-initialized-thread-exception? _%exn137756%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn137752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137752%_))
            (let ((_%e137754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137752%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e137754%_)
                  (macro-initialized-thread-exception-arguments _%e137754%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e137754%_ '())))))
            (if (macro-initialized-thread-exception? _%exn137752%_)
                (macro-initialized-thread-exception-arguments _%exn137752%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn137752%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn137746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137746%_))
            (let ((_%e137749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137746%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e137749%_)
                  (macro-initialized-thread-exception-procedure _%e137749%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e137749%_ '())))))
            (if (macro-initialized-thread-exception? _%exn137746%_)
                (macro-initialized-thread-exception-procedure _%exn137746%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn137746%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn137742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137742%_))
            (let ((_%e137744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137742%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e137744%_))
            (macro-invalid-hash-number-exception? _%exn137742%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn137738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137738%_))
            (let ((_%e137740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137738%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e137740%_)
                  (macro-invalid-hash-number-exception-arguments _%e137740%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e137740%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn137738%_)
                (macro-invalid-hash-number-exception-arguments _%exn137738%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn137738%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn137732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137732%_))
            (let ((_%e137735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137732%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e137735%_)
                  (macro-invalid-hash-number-exception-procedure _%e137735%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e137735%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn137732%_)
                (macro-invalid-hash-number-exception-procedure _%exn137732%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn137732%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn137728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137728%_))
            (let ((_%e137730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137728%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e137730%_))
            (macro-invalid-utf8-encoding-exception? _%exn137728%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn137724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137724%_))
            (let ((_%e137726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137724%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e137726%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e137726%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e137726%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn137724%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn137724%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn137724%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn137718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137718%_))
            (let ((_%e137721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137718%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e137721%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e137721%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e137721%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn137718%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn137718%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn137718%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn137714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137714%_))
            (let ((_%e137716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137714%_ 'exception))))
              (macro-join-timeout-exception? _%e137716%_))
            (macro-join-timeout-exception? _%exn137714%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn137710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137710%_))
            (let ((_%e137712%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137710%_ 'exception))))
              (if (macro-join-timeout-exception? _%e137712%_)
                  (macro-join-timeout-exception-arguments _%e137712%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e137712%_ '())))))
            (if (macro-join-timeout-exception? _%exn137710%_)
                (macro-join-timeout-exception-arguments _%exn137710%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn137710%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn137704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137704%_))
            (let ((_%e137707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137704%_ 'exception))))
              (if (macro-join-timeout-exception? _%e137707%_)
                  (macro-join-timeout-exception-procedure _%e137707%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e137707%_ '())))))
            (if (macro-join-timeout-exception? _%exn137704%_)
                (macro-join-timeout-exception-procedure _%exn137704%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn137704%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn137700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137700%_))
            (let ((_%e137702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137700%_ 'exception))))
              (macro-keyword-expected-exception? _%e137702%_))
            (macro-keyword-expected-exception? _%exn137700%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn137696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137696%_))
            (let ((_%e137698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137696%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e137698%_)
                  (macro-keyword-expected-exception-arguments _%e137698%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e137698%_ '())))))
            (if (macro-keyword-expected-exception? _%exn137696%_)
                (macro-keyword-expected-exception-arguments _%exn137696%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn137696%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn137690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137690%_))
            (let ((_%e137693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137690%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e137693%_)
                  (macro-keyword-expected-exception-procedure _%e137693%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e137693%_ '())))))
            (if (macro-keyword-expected-exception? _%exn137690%_)
                (macro-keyword-expected-exception-procedure _%exn137690%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn137690%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn137686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137686%_))
            (let ((_%e137688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137686%_ 'exception))))
              (macro-length-mismatch-exception? _%e137688%_))
            (macro-length-mismatch-exception? _%exn137686%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn137682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137682%_))
            (let ((_%e137684%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137682%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137684%_)
                  (macro-length-mismatch-exception-arg-id _%e137684%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e137684%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137682%_)
                (macro-length-mismatch-exception-arg-id _%exn137682%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn137682%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn137678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137678%_))
            (let ((_%e137680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137678%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137680%_)
                  (macro-length-mismatch-exception-arguments _%e137680%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e137680%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137678%_)
                (macro-length-mismatch-exception-arguments _%exn137678%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn137678%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn137672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137672%_))
            (let ((_%e137675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137672%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e137675%_)
                  (macro-length-mismatch-exception-procedure _%e137675%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e137675%_ '())))))
            (if (macro-length-mismatch-exception? _%exn137672%_)
                (macro-length-mismatch-exception-procedure _%exn137672%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn137672%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn137668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137668%_))
            (let ((_%e137670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137668%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e137670%_))
            (macro-mailbox-receive-timeout-exception? _%exn137668%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn137664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137664%_))
            (let ((_%e137666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137664%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e137666%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e137666%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e137666%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn137664%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn137664%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn137664%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn137658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137658%_))
            (let ((_%e137661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137658%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e137661%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e137661%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e137661%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn137658%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn137658%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn137658%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn137654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137654%_))
            (let ((_%e137656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137654%_ 'exception))))
              (macro-module-not-found-exception? _%e137656%_))
            (macro-module-not-found-exception? _%exn137654%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn137650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137650%_))
            (let ((_%e137652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137650%_ 'exception))))
              (if (macro-module-not-found-exception? _%e137652%_)
                  (macro-module-not-found-exception-arguments _%e137652%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e137652%_ '())))))
            (if (macro-module-not-found-exception? _%exn137650%_)
                (macro-module-not-found-exception-arguments _%exn137650%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn137650%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn137644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137644%_))
            (let ((_%e137647%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137644%_ 'exception))))
              (if (macro-module-not-found-exception? _%e137647%_)
                  (macro-module-not-found-exception-procedure _%e137647%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e137647%_ '())))))
            (if (macro-module-not-found-exception? _%exn137644%_)
                (macro-module-not-found-exception-procedure _%exn137644%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn137644%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn137638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137638%_))
            (let ((_%e137641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137638%_ 'exception))))
              (macro-multiple-c-return-exception? _%e137641%_))
            (macro-multiple-c-return-exception? _%exn137638%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn137634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137634%_))
            (let ((_%e137636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137634%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e137636%_))
            (macro-no-such-file-or-directory-exception? _%exn137634%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn137630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137630%_))
            (let ((_%e137632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137630%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e137632%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e137632%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e137632%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn137630%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn137630%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn137630%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn137624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137624%_))
            (let ((_%e137627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137624%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e137627%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e137627%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e137627%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn137624%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn137624%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn137624%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn137620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137620%_))
            (let ((_%e137622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137620%_ 'exception))))
              (macro-noncontinuable-exception? _%e137622%_))
            (macro-noncontinuable-exception? _%exn137620%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn137614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137614%_))
            (let ((_%e137617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137614%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e137617%_)
                  (macro-noncontinuable-exception-reason _%e137617%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e137617%_ '())))))
            (if (macro-noncontinuable-exception? _%exn137614%_)
                (macro-noncontinuable-exception-reason _%exn137614%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn137614%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn137610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137610%_))
            (let ((_%e137612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137610%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e137612%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn137610%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn137606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137606%_))
            (let ((_%e137608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137606%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e137608%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e137608%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e137608%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn137606%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn137606%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn137606%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn137600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137600%_))
            (let ((_%e137603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137600%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e137603%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e137603%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e137603%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn137600%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn137600%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn137600%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn137596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137596%_))
            (let ((_%e137598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137596%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e137598%_))
            (macro-nonprocedure-operator-exception? _%exn137596%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn137592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137592%_))
            (let ((_%e137594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137592%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137594%_)
                  (macro-nonprocedure-operator-exception-arguments _%e137594%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e137594%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137592%_)
                (macro-nonprocedure-operator-exception-arguments _%exn137592%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn137592%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn137588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137588%_))
            (let ((_%e137590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137588%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137590%_)
                  (macro-nonprocedure-operator-exception-code _%e137590%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e137590%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137588%_)
                (macro-nonprocedure-operator-exception-code _%exn137588%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn137588%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn137584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137584%_))
            (let ((_%e137586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137584%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137586%_)
                  (macro-nonprocedure-operator-exception-operator _%e137586%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e137586%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137584%_)
                (macro-nonprocedure-operator-exception-operator _%exn137584%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn137584%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn137578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137578%_))
            (let ((_%e137581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137578%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e137581%_)
                  (macro-nonprocedure-operator-exception-rte _%e137581%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e137581%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn137578%_)
                (macro-nonprocedure-operator-exception-rte _%exn137578%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn137578%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn137574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137574%_))
            (let ((_%e137576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137574%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e137576%_))
            (macro-not-in-compilation-context-exception? _%exn137574%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn137570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137570%_))
            (let ((_%e137572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137570%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e137572%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e137572%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e137572%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn137570%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn137570%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn137570%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn137564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137564%_))
            (let ((_%e137567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137564%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e137567%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e137567%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e137567%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn137564%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn137564%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn137564%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn137560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137560%_))
            (let ((_%e137562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137560%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e137562%_))
            (macro-number-of-arguments-limit-exception? _%exn137560%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn137556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137556%_))
            (let ((_%e137558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137556%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e137558%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e137558%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e137558%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn137556%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn137556%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn137556%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn137550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137550%_))
            (let ((_%e137553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137550%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e137553%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e137553%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e137553%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn137550%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn137550%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn137550%_ '())))))))
    (define os-exception?
      (lambda (_%exn137546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137546%_))
            (let ((_%e137548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137546%_ 'exception))))
              (macro-os-exception? _%e137548%_))
            (macro-os-exception? _%exn137546%_))))
    (define os-exception-arguments
      (lambda (_%exn137542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137542%_))
            (let ((_%e137544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137542%_ 'exception))))
              (if (macro-os-exception? _%e137544%_)
                  (macro-os-exception-arguments _%e137544%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e137544%_ '())))))
            (if (macro-os-exception? _%exn137542%_)
                (macro-os-exception-arguments _%exn137542%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn137542%_ '())))))))
    (define os-exception-code
      (lambda (_%exn137538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137538%_))
            (let ((_%e137540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137538%_ 'exception))))
              (if (macro-os-exception? _%e137540%_)
                  (macro-os-exception-code _%e137540%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e137540%_ '())))))
            (if (macro-os-exception? _%exn137538%_)
                (macro-os-exception-code _%exn137538%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn137538%_ '())))))))
    (define os-exception-message
      (lambda (_%exn137534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137534%_))
            (let ((_%e137536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137534%_ 'exception))))
              (if (macro-os-exception? _%e137536%_)
                  (macro-os-exception-message _%e137536%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e137536%_ '())))))
            (if (macro-os-exception? _%exn137534%_)
                (macro-os-exception-message _%exn137534%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn137534%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn137528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137528%_))
            (let ((_%e137531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137528%_ 'exception))))
              (if (macro-os-exception? _%e137531%_)
                  (macro-os-exception-procedure _%e137531%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e137531%_ '())))))
            (if (macro-os-exception? _%exn137528%_)
                (macro-os-exception-procedure _%exn137528%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn137528%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn137524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137524%_))
            (let ((_%e137526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137524%_ 'exception))))
              (macro-permission-denied-exception? _%e137526%_))
            (macro-permission-denied-exception? _%exn137524%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn137520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137520%_))
            (let ((_%e137522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137520%_ 'exception))))
              (if (macro-permission-denied-exception? _%e137522%_)
                  (macro-permission-denied-exception-arguments _%e137522%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e137522%_ '())))))
            (if (macro-permission-denied-exception? _%exn137520%_)
                (macro-permission-denied-exception-arguments _%exn137520%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn137520%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn137514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137514%_))
            (let ((_%e137517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137514%_ 'exception))))
              (if (macro-permission-denied-exception? _%e137517%_)
                  (macro-permission-denied-exception-procedure _%e137517%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e137517%_ '())))))
            (if (macro-permission-denied-exception? _%exn137514%_)
                (macro-permission-denied-exception-procedure _%exn137514%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn137514%_ '())))))))
    (define range-exception?
      (lambda (_%exn137510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137510%_))
            (let ((_%e137512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137510%_ 'exception))))
              (macro-range-exception? _%e137512%_))
            (macro-range-exception? _%exn137510%_))))
    (define range-exception-arg-id
      (lambda (_%exn137506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137506%_))
            (let ((_%e137508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137506%_ 'exception))))
              (if (macro-range-exception? _%e137508%_)
                  (macro-range-exception-arg-id _%e137508%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e137508%_ '())))))
            (if (macro-range-exception? _%exn137506%_)
                (macro-range-exception-arg-id _%exn137506%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn137506%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn137502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137502%_))
            (let ((_%e137504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137502%_ 'exception))))
              (if (macro-range-exception? _%e137504%_)
                  (macro-range-exception-arguments _%e137504%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e137504%_ '())))))
            (if (macro-range-exception? _%exn137502%_)
                (macro-range-exception-arguments _%exn137502%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn137502%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn137496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137496%_))
            (let ((_%e137499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137496%_ 'exception))))
              (if (macro-range-exception? _%e137499%_)
                  (macro-range-exception-procedure _%e137499%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e137499%_ '())))))
            (if (macro-range-exception? _%exn137496%_)
                (macro-range-exception-procedure _%exn137496%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn137496%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn137492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137492%_))
            (let ((_%e137494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137492%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e137494%_))
            (macro-rpc-remote-error-exception? _%exn137492%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn137488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137488%_))
            (let ((_%e137490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137488%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137490%_)
                  (macro-rpc-remote-error-exception-arguments _%e137490%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e137490%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137488%_)
                (macro-rpc-remote-error-exception-arguments _%exn137488%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn137488%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn137484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137484%_))
            (let ((_%e137486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137484%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137486%_)
                  (macro-rpc-remote-error-exception-message _%e137486%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e137486%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137484%_)
                (macro-rpc-remote-error-exception-message _%exn137484%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn137484%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn137478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137478%_))
            (let ((_%e137481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137478%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e137481%_)
                  (macro-rpc-remote-error-exception-procedure _%e137481%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e137481%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn137478%_)
                (macro-rpc-remote-error-exception-procedure _%exn137478%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn137478%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn137474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137474%_))
            (let ((_%e137476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137474%_ 'exception))))
              (macro-scheduler-exception? _%e137476%_))
            (macro-scheduler-exception? _%exn137474%_))))
    (define scheduler-exception-reason
      (lambda (_%exn137468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137468%_))
            (let ((_%e137471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137468%_ 'exception))))
              (if (macro-scheduler-exception? _%e137471%_)
                  (macro-scheduler-exception-reason _%e137471%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e137471%_ '())))))
            (if (macro-scheduler-exception? _%exn137468%_)
                (macro-scheduler-exception-reason _%exn137468%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn137468%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn137464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137464%_))
            (let ((_%e137466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137464%_ 'exception))))
              (macro-sfun-conversion-exception? _%e137466%_))
            (macro-sfun-conversion-exception? _%exn137464%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn137460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137460%_))
            (let ((_%e137462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137460%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137462%_)
                  (macro-sfun-conversion-exception-arguments _%e137462%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e137462%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137460%_)
                (macro-sfun-conversion-exception-arguments _%exn137460%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn137460%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn137456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137456%_))
            (let ((_%e137458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137456%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137458%_)
                  (macro-sfun-conversion-exception-code _%e137458%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e137458%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137456%_)
                (macro-sfun-conversion-exception-code _%exn137456%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn137456%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn137452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137452%_))
            (let ((_%e137454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137452%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137454%_)
                  (macro-sfun-conversion-exception-message _%e137454%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e137454%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137452%_)
                (macro-sfun-conversion-exception-message _%exn137452%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn137452%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn137446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137446%_))
            (let ((_%e137449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137446%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e137449%_)
                  (macro-sfun-conversion-exception-procedure _%e137449%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e137449%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn137446%_)
                (macro-sfun-conversion-exception-procedure _%exn137446%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn137446%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn137440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137440%_))
            (let ((_%e137443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137440%_ 'exception))))
              (macro-stack-overflow-exception? _%e137443%_))
            (macro-stack-overflow-exception? _%exn137440%_))))
    (define started-thread-exception?
      (lambda (_%exn137436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137436%_))
            (let ((_%e137438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137436%_ 'exception))))
              (macro-started-thread-exception? _%e137438%_))
            (macro-started-thread-exception? _%exn137436%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn137432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137432%_))
            (let ((_%e137434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137432%_ 'exception))))
              (if (macro-started-thread-exception? _%e137434%_)
                  (macro-started-thread-exception-arguments _%e137434%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e137434%_ '())))))
            (if (macro-started-thread-exception? _%exn137432%_)
                (macro-started-thread-exception-arguments _%exn137432%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn137432%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn137426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137426%_))
            (let ((_%e137429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137426%_ 'exception))))
              (if (macro-started-thread-exception? _%e137429%_)
                  (macro-started-thread-exception-procedure _%e137429%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e137429%_ '())))))
            (if (macro-started-thread-exception? _%exn137426%_)
                (macro-started-thread-exception-procedure _%exn137426%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn137426%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn137422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137422%_))
            (let ((_%e137424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137422%_ 'exception))))
              (macro-terminated-thread-exception? _%e137424%_))
            (macro-terminated-thread-exception? _%exn137422%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn137418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137418%_))
            (let ((_%e137420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137418%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e137420%_)
                  (macro-terminated-thread-exception-arguments _%e137420%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e137420%_ '())))))
            (if (macro-terminated-thread-exception? _%exn137418%_)
                (macro-terminated-thread-exception-arguments _%exn137418%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn137418%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn137412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137412%_))
            (let ((_%e137415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137412%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e137415%_)
                  (macro-terminated-thread-exception-procedure _%e137415%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e137415%_ '())))))
            (if (macro-terminated-thread-exception? _%exn137412%_)
                (macro-terminated-thread-exception-procedure _%exn137412%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn137412%_ '())))))))
    (define type-exception?
      (lambda (_%exn137408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137408%_))
            (let ((_%e137410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137408%_ 'exception))))
              (macro-type-exception? _%e137410%_))
            (macro-type-exception? _%exn137408%_))))
    (define type-exception-arg-id
      (lambda (_%exn137404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137404%_))
            (let ((_%e137406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137404%_ 'exception))))
              (if (macro-type-exception? _%e137406%_)
                  (macro-type-exception-arg-id _%e137406%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e137406%_ '())))))
            (if (macro-type-exception? _%exn137404%_)
                (macro-type-exception-arg-id _%exn137404%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn137404%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn137400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137400%_))
            (let ((_%e137402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137400%_ 'exception))))
              (if (macro-type-exception? _%e137402%_)
                  (macro-type-exception-arguments _%e137402%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e137402%_ '())))))
            (if (macro-type-exception? _%exn137400%_)
                (macro-type-exception-arguments _%exn137400%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn137400%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn137396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137396%_))
            (let ((_%e137398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137396%_ 'exception))))
              (if (macro-type-exception? _%e137398%_)
                  (macro-type-exception-procedure _%e137398%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e137398%_ '())))))
            (if (macro-type-exception? _%exn137396%_)
                (macro-type-exception-procedure _%exn137396%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn137396%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn137390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137390%_))
            (let ((_%e137393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137390%_ 'exception))))
              (if (macro-type-exception? _%e137393%_)
                  (macro-type-exception-type-id _%e137393%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e137393%_ '())))))
            (if (macro-type-exception? _%exn137390%_)
                (macro-type-exception-type-id _%exn137390%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn137390%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn137386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137386%_))
            (let ((_%e137388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137386%_ 'exception))))
              (macro-unbound-global-exception? _%e137388%_))
            (macro-unbound-global-exception? _%exn137386%_))))
    (define unbound-global-exception-code
      (lambda (_%exn137382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137382%_))
            (let ((_%e137384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137382%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137384%_)
                  (macro-unbound-global-exception-code _%e137384%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e137384%_ '())))))
            (if (macro-unbound-global-exception? _%exn137382%_)
                (macro-unbound-global-exception-code _%exn137382%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn137382%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn137378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137378%_))
            (let ((_%e137380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137378%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137380%_)
                  (macro-unbound-global-exception-rte _%e137380%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e137380%_ '())))))
            (if (macro-unbound-global-exception? _%exn137378%_)
                (macro-unbound-global-exception-rte _%exn137378%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn137378%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn137372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137372%_))
            (let ((_%e137375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137372%_ 'exception))))
              (if (macro-unbound-global-exception? _%e137375%_)
                  (macro-unbound-global-exception-variable _%e137375%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e137375%_ '())))))
            (if (macro-unbound-global-exception? _%exn137372%_)
                (macro-unbound-global-exception-variable _%exn137372%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn137372%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn137368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137368%_))
            (let ((_%e137370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137368%_ 'exception))))
              (macro-unbound-key-exception? _%e137370%_))
            (macro-unbound-key-exception? _%exn137368%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn137364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137364%_))
            (let ((_%e137366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137364%_ 'exception))))
              (if (macro-unbound-key-exception? _%e137366%_)
                  (macro-unbound-key-exception-arguments _%e137366%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e137366%_ '())))))
            (if (macro-unbound-key-exception? _%exn137364%_)
                (macro-unbound-key-exception-arguments _%exn137364%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn137364%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn137358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137358%_))
            (let ((_%e137361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137358%_ 'exception))))
              (if (macro-unbound-key-exception? _%e137361%_)
                  (macro-unbound-key-exception-procedure _%e137361%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e137361%_ '())))))
            (if (macro-unbound-key-exception? _%exn137358%_)
                (macro-unbound-key-exception-procedure _%exn137358%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn137358%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn137354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137354%_))
            (let ((_%e137356%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137354%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e137356%_))
            (macro-unbound-os-environment-variable-exception? _%exn137354%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn137350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137350%_))
            (let ((_%e137352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137350%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e137352%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e137352%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e137352%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn137350%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn137350%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn137350%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn137344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137344%_))
            (let ((_%e137347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137344%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e137347%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e137347%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e137347%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn137344%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn137344%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn137344%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn137340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137340%_))
            (let ((_%e137342%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137340%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e137342%_))
            (macro-unbound-serial-number-exception? _%exn137340%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn137336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137336%_))
            (let ((_%e137338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137336%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e137338%_)
                  (macro-unbound-serial-number-exception-arguments _%e137338%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e137338%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn137336%_)
                (macro-unbound-serial-number-exception-arguments _%exn137336%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn137336%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn137330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137330%_))
            (let ((_%e137333%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137330%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e137333%_)
                  (macro-unbound-serial-number-exception-procedure _%e137333%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e137333%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn137330%_)
                (macro-unbound-serial-number-exception-procedure _%exn137330%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn137330%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn137326%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137326%_))
            (let ((_%e137328%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137326%_ 'exception))))
              (macro-uncaught-exception? _%e137328%_))
            (macro-uncaught-exception? _%exn137326%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn137322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137322%_))
            (let ((_%e137324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137322%_ 'exception))))
              (if (macro-uncaught-exception? _%e137324%_)
                  (macro-uncaught-exception-arguments _%e137324%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e137324%_ '())))))
            (if (macro-uncaught-exception? _%exn137322%_)
                (macro-uncaught-exception-arguments _%exn137322%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn137322%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn137318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137318%_))
            (let ((_%e137320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137318%_ 'exception))))
              (if (macro-uncaught-exception? _%e137320%_)
                  (macro-uncaught-exception-procedure _%e137320%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e137320%_ '())))))
            (if (macro-uncaught-exception? _%exn137318%_)
                (macro-uncaught-exception-procedure _%exn137318%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn137318%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn137312%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137312%_))
            (let ((_%e137315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137312%_ 'exception))))
              (if (macro-uncaught-exception? _%e137315%_)
                  (macro-uncaught-exception-reason _%e137315%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e137315%_ '())))))
            (if (macro-uncaught-exception? _%exn137312%_)
                (macro-uncaught-exception-reason _%exn137312%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn137312%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn137308%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137308%_))
            (let ((_%e137310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137308%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e137310%_))
            (macro-uninitialized-thread-exception? _%exn137308%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn137304%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137304%_))
            (let ((_%e137306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137304%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e137306%_)
                  (macro-uninitialized-thread-exception-arguments _%e137306%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e137306%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn137304%_)
                (macro-uninitialized-thread-exception-arguments _%exn137304%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn137304%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn137298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137298%_))
            (let ((_%e137301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137298%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e137301%_)
                  (macro-uninitialized-thread-exception-procedure _%e137301%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e137301%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn137298%_)
                (macro-uninitialized-thread-exception-procedure _%exn137298%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn137298%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn137294%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137294%_))
            (let ((_%e137296%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137294%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e137296%_))
            (macro-unknown-keyword-argument-exception? _%exn137294%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn137290%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137290%_))
            (let ((_%e137292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137290%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e137292%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e137292%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e137292%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn137290%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn137290%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn137290%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn137284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137284%_))
            (let ((_%e137287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137284%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e137287%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e137287%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e137287%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn137284%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn137284%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn137284%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn137280%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137280%_))
            (let ((_%e137282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137280%_ 'exception))))
              (macro-unterminated-process-exception? _%e137282%_))
            (macro-unterminated-process-exception? _%exn137280%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn137276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137276%_))
            (let ((_%e137278%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137276%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e137278%_)
                  (macro-unterminated-process-exception-arguments _%e137278%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e137278%_ '())))))
            (if (macro-unterminated-process-exception? _%exn137276%_)
                (macro-unterminated-process-exception-arguments _%exn137276%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn137276%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn137270%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137270%_))
            (let ((_%e137273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137270%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e137273%_)
                  (macro-unterminated-process-exception-procedure _%e137273%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e137273%_ '())))))
            (if (macro-unterminated-process-exception? _%exn137270%_)
                (macro-unterminated-process-exception-procedure _%exn137270%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn137270%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn137266%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137266%_))
            (let ((_%e137268%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137266%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e137268%_))
            (macro-wrong-number-of-arguments-exception? _%exn137266%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn137262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137262%_))
            (let ((_%e137264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137262%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e137264%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e137264%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e137264%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn137262%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn137262%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn137262%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn137256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137256%_))
            (let ((_%e137259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137256%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e137259%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e137259%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e137259%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn137256%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn137256%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn137256%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn137252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137252%_))
            (let ((_%e137254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137252%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e137254%_))
            (macro-wrong-number-of-values-exception? _%exn137252%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn137248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137248%_))
            (let ((_%e137250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137248%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137250%_)
                  (macro-wrong-number-of-values-exception-code _%e137250%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e137250%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137248%_)
                (macro-wrong-number-of-values-exception-code _%exn137248%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn137248%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn137244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137244%_))
            (let ((_%e137246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137244%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137246%_)
                  (macro-wrong-number-of-values-exception-rte _%e137246%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e137246%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137244%_)
                (macro-wrong-number-of-values-exception-rte _%exn137244%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn137244%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn137238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137238%_))
            (let ((_%e137241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137238%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e137241%_)
                  (macro-wrong-number-of-values-exception-vals _%e137241%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e137241%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn137238%_)
                (macro-wrong-number-of-values-exception-vals _%exn137238%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn137238%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn137232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn137232%_))
            (let ((_%e137235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn137232%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e137235%_))
            (macro-wrong-processor-c-return-exception? _%exn137232%_))))))
