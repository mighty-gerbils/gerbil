(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1783939346)
  (begin
    (define Exception::t
      (let ((__tmp146667 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp146667 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args146585%_
        (apply make-instance Exception::t _%$args146585%_)))
    (define StackTrace::t
      (let ((__tmp146668 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp146668
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args146582%_
        (apply make-instance StackTrace::t _%$args146582%_)))
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
      (let ((__tmp146669 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp146669
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args146579%_ (apply make-instance Error::t _%$args146579%_)))
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
      (let ((__tmp146670 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp146670
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args146576%_
        (apply make-instance ContractViolation::t _%$args146576%_)))
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
      (let ((__tmp146671 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp146671
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args146573%_
        (apply make-instance RuntimeException::t _%$args146573%_)))
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
      (lambda (_%exn146568%_ _%continue146569%_)
        (let ((_%exn146571%_ (wrap-runtime-exception _%exn146568%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn146571%_ _%continue146569%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn146564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn146564%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn146564%_ 'continuation))
                '#!void
                (let ((__tmp146672
                       (lambda (_%cont146566%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn146564%_
                            'continuation
                            _%cont146566%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp146672)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn146564%_))))
    (define error
      (lambda (_%message146561%_ . _%irritants146562%_)
        (raise (let ((__obj146664
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj146664
                  _%message146561%_
                  'irritants:
                  _%irritants146562%_)
                 __obj146664))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords146536%_
               _%$%ctx146531146537%_
               _%$%contract-expr146532146538%_
               _%$%value146533146539%_
               _%message146540%_)
        (let* ((_%ctx146542%_
                (if (eq? _%$%ctx146531146537%_ absent-value)
                    '#f
                    _%$%ctx146531146537%_))
               (_%contract-expr146544%_
                (if (eq? _%$%contract-expr146532146538%_ absent-value)
                    '#f
                    _%$%contract-expr146532146538%_))
               (_%value146546%_
                (if (eq? _%$%value146533146539%_ absent-value)
                    '#f
                    _%$%value146533146539%_)))
          (raise (let ((__obj146665
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj146665
                    _%message146540%_
                    'where:
                    _%ctx146542%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr146544%_
                                (cons 'value: (cons _%value146546%_ '())))))
                   __obj146665)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords146551%_ . _%args146552%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords146551%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146551%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146551%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146551%_
                  'value:
                  absent-value))
               _%args146552%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args146534146558%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args146534146558%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler146505%_ _%thunk146506%_)
        (let* ((_%handler146509%_ _%handler146505%_)
               (_%thunk146517%_ _%thunk146506%_)
               (__tmp146673
                (lambda (_%exn146526%_)
                  (let ((_%exn146528%_ (wrap-runtime-exception _%exn146526%_)))
                    (declare (not safe))
                    (_%handler146509%_ _%exn146528%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp146673 _%thunk146517%_))))
    (define with-exception-handler
      (lambda (_%handler146480%_ _%thunk146481%_)
        (if (procedure? _%handler146480%_)
            (let ((_%handler146485%_ _%handler146480%_))
              (if (procedure? _%thunk146481%_)
                  (let ((_%thunk146495%_ _%thunk146481%_))
                    (__with-exception-handler
                     _%handler146485%_
                     _%thunk146495%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk146481%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler146480%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler146422%_ _%thunk146423%_)
        (let* ((_%handler146426%_ _%handler146422%_)
               (_%thunk146434%_ _%thunk146423%_)
               (__tmp146674
                (lambda (_%cont146443%_)
                  (let* ((_%handler146447%_
                          (lambda (_%exn146445%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont146443%_
                               _%handler146426%_
                               _%exn146445%_))))
                         (_%thunk146450%_ _%thunk146434%_)
                         (_%handler146455%_ _%handler146447%_)
                         (_%thunk146470%_ _%thunk146450%_))
                    (__with-exception-handler
                     _%handler146455%_
                     _%thunk146470%_)))))
          (declare (not safe))
          (##continuation-capture __tmp146674))))
    (define with-catch
      (lambda (_%handler146397%_ _%thunk146398%_)
        (if (procedure? _%handler146397%_)
            (let ((_%handler146402%_ _%handler146397%_))
              (if (procedure? _%thunk146398%_)
                  (let ((_%thunk146412%_ _%thunk146398%_))
                    (__with-catch _%handler146402%_ _%thunk146412%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk146398%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler146397%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn146384%_)
        (if (or (heap-overflow-exception? _%exn146384%_)
                (stack-overflow-exception? _%exn146384%_))
            _%exn146384%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn146384%_))
                _%exn146384%_
                (if (macro-exception? _%exn146384%_)
                    (let ((_%rte146392%_
                           (let ((__obj146666
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj146666
                                _%exn146384%_
                                '2
                                '#f
                                '#f))
                             __obj146666)))
                      (let ((__tmp146675
                             (lambda (_%cont146394%_)
                               (let ((__tmp146676
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont146394%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte146392%_
                                  'continuation
                                  __tmp146676)))))
                        (declare (not safe))
                        (##continuation-capture __tmp146675))
                      _%rte146392%_)
                    _%exn146384%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj146379%_)
        (let ((_%$e146381%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj146379%_))))
          (if _%$e146381%_ _%$e146381%_ (error-exception? _%obj146379%_)))))
    (define error-message
      (lambda (_%obj146338%_)
        (let ((_%$e146374%_
               (let* ((_%obj146340%_ _%obj146338%_)
                      (_%slot146343%_ 'message)
                      (_%E146346%_ false)
                      (_%slot146351%_ _%slot146343%_)
                      (_%E146364%_ _%E146346%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj146340%_ _%slot146351%_ _%E146364%_))))
          (if _%$e146374%_
              _%$e146374%_
              (if (error-exception? _%obj146338%_)
                  (error-exception-message _%obj146338%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj146333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj146333%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj146333%_ 'irritants))
            (if (error-exception? _%obj146333%_)
                (error-exception-parameters _%obj146333%_)
                '#f))))
    (define error-trace
      (lambda (_%obj146331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj146331%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj146331%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e146292%_ _%port146293%_)
        (let ((_%$e146315%_
               (let* ((_%obj146295%_ _%e146292%_)
                      (_%id146298%_ 'display-exception)
                      (_%id146303%_ _%id146298%_))
                 (declare (not safe))
                 (__method-ref _%obj146295%_ _%id146303%_))))
          (if _%$e146315%_
              (_%$e146315%_ _%e146292%_ _%port146293%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e146292%_ _%port146293%_))))))
    (define display-exception__0
      (lambda (_%e146324%_)
        (let ((_%port146326%_ (current-error-port)))
          (display-exception__% _%e146324%_ _%port146326%_))))
    (define display-exception
      (lambda _g146677_
        (let ((_g146678_ (let () (declare (not safe)) (##length _g146677_))))
          (cond ((let () (declare (not safe)) (##fx= _g146678_ 1))
                 (apply display-exception__0 _g146677_))
                ((let () (declare (not safe)) (##fx= _g146678_ 2))
                 (apply display-exception__% _g146677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g146677_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self146270%_ _%message146271%_ . _%rest146272%_)
        (let* ((_%self146275%_ _%self146270%_)
               (_%message146289%_
                (if (string? _%message146271%_)
                    _%message146271%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g146284146286%_)
                       (display _%message146271%_ _%$%g146284146286%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self146275%_ 'message _%message146289%_))
          (apply class-instance-init! _%self146275%_ _%rest146272%_))))
    (define Error:::init!::specialize
      (lambda (__klass146587 __method-table146588)
        (let ((__message146589
               (let ((__slot146590
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146587 'message))))
                 (if __slot146590
                     __slot146590
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self146270%_ _%message146271%_ . _%rest146272%_)
            (let* ((_%self146275%_ _%self146270%_)
                   (_%message146289%_
                    (if (string? _%message146271%_)
                        _%message146271%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g146284146286%_)
                           (display _%message146271%_ _%$%g146284146286%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146275%_
                 _%message146289%_
                 __message146589
                 '#f
                 '#f))
              (apply class-instance-init! _%self146275%_ _%rest146272%_))))))
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
      (lambda (_%self145975%_ _%port145976%_)
        (let ((_%self145979%_ _%self145975%_))
          (let ((_%tmp-port145989%_ (open-output-string))
                (_%display-error-newline145990%_
                 (> (output-port-column _%port145976%_) '0)))
            (fix-port-width! _%tmp-port145989%_)
            (let ((__tmp146679
                   (lambda ()
                     (if _%display-error-newline145990%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e145993%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self145979%_ 'where))))
                       (if _%$e145993%_ (display _%$e145993%_) (display '"?")))
                     (let ((__tmp146680
                            (let ((__tmp146681
                                   (let ((_%obj145997%_ _%self145979%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj145997%_))
                                         (let ((_%obj146002%_ _%obj145997%_))
                                           (declare (not safe))
                                           (__object-class _%obj146002%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj145997%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp146681))))
                       (declare (not safe))
                       (display* '" [" __tmp146680 '"]: "))
                     (let ((__tmp146682
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self145979%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp146682))
                     (let ((_%irritants146017%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self145979%_ 'irritants))))
                       (if (null? _%irritants146017%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj146019%_)
                                (if (u8vector? _%obj146019%_)
                                    (let ((__tmp146683
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj146019%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp146683))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj146019%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants146017%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont146020146022%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self145979%_
                                   'continuation))))
                           (if _%$%cont146020146022%_
                               (let ((_%cont146024%_ _%$%cont146020146022%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont146024%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp146679
               current-output-port
               _%tmp-port145989%_))
            (let ((__tmp146684 (get-output-string _%tmp-port145989%_)))
              (declare (not safe))
              (##write-string __tmp146684 _%port145976%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass146591 __method-table146592)
        (let ((__continuation146593
               (let ((__slot146597
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146591 'continuation))))
                 (if __slot146597
                     __slot146597
                     (error '"Unknown slot" 'continuation))))
              (__message146594
               (let ((__slot146598
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146591 'message))))
                 (if __slot146598
                     __slot146598
                     (error '"Unknown slot" 'message))))
              (__where146595
               (let ((__slot146599
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146591 'where))))
                 (if __slot146599
                     __slot146599
                     (error '"Unknown slot" 'where))))
              (__irritants146596
               (let ((__slot146600
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146591 'irritants))))
                 (if __slot146600
                     __slot146600
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self145975%_ _%port145976%_)
            (let ((_%self145979%_ _%self145975%_))
              (let ((_%tmp-port145989%_ (open-output-string))
                    (_%display-error-newline145990%_
                     (> (output-port-column _%port145976%_) '0)))
                (fix-port-width! _%tmp-port145989%_)
                (let ((__tmp146685
                       (lambda ()
                         (if _%display-error-newline145990%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e145993%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self145979%_
                                   __where146595
                                   '#f
                                   '#f))))
                           (if _%$e145993%_
                               (display _%$e145993%_)
                               (display '"?")))
                         (let ((__tmp146686
                                (let ((__tmp146687
                                       (let ((_%obj145997%_ _%self145979%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj145997%_))
                                             (let ((_%obj146002%_
                                                    _%obj145997%_))
                                               (declare (not safe))
                                               (__object-class _%obj146002%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj145997%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp146687))))
                           (declare (not safe))
                           (display* '" [" __tmp146686 '"]: "))
                         (let ((__tmp146688
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self145979%_
                                   __message146594
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp146688))
                         (let ((_%irritants146017%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self145979%_
                                   __irritants146596
                                   '#f
                                   '#f))))
                           (if (null? _%irritants146017%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj146019%_)
                                    (if (u8vector? _%obj146019%_)
                                        (let ((__tmp146689
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj146019%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp146689))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj146019%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants146017%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont146020146022%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self145979%_
                                       __continuation146593
                                       '#f
                                       '#f))))
                               (if _%$%cont146020146022%_
                                   (let ((_%cont146024%_
                                          _%$%cont146020146022%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont146024%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp146685
                   current-output-port
                   _%tmp-port145989%_))
                (let ((__tmp146690 (get-output-string _%tmp-port145989%_)))
                  (declare (not safe))
                  (##write-string __tmp146690 _%port145976%_))))))))
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
      (lambda (_%self145832%_ _%port145833%_)
        (let* ((_%self145836%_ _%self145832%_)
               (_%tmp-port145846%_ (open-output-string)))
          (fix-port-width! _%tmp-port145846%_)
          (let ((__tmp146691
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self145836%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp146691 _%tmp-port145846%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont145847145849%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self145836%_ 'continuation))))
                (if _%$%cont145847145849%_
                    (let ((_%cont145851%_ _%$%cont145847145849%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port145846%_)
                      (newline _%tmp-port145846%_)
                      (display-continuation-backtrace
                       _%cont145851%_
                       _%tmp-port145846%_))
                    '#f))
              '#!void)
          (let ((__tmp146692 (get-output-string _%tmp-port145846%_)))
            (declare (not safe))
            (##write-string __tmp146692 _%port145833%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass146601 __method-table146602)
        (let ((__exception146603
               (let ((__slot146605
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146601 'exception))))
                 (if __slot146605
                     __slot146605
                     (error '"Unknown slot" 'exception))))
              (__continuation146604
               (let ((__slot146606
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146601 'continuation))))
                 (if __slot146606
                     __slot146606
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self145832%_ _%port145833%_)
            (let* ((_%self145836%_ _%self145832%_)
                   (_%tmp-port145846%_ (open-output-string)))
              (fix-port-width! _%tmp-port145846%_)
              (let ((__tmp146693
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self145836%_
                        __exception146603
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp146693 _%tmp-port145846%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont145847145849%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self145836%_
                            __continuation146604
                            '#f
                            '#f))))
                    (if _%$%cont145847145849%_
                        (let ((_%cont145851%_ _%$%cont145847145849%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port145846%_)
                          (newline _%tmp-port145846%_)
                          (display-continuation-backtrace
                           _%cont145851%_
                           _%tmp-port145846%_))
                        '#f))
                  '#!void)
              (let ((__tmp146694 (get-output-string _%tmp-port145846%_)))
                (declare (not safe))
                (##write-string __tmp146694 _%port145833%_)))))))
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
      (lambda (_%port145704%_)
        (if (macro-character-port? _%port145704%_)
            (let ((_%old-width145706%_
                   (macro-character-port-output-width _%port145704%_)))
              (macro-character-port-output-width-set!
               _%port145704%_
               (lambda (_%port145708%_) '512))
              _%old-width145706%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port145701%_ _%old-width145702%_)
        (if (macro-character-port? _%port145701%_)
            (macro-character-port-output-width-set!
             _%port145701%_
             _%old-width145702%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e145699%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e145699%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn145693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145693%_))
            (let ((_%e145696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145693%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e145696%_))
            (macro-abandoned-mutex-exception? _%exn145693%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn145689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145689%_))
            (let ((_%e145691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145689%_ 'exception))))
              (macro-cfun-conversion-exception? _%e145691%_))
            (macro-cfun-conversion-exception? _%exn145689%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn145685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145685%_))
            (let ((_%e145687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145685%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145687%_)
                  (macro-cfun-conversion-exception-arguments _%e145687%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e145687%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145685%_)
                (macro-cfun-conversion-exception-arguments _%exn145685%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn145685%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn145681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145681%_))
            (let ((_%e145683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145681%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145683%_)
                  (macro-cfun-conversion-exception-code _%e145683%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e145683%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145681%_)
                (macro-cfun-conversion-exception-code _%exn145681%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn145681%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn145677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145677%_))
            (let ((_%e145679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145677%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145679%_)
                  (macro-cfun-conversion-exception-message _%e145679%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e145679%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145677%_)
                (macro-cfun-conversion-exception-message _%exn145677%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn145677%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn145671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145671%_))
            (let ((_%e145674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145671%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145674%_)
                  (macro-cfun-conversion-exception-procedure _%e145674%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e145674%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145671%_)
                (macro-cfun-conversion-exception-procedure _%exn145671%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn145671%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn145667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145667%_))
            (let ((_%e145669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145667%_ 'exception))))
              (macro-datum-parsing-exception? _%e145669%_))
            (macro-datum-parsing-exception? _%exn145667%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn145663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145663%_))
            (let ((_%e145665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145663%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e145665%_)
                  (macro-datum-parsing-exception-kind _%e145665%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e145665%_ '())))))
            (if (macro-datum-parsing-exception? _%exn145663%_)
                (macro-datum-parsing-exception-kind _%exn145663%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn145663%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn145659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145659%_))
            (let ((_%e145661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145659%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e145661%_)
                  (macro-datum-parsing-exception-parameters _%e145661%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e145661%_ '())))))
            (if (macro-datum-parsing-exception? _%exn145659%_)
                (macro-datum-parsing-exception-parameters _%exn145659%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn145659%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn145653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145653%_))
            (let ((_%e145656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145653%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e145656%_)
                  (macro-datum-parsing-exception-readenv _%e145656%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e145656%_ '())))))
            (if (macro-datum-parsing-exception? _%exn145653%_)
                (macro-datum-parsing-exception-readenv _%exn145653%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn145653%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn145647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145647%_))
            (let ((_%e145650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145647%_ 'exception))))
              (macro-deadlock-exception? _%e145650%_))
            (macro-deadlock-exception? _%exn145647%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn145643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145643%_))
            (let ((_%e145645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145643%_ 'exception))))
              (macro-divide-by-zero-exception? _%e145645%_))
            (macro-divide-by-zero-exception? _%exn145643%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn145639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145639%_))
            (let ((_%e145641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145639%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e145641%_)
                  (macro-divide-by-zero-exception-arguments _%e145641%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e145641%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn145639%_)
                (macro-divide-by-zero-exception-arguments _%exn145639%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn145639%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn145633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145633%_))
            (let ((_%e145636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145633%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e145636%_)
                  (macro-divide-by-zero-exception-procedure _%e145636%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e145636%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn145633%_)
                (macro-divide-by-zero-exception-procedure _%exn145633%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn145633%_ '())))))))
    (define error-exception?
      (lambda (_%exn145629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145629%_))
            (let ((_%e145631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145629%_ 'exception))))
              (macro-error-exception? _%e145631%_))
            (macro-error-exception? _%exn145629%_))))
    (define error-exception-message
      (lambda (_%exn145625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145625%_))
            (let ((_%e145627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145625%_ 'exception))))
              (if (macro-error-exception? _%e145627%_)
                  (macro-error-exception-message _%e145627%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e145627%_ '())))))
            (if (macro-error-exception? _%exn145625%_)
                (macro-error-exception-message _%exn145625%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn145625%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn145619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145619%_))
            (let ((_%e145622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145619%_ 'exception))))
              (if (macro-error-exception? _%e145622%_)
                  (macro-error-exception-parameters _%e145622%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e145622%_ '())))))
            (if (macro-error-exception? _%exn145619%_)
                (macro-error-exception-parameters _%exn145619%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn145619%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn145615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145615%_))
            (let ((_%e145617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145615%_ 'exception))))
              (macro-expression-parsing-exception? _%e145617%_))
            (macro-expression-parsing-exception? _%exn145615%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn145611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145611%_))
            (let ((_%e145613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145611%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e145613%_)
                  (macro-expression-parsing-exception-kind _%e145613%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e145613%_ '())))))
            (if (macro-expression-parsing-exception? _%exn145611%_)
                (macro-expression-parsing-exception-kind _%exn145611%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn145611%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn145607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145607%_))
            (let ((_%e145609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145607%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e145609%_)
                  (macro-expression-parsing-exception-parameters _%e145609%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e145609%_ '())))))
            (if (macro-expression-parsing-exception? _%exn145607%_)
                (macro-expression-parsing-exception-parameters _%exn145607%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn145607%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn145601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145601%_))
            (let ((_%e145604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145601%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e145604%_)
                  (macro-expression-parsing-exception-source _%e145604%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e145604%_ '())))))
            (if (macro-expression-parsing-exception? _%exn145601%_)
                (macro-expression-parsing-exception-source _%exn145601%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn145601%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn145597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145597%_))
            (let ((_%e145599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145597%_ 'exception))))
              (macro-file-exists-exception? _%e145599%_))
            (macro-file-exists-exception? _%exn145597%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn145593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145593%_))
            (let ((_%e145595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145593%_ 'exception))))
              (if (macro-file-exists-exception? _%e145595%_)
                  (macro-file-exists-exception-arguments _%e145595%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e145595%_ '())))))
            (if (macro-file-exists-exception? _%exn145593%_)
                (macro-file-exists-exception-arguments _%exn145593%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn145593%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn145587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145587%_))
            (let ((_%e145590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145587%_ 'exception))))
              (if (macro-file-exists-exception? _%e145590%_)
                  (macro-file-exists-exception-procedure _%e145590%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e145590%_ '())))))
            (if (macro-file-exists-exception? _%exn145587%_)
                (macro-file-exists-exception-procedure _%exn145587%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn145587%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn145583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145583%_))
            (let ((_%e145585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145583%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e145585%_))
            (macro-fixnum-overflow-exception? _%exn145583%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn145579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145579%_))
            (let ((_%e145581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145579%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e145581%_)
                  (macro-fixnum-overflow-exception-arguments _%e145581%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e145581%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn145579%_)
                (macro-fixnum-overflow-exception-arguments _%exn145579%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn145579%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn145573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145573%_))
            (let ((_%e145576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145573%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e145576%_)
                  (macro-fixnum-overflow-exception-procedure _%e145576%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e145576%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn145573%_)
                (macro-fixnum-overflow-exception-procedure _%exn145573%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn145573%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn145567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145567%_))
            (let ((_%e145570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145567%_ 'exception))))
              (macro-heap-overflow-exception? _%e145570%_))
            (macro-heap-overflow-exception? _%exn145567%_))))
    (define inactive-thread-exception?
      (lambda (_%exn145563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145563%_))
            (let ((_%e145565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145563%_ 'exception))))
              (macro-inactive-thread-exception? _%e145565%_))
            (macro-inactive-thread-exception? _%exn145563%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn145559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145559%_))
            (let ((_%e145561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145559%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e145561%_)
                  (macro-inactive-thread-exception-arguments _%e145561%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e145561%_ '())))))
            (if (macro-inactive-thread-exception? _%exn145559%_)
                (macro-inactive-thread-exception-arguments _%exn145559%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn145559%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn145553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145553%_))
            (let ((_%e145556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145553%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e145556%_)
                  (macro-inactive-thread-exception-procedure _%e145556%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e145556%_ '())))))
            (if (macro-inactive-thread-exception? _%exn145553%_)
                (macro-inactive-thread-exception-procedure _%exn145553%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn145553%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn145549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145549%_))
            (let ((_%e145551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145549%_ 'exception))))
              (macro-initialized-thread-exception? _%e145551%_))
            (macro-initialized-thread-exception? _%exn145549%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn145545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145545%_))
            (let ((_%e145547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145545%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e145547%_)
                  (macro-initialized-thread-exception-arguments _%e145547%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e145547%_ '())))))
            (if (macro-initialized-thread-exception? _%exn145545%_)
                (macro-initialized-thread-exception-arguments _%exn145545%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn145545%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn145539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145539%_))
            (let ((_%e145542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145539%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e145542%_)
                  (macro-initialized-thread-exception-procedure _%e145542%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e145542%_ '())))))
            (if (macro-initialized-thread-exception? _%exn145539%_)
                (macro-initialized-thread-exception-procedure _%exn145539%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn145539%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn145535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145535%_))
            (let ((_%e145537%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145535%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e145537%_))
            (macro-invalid-hash-number-exception? _%exn145535%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn145531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145531%_))
            (let ((_%e145533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145531%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e145533%_)
                  (macro-invalid-hash-number-exception-arguments _%e145533%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e145533%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn145531%_)
                (macro-invalid-hash-number-exception-arguments _%exn145531%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn145531%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn145525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145525%_))
            (let ((_%e145528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145525%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e145528%_)
                  (macro-invalid-hash-number-exception-procedure _%e145528%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e145528%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn145525%_)
                (macro-invalid-hash-number-exception-procedure _%exn145525%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn145525%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn145521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145521%_))
            (let ((_%e145523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145521%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e145523%_))
            (macro-invalid-utf8-encoding-exception? _%exn145521%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn145517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145517%_))
            (let ((_%e145519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145517%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e145519%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e145519%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e145519%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn145517%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn145517%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn145517%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn145511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145511%_))
            (let ((_%e145514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145511%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e145514%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e145514%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e145514%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn145511%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn145511%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn145511%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn145507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145507%_))
            (let ((_%e145509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145507%_ 'exception))))
              (macro-join-timeout-exception? _%e145509%_))
            (macro-join-timeout-exception? _%exn145507%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn145503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145503%_))
            (let ((_%e145505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145503%_ 'exception))))
              (if (macro-join-timeout-exception? _%e145505%_)
                  (macro-join-timeout-exception-arguments _%e145505%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e145505%_ '())))))
            (if (macro-join-timeout-exception? _%exn145503%_)
                (macro-join-timeout-exception-arguments _%exn145503%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn145503%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn145497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145497%_))
            (let ((_%e145500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145497%_ 'exception))))
              (if (macro-join-timeout-exception? _%e145500%_)
                  (macro-join-timeout-exception-procedure _%e145500%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e145500%_ '())))))
            (if (macro-join-timeout-exception? _%exn145497%_)
                (macro-join-timeout-exception-procedure _%exn145497%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn145497%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn145493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145493%_))
            (let ((_%e145495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145493%_ 'exception))))
              (macro-keyword-expected-exception? _%e145495%_))
            (macro-keyword-expected-exception? _%exn145493%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn145489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145489%_))
            (let ((_%e145491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145489%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e145491%_)
                  (macro-keyword-expected-exception-arguments _%e145491%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e145491%_ '())))))
            (if (macro-keyword-expected-exception? _%exn145489%_)
                (macro-keyword-expected-exception-arguments _%exn145489%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn145489%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn145483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145483%_))
            (let ((_%e145486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145483%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e145486%_)
                  (macro-keyword-expected-exception-procedure _%e145486%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e145486%_ '())))))
            (if (macro-keyword-expected-exception? _%exn145483%_)
                (macro-keyword-expected-exception-procedure _%exn145483%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn145483%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn145479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145479%_))
            (let ((_%e145481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145479%_ 'exception))))
              (macro-length-mismatch-exception? _%e145481%_))
            (macro-length-mismatch-exception? _%exn145479%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn145475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145475%_))
            (let ((_%e145477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145475%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e145477%_)
                  (macro-length-mismatch-exception-arg-id _%e145477%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e145477%_ '())))))
            (if (macro-length-mismatch-exception? _%exn145475%_)
                (macro-length-mismatch-exception-arg-id _%exn145475%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn145475%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn145471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145471%_))
            (let ((_%e145473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145471%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e145473%_)
                  (macro-length-mismatch-exception-arguments _%e145473%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e145473%_ '())))))
            (if (macro-length-mismatch-exception? _%exn145471%_)
                (macro-length-mismatch-exception-arguments _%exn145471%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn145471%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn145465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145465%_))
            (let ((_%e145468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145465%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e145468%_)
                  (macro-length-mismatch-exception-procedure _%e145468%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e145468%_ '())))))
            (if (macro-length-mismatch-exception? _%exn145465%_)
                (macro-length-mismatch-exception-procedure _%exn145465%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn145465%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn145461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145461%_))
            (let ((_%e145463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145461%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e145463%_))
            (macro-mailbox-receive-timeout-exception? _%exn145461%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn145457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145457%_))
            (let ((_%e145459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145457%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e145459%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e145459%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e145459%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn145457%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn145457%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn145457%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn145451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145451%_))
            (let ((_%e145454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145451%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e145454%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e145454%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e145454%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn145451%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn145451%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn145451%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn145447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145447%_))
            (let ((_%e145449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145447%_ 'exception))))
              (macro-module-not-found-exception? _%e145449%_))
            (macro-module-not-found-exception? _%exn145447%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn145443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145443%_))
            (let ((_%e145445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145443%_ 'exception))))
              (if (macro-module-not-found-exception? _%e145445%_)
                  (macro-module-not-found-exception-arguments _%e145445%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e145445%_ '())))))
            (if (macro-module-not-found-exception? _%exn145443%_)
                (macro-module-not-found-exception-arguments _%exn145443%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn145443%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn145437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145437%_))
            (let ((_%e145440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145437%_ 'exception))))
              (if (macro-module-not-found-exception? _%e145440%_)
                  (macro-module-not-found-exception-procedure _%e145440%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e145440%_ '())))))
            (if (macro-module-not-found-exception? _%exn145437%_)
                (macro-module-not-found-exception-procedure _%exn145437%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn145437%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn145431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145431%_))
            (let ((_%e145434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145431%_ 'exception))))
              (macro-multiple-c-return-exception? _%e145434%_))
            (macro-multiple-c-return-exception? _%exn145431%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn145427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145427%_))
            (let ((_%e145429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145427%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e145429%_))
            (macro-no-such-file-or-directory-exception? _%exn145427%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn145423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145423%_))
            (let ((_%e145425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145423%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e145425%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e145425%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e145425%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn145423%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn145423%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn145423%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn145417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145417%_))
            (let ((_%e145420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145417%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e145420%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e145420%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e145420%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn145417%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn145417%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn145417%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn145413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145413%_))
            (let ((_%e145415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145413%_ 'exception))))
              (macro-noncontinuable-exception? _%e145415%_))
            (macro-noncontinuable-exception? _%exn145413%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn145407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145407%_))
            (let ((_%e145410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145407%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e145410%_)
                  (macro-noncontinuable-exception-reason _%e145410%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e145410%_ '())))))
            (if (macro-noncontinuable-exception? _%exn145407%_)
                (macro-noncontinuable-exception-reason _%exn145407%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn145407%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn145403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145403%_))
            (let ((_%e145405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145403%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e145405%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn145403%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn145399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145399%_))
            (let ((_%e145401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145399%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e145401%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e145401%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e145401%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn145399%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn145399%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn145399%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn145393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145393%_))
            (let ((_%e145396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145393%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e145396%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e145396%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e145396%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn145393%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn145393%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn145393%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn145389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145389%_))
            (let ((_%e145391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145389%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e145391%_))
            (macro-nonprocedure-operator-exception? _%exn145389%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn145385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145385%_))
            (let ((_%e145387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145385%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145387%_)
                  (macro-nonprocedure-operator-exception-arguments _%e145387%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e145387%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145385%_)
                (macro-nonprocedure-operator-exception-arguments _%exn145385%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn145385%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn145381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145381%_))
            (let ((_%e145383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145381%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145383%_)
                  (macro-nonprocedure-operator-exception-code _%e145383%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e145383%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145381%_)
                (macro-nonprocedure-operator-exception-code _%exn145381%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn145381%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn145377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145377%_))
            (let ((_%e145379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145377%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145379%_)
                  (macro-nonprocedure-operator-exception-operator _%e145379%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e145379%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145377%_)
                (macro-nonprocedure-operator-exception-operator _%exn145377%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn145377%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn145371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145371%_))
            (let ((_%e145374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145371%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145374%_)
                  (macro-nonprocedure-operator-exception-rte _%e145374%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e145374%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145371%_)
                (macro-nonprocedure-operator-exception-rte _%exn145371%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn145371%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn145367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145367%_))
            (let ((_%e145369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145367%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e145369%_))
            (macro-not-in-compilation-context-exception? _%exn145367%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn145363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145363%_))
            (let ((_%e145365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145363%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e145365%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e145365%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e145365%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn145363%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn145363%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn145363%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn145357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145357%_))
            (let ((_%e145360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145357%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e145360%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e145360%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e145360%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn145357%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn145357%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn145357%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn145353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145353%_))
            (let ((_%e145355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145353%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e145355%_))
            (macro-number-of-arguments-limit-exception? _%exn145353%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn145349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145349%_))
            (let ((_%e145351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145349%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e145351%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e145351%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e145351%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn145349%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn145349%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn145349%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn145343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145343%_))
            (let ((_%e145346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145343%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e145346%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e145346%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e145346%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn145343%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn145343%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn145343%_ '())))))))
    (define os-exception?
      (lambda (_%exn145339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145339%_))
            (let ((_%e145341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145339%_ 'exception))))
              (macro-os-exception? _%e145341%_))
            (macro-os-exception? _%exn145339%_))))
    (define os-exception-arguments
      (lambda (_%exn145335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145335%_))
            (let ((_%e145337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145335%_ 'exception))))
              (if (macro-os-exception? _%e145337%_)
                  (macro-os-exception-arguments _%e145337%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e145337%_ '())))))
            (if (macro-os-exception? _%exn145335%_)
                (macro-os-exception-arguments _%exn145335%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn145335%_ '())))))))
    (define os-exception-code
      (lambda (_%exn145331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145331%_))
            (let ((_%e145333%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145331%_ 'exception))))
              (if (macro-os-exception? _%e145333%_)
                  (macro-os-exception-code _%e145333%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e145333%_ '())))))
            (if (macro-os-exception? _%exn145331%_)
                (macro-os-exception-code _%exn145331%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn145331%_ '())))))))
    (define os-exception-message
      (lambda (_%exn145327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145327%_))
            (let ((_%e145329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145327%_ 'exception))))
              (if (macro-os-exception? _%e145329%_)
                  (macro-os-exception-message _%e145329%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e145329%_ '())))))
            (if (macro-os-exception? _%exn145327%_)
                (macro-os-exception-message _%exn145327%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn145327%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn145321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145321%_))
            (let ((_%e145324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145321%_ 'exception))))
              (if (macro-os-exception? _%e145324%_)
                  (macro-os-exception-procedure _%e145324%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e145324%_ '())))))
            (if (macro-os-exception? _%exn145321%_)
                (macro-os-exception-procedure _%exn145321%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn145321%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn145317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145317%_))
            (let ((_%e145319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145317%_ 'exception))))
              (macro-permission-denied-exception? _%e145319%_))
            (macro-permission-denied-exception? _%exn145317%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn145313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145313%_))
            (let ((_%e145315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145313%_ 'exception))))
              (if (macro-permission-denied-exception? _%e145315%_)
                  (macro-permission-denied-exception-arguments _%e145315%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e145315%_ '())))))
            (if (macro-permission-denied-exception? _%exn145313%_)
                (macro-permission-denied-exception-arguments _%exn145313%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn145313%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn145307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145307%_))
            (let ((_%e145310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145307%_ 'exception))))
              (if (macro-permission-denied-exception? _%e145310%_)
                  (macro-permission-denied-exception-procedure _%e145310%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e145310%_ '())))))
            (if (macro-permission-denied-exception? _%exn145307%_)
                (macro-permission-denied-exception-procedure _%exn145307%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn145307%_ '())))))))
    (define range-exception?
      (lambda (_%exn145303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145303%_))
            (let ((_%e145305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145303%_ 'exception))))
              (macro-range-exception? _%e145305%_))
            (macro-range-exception? _%exn145303%_))))
    (define range-exception-arg-id
      (lambda (_%exn145299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145299%_))
            (let ((_%e145301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145299%_ 'exception))))
              (if (macro-range-exception? _%e145301%_)
                  (macro-range-exception-arg-id _%e145301%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e145301%_ '())))))
            (if (macro-range-exception? _%exn145299%_)
                (macro-range-exception-arg-id _%exn145299%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn145299%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn145295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145295%_))
            (let ((_%e145297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145295%_ 'exception))))
              (if (macro-range-exception? _%e145297%_)
                  (macro-range-exception-arguments _%e145297%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e145297%_ '())))))
            (if (macro-range-exception? _%exn145295%_)
                (macro-range-exception-arguments _%exn145295%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn145295%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn145289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145289%_))
            (let ((_%e145292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145289%_ 'exception))))
              (if (macro-range-exception? _%e145292%_)
                  (macro-range-exception-procedure _%e145292%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e145292%_ '())))))
            (if (macro-range-exception? _%exn145289%_)
                (macro-range-exception-procedure _%exn145289%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn145289%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn145285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145285%_))
            (let ((_%e145287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145285%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e145287%_))
            (macro-rpc-remote-error-exception? _%exn145285%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn145281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145281%_))
            (let ((_%e145283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145281%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e145283%_)
                  (macro-rpc-remote-error-exception-arguments _%e145283%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e145283%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn145281%_)
                (macro-rpc-remote-error-exception-arguments _%exn145281%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn145281%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn145277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145277%_))
            (let ((_%e145279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145277%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e145279%_)
                  (macro-rpc-remote-error-exception-message _%e145279%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e145279%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn145277%_)
                (macro-rpc-remote-error-exception-message _%exn145277%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn145277%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn145271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145271%_))
            (let ((_%e145274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145271%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e145274%_)
                  (macro-rpc-remote-error-exception-procedure _%e145274%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e145274%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn145271%_)
                (macro-rpc-remote-error-exception-procedure _%exn145271%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn145271%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn145267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145267%_))
            (let ((_%e145269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145267%_ 'exception))))
              (macro-scheduler-exception? _%e145269%_))
            (macro-scheduler-exception? _%exn145267%_))))
    (define scheduler-exception-reason
      (lambda (_%exn145261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145261%_))
            (let ((_%e145264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145261%_ 'exception))))
              (if (macro-scheduler-exception? _%e145264%_)
                  (macro-scheduler-exception-reason _%e145264%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e145264%_ '())))))
            (if (macro-scheduler-exception? _%exn145261%_)
                (macro-scheduler-exception-reason _%exn145261%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn145261%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn145257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145257%_))
            (let ((_%e145259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145257%_ 'exception))))
              (macro-sfun-conversion-exception? _%e145259%_))
            (macro-sfun-conversion-exception? _%exn145257%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn145253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145253%_))
            (let ((_%e145255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145253%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145255%_)
                  (macro-sfun-conversion-exception-arguments _%e145255%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e145255%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145253%_)
                (macro-sfun-conversion-exception-arguments _%exn145253%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn145253%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn145249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145249%_))
            (let ((_%e145251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145249%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145251%_)
                  (macro-sfun-conversion-exception-code _%e145251%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e145251%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145249%_)
                (macro-sfun-conversion-exception-code _%exn145249%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn145249%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn145245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145245%_))
            (let ((_%e145247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145245%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145247%_)
                  (macro-sfun-conversion-exception-message _%e145247%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e145247%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145245%_)
                (macro-sfun-conversion-exception-message _%exn145245%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn145245%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn145239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145239%_))
            (let ((_%e145242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145239%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145242%_)
                  (macro-sfun-conversion-exception-procedure _%e145242%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e145242%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145239%_)
                (macro-sfun-conversion-exception-procedure _%exn145239%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn145239%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn145233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145233%_))
            (let ((_%e145236%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145233%_ 'exception))))
              (macro-stack-overflow-exception? _%e145236%_))
            (macro-stack-overflow-exception? _%exn145233%_))))
    (define started-thread-exception?
      (lambda (_%exn145229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145229%_))
            (let ((_%e145231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145229%_ 'exception))))
              (macro-started-thread-exception? _%e145231%_))
            (macro-started-thread-exception? _%exn145229%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn145225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145225%_))
            (let ((_%e145227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145225%_ 'exception))))
              (if (macro-started-thread-exception? _%e145227%_)
                  (macro-started-thread-exception-arguments _%e145227%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e145227%_ '())))))
            (if (macro-started-thread-exception? _%exn145225%_)
                (macro-started-thread-exception-arguments _%exn145225%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn145225%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn145219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145219%_))
            (let ((_%e145222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145219%_ 'exception))))
              (if (macro-started-thread-exception? _%e145222%_)
                  (macro-started-thread-exception-procedure _%e145222%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e145222%_ '())))))
            (if (macro-started-thread-exception? _%exn145219%_)
                (macro-started-thread-exception-procedure _%exn145219%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn145219%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn145215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145215%_))
            (let ((_%e145217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145215%_ 'exception))))
              (macro-terminated-thread-exception? _%e145217%_))
            (macro-terminated-thread-exception? _%exn145215%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn145211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145211%_))
            (let ((_%e145213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145211%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e145213%_)
                  (macro-terminated-thread-exception-arguments _%e145213%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e145213%_ '())))))
            (if (macro-terminated-thread-exception? _%exn145211%_)
                (macro-terminated-thread-exception-arguments _%exn145211%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn145211%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn145205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145205%_))
            (let ((_%e145208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145205%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e145208%_)
                  (macro-terminated-thread-exception-procedure _%e145208%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e145208%_ '())))))
            (if (macro-terminated-thread-exception? _%exn145205%_)
                (macro-terminated-thread-exception-procedure _%exn145205%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn145205%_ '())))))))
    (define type-exception?
      (lambda (_%exn145201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145201%_))
            (let ((_%e145203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145201%_ 'exception))))
              (macro-type-exception? _%e145203%_))
            (macro-type-exception? _%exn145201%_))))
    (define type-exception-arg-id
      (lambda (_%exn145197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145197%_))
            (let ((_%e145199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145197%_ 'exception))))
              (if (macro-type-exception? _%e145199%_)
                  (macro-type-exception-arg-id _%e145199%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e145199%_ '())))))
            (if (macro-type-exception? _%exn145197%_)
                (macro-type-exception-arg-id _%exn145197%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn145197%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn145193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145193%_))
            (let ((_%e145195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145193%_ 'exception))))
              (if (macro-type-exception? _%e145195%_)
                  (macro-type-exception-arguments _%e145195%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e145195%_ '())))))
            (if (macro-type-exception? _%exn145193%_)
                (macro-type-exception-arguments _%exn145193%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn145193%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn145189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145189%_))
            (let ((_%e145191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145189%_ 'exception))))
              (if (macro-type-exception? _%e145191%_)
                  (macro-type-exception-procedure _%e145191%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e145191%_ '())))))
            (if (macro-type-exception? _%exn145189%_)
                (macro-type-exception-procedure _%exn145189%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn145189%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn145183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145183%_))
            (let ((_%e145186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145183%_ 'exception))))
              (if (macro-type-exception? _%e145186%_)
                  (macro-type-exception-type-id _%e145186%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e145186%_ '())))))
            (if (macro-type-exception? _%exn145183%_)
                (macro-type-exception-type-id _%exn145183%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn145183%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn145179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145179%_))
            (let ((_%e145181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145179%_ 'exception))))
              (macro-unbound-global-exception? _%e145181%_))
            (macro-unbound-global-exception? _%exn145179%_))))
    (define unbound-global-exception-code
      (lambda (_%exn145175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145175%_))
            (let ((_%e145177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145175%_ 'exception))))
              (if (macro-unbound-global-exception? _%e145177%_)
                  (macro-unbound-global-exception-code _%e145177%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e145177%_ '())))))
            (if (macro-unbound-global-exception? _%exn145175%_)
                (macro-unbound-global-exception-code _%exn145175%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn145175%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn145171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145171%_))
            (let ((_%e145173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145171%_ 'exception))))
              (if (macro-unbound-global-exception? _%e145173%_)
                  (macro-unbound-global-exception-rte _%e145173%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e145173%_ '())))))
            (if (macro-unbound-global-exception? _%exn145171%_)
                (macro-unbound-global-exception-rte _%exn145171%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn145171%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn145165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145165%_))
            (let ((_%e145168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145165%_ 'exception))))
              (if (macro-unbound-global-exception? _%e145168%_)
                  (macro-unbound-global-exception-variable _%e145168%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e145168%_ '())))))
            (if (macro-unbound-global-exception? _%exn145165%_)
                (macro-unbound-global-exception-variable _%exn145165%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn145165%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn145161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145161%_))
            (let ((_%e145163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145161%_ 'exception))))
              (macro-unbound-key-exception? _%e145163%_))
            (macro-unbound-key-exception? _%exn145161%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn145157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145157%_))
            (let ((_%e145159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145157%_ 'exception))))
              (if (macro-unbound-key-exception? _%e145159%_)
                  (macro-unbound-key-exception-arguments _%e145159%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e145159%_ '())))))
            (if (macro-unbound-key-exception? _%exn145157%_)
                (macro-unbound-key-exception-arguments _%exn145157%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn145157%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn145151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145151%_))
            (let ((_%e145154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145151%_ 'exception))))
              (if (macro-unbound-key-exception? _%e145154%_)
                  (macro-unbound-key-exception-procedure _%e145154%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e145154%_ '())))))
            (if (macro-unbound-key-exception? _%exn145151%_)
                (macro-unbound-key-exception-procedure _%exn145151%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn145151%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn145147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145147%_))
            (let ((_%e145149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145147%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e145149%_))
            (macro-unbound-os-environment-variable-exception? _%exn145147%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn145143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145143%_))
            (let ((_%e145145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145143%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e145145%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e145145%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e145145%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn145143%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn145143%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn145143%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn145137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145137%_))
            (let ((_%e145140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145137%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e145140%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e145140%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e145140%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn145137%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn145137%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn145137%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn145133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145133%_))
            (let ((_%e145135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145133%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e145135%_))
            (macro-unbound-serial-number-exception? _%exn145133%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn145129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145129%_))
            (let ((_%e145131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145129%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e145131%_)
                  (macro-unbound-serial-number-exception-arguments _%e145131%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e145131%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn145129%_)
                (macro-unbound-serial-number-exception-arguments _%exn145129%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn145129%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn145123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145123%_))
            (let ((_%e145126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145123%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e145126%_)
                  (macro-unbound-serial-number-exception-procedure _%e145126%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e145126%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn145123%_)
                (macro-unbound-serial-number-exception-procedure _%exn145123%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn145123%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn145119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145119%_))
            (let ((_%e145121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145119%_ 'exception))))
              (macro-uncaught-exception? _%e145121%_))
            (macro-uncaught-exception? _%exn145119%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn145115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145115%_))
            (let ((_%e145117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145115%_ 'exception))))
              (if (macro-uncaught-exception? _%e145117%_)
                  (macro-uncaught-exception-arguments _%e145117%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e145117%_ '())))))
            (if (macro-uncaught-exception? _%exn145115%_)
                (macro-uncaught-exception-arguments _%exn145115%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn145115%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn145111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145111%_))
            (let ((_%e145113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145111%_ 'exception))))
              (if (macro-uncaught-exception? _%e145113%_)
                  (macro-uncaught-exception-procedure _%e145113%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e145113%_ '())))))
            (if (macro-uncaught-exception? _%exn145111%_)
                (macro-uncaught-exception-procedure _%exn145111%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn145111%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn145105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145105%_))
            (let ((_%e145108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145105%_ 'exception))))
              (if (macro-uncaught-exception? _%e145108%_)
                  (macro-uncaught-exception-reason _%e145108%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e145108%_ '())))))
            (if (macro-uncaught-exception? _%exn145105%_)
                (macro-uncaught-exception-reason _%exn145105%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn145105%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn145101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145101%_))
            (let ((_%e145103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145101%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e145103%_))
            (macro-uninitialized-thread-exception? _%exn145101%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn145097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145097%_))
            (let ((_%e145099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145097%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e145099%_)
                  (macro-uninitialized-thread-exception-arguments _%e145099%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e145099%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn145097%_)
                (macro-uninitialized-thread-exception-arguments _%exn145097%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn145097%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn145091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145091%_))
            (let ((_%e145094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145091%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e145094%_)
                  (macro-uninitialized-thread-exception-procedure _%e145094%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e145094%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn145091%_)
                (macro-uninitialized-thread-exception-procedure _%exn145091%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn145091%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn145087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145087%_))
            (let ((_%e145089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145087%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e145089%_))
            (macro-unknown-keyword-argument-exception? _%exn145087%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn145083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145083%_))
            (let ((_%e145085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145083%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e145085%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e145085%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e145085%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn145083%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn145083%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn145083%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn145077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145077%_))
            (let ((_%e145080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145077%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e145080%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e145080%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e145080%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn145077%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn145077%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn145077%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn145073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145073%_))
            (let ((_%e145075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145073%_ 'exception))))
              (macro-unterminated-process-exception? _%e145075%_))
            (macro-unterminated-process-exception? _%exn145073%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn145069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145069%_))
            (let ((_%e145071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145069%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e145071%_)
                  (macro-unterminated-process-exception-arguments _%e145071%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e145071%_ '())))))
            (if (macro-unterminated-process-exception? _%exn145069%_)
                (macro-unterminated-process-exception-arguments _%exn145069%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn145069%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn145063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145063%_))
            (let ((_%e145066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145063%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e145066%_)
                  (macro-unterminated-process-exception-procedure _%e145066%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e145066%_ '())))))
            (if (macro-unterminated-process-exception? _%exn145063%_)
                (macro-unterminated-process-exception-procedure _%exn145063%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn145063%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn145059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145059%_))
            (let ((_%e145061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145059%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e145061%_))
            (macro-wrong-number-of-arguments-exception? _%exn145059%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn145055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145055%_))
            (let ((_%e145057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145055%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e145057%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e145057%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e145057%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn145055%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn145055%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn145055%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn145049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145049%_))
            (let ((_%e145052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145049%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e145052%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e145052%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e145052%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn145049%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn145049%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn145049%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn145045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145045%_))
            (let ((_%e145047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145045%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e145047%_))
            (macro-wrong-number-of-values-exception? _%exn145045%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn145041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145041%_))
            (let ((_%e145043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145041%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e145043%_)
                  (macro-wrong-number-of-values-exception-code _%e145043%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e145043%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn145041%_)
                (macro-wrong-number-of-values-exception-code _%exn145041%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn145041%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn145037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145037%_))
            (let ((_%e145039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145037%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e145039%_)
                  (macro-wrong-number-of-values-exception-rte _%e145039%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e145039%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn145037%_)
                (macro-wrong-number-of-values-exception-rte _%exn145037%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn145037%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn145031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145031%_))
            (let ((_%e145034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145031%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e145034%_)
                  (macro-wrong-number-of-values-exception-vals _%e145034%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e145034%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn145031%_)
                (macro-wrong-number-of-values-exception-vals _%exn145031%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn145031%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn145025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145025%_))
            (let ((_%e145028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145025%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e145028%_))
            (macro-wrong-processor-c-return-exception? _%exn145025%_))))))
