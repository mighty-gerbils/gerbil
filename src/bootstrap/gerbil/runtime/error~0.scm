(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771037607)
  (begin
    (define Exception::t
      (let ((__tmp150696 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp150696
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args150614%_
        (apply make-instance Exception::t _%$args150614%_)))
    (define StackTrace::t
      (let ((__tmp150697 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp150697
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args150611%_
        (apply make-instance StackTrace::t _%$args150611%_)))
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
      (let ((__tmp150698 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp150698
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args150608%_ (apply make-instance Error::t _%$args150608%_)))
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
      (let ((__tmp150699 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp150699
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args150605%_
        (apply make-instance ContractViolation::t _%$args150605%_)))
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
      (let ((__tmp150700 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp150700
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args150602%_
        (apply make-instance RuntimeException::t _%$args150602%_)))
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
      (lambda (_%exn150597%_ _%continue150598%_)
        (let ((_%exn150600%_ (wrap-runtime-exception _%exn150597%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn150600%_ _%continue150598%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn150593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn150593%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn150593%_ 'continuation))
                '#!void
                (let ((__tmp150701
                       (lambda (_%cont150595%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn150593%_
                            'continuation
                            _%cont150595%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp150701)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn150593%_))))
    (define error
      (lambda (_%message150590%_ . _%irritants150591%_)
        (raise (let ((__obj150693
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj150693
                  _%message150590%_
                  'irritants:
                  _%irritants150591%_)
                 __obj150693))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords150565%_
               _%ctx150560150566%_
               _%contract-expr150561150567%_
               _%value150562150568%_
               _%message150569%_)
        (let* ((_%ctx150571%_
                (if (eq? _%ctx150560150566%_ absent-value)
                    '#f
                    _%ctx150560150566%_))
               (_%contract-expr150573%_
                (if (eq? _%contract-expr150561150567%_ absent-value)
                    '#f
                    _%contract-expr150561150567%_))
               (_%value150575%_
                (if (eq? _%value150562150568%_ absent-value)
                    '#f
                    _%value150562150568%_)))
          (raise (let ((__obj150694
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj150694
                    _%message150569%_
                    'where:
                    _%ctx150571%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr150573%_
                                (cons 'value: (cons _%value150575%_ '())))))
                   __obj150694)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords150580%_ . _%args150581%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords150580%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150580%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150580%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150580%_
                  'value:
                  absent-value))
               _%args150581%_)))
    (define __raise-contract-violation-error
      (lambda _%args150563150587%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args150563150587%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler150534%_ _%thunk150535%_)
        (let* ((_%handler150538%_ _%handler150534%_)
               (_%thunk150546%_ _%thunk150535%_)
               (__tmp150702
                (lambda (_%exn150555%_)
                  (let ((_%exn150557%_ (wrap-runtime-exception _%exn150555%_)))
                    (declare (not safe))
                    (_%handler150538%_ _%exn150557%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp150702 _%thunk150546%_))))
    (define with-exception-handler
      (lambda (_%handler148569%_ _%thunk148570%_)
        (if (procedure? _%handler148569%_)
            (let ((_%handler148574%_ _%handler148569%_))
              (if (procedure? _%thunk148570%_)
                  (let ((_%thunk148584%_ _%thunk148570%_))
                    (__with-exception-handler
                     _%handler148574%_
                     _%thunk148584%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk148570%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler148569%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler150476%_ _%thunk150477%_)
        (let* ((_%handler150480%_ _%handler150476%_)
               (_%thunk150488%_ _%thunk150477%_)
               (__tmp150703
                (lambda (_%cont150497%_)
                  (let* ((_%handler150501%_
                          (lambda (_%exn150499%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont150497%_
                               _%handler150480%_
                               _%exn150499%_))))
                         (_%thunk150504%_ _%thunk150488%_)
                         (_%handler150509%_ _%handler150501%_)
                         (_%thunk150524%_ _%thunk150504%_))
                    (__with-exception-handler
                     _%handler150509%_
                     _%thunk150524%_)))))
          (declare (not safe))
          (##continuation-capture __tmp150703))))
    (define with-catch
      (lambda (_%handler148714%_ _%thunk148715%_)
        (if (procedure? _%handler148714%_)
            (let ((_%handler148719%_ _%handler148714%_))
              (if (procedure? _%thunk148715%_)
                  (let ((_%thunk148729%_ _%thunk148715%_))
                    (__with-catch _%handler148719%_ _%thunk148729%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk148715%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler148714%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn150463%_)
        (if (or (heap-overflow-exception? _%exn150463%_)
                (stack-overflow-exception? _%exn150463%_))
            _%exn150463%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn150463%_))
                _%exn150463%_
                (if (macro-exception? _%exn150463%_)
                    (let ((_%rte150471%_
                           (let ((__obj150695
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj150695
                                _%exn150463%_
                                '2
                                '#f
                                '#f))
                             __obj150695)))
                      (let ((__tmp150704
                             (lambda (_%cont150473%_)
                               (let ((__tmp150705
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont150473%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte150471%_
                                  'continuation
                                  __tmp150705)))))
                        (declare (not safe))
                        (##continuation-capture __tmp150704))
                      _%rte150471%_)
                    _%exn150463%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj150458%_)
        (let ((_%$e150460%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj150458%_))))
          (if _%$e150460%_ _%$e150460%_ (error-exception? _%obj150458%_)))))
    (define error-message
      (lambda (_%obj150417%_)
        (let ((_%$e150453%_
               (let* ((_%obj150419%_ _%obj150417%_)
                      (_%slot150422%_ 'message)
                      (_%E150425%_ false)
                      (_%slot150430%_ _%slot150422%_)
                      (_%E150443%_ _%E150425%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj150419%_ _%slot150430%_ _%E150443%_))))
          (if _%$e150453%_
              _%$e150453%_
              (if (error-exception? _%obj150417%_)
                  (error-exception-message _%obj150417%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj150412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj150412%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj150412%_ 'irritants))
            (if (error-exception? _%obj150412%_)
                (error-exception-parameters _%obj150412%_)
                '#f))))
    (define error-trace
      (lambda (_%obj150410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj150410%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj150410%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e150371%_ _%port150372%_)
        (let ((_%$e150394%_
               (let* ((_%obj150374%_ _%e150371%_)
                      (_%id150377%_ 'display-exception)
                      (_%id150382%_ _%id150377%_))
                 (declare (not safe))
                 (__method-ref _%obj150374%_ _%id150382%_))))
          (if _%$e150394%_
              ((lambda (_%f150397%_) (_%f150397%_ _%e150371%_ _%port150372%_))
               _%$e150394%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e150371%_ _%port150372%_))))))
    (define display-exception__0
      (lambda (_%e150403%_)
        (let ((_%port150405%_ (current-error-port)))
          (display-exception__% _%e150403%_ _%port150405%_))))
    (define display-exception
      (lambda _g150706_
        (let ((_g150707_ (let () (declare (not safe)) (##length _g150706_))))
          (cond ((let () (declare (not safe)) (##fx= _g150707_ 1))
                 (apply display-exception__0 _g150706_))
                ((let () (declare (not safe)) (##fx= _g150707_ 2))
                 (apply display-exception__% _g150706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g150706_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self150349%_ _%message150350%_ . _%rest150351%_)
        (let* ((_%self150354%_ _%self150349%_)
               (_%message150368%_
                (if (string? _%message150350%_)
                    _%message150350%_
                    (call-with-output-string
                     '""
                     (lambda (_%g150363150365%_)
                       (display _%message150350%_ _%g150363150365%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self150354%_ 'message _%message150368%_))
          (apply class-instance-init! _%self150354%_ _%rest150351%_))))
    (define Error:::init!::specialize
      (lambda (__klass150616 __method-table150617)
        (let ((__message150618
               (let ((__slot150619
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150616 'message))))
                 (if __slot150619
                     __slot150619
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self150349%_ _%message150350%_ . _%rest150351%_)
            (let* ((_%self150354%_ _%self150349%_)
                   (_%message150368%_
                    (if (string? _%message150350%_)
                        _%message150350%_
                        (call-with-output-string
                         '""
                         (lambda (_%g150363150365%_)
                           (display _%message150350%_ _%g150363150365%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self150354%_
                 _%message150368%_
                 __message150618
                 '#f
                 '#f))
              (apply class-instance-init! _%self150354%_ _%rest150351%_))))))
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
      (lambda (_%self150054%_ _%port150055%_)
        (let ((_%self150058%_ _%self150054%_))
          (let ((_%tmp-port150068%_ (open-output-string))
                (_%display-error-newline150069%_
                 (> (output-port-column _%port150055%_) '0)))
            (fix-port-width! _%tmp-port150068%_)
            (let ((__tmp150708
                   (lambda ()
                     (if _%display-error-newline150069%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e150072%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self150058%_ 'where))))
                       (if _%$e150072%_ (display _%$e150072%_) (display '"?")))
                     (let ((__tmp150709
                            (let ((__tmp150710
                                   (let ((_%obj150076%_ _%self150058%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj150076%_))
                                         (let ((_%obj150081%_ _%obj150076%_))
                                           (declare (not safe))
                                           (__object-class _%obj150081%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj150076%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp150710))))
                       (declare (not safe))
                       (display* '" [" __tmp150709 '"]: "))
                     (let ((__tmp150711
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self150058%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp150711))
                     (let ((_%irritants150096%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self150058%_ 'irritants))))
                       (if (null? _%irritants150096%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj150098%_)
                                (if (u8vector? _%obj150098%_)
                                    (let ((__tmp150712
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj150098%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp150712))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj150098%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants150096%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont150099150101%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self150058%_
                                   'continuation))))
                           (if _%cont150099150101%_
                               (let ((_%cont150103%_ _%cont150099150101%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont150103%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp150708
               current-output-port
               _%tmp-port150068%_))
            (let ((__tmp150713 (get-output-string _%tmp-port150068%_)))
              (declare (not safe))
              (##write-string __tmp150713 _%port150055%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass150620 __method-table150621)
        (let ((__message150622
               (let ((__slot150626
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150620 'message))))
                 (if __slot150626
                     __slot150626
                     (error '"Unknown slot" 'message))))
              (__where150623
               (let ((__slot150627
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150620 'where))))
                 (if __slot150627
                     __slot150627
                     (error '"Unknown slot" 'where))))
              (__irritants150624
               (let ((__slot150628
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150620 'irritants))))
                 (if __slot150628
                     __slot150628
                     (error '"Unknown slot" 'irritants))))
              (__continuation150625
               (let ((__slot150629
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150620 'continuation))))
                 (if __slot150629
                     __slot150629
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self150054%_ _%port150055%_)
            (let ((_%self150058%_ _%self150054%_))
              (let ((_%tmp-port150068%_ (open-output-string))
                    (_%display-error-newline150069%_
                     (> (output-port-column _%port150055%_) '0)))
                (fix-port-width! _%tmp-port150068%_)
                (let ((__tmp150714
                       (lambda ()
                         (if _%display-error-newline150069%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e150072%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self150058%_
                                   __where150623
                                   '#f
                                   '#f))))
                           (if _%$e150072%_
                               (display _%$e150072%_)
                               (display '"?")))
                         (let ((__tmp150715
                                (let ((__tmp150716
                                       (let ((_%obj150076%_ _%self150058%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj150076%_))
                                             (let ((_%obj150081%_
                                                    _%obj150076%_))
                                               (declare (not safe))
                                               (__object-class _%obj150081%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj150076%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp150716))))
                           (declare (not safe))
                           (display* '" [" __tmp150715 '"]: "))
                         (let ((__tmp150717
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self150058%_
                                   __message150622
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp150717))
                         (let ((_%irritants150096%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self150058%_
                                   __irritants150624
                                   '#f
                                   '#f))))
                           (if (null? _%irritants150096%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj150098%_)
                                    (if (u8vector? _%obj150098%_)
                                        (let ((__tmp150718
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj150098%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp150718))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj150098%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants150096%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont150099150101%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self150058%_
                                       __continuation150625
                                       '#f
                                       '#f))))
                               (if _%cont150099150101%_
                                   (let ((_%cont150103%_ _%cont150099150101%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont150103%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp150714
                   current-output-port
                   _%tmp-port150068%_))
                (let ((__tmp150719 (get-output-string _%tmp-port150068%_)))
                  (declare (not safe))
                  (##write-string __tmp150719 _%port150055%_))))))))
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
      (lambda (_%self149911%_ _%port149912%_)
        (let* ((_%self149915%_ _%self149911%_)
               (_%tmp-port149925%_ (open-output-string)))
          (fix-port-width! _%tmp-port149925%_)
          (let ((__tmp150720
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self149915%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp150720 _%tmp-port149925%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont149926149928%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self149915%_ 'continuation))))
                (if _%cont149926149928%_
                    (let ((_%cont149930%_ _%cont149926149928%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port149925%_)
                      (newline _%tmp-port149925%_)
                      (display-continuation-backtrace
                       _%cont149930%_
                       _%tmp-port149925%_))
                    '#f))
              '#!void)
          (let ((__tmp150721 (get-output-string _%tmp-port149925%_)))
            (declare (not safe))
            (##write-string __tmp150721 _%port149912%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass150630 __method-table150631)
        (let ((__exception150632
               (let ((__slot150634
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150630 'exception))))
                 (if __slot150634
                     __slot150634
                     (error '"Unknown slot" 'exception))))
              (__continuation150633
               (let ((__slot150635
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass150630 'continuation))))
                 (if __slot150635
                     __slot150635
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self149911%_ _%port149912%_)
            (let* ((_%self149915%_ _%self149911%_)
                   (_%tmp-port149925%_ (open-output-string)))
              (fix-port-width! _%tmp-port149925%_)
              (let ((__tmp150722
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self149915%_
                        __exception150632
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp150722 _%tmp-port149925%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont149926149928%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self149915%_
                            __continuation150633
                            '#f
                            '#f))))
                    (if _%cont149926149928%_
                        (let ((_%cont149930%_ _%cont149926149928%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port149925%_)
                          (newline _%tmp-port149925%_)
                          (display-continuation-backtrace
                           _%cont149930%_
                           _%tmp-port149925%_))
                        '#f))
                  '#!void)
              (let ((__tmp150723 (get-output-string _%tmp-port149925%_)))
                (declare (not safe))
                (##write-string __tmp150723 _%port149912%_)))))))
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
      (lambda (_%port149783%_)
        (if (macro-character-port? _%port149783%_)
            (let ((_%old-width149785%_
                   (macro-character-port-output-width _%port149783%_)))
              (macro-character-port-output-width-set!
               _%port149783%_
               (lambda (_%port149787%_) '256))
              _%old-width149785%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port149780%_ _%old-width149781%_)
        (if (macro-character-port? _%port149780%_)
            (macro-character-port-output-width-set!
             _%port149780%_
             _%old-width149781%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e149778%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e149778%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn149772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149772%_))
            (let ((_%e149775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149772%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e149775%_))
            (macro-abandoned-mutex-exception? _%exn149772%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn149768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149768%_))
            (let ((_%e149770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149768%_ 'exception))))
              (macro-cfun-conversion-exception? _%e149770%_))
            (macro-cfun-conversion-exception? _%exn149768%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn149764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149764%_))
            (let ((_%e149766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149764%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e149766%_)
                  (macro-cfun-conversion-exception-arguments _%e149766%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e149766%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn149764%_)
                (macro-cfun-conversion-exception-arguments _%exn149764%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn149764%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn149760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149760%_))
            (let ((_%e149762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149760%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e149762%_)
                  (macro-cfun-conversion-exception-code _%e149762%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e149762%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn149760%_)
                (macro-cfun-conversion-exception-code _%exn149760%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn149760%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn149756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149756%_))
            (let ((_%e149758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149756%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e149758%_)
                  (macro-cfun-conversion-exception-message _%e149758%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e149758%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn149756%_)
                (macro-cfun-conversion-exception-message _%exn149756%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn149756%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn149750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149750%_))
            (let ((_%e149753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149750%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e149753%_)
                  (macro-cfun-conversion-exception-procedure _%e149753%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e149753%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn149750%_)
                (macro-cfun-conversion-exception-procedure _%exn149750%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn149750%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn149746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149746%_))
            (let ((_%e149748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149746%_ 'exception))))
              (macro-datum-parsing-exception? _%e149748%_))
            (macro-datum-parsing-exception? _%exn149746%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn149742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149742%_))
            (let ((_%e149744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149742%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e149744%_)
                  (macro-datum-parsing-exception-kind _%e149744%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e149744%_ '())))))
            (if (macro-datum-parsing-exception? _%exn149742%_)
                (macro-datum-parsing-exception-kind _%exn149742%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn149742%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn149738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149738%_))
            (let ((_%e149740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149738%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e149740%_)
                  (macro-datum-parsing-exception-parameters _%e149740%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e149740%_ '())))))
            (if (macro-datum-parsing-exception? _%exn149738%_)
                (macro-datum-parsing-exception-parameters _%exn149738%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn149738%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn149732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149732%_))
            (let ((_%e149735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149732%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e149735%_)
                  (macro-datum-parsing-exception-readenv _%e149735%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e149735%_ '())))))
            (if (macro-datum-parsing-exception? _%exn149732%_)
                (macro-datum-parsing-exception-readenv _%exn149732%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn149732%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn149726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149726%_))
            (let ((_%e149729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149726%_ 'exception))))
              (macro-deadlock-exception? _%e149729%_))
            (macro-deadlock-exception? _%exn149726%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn149722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149722%_))
            (let ((_%e149724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149722%_ 'exception))))
              (macro-divide-by-zero-exception? _%e149724%_))
            (macro-divide-by-zero-exception? _%exn149722%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn149718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149718%_))
            (let ((_%e149720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149718%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e149720%_)
                  (macro-divide-by-zero-exception-arguments _%e149720%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e149720%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn149718%_)
                (macro-divide-by-zero-exception-arguments _%exn149718%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn149718%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn149712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149712%_))
            (let ((_%e149715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149712%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e149715%_)
                  (macro-divide-by-zero-exception-procedure _%e149715%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e149715%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn149712%_)
                (macro-divide-by-zero-exception-procedure _%exn149712%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn149712%_ '())))))))
    (define error-exception?
      (lambda (_%exn149708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149708%_))
            (let ((_%e149710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149708%_ 'exception))))
              (macro-error-exception? _%e149710%_))
            (macro-error-exception? _%exn149708%_))))
    (define error-exception-message
      (lambda (_%exn149704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149704%_))
            (let ((_%e149706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149704%_ 'exception))))
              (if (macro-error-exception? _%e149706%_)
                  (macro-error-exception-message _%e149706%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e149706%_ '())))))
            (if (macro-error-exception? _%exn149704%_)
                (macro-error-exception-message _%exn149704%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn149704%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn149698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149698%_))
            (let ((_%e149701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149698%_ 'exception))))
              (if (macro-error-exception? _%e149701%_)
                  (macro-error-exception-parameters _%e149701%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e149701%_ '())))))
            (if (macro-error-exception? _%exn149698%_)
                (macro-error-exception-parameters _%exn149698%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn149698%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn149694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149694%_))
            (let ((_%e149696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149694%_ 'exception))))
              (macro-expression-parsing-exception? _%e149696%_))
            (macro-expression-parsing-exception? _%exn149694%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn149690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149690%_))
            (let ((_%e149692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149690%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e149692%_)
                  (macro-expression-parsing-exception-kind _%e149692%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e149692%_ '())))))
            (if (macro-expression-parsing-exception? _%exn149690%_)
                (macro-expression-parsing-exception-kind _%exn149690%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn149690%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn149686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149686%_))
            (let ((_%e149688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149686%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e149688%_)
                  (macro-expression-parsing-exception-parameters _%e149688%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e149688%_ '())))))
            (if (macro-expression-parsing-exception? _%exn149686%_)
                (macro-expression-parsing-exception-parameters _%exn149686%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn149686%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn149680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149680%_))
            (let ((_%e149683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149680%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e149683%_)
                  (macro-expression-parsing-exception-source _%e149683%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e149683%_ '())))))
            (if (macro-expression-parsing-exception? _%exn149680%_)
                (macro-expression-parsing-exception-source _%exn149680%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn149680%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn149676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149676%_))
            (let ((_%e149678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149676%_ 'exception))))
              (macro-file-exists-exception? _%e149678%_))
            (macro-file-exists-exception? _%exn149676%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn149672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149672%_))
            (let ((_%e149674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149672%_ 'exception))))
              (if (macro-file-exists-exception? _%e149674%_)
                  (macro-file-exists-exception-arguments _%e149674%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e149674%_ '())))))
            (if (macro-file-exists-exception? _%exn149672%_)
                (macro-file-exists-exception-arguments _%exn149672%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn149672%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn149666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149666%_))
            (let ((_%e149669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149666%_ 'exception))))
              (if (macro-file-exists-exception? _%e149669%_)
                  (macro-file-exists-exception-procedure _%e149669%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e149669%_ '())))))
            (if (macro-file-exists-exception? _%exn149666%_)
                (macro-file-exists-exception-procedure _%exn149666%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn149666%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn149662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149662%_))
            (let ((_%e149664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149662%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e149664%_))
            (macro-fixnum-overflow-exception? _%exn149662%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn149658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149658%_))
            (let ((_%e149660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149658%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e149660%_)
                  (macro-fixnum-overflow-exception-arguments _%e149660%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e149660%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn149658%_)
                (macro-fixnum-overflow-exception-arguments _%exn149658%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn149658%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn149652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149652%_))
            (let ((_%e149655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149652%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e149655%_)
                  (macro-fixnum-overflow-exception-procedure _%e149655%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e149655%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn149652%_)
                (macro-fixnum-overflow-exception-procedure _%exn149652%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn149652%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn149646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149646%_))
            (let ((_%e149649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149646%_ 'exception))))
              (macro-heap-overflow-exception? _%e149649%_))
            (macro-heap-overflow-exception? _%exn149646%_))))
    (define inactive-thread-exception?
      (lambda (_%exn149642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149642%_))
            (let ((_%e149644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149642%_ 'exception))))
              (macro-inactive-thread-exception? _%e149644%_))
            (macro-inactive-thread-exception? _%exn149642%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn149638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149638%_))
            (let ((_%e149640%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149638%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e149640%_)
                  (macro-inactive-thread-exception-arguments _%e149640%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e149640%_ '())))))
            (if (macro-inactive-thread-exception? _%exn149638%_)
                (macro-inactive-thread-exception-arguments _%exn149638%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn149638%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn149632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149632%_))
            (let ((_%e149635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149632%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e149635%_)
                  (macro-inactive-thread-exception-procedure _%e149635%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e149635%_ '())))))
            (if (macro-inactive-thread-exception? _%exn149632%_)
                (macro-inactive-thread-exception-procedure _%exn149632%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn149632%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn149628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149628%_))
            (let ((_%e149630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149628%_ 'exception))))
              (macro-initialized-thread-exception? _%e149630%_))
            (macro-initialized-thread-exception? _%exn149628%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn149624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149624%_))
            (let ((_%e149626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149624%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e149626%_)
                  (macro-initialized-thread-exception-arguments _%e149626%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e149626%_ '())))))
            (if (macro-initialized-thread-exception? _%exn149624%_)
                (macro-initialized-thread-exception-arguments _%exn149624%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn149624%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn149618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149618%_))
            (let ((_%e149621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149618%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e149621%_)
                  (macro-initialized-thread-exception-procedure _%e149621%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e149621%_ '())))))
            (if (macro-initialized-thread-exception? _%exn149618%_)
                (macro-initialized-thread-exception-procedure _%exn149618%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn149618%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn149614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149614%_))
            (let ((_%e149616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149614%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e149616%_))
            (macro-invalid-hash-number-exception? _%exn149614%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn149610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149610%_))
            (let ((_%e149612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149610%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e149612%_)
                  (macro-invalid-hash-number-exception-arguments _%e149612%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e149612%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn149610%_)
                (macro-invalid-hash-number-exception-arguments _%exn149610%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn149610%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn149604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149604%_))
            (let ((_%e149607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149604%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e149607%_)
                  (macro-invalid-hash-number-exception-procedure _%e149607%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e149607%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn149604%_)
                (macro-invalid-hash-number-exception-procedure _%exn149604%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn149604%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn149600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149600%_))
            (let ((_%e149602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149600%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e149602%_))
            (macro-invalid-utf8-encoding-exception? _%exn149600%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn149596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149596%_))
            (let ((_%e149598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149596%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e149598%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e149598%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e149598%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn149596%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn149596%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn149596%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn149590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149590%_))
            (let ((_%e149593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149590%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e149593%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e149593%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e149593%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn149590%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn149590%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn149590%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn149586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149586%_))
            (let ((_%e149588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149586%_ 'exception))))
              (macro-join-timeout-exception? _%e149588%_))
            (macro-join-timeout-exception? _%exn149586%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn149582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149582%_))
            (let ((_%e149584%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149582%_ 'exception))))
              (if (macro-join-timeout-exception? _%e149584%_)
                  (macro-join-timeout-exception-arguments _%e149584%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e149584%_ '())))))
            (if (macro-join-timeout-exception? _%exn149582%_)
                (macro-join-timeout-exception-arguments _%exn149582%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn149582%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn149576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149576%_))
            (let ((_%e149579%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149576%_ 'exception))))
              (if (macro-join-timeout-exception? _%e149579%_)
                  (macro-join-timeout-exception-procedure _%e149579%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e149579%_ '())))))
            (if (macro-join-timeout-exception? _%exn149576%_)
                (macro-join-timeout-exception-procedure _%exn149576%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn149576%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn149572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149572%_))
            (let ((_%e149574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149572%_ 'exception))))
              (macro-keyword-expected-exception? _%e149574%_))
            (macro-keyword-expected-exception? _%exn149572%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn149568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149568%_))
            (let ((_%e149570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149568%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e149570%_)
                  (macro-keyword-expected-exception-arguments _%e149570%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e149570%_ '())))))
            (if (macro-keyword-expected-exception? _%exn149568%_)
                (macro-keyword-expected-exception-arguments _%exn149568%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn149568%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn149562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149562%_))
            (let ((_%e149565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149562%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e149565%_)
                  (macro-keyword-expected-exception-procedure _%e149565%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e149565%_ '())))))
            (if (macro-keyword-expected-exception? _%exn149562%_)
                (macro-keyword-expected-exception-procedure _%exn149562%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn149562%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn149558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149558%_))
            (let ((_%e149560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149558%_ 'exception))))
              (macro-length-mismatch-exception? _%e149560%_))
            (macro-length-mismatch-exception? _%exn149558%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn149554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149554%_))
            (let ((_%e149556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149554%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e149556%_)
                  (macro-length-mismatch-exception-arg-id _%e149556%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e149556%_ '())))))
            (if (macro-length-mismatch-exception? _%exn149554%_)
                (macro-length-mismatch-exception-arg-id _%exn149554%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn149554%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn149550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149550%_))
            (let ((_%e149552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149550%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e149552%_)
                  (macro-length-mismatch-exception-arguments _%e149552%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e149552%_ '())))))
            (if (macro-length-mismatch-exception? _%exn149550%_)
                (macro-length-mismatch-exception-arguments _%exn149550%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn149550%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn149544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149544%_))
            (let ((_%e149547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149544%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e149547%_)
                  (macro-length-mismatch-exception-procedure _%e149547%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e149547%_ '())))))
            (if (macro-length-mismatch-exception? _%exn149544%_)
                (macro-length-mismatch-exception-procedure _%exn149544%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn149544%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn149540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149540%_))
            (let ((_%e149542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149540%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e149542%_))
            (macro-mailbox-receive-timeout-exception? _%exn149540%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn149536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149536%_))
            (let ((_%e149538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149536%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e149538%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e149538%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e149538%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn149536%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn149536%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn149536%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn149530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149530%_))
            (let ((_%e149533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149530%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e149533%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e149533%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e149533%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn149530%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn149530%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn149530%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn149526%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149526%_))
            (let ((_%e149528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149526%_ 'exception))))
              (macro-module-not-found-exception? _%e149528%_))
            (macro-module-not-found-exception? _%exn149526%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn149522%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149522%_))
            (let ((_%e149524%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149522%_ 'exception))))
              (if (macro-module-not-found-exception? _%e149524%_)
                  (macro-module-not-found-exception-arguments _%e149524%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e149524%_ '())))))
            (if (macro-module-not-found-exception? _%exn149522%_)
                (macro-module-not-found-exception-arguments _%exn149522%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn149522%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn149516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149516%_))
            (let ((_%e149519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149516%_ 'exception))))
              (if (macro-module-not-found-exception? _%e149519%_)
                  (macro-module-not-found-exception-procedure _%e149519%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e149519%_ '())))))
            (if (macro-module-not-found-exception? _%exn149516%_)
                (macro-module-not-found-exception-procedure _%exn149516%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn149516%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn149510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149510%_))
            (let ((_%e149513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149510%_ 'exception))))
              (macro-multiple-c-return-exception? _%e149513%_))
            (macro-multiple-c-return-exception? _%exn149510%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn149506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149506%_))
            (let ((_%e149508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149506%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e149508%_))
            (macro-no-such-file-or-directory-exception? _%exn149506%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn149502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149502%_))
            (let ((_%e149504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149502%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e149504%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e149504%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e149504%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn149502%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn149502%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn149502%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn149496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149496%_))
            (let ((_%e149499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149496%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e149499%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e149499%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e149499%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn149496%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn149496%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn149496%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn149492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149492%_))
            (let ((_%e149494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149492%_ 'exception))))
              (macro-noncontinuable-exception? _%e149494%_))
            (macro-noncontinuable-exception? _%exn149492%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn149486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149486%_))
            (let ((_%e149489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149486%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e149489%_)
                  (macro-noncontinuable-exception-reason _%e149489%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e149489%_ '())))))
            (if (macro-noncontinuable-exception? _%exn149486%_)
                (macro-noncontinuable-exception-reason _%exn149486%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn149486%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn149482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149482%_))
            (let ((_%e149484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149482%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e149484%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn149482%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn149478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149478%_))
            (let ((_%e149480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149478%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e149480%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e149480%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e149480%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn149478%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn149478%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn149478%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn149472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149472%_))
            (let ((_%e149475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149472%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e149475%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e149475%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e149475%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn149472%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn149472%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn149472%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn149468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149468%_))
            (let ((_%e149470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149468%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e149470%_))
            (macro-nonprocedure-operator-exception? _%exn149468%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn149464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149464%_))
            (let ((_%e149466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149464%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e149466%_)
                  (macro-nonprocedure-operator-exception-arguments _%e149466%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e149466%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn149464%_)
                (macro-nonprocedure-operator-exception-arguments _%exn149464%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn149464%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn149460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149460%_))
            (let ((_%e149462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149460%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e149462%_)
                  (macro-nonprocedure-operator-exception-code _%e149462%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e149462%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn149460%_)
                (macro-nonprocedure-operator-exception-code _%exn149460%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn149460%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn149456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149456%_))
            (let ((_%e149458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149456%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e149458%_)
                  (macro-nonprocedure-operator-exception-operator _%e149458%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e149458%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn149456%_)
                (macro-nonprocedure-operator-exception-operator _%exn149456%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn149456%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn149450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149450%_))
            (let ((_%e149453%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149450%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e149453%_)
                  (macro-nonprocedure-operator-exception-rte _%e149453%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e149453%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn149450%_)
                (macro-nonprocedure-operator-exception-rte _%exn149450%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn149450%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn149446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149446%_))
            (let ((_%e149448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149446%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e149448%_))
            (macro-not-in-compilation-context-exception? _%exn149446%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn149442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149442%_))
            (let ((_%e149444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149442%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e149444%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e149444%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e149444%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn149442%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn149442%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn149442%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn149436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149436%_))
            (let ((_%e149439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149436%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e149439%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e149439%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e149439%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn149436%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn149436%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn149436%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn149432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149432%_))
            (let ((_%e149434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149432%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e149434%_))
            (macro-number-of-arguments-limit-exception? _%exn149432%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn149428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149428%_))
            (let ((_%e149430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149428%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e149430%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e149430%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e149430%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn149428%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn149428%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn149428%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn149422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149422%_))
            (let ((_%e149425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149422%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e149425%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e149425%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e149425%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn149422%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn149422%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn149422%_ '())))))))
    (define os-exception?
      (lambda (_%exn149418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149418%_))
            (let ((_%e149420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149418%_ 'exception))))
              (macro-os-exception? _%e149420%_))
            (macro-os-exception? _%exn149418%_))))
    (define os-exception-arguments
      (lambda (_%exn149414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149414%_))
            (let ((_%e149416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149414%_ 'exception))))
              (if (macro-os-exception? _%e149416%_)
                  (macro-os-exception-arguments _%e149416%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e149416%_ '())))))
            (if (macro-os-exception? _%exn149414%_)
                (macro-os-exception-arguments _%exn149414%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn149414%_ '())))))))
    (define os-exception-code
      (lambda (_%exn149410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149410%_))
            (let ((_%e149412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149410%_ 'exception))))
              (if (macro-os-exception? _%e149412%_)
                  (macro-os-exception-code _%e149412%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e149412%_ '())))))
            (if (macro-os-exception? _%exn149410%_)
                (macro-os-exception-code _%exn149410%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn149410%_ '())))))))
    (define os-exception-message
      (lambda (_%exn149406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149406%_))
            (let ((_%e149408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149406%_ 'exception))))
              (if (macro-os-exception? _%e149408%_)
                  (macro-os-exception-message _%e149408%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e149408%_ '())))))
            (if (macro-os-exception? _%exn149406%_)
                (macro-os-exception-message _%exn149406%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn149406%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn149400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149400%_))
            (let ((_%e149403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149400%_ 'exception))))
              (if (macro-os-exception? _%e149403%_)
                  (macro-os-exception-procedure _%e149403%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e149403%_ '())))))
            (if (macro-os-exception? _%exn149400%_)
                (macro-os-exception-procedure _%exn149400%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn149400%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn149396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149396%_))
            (let ((_%e149398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149396%_ 'exception))))
              (macro-permission-denied-exception? _%e149398%_))
            (macro-permission-denied-exception? _%exn149396%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn149392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149392%_))
            (let ((_%e149394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149392%_ 'exception))))
              (if (macro-permission-denied-exception? _%e149394%_)
                  (macro-permission-denied-exception-arguments _%e149394%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e149394%_ '())))))
            (if (macro-permission-denied-exception? _%exn149392%_)
                (macro-permission-denied-exception-arguments _%exn149392%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn149392%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn149386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149386%_))
            (let ((_%e149389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149386%_ 'exception))))
              (if (macro-permission-denied-exception? _%e149389%_)
                  (macro-permission-denied-exception-procedure _%e149389%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e149389%_ '())))))
            (if (macro-permission-denied-exception? _%exn149386%_)
                (macro-permission-denied-exception-procedure _%exn149386%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn149386%_ '())))))))
    (define range-exception?
      (lambda (_%exn149382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149382%_))
            (let ((_%e149384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149382%_ 'exception))))
              (macro-range-exception? _%e149384%_))
            (macro-range-exception? _%exn149382%_))))
    (define range-exception-arg-id
      (lambda (_%exn149378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149378%_))
            (let ((_%e149380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149378%_ 'exception))))
              (if (macro-range-exception? _%e149380%_)
                  (macro-range-exception-arg-id _%e149380%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e149380%_ '())))))
            (if (macro-range-exception? _%exn149378%_)
                (macro-range-exception-arg-id _%exn149378%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn149378%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn149374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149374%_))
            (let ((_%e149376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149374%_ 'exception))))
              (if (macro-range-exception? _%e149376%_)
                  (macro-range-exception-arguments _%e149376%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e149376%_ '())))))
            (if (macro-range-exception? _%exn149374%_)
                (macro-range-exception-arguments _%exn149374%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn149374%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn149368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149368%_))
            (let ((_%e149371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149368%_ 'exception))))
              (if (macro-range-exception? _%e149371%_)
                  (macro-range-exception-procedure _%e149371%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e149371%_ '())))))
            (if (macro-range-exception? _%exn149368%_)
                (macro-range-exception-procedure _%exn149368%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn149368%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn149364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149364%_))
            (let ((_%e149366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149364%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e149366%_))
            (macro-rpc-remote-error-exception? _%exn149364%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn149360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149360%_))
            (let ((_%e149362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149360%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e149362%_)
                  (macro-rpc-remote-error-exception-arguments _%e149362%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e149362%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn149360%_)
                (macro-rpc-remote-error-exception-arguments _%exn149360%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn149360%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn149356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149356%_))
            (let ((_%e149358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149356%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e149358%_)
                  (macro-rpc-remote-error-exception-message _%e149358%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e149358%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn149356%_)
                (macro-rpc-remote-error-exception-message _%exn149356%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn149356%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn149350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149350%_))
            (let ((_%e149353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149350%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e149353%_)
                  (macro-rpc-remote-error-exception-procedure _%e149353%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e149353%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn149350%_)
                (macro-rpc-remote-error-exception-procedure _%exn149350%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn149350%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn149346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149346%_))
            (let ((_%e149348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149346%_ 'exception))))
              (macro-scheduler-exception? _%e149348%_))
            (macro-scheduler-exception? _%exn149346%_))))
    (define scheduler-exception-reason
      (lambda (_%exn149340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149340%_))
            (let ((_%e149343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149340%_ 'exception))))
              (if (macro-scheduler-exception? _%e149343%_)
                  (macro-scheduler-exception-reason _%e149343%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e149343%_ '())))))
            (if (macro-scheduler-exception? _%exn149340%_)
                (macro-scheduler-exception-reason _%exn149340%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn149340%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn149336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149336%_))
            (let ((_%e149338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149336%_ 'exception))))
              (macro-sfun-conversion-exception? _%e149338%_))
            (macro-sfun-conversion-exception? _%exn149336%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn149332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149332%_))
            (let ((_%e149334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149332%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e149334%_)
                  (macro-sfun-conversion-exception-arguments _%e149334%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e149334%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn149332%_)
                (macro-sfun-conversion-exception-arguments _%exn149332%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn149332%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn149328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149328%_))
            (let ((_%e149330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149328%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e149330%_)
                  (macro-sfun-conversion-exception-code _%e149330%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e149330%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn149328%_)
                (macro-sfun-conversion-exception-code _%exn149328%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn149328%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn149324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149324%_))
            (let ((_%e149326%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149324%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e149326%_)
                  (macro-sfun-conversion-exception-message _%e149326%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e149326%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn149324%_)
                (macro-sfun-conversion-exception-message _%exn149324%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn149324%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn149318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149318%_))
            (let ((_%e149321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149318%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e149321%_)
                  (macro-sfun-conversion-exception-procedure _%e149321%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e149321%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn149318%_)
                (macro-sfun-conversion-exception-procedure _%exn149318%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn149318%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn149312%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149312%_))
            (let ((_%e149315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149312%_ 'exception))))
              (macro-stack-overflow-exception? _%e149315%_))
            (macro-stack-overflow-exception? _%exn149312%_))))
    (define started-thread-exception?
      (lambda (_%exn149308%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149308%_))
            (let ((_%e149310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149308%_ 'exception))))
              (macro-started-thread-exception? _%e149310%_))
            (macro-started-thread-exception? _%exn149308%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn149304%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149304%_))
            (let ((_%e149306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149304%_ 'exception))))
              (if (macro-started-thread-exception? _%e149306%_)
                  (macro-started-thread-exception-arguments _%e149306%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e149306%_ '())))))
            (if (macro-started-thread-exception? _%exn149304%_)
                (macro-started-thread-exception-arguments _%exn149304%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn149304%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn149298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149298%_))
            (let ((_%e149301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149298%_ 'exception))))
              (if (macro-started-thread-exception? _%e149301%_)
                  (macro-started-thread-exception-procedure _%e149301%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e149301%_ '())))))
            (if (macro-started-thread-exception? _%exn149298%_)
                (macro-started-thread-exception-procedure _%exn149298%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn149298%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn149294%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149294%_))
            (let ((_%e149296%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149294%_ 'exception))))
              (macro-terminated-thread-exception? _%e149296%_))
            (macro-terminated-thread-exception? _%exn149294%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn149290%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149290%_))
            (let ((_%e149292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149290%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e149292%_)
                  (macro-terminated-thread-exception-arguments _%e149292%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e149292%_ '())))))
            (if (macro-terminated-thread-exception? _%exn149290%_)
                (macro-terminated-thread-exception-arguments _%exn149290%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn149290%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn149284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149284%_))
            (let ((_%e149287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149284%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e149287%_)
                  (macro-terminated-thread-exception-procedure _%e149287%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e149287%_ '())))))
            (if (macro-terminated-thread-exception? _%exn149284%_)
                (macro-terminated-thread-exception-procedure _%exn149284%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn149284%_ '())))))))
    (define type-exception?
      (lambda (_%exn149280%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149280%_))
            (let ((_%e149282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149280%_ 'exception))))
              (macro-type-exception? _%e149282%_))
            (macro-type-exception? _%exn149280%_))))
    (define type-exception-arg-id
      (lambda (_%exn149276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149276%_))
            (let ((_%e149278%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149276%_ 'exception))))
              (if (macro-type-exception? _%e149278%_)
                  (macro-type-exception-arg-id _%e149278%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e149278%_ '())))))
            (if (macro-type-exception? _%exn149276%_)
                (macro-type-exception-arg-id _%exn149276%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn149276%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn149272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149272%_))
            (let ((_%e149274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149272%_ 'exception))))
              (if (macro-type-exception? _%e149274%_)
                  (macro-type-exception-arguments _%e149274%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e149274%_ '())))))
            (if (macro-type-exception? _%exn149272%_)
                (macro-type-exception-arguments _%exn149272%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn149272%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn149268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149268%_))
            (let ((_%e149270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149268%_ 'exception))))
              (if (macro-type-exception? _%e149270%_)
                  (macro-type-exception-procedure _%e149270%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e149270%_ '())))))
            (if (macro-type-exception? _%exn149268%_)
                (macro-type-exception-procedure _%exn149268%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn149268%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn149262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149262%_))
            (let ((_%e149265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149262%_ 'exception))))
              (if (macro-type-exception? _%e149265%_)
                  (macro-type-exception-type-id _%e149265%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e149265%_ '())))))
            (if (macro-type-exception? _%exn149262%_)
                (macro-type-exception-type-id _%exn149262%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn149262%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn149258%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149258%_))
            (let ((_%e149260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149258%_ 'exception))))
              (macro-unbound-global-exception? _%e149260%_))
            (macro-unbound-global-exception? _%exn149258%_))))
    (define unbound-global-exception-code
      (lambda (_%exn149254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149254%_))
            (let ((_%e149256%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149254%_ 'exception))))
              (if (macro-unbound-global-exception? _%e149256%_)
                  (macro-unbound-global-exception-code _%e149256%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e149256%_ '())))))
            (if (macro-unbound-global-exception? _%exn149254%_)
                (macro-unbound-global-exception-code _%exn149254%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn149254%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn149250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149250%_))
            (let ((_%e149252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149250%_ 'exception))))
              (if (macro-unbound-global-exception? _%e149252%_)
                  (macro-unbound-global-exception-rte _%e149252%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e149252%_ '())))))
            (if (macro-unbound-global-exception? _%exn149250%_)
                (macro-unbound-global-exception-rte _%exn149250%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn149250%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn149244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149244%_))
            (let ((_%e149247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149244%_ 'exception))))
              (if (macro-unbound-global-exception? _%e149247%_)
                  (macro-unbound-global-exception-variable _%e149247%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e149247%_ '())))))
            (if (macro-unbound-global-exception? _%exn149244%_)
                (macro-unbound-global-exception-variable _%exn149244%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn149244%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn149240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149240%_))
            (let ((_%e149242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149240%_ 'exception))))
              (macro-unbound-key-exception? _%e149242%_))
            (macro-unbound-key-exception? _%exn149240%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn149236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149236%_))
            (let ((_%e149238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149236%_ 'exception))))
              (if (macro-unbound-key-exception? _%e149238%_)
                  (macro-unbound-key-exception-arguments _%e149238%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e149238%_ '())))))
            (if (macro-unbound-key-exception? _%exn149236%_)
                (macro-unbound-key-exception-arguments _%exn149236%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn149236%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn149230%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149230%_))
            (let ((_%e149233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149230%_ 'exception))))
              (if (macro-unbound-key-exception? _%e149233%_)
                  (macro-unbound-key-exception-procedure _%e149233%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e149233%_ '())))))
            (if (macro-unbound-key-exception? _%exn149230%_)
                (macro-unbound-key-exception-procedure _%exn149230%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn149230%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn149226%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149226%_))
            (let ((_%e149228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149226%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e149228%_))
            (macro-unbound-os-environment-variable-exception? _%exn149226%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn149222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149222%_))
            (let ((_%e149224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149222%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e149224%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e149224%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e149224%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn149222%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn149222%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn149222%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn149216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149216%_))
            (let ((_%e149219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149216%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e149219%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e149219%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e149219%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn149216%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn149216%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn149216%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn149212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149212%_))
            (let ((_%e149214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149212%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e149214%_))
            (macro-unbound-serial-number-exception? _%exn149212%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn149208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149208%_))
            (let ((_%e149210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149208%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e149210%_)
                  (macro-unbound-serial-number-exception-arguments _%e149210%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e149210%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn149208%_)
                (macro-unbound-serial-number-exception-arguments _%exn149208%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn149208%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn149202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149202%_))
            (let ((_%e149205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149202%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e149205%_)
                  (macro-unbound-serial-number-exception-procedure _%e149205%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e149205%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn149202%_)
                (macro-unbound-serial-number-exception-procedure _%exn149202%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn149202%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn149198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149198%_))
            (let ((_%e149200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149198%_ 'exception))))
              (macro-uncaught-exception? _%e149200%_))
            (macro-uncaught-exception? _%exn149198%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn149194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149194%_))
            (let ((_%e149196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149194%_ 'exception))))
              (if (macro-uncaught-exception? _%e149196%_)
                  (macro-uncaught-exception-arguments _%e149196%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e149196%_ '())))))
            (if (macro-uncaught-exception? _%exn149194%_)
                (macro-uncaught-exception-arguments _%exn149194%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn149194%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn149190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149190%_))
            (let ((_%e149192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149190%_ 'exception))))
              (if (macro-uncaught-exception? _%e149192%_)
                  (macro-uncaught-exception-procedure _%e149192%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e149192%_ '())))))
            (if (macro-uncaught-exception? _%exn149190%_)
                (macro-uncaught-exception-procedure _%exn149190%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn149190%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn149184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149184%_))
            (let ((_%e149187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149184%_ 'exception))))
              (if (macro-uncaught-exception? _%e149187%_)
                  (macro-uncaught-exception-reason _%e149187%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e149187%_ '())))))
            (if (macro-uncaught-exception? _%exn149184%_)
                (macro-uncaught-exception-reason _%exn149184%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn149184%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn149180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149180%_))
            (let ((_%e149182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149180%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e149182%_))
            (macro-uninitialized-thread-exception? _%exn149180%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn149176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149176%_))
            (let ((_%e149178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149176%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e149178%_)
                  (macro-uninitialized-thread-exception-arguments _%e149178%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e149178%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn149176%_)
                (macro-uninitialized-thread-exception-arguments _%exn149176%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn149176%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn149170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149170%_))
            (let ((_%e149173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149170%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e149173%_)
                  (macro-uninitialized-thread-exception-procedure _%e149173%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e149173%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn149170%_)
                (macro-uninitialized-thread-exception-procedure _%exn149170%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn149170%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn149166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149166%_))
            (let ((_%e149168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149166%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e149168%_))
            (macro-unknown-keyword-argument-exception? _%exn149166%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn149162%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149162%_))
            (let ((_%e149164%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149162%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e149164%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e149164%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e149164%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn149162%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn149162%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn149162%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn149156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149156%_))
            (let ((_%e149159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149156%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e149159%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e149159%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e149159%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn149156%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn149156%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn149156%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn149152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149152%_))
            (let ((_%e149154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149152%_ 'exception))))
              (macro-unterminated-process-exception? _%e149154%_))
            (macro-unterminated-process-exception? _%exn149152%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn149148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149148%_))
            (let ((_%e149150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149148%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e149150%_)
                  (macro-unterminated-process-exception-arguments _%e149150%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e149150%_ '())))))
            (if (macro-unterminated-process-exception? _%exn149148%_)
                (macro-unterminated-process-exception-arguments _%exn149148%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn149148%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn149142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149142%_))
            (let ((_%e149145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149142%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e149145%_)
                  (macro-unterminated-process-exception-procedure _%e149145%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e149145%_ '())))))
            (if (macro-unterminated-process-exception? _%exn149142%_)
                (macro-unterminated-process-exception-procedure _%exn149142%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn149142%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn149138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149138%_))
            (let ((_%e149140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149138%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e149140%_))
            (macro-wrong-number-of-arguments-exception? _%exn149138%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn149134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149134%_))
            (let ((_%e149136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149134%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e149136%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e149136%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e149136%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn149134%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn149134%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn149134%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn149128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149128%_))
            (let ((_%e149131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149128%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e149131%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e149131%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e149131%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn149128%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn149128%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn149128%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn149124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149124%_))
            (let ((_%e149126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149124%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e149126%_))
            (macro-wrong-number-of-values-exception? _%exn149124%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn149120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149120%_))
            (let ((_%e149122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149120%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e149122%_)
                  (macro-wrong-number-of-values-exception-code _%e149122%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e149122%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn149120%_)
                (macro-wrong-number-of-values-exception-code _%exn149120%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn149120%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn149116%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149116%_))
            (let ((_%e149118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149116%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e149118%_)
                  (macro-wrong-number-of-values-exception-rte _%e149118%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e149118%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn149116%_)
                (macro-wrong-number-of-values-exception-rte _%exn149116%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn149116%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn149110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149110%_))
            (let ((_%e149113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149110%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e149113%_)
                  (macro-wrong-number-of-values-exception-vals _%e149113%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e149113%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn149110%_)
                (macro-wrong-number-of-values-exception-vals _%exn149110%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn149110%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn149104%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149104%_))
            (let ((_%e149107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149104%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e149107%_))
            (macro-wrong-processor-c-return-exception? _%exn149104%_))))))
