(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1783878475)
  (begin
    (define Exception::t
      (let ((__tmp146612 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp146612 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args146530%_
        (apply make-instance Exception::t _%$args146530%_)))
    (define StackTrace::t
      (let ((__tmp146613 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp146613
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args146527%_
        (apply make-instance StackTrace::t _%$args146527%_)))
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
      (let ((__tmp146614 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp146614
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args146524%_ (apply make-instance Error::t _%$args146524%_)))
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
      (let ((__tmp146615 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp146615
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args146521%_
        (apply make-instance ContractViolation::t _%$args146521%_)))
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
      (let ((__tmp146616 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp146616
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args146518%_
        (apply make-instance RuntimeException::t _%$args146518%_)))
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
      (lambda (_%exn146513%_ _%continue146514%_)
        (let ((_%exn146516%_ (wrap-runtime-exception _%exn146513%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn146516%_ _%continue146514%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn146509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn146509%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn146509%_ 'continuation))
                '#!void
                (let ((__tmp146617
                       (lambda (_%cont146511%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn146509%_
                            'continuation
                            _%cont146511%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp146617)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn146509%_))))
    (define error
      (lambda (_%message146506%_ . _%irritants146507%_)
        (raise (let ((__obj146609
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj146609
                  _%message146506%_
                  'irritants:
                  _%irritants146507%_)
                 __obj146609))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords146481%_
               _%$%ctx146476146482%_
               _%$%contract-expr146477146483%_
               _%$%value146478146484%_
               _%message146485%_)
        (let* ((_%ctx146487%_
                (if (eq? _%$%ctx146476146482%_ absent-value)
                    '#f
                    _%$%ctx146476146482%_))
               (_%contract-expr146489%_
                (if (eq? _%$%contract-expr146477146483%_ absent-value)
                    '#f
                    _%$%contract-expr146477146483%_))
               (_%value146491%_
                (if (eq? _%$%value146478146484%_ absent-value)
                    '#f
                    _%$%value146478146484%_)))
          (raise (let ((__obj146610
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj146610
                    _%message146485%_
                    'where:
                    _%ctx146487%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr146489%_
                                (cons 'value: (cons _%value146491%_ '())))))
                   __obj146610)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords146496%_ . _%args146497%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords146496%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146496%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146496%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146496%_
                  'value:
                  absent-value))
               _%args146497%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args146479146503%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args146479146503%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler146450%_ _%thunk146451%_)
        (let* ((_%handler146454%_ _%handler146450%_)
               (_%thunk146462%_ _%thunk146451%_)
               (__tmp146618
                (lambda (_%exn146471%_)
                  (let ((_%exn146473%_ (wrap-runtime-exception _%exn146471%_)))
                    (declare (not safe))
                    (_%handler146454%_ _%exn146473%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp146618 _%thunk146462%_))))
    (define with-exception-handler
      (lambda (_%handler146425%_ _%thunk146426%_)
        (if (procedure? _%handler146425%_)
            (let ((_%handler146430%_ _%handler146425%_))
              (if (procedure? _%thunk146426%_)
                  (let ((_%thunk146440%_ _%thunk146426%_))
                    (__with-exception-handler
                     _%handler146430%_
                     _%thunk146440%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk146426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler146425%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler146367%_ _%thunk146368%_)
        (let* ((_%handler146371%_ _%handler146367%_)
               (_%thunk146379%_ _%thunk146368%_)
               (__tmp146619
                (lambda (_%cont146388%_)
                  (let* ((_%handler146392%_
                          (lambda (_%exn146390%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont146388%_
                               _%handler146371%_
                               _%exn146390%_))))
                         (_%thunk146395%_ _%thunk146379%_)
                         (_%handler146400%_ _%handler146392%_)
                         (_%thunk146415%_ _%thunk146395%_))
                    (__with-exception-handler
                     _%handler146400%_
                     _%thunk146415%_)))))
          (declare (not safe))
          (##continuation-capture __tmp146619))))
    (define with-catch
      (lambda (_%handler146342%_ _%thunk146343%_)
        (if (procedure? _%handler146342%_)
            (let ((_%handler146347%_ _%handler146342%_))
              (if (procedure? _%thunk146343%_)
                  (let ((_%thunk146357%_ _%thunk146343%_))
                    (__with-catch _%handler146347%_ _%thunk146357%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk146343%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler146342%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn146329%_)
        (if (or (heap-overflow-exception? _%exn146329%_)
                (stack-overflow-exception? _%exn146329%_))
            _%exn146329%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn146329%_))
                _%exn146329%_
                (if (macro-exception? _%exn146329%_)
                    (let ((_%rte146337%_
                           (let ((__obj146611
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj146611
                                _%exn146329%_
                                '2
                                '#f
                                '#f))
                             __obj146611)))
                      (let ((__tmp146620
                             (lambda (_%cont146339%_)
                               (let ((__tmp146621
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont146339%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte146337%_
                                  'continuation
                                  __tmp146621)))))
                        (declare (not safe))
                        (##continuation-capture __tmp146620))
                      _%rte146337%_)
                    _%exn146329%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj146324%_)
        (let ((_%$e146326%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj146324%_))))
          (if _%$e146326%_ _%$e146326%_ (error-exception? _%obj146324%_)))))
    (define error-message
      (lambda (_%obj146283%_)
        (let ((_%$e146319%_
               (let* ((_%obj146285%_ _%obj146283%_)
                      (_%slot146288%_ 'message)
                      (_%E146291%_ false)
                      (_%slot146296%_ _%slot146288%_)
                      (_%E146309%_ _%E146291%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj146285%_ _%slot146296%_ _%E146309%_))))
          (if _%$e146319%_
              _%$e146319%_
              (if (error-exception? _%obj146283%_)
                  (error-exception-message _%obj146283%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj146278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj146278%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj146278%_ 'irritants))
            (if (error-exception? _%obj146278%_)
                (error-exception-parameters _%obj146278%_)
                '#f))))
    (define error-trace
      (lambda (_%obj146276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj146276%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj146276%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e146237%_ _%port146238%_)
        (let ((_%$e146260%_
               (let* ((_%obj146240%_ _%e146237%_)
                      (_%id146243%_ 'display-exception)
                      (_%id146248%_ _%id146243%_))
                 (declare (not safe))
                 (__method-ref _%obj146240%_ _%id146248%_))))
          (if _%$e146260%_
              (_%$e146260%_ _%e146237%_ _%port146238%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e146237%_ _%port146238%_))))))
    (define display-exception__0
      (lambda (_%e146269%_)
        (let ((_%port146271%_ (current-error-port)))
          (display-exception__% _%e146269%_ _%port146271%_))))
    (define display-exception
      (lambda _g146622_
        (let ((_g146623_ (let () (declare (not safe)) (##length _g146622_))))
          (cond ((let () (declare (not safe)) (##fx= _g146623_ 1))
                 (apply display-exception__0 _g146622_))
                ((let () (declare (not safe)) (##fx= _g146623_ 2))
                 (apply display-exception__% _g146622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g146622_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self146215%_ _%message146216%_ . _%rest146217%_)
        (let* ((_%self146220%_ _%self146215%_)
               (_%message146234%_
                (if (string? _%message146216%_)
                    _%message146216%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g146229146231%_)
                       (display _%message146216%_ _%$%g146229146231%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self146220%_ 'message _%message146234%_))
          (apply class-instance-init! _%self146220%_ _%rest146217%_))))
    (define Error:::init!::specialize
      (lambda (__klass146532 __method-table146533)
        (let ((__message146534
               (let ((__slot146535
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146532 'message))))
                 (if __slot146535
                     __slot146535
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self146215%_ _%message146216%_ . _%rest146217%_)
            (let* ((_%self146220%_ _%self146215%_)
                   (_%message146234%_
                    (if (string? _%message146216%_)
                        _%message146216%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g146229146231%_)
                           (display _%message146216%_ _%$%g146229146231%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146220%_
                 _%message146234%_
                 __message146534
                 '#f
                 '#f))
              (apply class-instance-init! _%self146220%_ _%rest146217%_))))))
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
      (lambda (_%self145920%_ _%port145921%_)
        (let ((_%self145924%_ _%self145920%_))
          (let ((_%tmp-port145934%_ (open-output-string))
                (_%display-error-newline145935%_
                 (> (output-port-column _%port145921%_) '0)))
            (fix-port-width! _%tmp-port145934%_)
            (let ((__tmp146624
                   (lambda ()
                     (if _%display-error-newline145935%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e145938%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self145924%_ 'where))))
                       (if _%$e145938%_ (display _%$e145938%_) (display '"?")))
                     (let ((__tmp146625
                            (let ((__tmp146626
                                   (let ((_%obj145942%_ _%self145924%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj145942%_))
                                         (let ((_%obj145947%_ _%obj145942%_))
                                           (declare (not safe))
                                           (__object-class _%obj145947%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj145942%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp146626))))
                       (declare (not safe))
                       (display* '" [" __tmp146625 '"]: "))
                     (let ((__tmp146627
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self145924%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp146627))
                     (let ((_%irritants145962%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self145924%_ 'irritants))))
                       (if (null? _%irritants145962%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj145964%_)
                                (if (u8vector? _%obj145964%_)
                                    (let ((__tmp146628
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj145964%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp146628))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj145964%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants145962%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont145965145967%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self145924%_
                                   'continuation))))
                           (if _%$%cont145965145967%_
                               (let ((_%cont145969%_ _%$%cont145965145967%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont145969%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp146624
               current-output-port
               _%tmp-port145934%_))
            (let ((__tmp146629 (get-output-string _%tmp-port145934%_)))
              (declare (not safe))
              (##write-string __tmp146629 _%port145921%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass146536 __method-table146537)
        (let ((__message146538
               (let ((__slot146542
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146536 'message))))
                 (if __slot146542
                     __slot146542
                     (error '"Unknown slot" 'message))))
              (__where146539
               (let ((__slot146543
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146536 'where))))
                 (if __slot146543
                     __slot146543
                     (error '"Unknown slot" 'where))))
              (__continuation146540
               (let ((__slot146544
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146536 'continuation))))
                 (if __slot146544
                     __slot146544
                     (error '"Unknown slot" 'continuation))))
              (__irritants146541
               (let ((__slot146545
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146536 'irritants))))
                 (if __slot146545
                     __slot146545
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self145920%_ _%port145921%_)
            (let ((_%self145924%_ _%self145920%_))
              (let ((_%tmp-port145934%_ (open-output-string))
                    (_%display-error-newline145935%_
                     (> (output-port-column _%port145921%_) '0)))
                (fix-port-width! _%tmp-port145934%_)
                (let ((__tmp146630
                       (lambda ()
                         (if _%display-error-newline145935%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e145938%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self145924%_
                                   __where146539
                                   '#f
                                   '#f))))
                           (if _%$e145938%_
                               (display _%$e145938%_)
                               (display '"?")))
                         (let ((__tmp146631
                                (let ((__tmp146632
                                       (let ((_%obj145942%_ _%self145924%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj145942%_))
                                             (let ((_%obj145947%_
                                                    _%obj145942%_))
                                               (declare (not safe))
                                               (__object-class _%obj145947%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj145942%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp146632))))
                           (declare (not safe))
                           (display* '" [" __tmp146631 '"]: "))
                         (let ((__tmp146633
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self145924%_
                                   __message146538
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp146633))
                         (let ((_%irritants145962%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self145924%_
                                   __irritants146541
                                   '#f
                                   '#f))))
                           (if (null? _%irritants145962%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj145964%_)
                                    (if (u8vector? _%obj145964%_)
                                        (let ((__tmp146634
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj145964%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp146634))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj145964%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants145962%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont145965145967%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self145924%_
                                       __continuation146540
                                       '#f
                                       '#f))))
                               (if _%$%cont145965145967%_
                                   (let ((_%cont145969%_
                                          _%$%cont145965145967%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont145969%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp146630
                   current-output-port
                   _%tmp-port145934%_))
                (let ((__tmp146635 (get-output-string _%tmp-port145934%_)))
                  (declare (not safe))
                  (##write-string __tmp146635 _%port145921%_))))))))
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
      (lambda (_%self145777%_ _%port145778%_)
        (let* ((_%self145781%_ _%self145777%_)
               (_%tmp-port145791%_ (open-output-string)))
          (fix-port-width! _%tmp-port145791%_)
          (let ((__tmp146636
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self145781%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp146636 _%tmp-port145791%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont145792145794%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self145781%_ 'continuation))))
                (if _%$%cont145792145794%_
                    (let ((_%cont145796%_ _%$%cont145792145794%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port145791%_)
                      (newline _%tmp-port145791%_)
                      (display-continuation-backtrace
                       _%cont145796%_
                       _%tmp-port145791%_))
                    '#f))
              '#!void)
          (let ((__tmp146637 (get-output-string _%tmp-port145791%_)))
            (declare (not safe))
            (##write-string __tmp146637 _%port145778%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass146546 __method-table146547)
        (let ((__exception146548
               (let ((__slot146550
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146546 'exception))))
                 (if __slot146550
                     __slot146550
                     (error '"Unknown slot" 'exception))))
              (__continuation146549
               (let ((__slot146551
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass146546 'continuation))))
                 (if __slot146551
                     __slot146551
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self145777%_ _%port145778%_)
            (let* ((_%self145781%_ _%self145777%_)
                   (_%tmp-port145791%_ (open-output-string)))
              (fix-port-width! _%tmp-port145791%_)
              (let ((__tmp146638
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self145781%_
                        __exception146548
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp146638 _%tmp-port145791%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont145792145794%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self145781%_
                            __continuation146549
                            '#f
                            '#f))))
                    (if _%$%cont145792145794%_
                        (let ((_%cont145796%_ _%$%cont145792145794%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port145791%_)
                          (newline _%tmp-port145791%_)
                          (display-continuation-backtrace
                           _%cont145796%_
                           _%tmp-port145791%_))
                        '#f))
                  '#!void)
              (let ((__tmp146639 (get-output-string _%tmp-port145791%_)))
                (declare (not safe))
                (##write-string __tmp146639 _%port145778%_)))))))
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
      (lambda (_%port145649%_)
        (if (macro-character-port? _%port145649%_)
            (let ((_%old-width145651%_
                   (macro-character-port-output-width _%port145649%_)))
              (macro-character-port-output-width-set!
               _%port145649%_
               (lambda (_%port145653%_) '512))
              _%old-width145651%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port145646%_ _%old-width145647%_)
        (if (macro-character-port? _%port145646%_)
            (macro-character-port-output-width-set!
             _%port145646%_
             _%old-width145647%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e145644%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e145644%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn145638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145638%_))
            (let ((_%e145641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145638%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e145641%_))
            (macro-abandoned-mutex-exception? _%exn145638%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn145634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145634%_))
            (let ((_%e145636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145634%_ 'exception))))
              (macro-cfun-conversion-exception? _%e145636%_))
            (macro-cfun-conversion-exception? _%exn145634%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn145630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145630%_))
            (let ((_%e145632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145630%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145632%_)
                  (macro-cfun-conversion-exception-arguments _%e145632%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e145632%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145630%_)
                (macro-cfun-conversion-exception-arguments _%exn145630%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn145630%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn145626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145626%_))
            (let ((_%e145628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145626%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145628%_)
                  (macro-cfun-conversion-exception-code _%e145628%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e145628%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145626%_)
                (macro-cfun-conversion-exception-code _%exn145626%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn145626%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn145622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145622%_))
            (let ((_%e145624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145622%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145624%_)
                  (macro-cfun-conversion-exception-message _%e145624%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e145624%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145622%_)
                (macro-cfun-conversion-exception-message _%exn145622%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn145622%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn145616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145616%_))
            (let ((_%e145619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145616%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e145619%_)
                  (macro-cfun-conversion-exception-procedure _%e145619%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e145619%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn145616%_)
                (macro-cfun-conversion-exception-procedure _%exn145616%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn145616%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn145612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145612%_))
            (let ((_%e145614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145612%_ 'exception))))
              (macro-datum-parsing-exception? _%e145614%_))
            (macro-datum-parsing-exception? _%exn145612%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn145608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145608%_))
            (let ((_%e145610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145608%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e145610%_)
                  (macro-datum-parsing-exception-kind _%e145610%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e145610%_ '())))))
            (if (macro-datum-parsing-exception? _%exn145608%_)
                (macro-datum-parsing-exception-kind _%exn145608%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn145608%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn145604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145604%_))
            (let ((_%e145606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145604%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e145606%_)
                  (macro-datum-parsing-exception-parameters _%e145606%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e145606%_ '())))))
            (if (macro-datum-parsing-exception? _%exn145604%_)
                (macro-datum-parsing-exception-parameters _%exn145604%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn145604%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn145598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145598%_))
            (let ((_%e145601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145598%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e145601%_)
                  (macro-datum-parsing-exception-readenv _%e145601%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e145601%_ '())))))
            (if (macro-datum-parsing-exception? _%exn145598%_)
                (macro-datum-parsing-exception-readenv _%exn145598%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn145598%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn145592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145592%_))
            (let ((_%e145595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145592%_ 'exception))))
              (macro-deadlock-exception? _%e145595%_))
            (macro-deadlock-exception? _%exn145592%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn145588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145588%_))
            (let ((_%e145590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145588%_ 'exception))))
              (macro-divide-by-zero-exception? _%e145590%_))
            (macro-divide-by-zero-exception? _%exn145588%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn145584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145584%_))
            (let ((_%e145586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145584%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e145586%_)
                  (macro-divide-by-zero-exception-arguments _%e145586%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e145586%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn145584%_)
                (macro-divide-by-zero-exception-arguments _%exn145584%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn145584%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn145578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145578%_))
            (let ((_%e145581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145578%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e145581%_)
                  (macro-divide-by-zero-exception-procedure _%e145581%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e145581%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn145578%_)
                (macro-divide-by-zero-exception-procedure _%exn145578%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn145578%_ '())))))))
    (define error-exception?
      (lambda (_%exn145574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145574%_))
            (let ((_%e145576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145574%_ 'exception))))
              (macro-error-exception? _%e145576%_))
            (macro-error-exception? _%exn145574%_))))
    (define error-exception-message
      (lambda (_%exn145570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145570%_))
            (let ((_%e145572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145570%_ 'exception))))
              (if (macro-error-exception? _%e145572%_)
                  (macro-error-exception-message _%e145572%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e145572%_ '())))))
            (if (macro-error-exception? _%exn145570%_)
                (macro-error-exception-message _%exn145570%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn145570%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn145564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145564%_))
            (let ((_%e145567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145564%_ 'exception))))
              (if (macro-error-exception? _%e145567%_)
                  (macro-error-exception-parameters _%e145567%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e145567%_ '())))))
            (if (macro-error-exception? _%exn145564%_)
                (macro-error-exception-parameters _%exn145564%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn145564%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn145560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145560%_))
            (let ((_%e145562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145560%_ 'exception))))
              (macro-expression-parsing-exception? _%e145562%_))
            (macro-expression-parsing-exception? _%exn145560%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn145556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145556%_))
            (let ((_%e145558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145556%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e145558%_)
                  (macro-expression-parsing-exception-kind _%e145558%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e145558%_ '())))))
            (if (macro-expression-parsing-exception? _%exn145556%_)
                (macro-expression-parsing-exception-kind _%exn145556%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn145556%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn145552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145552%_))
            (let ((_%e145554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145552%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e145554%_)
                  (macro-expression-parsing-exception-parameters _%e145554%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e145554%_ '())))))
            (if (macro-expression-parsing-exception? _%exn145552%_)
                (macro-expression-parsing-exception-parameters _%exn145552%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn145552%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn145546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145546%_))
            (let ((_%e145549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145546%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e145549%_)
                  (macro-expression-parsing-exception-source _%e145549%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e145549%_ '())))))
            (if (macro-expression-parsing-exception? _%exn145546%_)
                (macro-expression-parsing-exception-source _%exn145546%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn145546%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn145542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145542%_))
            (let ((_%e145544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145542%_ 'exception))))
              (macro-file-exists-exception? _%e145544%_))
            (macro-file-exists-exception? _%exn145542%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn145538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145538%_))
            (let ((_%e145540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145538%_ 'exception))))
              (if (macro-file-exists-exception? _%e145540%_)
                  (macro-file-exists-exception-arguments _%e145540%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e145540%_ '())))))
            (if (macro-file-exists-exception? _%exn145538%_)
                (macro-file-exists-exception-arguments _%exn145538%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn145538%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn145532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145532%_))
            (let ((_%e145535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145532%_ 'exception))))
              (if (macro-file-exists-exception? _%e145535%_)
                  (macro-file-exists-exception-procedure _%e145535%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e145535%_ '())))))
            (if (macro-file-exists-exception? _%exn145532%_)
                (macro-file-exists-exception-procedure _%exn145532%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn145532%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn145528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145528%_))
            (let ((_%e145530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145528%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e145530%_))
            (macro-fixnum-overflow-exception? _%exn145528%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn145524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145524%_))
            (let ((_%e145526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145524%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e145526%_)
                  (macro-fixnum-overflow-exception-arguments _%e145526%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e145526%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn145524%_)
                (macro-fixnum-overflow-exception-arguments _%exn145524%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn145524%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn145518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145518%_))
            (let ((_%e145521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145518%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e145521%_)
                  (macro-fixnum-overflow-exception-procedure _%e145521%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e145521%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn145518%_)
                (macro-fixnum-overflow-exception-procedure _%exn145518%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn145518%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn145512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145512%_))
            (let ((_%e145515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145512%_ 'exception))))
              (macro-heap-overflow-exception? _%e145515%_))
            (macro-heap-overflow-exception? _%exn145512%_))))
    (define inactive-thread-exception?
      (lambda (_%exn145508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145508%_))
            (let ((_%e145510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145508%_ 'exception))))
              (macro-inactive-thread-exception? _%e145510%_))
            (macro-inactive-thread-exception? _%exn145508%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn145504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145504%_))
            (let ((_%e145506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145504%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e145506%_)
                  (macro-inactive-thread-exception-arguments _%e145506%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e145506%_ '())))))
            (if (macro-inactive-thread-exception? _%exn145504%_)
                (macro-inactive-thread-exception-arguments _%exn145504%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn145504%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn145498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145498%_))
            (let ((_%e145501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145498%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e145501%_)
                  (macro-inactive-thread-exception-procedure _%e145501%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e145501%_ '())))))
            (if (macro-inactive-thread-exception? _%exn145498%_)
                (macro-inactive-thread-exception-procedure _%exn145498%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn145498%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn145494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145494%_))
            (let ((_%e145496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145494%_ 'exception))))
              (macro-initialized-thread-exception? _%e145496%_))
            (macro-initialized-thread-exception? _%exn145494%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn145490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145490%_))
            (let ((_%e145492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145490%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e145492%_)
                  (macro-initialized-thread-exception-arguments _%e145492%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e145492%_ '())))))
            (if (macro-initialized-thread-exception? _%exn145490%_)
                (macro-initialized-thread-exception-arguments _%exn145490%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn145490%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn145484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145484%_))
            (let ((_%e145487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145484%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e145487%_)
                  (macro-initialized-thread-exception-procedure _%e145487%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e145487%_ '())))))
            (if (macro-initialized-thread-exception? _%exn145484%_)
                (macro-initialized-thread-exception-procedure _%exn145484%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn145484%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn145480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145480%_))
            (let ((_%e145482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145480%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e145482%_))
            (macro-invalid-hash-number-exception? _%exn145480%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn145476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145476%_))
            (let ((_%e145478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145476%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e145478%_)
                  (macro-invalid-hash-number-exception-arguments _%e145478%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e145478%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn145476%_)
                (macro-invalid-hash-number-exception-arguments _%exn145476%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn145476%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn145470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145470%_))
            (let ((_%e145473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145470%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e145473%_)
                  (macro-invalid-hash-number-exception-procedure _%e145473%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e145473%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn145470%_)
                (macro-invalid-hash-number-exception-procedure _%exn145470%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn145470%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn145466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145466%_))
            (let ((_%e145468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145466%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e145468%_))
            (macro-invalid-utf8-encoding-exception? _%exn145466%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn145462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145462%_))
            (let ((_%e145464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145462%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e145464%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e145464%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e145464%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn145462%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn145462%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn145462%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn145456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145456%_))
            (let ((_%e145459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145456%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e145459%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e145459%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e145459%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn145456%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn145456%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn145456%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn145452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145452%_))
            (let ((_%e145454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145452%_ 'exception))))
              (macro-join-timeout-exception? _%e145454%_))
            (macro-join-timeout-exception? _%exn145452%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn145448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145448%_))
            (let ((_%e145450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145448%_ 'exception))))
              (if (macro-join-timeout-exception? _%e145450%_)
                  (macro-join-timeout-exception-arguments _%e145450%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e145450%_ '())))))
            (if (macro-join-timeout-exception? _%exn145448%_)
                (macro-join-timeout-exception-arguments _%exn145448%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn145448%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn145442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145442%_))
            (let ((_%e145445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145442%_ 'exception))))
              (if (macro-join-timeout-exception? _%e145445%_)
                  (macro-join-timeout-exception-procedure _%e145445%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e145445%_ '())))))
            (if (macro-join-timeout-exception? _%exn145442%_)
                (macro-join-timeout-exception-procedure _%exn145442%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn145442%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn145438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145438%_))
            (let ((_%e145440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145438%_ 'exception))))
              (macro-keyword-expected-exception? _%e145440%_))
            (macro-keyword-expected-exception? _%exn145438%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn145434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145434%_))
            (let ((_%e145436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145434%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e145436%_)
                  (macro-keyword-expected-exception-arguments _%e145436%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e145436%_ '())))))
            (if (macro-keyword-expected-exception? _%exn145434%_)
                (macro-keyword-expected-exception-arguments _%exn145434%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn145434%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn145428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145428%_))
            (let ((_%e145431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145428%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e145431%_)
                  (macro-keyword-expected-exception-procedure _%e145431%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e145431%_ '())))))
            (if (macro-keyword-expected-exception? _%exn145428%_)
                (macro-keyword-expected-exception-procedure _%exn145428%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn145428%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn145424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145424%_))
            (let ((_%e145426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145424%_ 'exception))))
              (macro-length-mismatch-exception? _%e145426%_))
            (macro-length-mismatch-exception? _%exn145424%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn145420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145420%_))
            (let ((_%e145422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145420%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e145422%_)
                  (macro-length-mismatch-exception-arg-id _%e145422%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e145422%_ '())))))
            (if (macro-length-mismatch-exception? _%exn145420%_)
                (macro-length-mismatch-exception-arg-id _%exn145420%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn145420%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn145416%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145416%_))
            (let ((_%e145418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145416%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e145418%_)
                  (macro-length-mismatch-exception-arguments _%e145418%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e145418%_ '())))))
            (if (macro-length-mismatch-exception? _%exn145416%_)
                (macro-length-mismatch-exception-arguments _%exn145416%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn145416%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn145410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145410%_))
            (let ((_%e145413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145410%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e145413%_)
                  (macro-length-mismatch-exception-procedure _%e145413%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e145413%_ '())))))
            (if (macro-length-mismatch-exception? _%exn145410%_)
                (macro-length-mismatch-exception-procedure _%exn145410%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn145410%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn145406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145406%_))
            (let ((_%e145408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145406%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e145408%_))
            (macro-mailbox-receive-timeout-exception? _%exn145406%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn145402%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145402%_))
            (let ((_%e145404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145402%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e145404%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e145404%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e145404%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn145402%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn145402%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn145402%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn145396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145396%_))
            (let ((_%e145399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145396%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e145399%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e145399%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e145399%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn145396%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn145396%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn145396%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn145392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145392%_))
            (let ((_%e145394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145392%_ 'exception))))
              (macro-module-not-found-exception? _%e145394%_))
            (macro-module-not-found-exception? _%exn145392%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn145388%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145388%_))
            (let ((_%e145390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145388%_ 'exception))))
              (if (macro-module-not-found-exception? _%e145390%_)
                  (macro-module-not-found-exception-arguments _%e145390%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e145390%_ '())))))
            (if (macro-module-not-found-exception? _%exn145388%_)
                (macro-module-not-found-exception-arguments _%exn145388%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn145388%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn145382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145382%_))
            (let ((_%e145385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145382%_ 'exception))))
              (if (macro-module-not-found-exception? _%e145385%_)
                  (macro-module-not-found-exception-procedure _%e145385%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e145385%_ '())))))
            (if (macro-module-not-found-exception? _%exn145382%_)
                (macro-module-not-found-exception-procedure _%exn145382%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn145382%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn145376%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145376%_))
            (let ((_%e145379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145376%_ 'exception))))
              (macro-multiple-c-return-exception? _%e145379%_))
            (macro-multiple-c-return-exception? _%exn145376%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn145372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145372%_))
            (let ((_%e145374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145372%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e145374%_))
            (macro-no-such-file-or-directory-exception? _%exn145372%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn145368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145368%_))
            (let ((_%e145370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145368%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e145370%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e145370%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e145370%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn145368%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn145368%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn145368%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn145362%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145362%_))
            (let ((_%e145365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145362%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e145365%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e145365%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e145365%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn145362%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn145362%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn145362%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn145358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145358%_))
            (let ((_%e145360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145358%_ 'exception))))
              (macro-noncontinuable-exception? _%e145360%_))
            (macro-noncontinuable-exception? _%exn145358%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn145352%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145352%_))
            (let ((_%e145355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145352%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e145355%_)
                  (macro-noncontinuable-exception-reason _%e145355%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e145355%_ '())))))
            (if (macro-noncontinuable-exception? _%exn145352%_)
                (macro-noncontinuable-exception-reason _%exn145352%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn145352%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn145348%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145348%_))
            (let ((_%e145350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145348%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e145350%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn145348%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn145344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145344%_))
            (let ((_%e145346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145344%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e145346%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e145346%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e145346%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn145344%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn145344%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn145344%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn145338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145338%_))
            (let ((_%e145341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145338%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e145341%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e145341%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e145341%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn145338%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn145338%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn145338%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn145334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145334%_))
            (let ((_%e145336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145334%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e145336%_))
            (macro-nonprocedure-operator-exception? _%exn145334%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn145330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145330%_))
            (let ((_%e145332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145330%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145332%_)
                  (macro-nonprocedure-operator-exception-arguments _%e145332%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e145332%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145330%_)
                (macro-nonprocedure-operator-exception-arguments _%exn145330%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn145330%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn145326%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145326%_))
            (let ((_%e145328%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145326%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145328%_)
                  (macro-nonprocedure-operator-exception-code _%e145328%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e145328%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145326%_)
                (macro-nonprocedure-operator-exception-code _%exn145326%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn145326%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn145322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145322%_))
            (let ((_%e145324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145322%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145324%_)
                  (macro-nonprocedure-operator-exception-operator _%e145324%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e145324%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145322%_)
                (macro-nonprocedure-operator-exception-operator _%exn145322%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn145322%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn145316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145316%_))
            (let ((_%e145319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145316%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e145319%_)
                  (macro-nonprocedure-operator-exception-rte _%e145319%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e145319%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn145316%_)
                (macro-nonprocedure-operator-exception-rte _%exn145316%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn145316%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn145312%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145312%_))
            (let ((_%e145314%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145312%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e145314%_))
            (macro-not-in-compilation-context-exception? _%exn145312%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn145308%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145308%_))
            (let ((_%e145310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145308%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e145310%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e145310%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e145310%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn145308%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn145308%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn145308%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn145302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145302%_))
            (let ((_%e145305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145302%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e145305%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e145305%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e145305%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn145302%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn145302%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn145302%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn145298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145298%_))
            (let ((_%e145300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145298%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e145300%_))
            (macro-number-of-arguments-limit-exception? _%exn145298%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn145294%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145294%_))
            (let ((_%e145296%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145294%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e145296%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e145296%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e145296%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn145294%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn145294%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn145294%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn145288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145288%_))
            (let ((_%e145291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145288%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e145291%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e145291%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e145291%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn145288%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn145288%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn145288%_ '())))))))
    (define os-exception?
      (lambda (_%exn145284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145284%_))
            (let ((_%e145286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145284%_ 'exception))))
              (macro-os-exception? _%e145286%_))
            (macro-os-exception? _%exn145284%_))))
    (define os-exception-arguments
      (lambda (_%exn145280%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145280%_))
            (let ((_%e145282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145280%_ 'exception))))
              (if (macro-os-exception? _%e145282%_)
                  (macro-os-exception-arguments _%e145282%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e145282%_ '())))))
            (if (macro-os-exception? _%exn145280%_)
                (macro-os-exception-arguments _%exn145280%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn145280%_ '())))))))
    (define os-exception-code
      (lambda (_%exn145276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145276%_))
            (let ((_%e145278%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145276%_ 'exception))))
              (if (macro-os-exception? _%e145278%_)
                  (macro-os-exception-code _%e145278%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e145278%_ '())))))
            (if (macro-os-exception? _%exn145276%_)
                (macro-os-exception-code _%exn145276%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn145276%_ '())))))))
    (define os-exception-message
      (lambda (_%exn145272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145272%_))
            (let ((_%e145274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145272%_ 'exception))))
              (if (macro-os-exception? _%e145274%_)
                  (macro-os-exception-message _%e145274%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e145274%_ '())))))
            (if (macro-os-exception? _%exn145272%_)
                (macro-os-exception-message _%exn145272%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn145272%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn145266%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145266%_))
            (let ((_%e145269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145266%_ 'exception))))
              (if (macro-os-exception? _%e145269%_)
                  (macro-os-exception-procedure _%e145269%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e145269%_ '())))))
            (if (macro-os-exception? _%exn145266%_)
                (macro-os-exception-procedure _%exn145266%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn145266%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn145262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145262%_))
            (let ((_%e145264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145262%_ 'exception))))
              (macro-permission-denied-exception? _%e145264%_))
            (macro-permission-denied-exception? _%exn145262%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn145258%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145258%_))
            (let ((_%e145260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145258%_ 'exception))))
              (if (macro-permission-denied-exception? _%e145260%_)
                  (macro-permission-denied-exception-arguments _%e145260%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e145260%_ '())))))
            (if (macro-permission-denied-exception? _%exn145258%_)
                (macro-permission-denied-exception-arguments _%exn145258%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn145258%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn145252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145252%_))
            (let ((_%e145255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145252%_ 'exception))))
              (if (macro-permission-denied-exception? _%e145255%_)
                  (macro-permission-denied-exception-procedure _%e145255%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e145255%_ '())))))
            (if (macro-permission-denied-exception? _%exn145252%_)
                (macro-permission-denied-exception-procedure _%exn145252%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn145252%_ '())))))))
    (define range-exception?
      (lambda (_%exn145248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145248%_))
            (let ((_%e145250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145248%_ 'exception))))
              (macro-range-exception? _%e145250%_))
            (macro-range-exception? _%exn145248%_))))
    (define range-exception-arg-id
      (lambda (_%exn145244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145244%_))
            (let ((_%e145246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145244%_ 'exception))))
              (if (macro-range-exception? _%e145246%_)
                  (macro-range-exception-arg-id _%e145246%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e145246%_ '())))))
            (if (macro-range-exception? _%exn145244%_)
                (macro-range-exception-arg-id _%exn145244%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn145244%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn145240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145240%_))
            (let ((_%e145242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145240%_ 'exception))))
              (if (macro-range-exception? _%e145242%_)
                  (macro-range-exception-arguments _%e145242%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e145242%_ '())))))
            (if (macro-range-exception? _%exn145240%_)
                (macro-range-exception-arguments _%exn145240%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn145240%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn145234%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145234%_))
            (let ((_%e145237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145234%_ 'exception))))
              (if (macro-range-exception? _%e145237%_)
                  (macro-range-exception-procedure _%e145237%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e145237%_ '())))))
            (if (macro-range-exception? _%exn145234%_)
                (macro-range-exception-procedure _%exn145234%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn145234%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn145230%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145230%_))
            (let ((_%e145232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145230%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e145232%_))
            (macro-rpc-remote-error-exception? _%exn145230%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn145226%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145226%_))
            (let ((_%e145228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145226%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e145228%_)
                  (macro-rpc-remote-error-exception-arguments _%e145228%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e145228%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn145226%_)
                (macro-rpc-remote-error-exception-arguments _%exn145226%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn145226%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn145222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145222%_))
            (let ((_%e145224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145222%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e145224%_)
                  (macro-rpc-remote-error-exception-message _%e145224%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e145224%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn145222%_)
                (macro-rpc-remote-error-exception-message _%exn145222%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn145222%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn145216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145216%_))
            (let ((_%e145219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145216%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e145219%_)
                  (macro-rpc-remote-error-exception-procedure _%e145219%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e145219%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn145216%_)
                (macro-rpc-remote-error-exception-procedure _%exn145216%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn145216%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn145212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145212%_))
            (let ((_%e145214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145212%_ 'exception))))
              (macro-scheduler-exception? _%e145214%_))
            (macro-scheduler-exception? _%exn145212%_))))
    (define scheduler-exception-reason
      (lambda (_%exn145206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145206%_))
            (let ((_%e145209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145206%_ 'exception))))
              (if (macro-scheduler-exception? _%e145209%_)
                  (macro-scheduler-exception-reason _%e145209%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e145209%_ '())))))
            (if (macro-scheduler-exception? _%exn145206%_)
                (macro-scheduler-exception-reason _%exn145206%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn145206%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn145202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145202%_))
            (let ((_%e145204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145202%_ 'exception))))
              (macro-sfun-conversion-exception? _%e145204%_))
            (macro-sfun-conversion-exception? _%exn145202%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn145198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145198%_))
            (let ((_%e145200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145198%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145200%_)
                  (macro-sfun-conversion-exception-arguments _%e145200%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e145200%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145198%_)
                (macro-sfun-conversion-exception-arguments _%exn145198%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn145198%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn145194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145194%_))
            (let ((_%e145196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145194%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145196%_)
                  (macro-sfun-conversion-exception-code _%e145196%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e145196%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145194%_)
                (macro-sfun-conversion-exception-code _%exn145194%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn145194%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn145190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145190%_))
            (let ((_%e145192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145190%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145192%_)
                  (macro-sfun-conversion-exception-message _%e145192%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e145192%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145190%_)
                (macro-sfun-conversion-exception-message _%exn145190%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn145190%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn145184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145184%_))
            (let ((_%e145187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145184%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e145187%_)
                  (macro-sfun-conversion-exception-procedure _%e145187%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e145187%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn145184%_)
                (macro-sfun-conversion-exception-procedure _%exn145184%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn145184%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn145178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145178%_))
            (let ((_%e145181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145178%_ 'exception))))
              (macro-stack-overflow-exception? _%e145181%_))
            (macro-stack-overflow-exception? _%exn145178%_))))
    (define started-thread-exception?
      (lambda (_%exn145174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145174%_))
            (let ((_%e145176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145174%_ 'exception))))
              (macro-started-thread-exception? _%e145176%_))
            (macro-started-thread-exception? _%exn145174%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn145170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145170%_))
            (let ((_%e145172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145170%_ 'exception))))
              (if (macro-started-thread-exception? _%e145172%_)
                  (macro-started-thread-exception-arguments _%e145172%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e145172%_ '())))))
            (if (macro-started-thread-exception? _%exn145170%_)
                (macro-started-thread-exception-arguments _%exn145170%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn145170%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn145164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145164%_))
            (let ((_%e145167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145164%_ 'exception))))
              (if (macro-started-thread-exception? _%e145167%_)
                  (macro-started-thread-exception-procedure _%e145167%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e145167%_ '())))))
            (if (macro-started-thread-exception? _%exn145164%_)
                (macro-started-thread-exception-procedure _%exn145164%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn145164%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn145160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145160%_))
            (let ((_%e145162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145160%_ 'exception))))
              (macro-terminated-thread-exception? _%e145162%_))
            (macro-terminated-thread-exception? _%exn145160%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn145156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145156%_))
            (let ((_%e145158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145156%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e145158%_)
                  (macro-terminated-thread-exception-arguments _%e145158%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e145158%_ '())))))
            (if (macro-terminated-thread-exception? _%exn145156%_)
                (macro-terminated-thread-exception-arguments _%exn145156%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn145156%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn145150%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145150%_))
            (let ((_%e145153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145150%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e145153%_)
                  (macro-terminated-thread-exception-procedure _%e145153%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e145153%_ '())))))
            (if (macro-terminated-thread-exception? _%exn145150%_)
                (macro-terminated-thread-exception-procedure _%exn145150%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn145150%_ '())))))))
    (define type-exception?
      (lambda (_%exn145146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145146%_))
            (let ((_%e145148%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145146%_ 'exception))))
              (macro-type-exception? _%e145148%_))
            (macro-type-exception? _%exn145146%_))))
    (define type-exception-arg-id
      (lambda (_%exn145142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145142%_))
            (let ((_%e145144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145142%_ 'exception))))
              (if (macro-type-exception? _%e145144%_)
                  (macro-type-exception-arg-id _%e145144%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e145144%_ '())))))
            (if (macro-type-exception? _%exn145142%_)
                (macro-type-exception-arg-id _%exn145142%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn145142%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn145138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145138%_))
            (let ((_%e145140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145138%_ 'exception))))
              (if (macro-type-exception? _%e145140%_)
                  (macro-type-exception-arguments _%e145140%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e145140%_ '())))))
            (if (macro-type-exception? _%exn145138%_)
                (macro-type-exception-arguments _%exn145138%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn145138%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn145134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145134%_))
            (let ((_%e145136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145134%_ 'exception))))
              (if (macro-type-exception? _%e145136%_)
                  (macro-type-exception-procedure _%e145136%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e145136%_ '())))))
            (if (macro-type-exception? _%exn145134%_)
                (macro-type-exception-procedure _%exn145134%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn145134%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn145128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145128%_))
            (let ((_%e145131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145128%_ 'exception))))
              (if (macro-type-exception? _%e145131%_)
                  (macro-type-exception-type-id _%e145131%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e145131%_ '())))))
            (if (macro-type-exception? _%exn145128%_)
                (macro-type-exception-type-id _%exn145128%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn145128%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn145124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145124%_))
            (let ((_%e145126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145124%_ 'exception))))
              (macro-unbound-global-exception? _%e145126%_))
            (macro-unbound-global-exception? _%exn145124%_))))
    (define unbound-global-exception-code
      (lambda (_%exn145120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145120%_))
            (let ((_%e145122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145120%_ 'exception))))
              (if (macro-unbound-global-exception? _%e145122%_)
                  (macro-unbound-global-exception-code _%e145122%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e145122%_ '())))))
            (if (macro-unbound-global-exception? _%exn145120%_)
                (macro-unbound-global-exception-code _%exn145120%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn145120%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn145116%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145116%_))
            (let ((_%e145118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145116%_ 'exception))))
              (if (macro-unbound-global-exception? _%e145118%_)
                  (macro-unbound-global-exception-rte _%e145118%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e145118%_ '())))))
            (if (macro-unbound-global-exception? _%exn145116%_)
                (macro-unbound-global-exception-rte _%exn145116%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn145116%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn145110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145110%_))
            (let ((_%e145113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145110%_ 'exception))))
              (if (macro-unbound-global-exception? _%e145113%_)
                  (macro-unbound-global-exception-variable _%e145113%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e145113%_ '())))))
            (if (macro-unbound-global-exception? _%exn145110%_)
                (macro-unbound-global-exception-variable _%exn145110%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn145110%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn145106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145106%_))
            (let ((_%e145108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145106%_ 'exception))))
              (macro-unbound-key-exception? _%e145108%_))
            (macro-unbound-key-exception? _%exn145106%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn145102%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145102%_))
            (let ((_%e145104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145102%_ 'exception))))
              (if (macro-unbound-key-exception? _%e145104%_)
                  (macro-unbound-key-exception-arguments _%e145104%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e145104%_ '())))))
            (if (macro-unbound-key-exception? _%exn145102%_)
                (macro-unbound-key-exception-arguments _%exn145102%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn145102%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn145096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145096%_))
            (let ((_%e145099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145096%_ 'exception))))
              (if (macro-unbound-key-exception? _%e145099%_)
                  (macro-unbound-key-exception-procedure _%e145099%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e145099%_ '())))))
            (if (macro-unbound-key-exception? _%exn145096%_)
                (macro-unbound-key-exception-procedure _%exn145096%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn145096%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn145092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145092%_))
            (let ((_%e145094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145092%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e145094%_))
            (macro-unbound-os-environment-variable-exception? _%exn145092%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn145088%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145088%_))
            (let ((_%e145090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145088%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e145090%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e145090%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e145090%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn145088%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn145088%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn145088%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn145082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145082%_))
            (let ((_%e145085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145082%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e145085%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e145085%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e145085%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn145082%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn145082%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn145082%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn145078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145078%_))
            (let ((_%e145080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145078%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e145080%_))
            (macro-unbound-serial-number-exception? _%exn145078%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn145074%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145074%_))
            (let ((_%e145076%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145074%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e145076%_)
                  (macro-unbound-serial-number-exception-arguments _%e145076%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e145076%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn145074%_)
                (macro-unbound-serial-number-exception-arguments _%exn145074%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn145074%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn145068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145068%_))
            (let ((_%e145071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145068%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e145071%_)
                  (macro-unbound-serial-number-exception-procedure _%e145071%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e145071%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn145068%_)
                (macro-unbound-serial-number-exception-procedure _%exn145068%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn145068%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn145064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145064%_))
            (let ((_%e145066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145064%_ 'exception))))
              (macro-uncaught-exception? _%e145066%_))
            (macro-uncaught-exception? _%exn145064%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn145060%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145060%_))
            (let ((_%e145062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145060%_ 'exception))))
              (if (macro-uncaught-exception? _%e145062%_)
                  (macro-uncaught-exception-arguments _%e145062%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e145062%_ '())))))
            (if (macro-uncaught-exception? _%exn145060%_)
                (macro-uncaught-exception-arguments _%exn145060%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn145060%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn145056%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145056%_))
            (let ((_%e145058%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145056%_ 'exception))))
              (if (macro-uncaught-exception? _%e145058%_)
                  (macro-uncaught-exception-procedure _%e145058%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e145058%_ '())))))
            (if (macro-uncaught-exception? _%exn145056%_)
                (macro-uncaught-exception-procedure _%exn145056%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn145056%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn145050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145050%_))
            (let ((_%e145053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145050%_ 'exception))))
              (if (macro-uncaught-exception? _%e145053%_)
                  (macro-uncaught-exception-reason _%e145053%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e145053%_ '())))))
            (if (macro-uncaught-exception? _%exn145050%_)
                (macro-uncaught-exception-reason _%exn145050%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn145050%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn145046%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145046%_))
            (let ((_%e145048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145046%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e145048%_))
            (macro-uninitialized-thread-exception? _%exn145046%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn145042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145042%_))
            (let ((_%e145044%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145042%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e145044%_)
                  (macro-uninitialized-thread-exception-arguments _%e145044%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e145044%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn145042%_)
                (macro-uninitialized-thread-exception-arguments _%exn145042%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn145042%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn145036%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145036%_))
            (let ((_%e145039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145036%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e145039%_)
                  (macro-uninitialized-thread-exception-procedure _%e145039%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e145039%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn145036%_)
                (macro-uninitialized-thread-exception-procedure _%exn145036%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn145036%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn145032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145032%_))
            (let ((_%e145034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145032%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e145034%_))
            (macro-unknown-keyword-argument-exception? _%exn145032%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn145028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145028%_))
            (let ((_%e145030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145028%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e145030%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e145030%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e145030%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn145028%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn145028%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn145028%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn145022%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145022%_))
            (let ((_%e145025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145022%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e145025%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e145025%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e145025%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn145022%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn145022%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn145022%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn145018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145018%_))
            (let ((_%e145020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145018%_ 'exception))))
              (macro-unterminated-process-exception? _%e145020%_))
            (macro-unterminated-process-exception? _%exn145018%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn145014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145014%_))
            (let ((_%e145016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145014%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e145016%_)
                  (macro-unterminated-process-exception-arguments _%e145016%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e145016%_ '())))))
            (if (macro-unterminated-process-exception? _%exn145014%_)
                (macro-unterminated-process-exception-arguments _%exn145014%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn145014%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn145008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145008%_))
            (let ((_%e145011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145008%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e145011%_)
                  (macro-unterminated-process-exception-procedure _%e145011%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e145011%_ '())))))
            (if (macro-unterminated-process-exception? _%exn145008%_)
                (macro-unterminated-process-exception-procedure _%exn145008%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn145008%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn145004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145004%_))
            (let ((_%e145006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145004%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e145006%_))
            (macro-wrong-number-of-arguments-exception? _%exn145004%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn145000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn145000%_))
            (let ((_%e145002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn145000%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e145002%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e145002%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e145002%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn145000%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn145000%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn145000%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn144994%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144994%_))
            (let ((_%e144997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144994%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e144997%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e144997%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e144997%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn144994%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn144994%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn144994%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn144990%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144990%_))
            (let ((_%e144992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144990%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e144992%_))
            (macro-wrong-number-of-values-exception? _%exn144990%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn144986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144986%_))
            (let ((_%e144988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144986%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e144988%_)
                  (macro-wrong-number-of-values-exception-code _%e144988%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e144988%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn144986%_)
                (macro-wrong-number-of-values-exception-code _%exn144986%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn144986%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn144982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144982%_))
            (let ((_%e144984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144982%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e144984%_)
                  (macro-wrong-number-of-values-exception-rte _%e144984%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e144984%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn144982%_)
                (macro-wrong-number-of-values-exception-rte _%exn144982%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn144982%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn144976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144976%_))
            (let ((_%e144979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144976%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e144979%_)
                  (macro-wrong-number-of-values-exception-vals _%e144979%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e144979%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn144976%_)
                (macro-wrong-number-of-values-exception-vals _%exn144976%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn144976%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn144970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144970%_))
            (let ((_%e144973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144970%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e144973%_))
            (macro-wrong-processor-c-return-exception? _%exn144970%_))))))
