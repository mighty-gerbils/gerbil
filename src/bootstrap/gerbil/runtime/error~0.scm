(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712757954)
  (begin
    (define Exception::t
      (let ((__tmp100643 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100643
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100633%_
        (apply make-instance Exception::t _%$args100633%_)))
    (define StackTrace::t
      (let ((__tmp100644 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100644
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100630%_
        (apply make-instance StackTrace::t _%$args100630%_)))
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
      (let ((__tmp100645 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100645
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100627%_ (apply make-instance Error::t _%$args100627%_)))
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
      (let ((__tmp100646 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100646
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100624%_
        (apply make-instance ContractViolation::t _%$args100624%_)))
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
      (let ((__tmp100647 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100647
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100621%_
        (apply make-instance RuntimeException::t _%$args100621%_)))
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
      (lambda (_%exn100616%_ _%continue100617%_)
        (let ((_%exn100619%_ (wrap-runtime-exception _%exn100616%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100619%_ _%continue100617%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100612%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100612%_ 'continuation))
                '#!void
                (let ((__tmp100648
                       (lambda (_%cont100614%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100612%_
                            'continuation
                            _%cont100614%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100648)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100612%_))))
    (define error
      (lambda (_%message100609%_ . _%irritants100610%_)
        (raise (let ((__obj100640
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100640
                  _%message100609%_
                  'irritants:
                  _%irritants100610%_)
                 __obj100640))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100581%_
               _%ctx100576100582%_
               _%contract-expr100577100584%_
               _%value100578100586%_
               _%message100588%_)
        (let* ((_%ctx100590%_
                (if (eq? _%ctx100576100582%_ absent-value)
                    '#f
                    _%ctx100576100582%_))
               (_%contract-expr100592%_
                (if (eq? _%contract-expr100577100584%_ absent-value)
                    '#f
                    _%contract-expr100577100584%_))
               (_%value100594%_
                (if (eq? _%value100578100586%_ absent-value)
                    '#f
                    _%value100578100586%_)))
          (raise (let ((__obj100641
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj100641
                    _%message100588%_
                    'where:
                    _%ctx100590%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr100592%_
                                (cons 'value: (cons _%value100594%_ '())))))
                   __obj100641)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100599%_ . _%args100600%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100599%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100599%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100599%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100599%_
                  'value:
                  absent-value))
               _%args100600%_)))
    (define __raise-contract-violation-error
      (lambda _%args100579100606%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100579100606%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100550%_ _%thunk100551%_)
        (if (procedure? _%handler100550%_)
            (let ((_%handler100555%_ _%handler100550%_))
              (if (procedure? _%thunk100551%_)
                  (let ((_%thunk100565%_ _%thunk100551%_))
                    (__with-exception-handler
                     _%handler100555%_
                     _%thunk100565%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk100551%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler100550%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler100525%_ _%thunk100526%_)
        (let* ((_%handler100529%_ _%handler100525%_)
               (_%thunk100537%_ _%thunk100526%_)
               (__tmp100649
                (lambda (_%exn100546%_)
                  (let ((_%exn100548%_ (wrap-runtime-exception _%exn100546%_)))
                    (declare (not safe))
                    (_%handler100529%_ _%exn100548%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp100649 _%thunk100537%_))))
    (define with-catch
      (lambda (_%handler100500%_ _%thunk100501%_)
        (if (procedure? _%handler100500%_)
            (let ((_%handler100505%_ _%handler100500%_))
              (if (procedure? _%thunk100501%_)
                  (let ((_%thunk100515%_ _%thunk100501%_))
                    (__with-catch _%handler100505%_ _%thunk100515%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk100501%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler100500%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler100475%_ _%thunk100476%_)
        (let* ((_%handler100479%_ _%handler100475%_)
               (_%thunk100487%_ _%thunk100476%_)
               (__tmp100650
                (lambda (_%cont100496%_)
                  (__with-exception-handler
                   (lambda (_%exn100498%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont100496%_
                        _%handler100479%_
                        _%exn100498%_)))
                   _%thunk100487%_))))
          (declare (not safe))
          (##continuation-capture __tmp100650))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100462%_)
        (if (or (heap-overflow-exception? _%exn100462%_)
                (stack-overflow-exception? _%exn100462%_))
            _%exn100462%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100462%_))
                _%exn100462%_
                (if (macro-exception? _%exn100462%_)
                    (let ((_%rte100470%_
                           (let ((__obj100642
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100642
                                _%exn100462%_
                                '2
                                '#f
                                '#f))
                             __obj100642)))
                      (let ((__tmp100651
                             (lambda (_%cont100472%_)
                               (let ((__tmp100652
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100472%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100470%_
                                  'continuation
                                  __tmp100652)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100651))
                      _%rte100470%_)
                    _%exn100462%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj100457%_)
        (let ((_%$e100459%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj100457%_))))
          (if _%$e100459%_ _%$e100459%_ (error-exception? _%obj100457%_)))))
    (define error-message
      (lambda (_%obj100450%_)
        (let ((_%$e100452%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj100450%_ 'message false))))
          (if _%$e100452%_
              _%$e100452%_
              (if (error-exception? _%obj100450%_)
                  (error-exception-message _%obj100450%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj100445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100445%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100445%_ 'irritants))
            (if (error-exception? _%obj100445%_)
                (error-exception-parameters _%obj100445%_)
                '#f))))
    (define error-trace
      (lambda (_%obj100443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100443%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100443%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e100424%_ _%port100425%_)
        (let ((_%$e100427%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e100424%_ 'display-exception))))
          (if _%$e100427%_
              ((lambda (_%f100430%_) (_%f100430%_ _%e100424%_ _%port100425%_))
               _%$e100427%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e100424%_ _%port100425%_))))))
    (define display-exception__0
      (lambda (_%e100436%_)
        (let ((_%port100438%_ (current-error-port)))
          (display-exception__% _%e100436%_ _%port100438%_))))
    (define display-exception
      (lambda _g100654_
        (let ((_g100653_ (let () (declare (not safe)) (##length _g100654_))))
          (cond ((let () (declare (not safe)) (##fx= _g100653_ 1))
                 (apply display-exception__0 _g100654_))
                ((let () (declare (not safe)) (##fx= _g100653_ 2))
                 (apply display-exception__% _g100654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100654_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100402%_ _%message100403%_ . _%rest100404%_)
        (let* ((_%self100407%_ _%self100402%_)
               (_%message100421%_
                (if (string? _%message100403%_)
                    _%message100403%_
                    (call-with-output-string
                     '""
                     (lambda (_%g100416100418%_)
                       (display _%message100403%_ _%g100416100418%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self100407%_ 'message _%message100421%_))
          (apply class-instance-init! _%self100407%_ _%rest100404%_))))
    (let ()
      (declare (not safe))
      (__bind-method! Error::t ':init! Error:::init! '#f))
    (define ContractViolation:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       ContractViolation::t
       ':init!
       ContractViolation:::init!
       '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_%self100126%_ _%port100127%_)
        (let ((_%self100130%_ _%self100126%_))
          (let ((_%tmp-port100140%_ (open-output-string))
                (_%display-error-newline100141%_
                 (> (output-port-column _%port100127%_) '0)))
            (fix-port-width! _%tmp-port100140%_)
            (let ((__tmp100655
                   (lambda ()
                     (if _%display-error-newline100141%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100144%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100130%_ 'where))))
                       (if _%$e100144%_ (display _%$e100144%_) (display '"?")))
                     (let ((__tmp100656
                            (let ((__tmp100657
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100130%_))))
                              (declare (not safe))
                              (##type-name __tmp100657))))
                       (declare (not safe))
                       (display* '" [" __tmp100656 '"]: "))
                     (let ((__tmp100658
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100130%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100658))
                     (let ((_%irritants100148%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100130%_ 'irritants))))
                       (if (null? _%irritants100148%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100150%_)
                                (if (u8vector? _%obj100150%_)
                                    (let ((__tmp100659
                                           (cons '<u8vector>
                                                 (cons (u8vector-length
                                                        _%obj100150%_)
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp100659))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj100150%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100148%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100151100153%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100130%_
                                   'continuation))))
                           (if _%cont100151100153%_
                               (let ((_%cont100156%_ _%cont100151100153%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100156%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100655
               current-output-port
               _%tmp-port100140%_))
            (let ((__tmp100660 (get-output-string _%tmp-port100140%_)))
              (declare (not safe))
              (##write-string __tmp100660 _%port100127%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99982%_ _%port99983%_)
        (let* ((_%self99986%_ _%self99982%_)
               (_%tmp-port99996%_ (open-output-string)))
          (fix-port-width! _%tmp-port99996%_)
          (let ((__tmp100661
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self99986%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp100661 _%tmp-port99996%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont9999799999%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self99986%_ 'continuation))))
                (if _%cont9999799999%_
                    (let ((_%cont100002%_ _%cont9999799999%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port99996%_)
                      (newline _%tmp-port99996%_)
                      (display-continuation-backtrace
                       _%cont100002%_
                       _%tmp-port99996%_))
                    '#f))
              '#!void)
          (let ((__tmp100662 (get-output-string _%tmp-port99996%_)))
            (declare (not safe))
            (##write-string __tmp100662 _%port99983%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99854%_)
        (if (macro-character-port? _%port99854%_)
            (let ((_%old-width99856%_
                   (macro-character-port-output-width _%port99854%_)))
              (macro-character-port-output-width-set!
               _%port99854%_
               (lambda (_%port99858%_) '256))
              _%old-width99856%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99851%_ _%old-width99852%_)
        (if (macro-character-port? _%port99851%_)
            (macro-character-port-output-width-set!
             _%port99851%_
             _%old-width99852%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99849%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e99849%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99843%_))
            (let ((_%e99846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99843%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99846%_))
            (macro-abandoned-mutex-exception? _%exn99843%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99839%_))
            (let ((_%e99841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99839%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99841%_))
            (macro-cfun-conversion-exception? _%exn99839%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99835%_))
            (let ((_%e99837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99835%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99837%_)
                  (macro-cfun-conversion-exception-arguments _%e99837%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99837%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99835%_)
                (macro-cfun-conversion-exception-arguments _%exn99835%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99835%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99831%_))
            (let ((_%e99833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99831%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99833%_)
                  (macro-cfun-conversion-exception-code _%e99833%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99833%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99831%_)
                (macro-cfun-conversion-exception-code _%exn99831%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99831%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99827%_))
            (let ((_%e99829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99827%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99829%_)
                  (macro-cfun-conversion-exception-message _%e99829%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99829%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99827%_)
                (macro-cfun-conversion-exception-message _%exn99827%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99827%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99821%_))
            (let ((_%e99824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99821%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99824%_)
                  (macro-cfun-conversion-exception-procedure _%e99824%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99824%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99821%_)
                (macro-cfun-conversion-exception-procedure _%exn99821%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99821%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn99817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99817%_))
            (let ((_%e99819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99817%_ 'exception))))
              (macro-datum-parsing-exception? _%e99819%_))
            (macro-datum-parsing-exception? _%exn99817%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99813%_))
            (let ((_%e99815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99813%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99815%_)
                  (macro-datum-parsing-exception-kind _%e99815%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99815%_ '())))))
            (if (macro-datum-parsing-exception? _%exn99813%_)
                (macro-datum-parsing-exception-kind _%exn99813%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99813%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99809%_))
            (let ((_%e99811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99809%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99811%_)
                  (macro-datum-parsing-exception-parameters _%e99811%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99811%_ '())))))
            (if (macro-datum-parsing-exception? _%exn99809%_)
                (macro-datum-parsing-exception-parameters _%exn99809%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99809%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99803%_))
            (let ((_%e99806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99803%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99806%_)
                  (macro-datum-parsing-exception-readenv _%e99806%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99806%_ '())))))
            (if (macro-datum-parsing-exception? _%exn99803%_)
                (macro-datum-parsing-exception-readenv _%exn99803%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99803%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn99797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99797%_))
            (let ((_%e99800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99797%_ 'exception))))
              (macro-deadlock-exception? _%e99800%_))
            (macro-deadlock-exception? _%exn99797%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99793%_))
            (let ((_%e99795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99793%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99795%_))
            (macro-divide-by-zero-exception? _%exn99793%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99789%_))
            (let ((_%e99791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99789%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99791%_)
                  (macro-divide-by-zero-exception-arguments _%e99791%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99791%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn99789%_)
                (macro-divide-by-zero-exception-arguments _%exn99789%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99789%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99783%_))
            (let ((_%e99786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99783%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99786%_)
                  (macro-divide-by-zero-exception-procedure _%e99786%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99786%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn99783%_)
                (macro-divide-by-zero-exception-procedure _%exn99783%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99783%_ '())))))))
    (define error-exception?
      (lambda (_%exn99779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99779%_))
            (let ((_%e99781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99779%_ 'exception))))
              (macro-error-exception? _%e99781%_))
            (macro-error-exception? _%exn99779%_))))
    (define error-exception-message
      (lambda (_%exn99775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99775%_))
            (let ((_%e99777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99775%_ 'exception))))
              (if (macro-error-exception? _%e99777%_)
                  (macro-error-exception-message _%e99777%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e99777%_ '())))))
            (if (macro-error-exception? _%exn99775%_)
                (macro-error-exception-message _%exn99775%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn99775%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn99769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99769%_))
            (let ((_%e99772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99769%_ 'exception))))
              (if (macro-error-exception? _%e99772%_)
                  (macro-error-exception-parameters _%e99772%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e99772%_ '())))))
            (if (macro-error-exception? _%exn99769%_)
                (macro-error-exception-parameters _%exn99769%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn99769%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn99765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99765%_))
            (let ((_%e99767%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99765%_ 'exception))))
              (macro-expression-parsing-exception? _%e99767%_))
            (macro-expression-parsing-exception? _%exn99765%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99761%_))
            (let ((_%e99763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99761%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99763%_)
                  (macro-expression-parsing-exception-kind _%e99763%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99763%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99761%_)
                (macro-expression-parsing-exception-kind _%exn99761%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99761%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99757%_))
            (let ((_%e99759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99757%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99759%_)
                  (macro-expression-parsing-exception-parameters _%e99759%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99759%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99757%_)
                (macro-expression-parsing-exception-parameters _%exn99757%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99757%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99751%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99751%_))
            (let ((_%e99754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99751%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99754%_)
                  (macro-expression-parsing-exception-source _%e99754%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e99754%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99751%_)
                (macro-expression-parsing-exception-source _%exn99751%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99751%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn99747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99747%_))
            (let ((_%e99749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99747%_ 'exception))))
              (macro-file-exists-exception? _%e99749%_))
            (macro-file-exists-exception? _%exn99747%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99743%_))
            (let ((_%e99745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99743%_ 'exception))))
              (if (macro-file-exists-exception? _%e99745%_)
                  (macro-file-exists-exception-arguments _%e99745%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e99745%_ '())))))
            (if (macro-file-exists-exception? _%exn99743%_)
                (macro-file-exists-exception-arguments _%exn99743%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99743%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99737%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99737%_))
            (let ((_%e99740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99737%_ 'exception))))
              (if (macro-file-exists-exception? _%e99740%_)
                  (macro-file-exists-exception-procedure _%e99740%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e99740%_ '())))))
            (if (macro-file-exists-exception? _%exn99737%_)
                (macro-file-exists-exception-procedure _%exn99737%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99737%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99733%_))
            (let ((_%e99735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99733%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99735%_))
            (macro-fixnum-overflow-exception? _%exn99733%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99729%_))
            (let ((_%e99731%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99729%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99731%_)
                  (macro-fixnum-overflow-exception-arguments _%e99731%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99731%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn99729%_)
                (macro-fixnum-overflow-exception-arguments _%exn99729%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99729%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99723%_))
            (let ((_%e99726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99723%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99726%_)
                  (macro-fixnum-overflow-exception-procedure _%e99726%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99726%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn99723%_)
                (macro-fixnum-overflow-exception-procedure _%exn99723%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99723%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn99717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99717%_))
            (let ((_%e99720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99717%_ 'exception))))
              (macro-heap-overflow-exception? _%e99720%_))
            (macro-heap-overflow-exception? _%exn99717%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99713%_))
            (let ((_%e99715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99713%_ 'exception))))
              (macro-inactive-thread-exception? _%e99715%_))
            (macro-inactive-thread-exception? _%exn99713%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99709%_))
            (let ((_%e99711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99709%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99711%_)
                  (macro-inactive-thread-exception-arguments _%e99711%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99711%_ '())))))
            (if (macro-inactive-thread-exception? _%exn99709%_)
                (macro-inactive-thread-exception-arguments _%exn99709%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99709%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99703%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99703%_))
            (let ((_%e99706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99703%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99706%_)
                  (macro-inactive-thread-exception-procedure _%e99706%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99706%_ '())))))
            (if (macro-inactive-thread-exception? _%exn99703%_)
                (macro-inactive-thread-exception-procedure _%exn99703%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99703%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn99699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99699%_))
            (let ((_%e99701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99699%_ 'exception))))
              (macro-initialized-thread-exception? _%e99701%_))
            (macro-initialized-thread-exception? _%exn99699%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99695%_))
            (let ((_%e99697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99695%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99697%_)
                  (macro-initialized-thread-exception-arguments _%e99697%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99697%_ '())))))
            (if (macro-initialized-thread-exception? _%exn99695%_)
                (macro-initialized-thread-exception-arguments _%exn99695%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99695%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99689%_))
            (let ((_%e99692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99689%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99692%_)
                  (macro-initialized-thread-exception-procedure _%e99692%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99692%_ '())))))
            (if (macro-initialized-thread-exception? _%exn99689%_)
                (macro-initialized-thread-exception-procedure _%exn99689%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99689%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99685%_))
            (let ((_%e99687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99685%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99687%_))
            (macro-invalid-hash-number-exception? _%exn99685%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99681%_))
            (let ((_%e99683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99681%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99683%_)
                  (macro-invalid-hash-number-exception-arguments _%e99683%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99683%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn99681%_)
                (macro-invalid-hash-number-exception-arguments _%exn99681%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99681%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99675%_))
            (let ((_%e99678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99675%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99678%_)
                  (macro-invalid-hash-number-exception-procedure _%e99678%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99678%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn99675%_)
                (macro-invalid-hash-number-exception-procedure _%exn99675%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99675%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99671%_))
            (let ((_%e99673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99671%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99673%_))
            (macro-invalid-utf8-encoding-exception? _%exn99671%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99667%_))
            (let ((_%e99669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99667%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99669%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99669%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99669%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99667%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99667%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99667%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99661%_))
            (let ((_%e99664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99661%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99664%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99664%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99664%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99661%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99661%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99661%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn99657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99657%_))
            (let ((_%e99659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99657%_ 'exception))))
              (macro-join-timeout-exception? _%e99659%_))
            (macro-join-timeout-exception? _%exn99657%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99653%_))
            (let ((_%e99655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99653%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99655%_)
                  (macro-join-timeout-exception-arguments _%e99655%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99655%_ '())))))
            (if (macro-join-timeout-exception? _%exn99653%_)
                (macro-join-timeout-exception-arguments _%exn99653%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99653%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99647%_))
            (let ((_%e99650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99647%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99650%_)
                  (macro-join-timeout-exception-procedure _%e99650%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99650%_ '())))))
            (if (macro-join-timeout-exception? _%exn99647%_)
                (macro-join-timeout-exception-procedure _%exn99647%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99647%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn99643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99643%_))
            (let ((_%e99645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99643%_ 'exception))))
              (macro-keyword-expected-exception? _%e99645%_))
            (macro-keyword-expected-exception? _%exn99643%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99639%_))
            (let ((_%e99641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99639%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99641%_)
                  (macro-keyword-expected-exception-arguments _%e99641%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99641%_ '())))))
            (if (macro-keyword-expected-exception? _%exn99639%_)
                (macro-keyword-expected-exception-arguments _%exn99639%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99639%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99633%_))
            (let ((_%e99636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99633%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99636%_)
                  (macro-keyword-expected-exception-procedure _%e99636%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99636%_ '())))))
            (if (macro-keyword-expected-exception? _%exn99633%_)
                (macro-keyword-expected-exception-procedure _%exn99633%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99633%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn99629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99629%_))
            (let ((_%e99631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99629%_ 'exception))))
              (macro-length-mismatch-exception? _%e99631%_))
            (macro-length-mismatch-exception? _%exn99629%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99625%_))
            (let ((_%e99627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99625%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99627%_)
                  (macro-length-mismatch-exception-arg-id _%e99627%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99627%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99625%_)
                (macro-length-mismatch-exception-arg-id _%exn99625%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99625%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99621%_))
            (let ((_%e99623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99621%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99623%_)
                  (macro-length-mismatch-exception-arguments _%e99623%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99623%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99621%_)
                (macro-length-mismatch-exception-arguments _%exn99621%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99621%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99615%_))
            (let ((_%e99618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99615%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99618%_)
                  (macro-length-mismatch-exception-procedure _%e99618%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99618%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99615%_)
                (macro-length-mismatch-exception-procedure _%exn99615%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99615%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99611%_))
            (let ((_%e99613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99611%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99613%_))
            (macro-mailbox-receive-timeout-exception? _%exn99611%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99607%_))
            (let ((_%e99609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99607%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99609%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99609%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99609%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99607%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99607%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99607%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99601%_))
            (let ((_%e99604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99601%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99604%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99604%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99604%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99601%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99601%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99601%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn99597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99597%_))
            (let ((_%e99599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99597%_ 'exception))))
              (macro-module-not-found-exception? _%e99599%_))
            (macro-module-not-found-exception? _%exn99597%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99593%_))
            (let ((_%e99595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99593%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99595%_)
                  (macro-module-not-found-exception-arguments _%e99595%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99595%_ '())))))
            (if (macro-module-not-found-exception? _%exn99593%_)
                (macro-module-not-found-exception-arguments _%exn99593%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99593%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99587%_))
            (let ((_%e99590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99587%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99590%_)
                  (macro-module-not-found-exception-procedure _%e99590%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99590%_ '())))))
            (if (macro-module-not-found-exception? _%exn99587%_)
                (macro-module-not-found-exception-procedure _%exn99587%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99587%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99581%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99581%_))
            (let ((_%e99584%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99581%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99584%_))
            (macro-multiple-c-return-exception? _%exn99581%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99577%_))
            (let ((_%e99579%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99577%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99579%_))
            (macro-no-such-file-or-directory-exception? _%exn99577%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99573%_))
            (let ((_%e99575%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99573%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99575%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99575%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99575%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn99573%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99573%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99573%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99567%_))
            (let ((_%e99570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99567%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99570%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99570%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99570%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn99567%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99567%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99567%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn99563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99563%_))
            (let ((_%e99565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99563%_ 'exception))))
              (macro-noncontinuable-exception? _%e99565%_))
            (macro-noncontinuable-exception? _%exn99563%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99557%_))
            (let ((_%e99560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99557%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99560%_)
                  (macro-noncontinuable-exception-reason _%e99560%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99560%_ '())))))
            (if (macro-noncontinuable-exception? _%exn99557%_)
                (macro-noncontinuable-exception-reason _%exn99557%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99557%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99553%_))
            (let ((_%e99555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99553%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99555%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99553%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99549%_))
            (let ((_%e99551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99549%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99551%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99551%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99551%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99549%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99549%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99549%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99543%_))
            (let ((_%e99546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99543%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99546%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99546%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99546%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99543%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99543%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99543%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99539%_))
            (let ((_%e99541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99539%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99541%_))
            (macro-nonprocedure-operator-exception? _%exn99539%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99535%_))
            (let ((_%e99537%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99535%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99537%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99537%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99537%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99535%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99535%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99535%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99531%_))
            (let ((_%e99533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99531%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99533%_)
                  (macro-nonprocedure-operator-exception-code _%e99533%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99533%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99531%_)
                (macro-nonprocedure-operator-exception-code _%exn99531%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99531%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99527%_))
            (let ((_%e99529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99527%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99529%_)
                  (macro-nonprocedure-operator-exception-operator _%e99529%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99529%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99527%_)
                (macro-nonprocedure-operator-exception-operator _%exn99527%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99527%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99521%_))
            (let ((_%e99524%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99521%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99524%_)
                  (macro-nonprocedure-operator-exception-rte _%e99524%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99524%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99521%_)
                (macro-nonprocedure-operator-exception-rte _%exn99521%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99521%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99517%_))
            (let ((_%e99519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99517%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99519%_))
            (macro-not-in-compilation-context-exception? _%exn99517%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99513%_))
            (let ((_%e99515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99513%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99515%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99515%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99515%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn99513%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99513%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99513%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99507%_))
            (let ((_%e99510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99507%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99510%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99510%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99510%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn99507%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99507%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99507%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99503%_))
            (let ((_%e99505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99503%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99505%_))
            (macro-number-of-arguments-limit-exception? _%exn99503%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99499%_))
            (let ((_%e99501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99499%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99501%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99501%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99501%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn99499%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99499%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99499%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99493%_))
            (let ((_%e99496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99493%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99496%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99496%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99496%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn99493%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99493%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99493%_ '())))))))
    (define os-exception?
      (lambda (_%exn99489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99489%_))
            (let ((_%e99491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99489%_ 'exception))))
              (macro-os-exception? _%e99491%_))
            (macro-os-exception? _%exn99489%_))))
    (define os-exception-arguments
      (lambda (_%exn99485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99485%_))
            (let ((_%e99487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99485%_ 'exception))))
              (if (macro-os-exception? _%e99487%_)
                  (macro-os-exception-arguments _%e99487%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e99487%_ '())))))
            (if (macro-os-exception? _%exn99485%_)
                (macro-os-exception-arguments _%exn99485%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn99485%_ '())))))))
    (define os-exception-code
      (lambda (_%exn99481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99481%_))
            (let ((_%e99483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99481%_ 'exception))))
              (if (macro-os-exception? _%e99483%_)
                  (macro-os-exception-code _%e99483%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e99483%_ '())))))
            (if (macro-os-exception? _%exn99481%_)
                (macro-os-exception-code _%exn99481%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn99481%_ '())))))))
    (define os-exception-message
      (lambda (_%exn99477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99477%_))
            (let ((_%e99479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99477%_ 'exception))))
              (if (macro-os-exception? _%e99479%_)
                  (macro-os-exception-message _%e99479%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e99479%_ '())))))
            (if (macro-os-exception? _%exn99477%_)
                (macro-os-exception-message _%exn99477%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn99477%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn99471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99471%_))
            (let ((_%e99474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99471%_ 'exception))))
              (if (macro-os-exception? _%e99474%_)
                  (macro-os-exception-procedure _%e99474%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e99474%_ '())))))
            (if (macro-os-exception? _%exn99471%_)
                (macro-os-exception-procedure _%exn99471%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn99471%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn99467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99467%_))
            (let ((_%e99469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99467%_ 'exception))))
              (macro-permission-denied-exception? _%e99469%_))
            (macro-permission-denied-exception? _%exn99467%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99463%_))
            (let ((_%e99465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99463%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99465%_)
                  (macro-permission-denied-exception-arguments _%e99465%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99465%_ '())))))
            (if (macro-permission-denied-exception? _%exn99463%_)
                (macro-permission-denied-exception-arguments _%exn99463%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99463%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn99457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99457%_))
            (let ((_%e99460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99457%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99460%_)
                  (macro-permission-denied-exception-procedure _%e99460%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e99460%_ '())))))
            (if (macro-permission-denied-exception? _%exn99457%_)
                (macro-permission-denied-exception-procedure _%exn99457%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn99457%_ '())))))))
    (define range-exception?
      (lambda (_%exn99453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99453%_))
            (let ((_%e99455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99453%_ 'exception))))
              (macro-range-exception? _%e99455%_))
            (macro-range-exception? _%exn99453%_))))
    (define range-exception-arg-id
      (lambda (_%exn99449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99449%_))
            (let ((_%e99451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99449%_ 'exception))))
              (if (macro-range-exception? _%e99451%_)
                  (macro-range-exception-arg-id _%e99451%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e99451%_ '())))))
            (if (macro-range-exception? _%exn99449%_)
                (macro-range-exception-arg-id _%exn99449%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn99449%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn99445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99445%_))
            (let ((_%e99447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99445%_ 'exception))))
              (if (macro-range-exception? _%e99447%_)
                  (macro-range-exception-arguments _%e99447%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e99447%_ '())))))
            (if (macro-range-exception? _%exn99445%_)
                (macro-range-exception-arguments _%exn99445%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn99445%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn99439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99439%_))
            (let ((_%e99442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99439%_ 'exception))))
              (if (macro-range-exception? _%e99442%_)
                  (macro-range-exception-procedure _%e99442%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e99442%_ '())))))
            (if (macro-range-exception? _%exn99439%_)
                (macro-range-exception-procedure _%exn99439%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn99439%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn99435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99435%_))
            (let ((_%e99437%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99435%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e99437%_))
            (macro-rpc-remote-error-exception? _%exn99435%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn99431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99431%_))
            (let ((_%e99433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99431%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99433%_)
                  (macro-rpc-remote-error-exception-arguments _%e99433%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e99433%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn99431%_)
                (macro-rpc-remote-error-exception-arguments _%exn99431%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn99431%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn99427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99427%_))
            (let ((_%e99429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99427%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99429%_)
                  (macro-rpc-remote-error-exception-message _%e99429%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e99429%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn99427%_)
                (macro-rpc-remote-error-exception-message _%exn99427%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn99427%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn99421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99421%_))
            (let ((_%e99424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99421%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99424%_)
                  (macro-rpc-remote-error-exception-procedure _%e99424%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e99424%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn99421%_)
                (macro-rpc-remote-error-exception-procedure _%exn99421%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn99421%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn99417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99417%_))
            (let ((_%e99419%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99417%_ 'exception))))
              (macro-scheduler-exception? _%e99419%_))
            (macro-scheduler-exception? _%exn99417%_))))
    (define scheduler-exception-reason
      (lambda (_%exn99411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99411%_))
            (let ((_%e99414%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99411%_ 'exception))))
              (if (macro-scheduler-exception? _%e99414%_)
                  (macro-scheduler-exception-reason _%e99414%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e99414%_ '())))))
            (if (macro-scheduler-exception? _%exn99411%_)
                (macro-scheduler-exception-reason _%exn99411%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn99411%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn99407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99407%_))
            (let ((_%e99409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99407%_ 'exception))))
              (macro-sfun-conversion-exception? _%e99409%_))
            (macro-sfun-conversion-exception? _%exn99407%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn99403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99403%_))
            (let ((_%e99405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99403%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99405%_)
                  (macro-sfun-conversion-exception-arguments _%e99405%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e99405%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99403%_)
                (macro-sfun-conversion-exception-arguments _%exn99403%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn99403%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn99399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99399%_))
            (let ((_%e99401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99399%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99401%_)
                  (macro-sfun-conversion-exception-code _%e99401%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e99401%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99399%_)
                (macro-sfun-conversion-exception-code _%exn99399%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn99399%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn99395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99395%_))
            (let ((_%e99397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99395%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99397%_)
                  (macro-sfun-conversion-exception-message _%e99397%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e99397%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99395%_)
                (macro-sfun-conversion-exception-message _%exn99395%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn99395%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn99389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99389%_))
            (let ((_%e99392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99389%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99392%_)
                  (macro-sfun-conversion-exception-procedure _%e99392%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e99392%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99389%_)
                (macro-sfun-conversion-exception-procedure _%exn99389%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn99389%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn99383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99383%_))
            (let ((_%e99386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99383%_ 'exception))))
              (macro-stack-overflow-exception? _%e99386%_))
            (macro-stack-overflow-exception? _%exn99383%_))))
    (define started-thread-exception?
      (lambda (_%exn99379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99379%_))
            (let ((_%e99381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99379%_ 'exception))))
              (macro-started-thread-exception? _%e99381%_))
            (macro-started-thread-exception? _%exn99379%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn99375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99375%_))
            (let ((_%e99377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99375%_ 'exception))))
              (if (macro-started-thread-exception? _%e99377%_)
                  (macro-started-thread-exception-arguments _%e99377%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e99377%_ '())))))
            (if (macro-started-thread-exception? _%exn99375%_)
                (macro-started-thread-exception-arguments _%exn99375%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn99375%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn99369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99369%_))
            (let ((_%e99372%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99369%_ 'exception))))
              (if (macro-started-thread-exception? _%e99372%_)
                  (macro-started-thread-exception-procedure _%e99372%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e99372%_ '())))))
            (if (macro-started-thread-exception? _%exn99369%_)
                (macro-started-thread-exception-procedure _%exn99369%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn99369%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn99365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99365%_))
            (let ((_%e99367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99365%_ 'exception))))
              (macro-terminated-thread-exception? _%e99367%_))
            (macro-terminated-thread-exception? _%exn99365%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn99361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99361%_))
            (let ((_%e99363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99361%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99363%_)
                  (macro-terminated-thread-exception-arguments _%e99363%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e99363%_ '())))))
            (if (macro-terminated-thread-exception? _%exn99361%_)
                (macro-terminated-thread-exception-arguments _%exn99361%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn99361%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn99355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99355%_))
            (let ((_%e99358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99355%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99358%_)
                  (macro-terminated-thread-exception-procedure _%e99358%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e99358%_ '())))))
            (if (macro-terminated-thread-exception? _%exn99355%_)
                (macro-terminated-thread-exception-procedure _%exn99355%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn99355%_ '())))))))
    (define type-exception?
      (lambda (_%exn99351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99351%_))
            (let ((_%e99353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99351%_ 'exception))))
              (macro-type-exception? _%e99353%_))
            (macro-type-exception? _%exn99351%_))))
    (define type-exception-arg-id
      (lambda (_%exn99347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99347%_))
            (let ((_%e99349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99347%_ 'exception))))
              (if (macro-type-exception? _%e99349%_)
                  (macro-type-exception-arg-id _%e99349%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id (cons _%e99349%_ '())))))
            (if (macro-type-exception? _%exn99347%_)
                (macro-type-exception-arg-id _%exn99347%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn99347%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn99343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99343%_))
            (let ((_%e99345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99343%_ 'exception))))
              (if (macro-type-exception? _%e99345%_)
                  (macro-type-exception-arguments _%e99345%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e99345%_ '())))))
            (if (macro-type-exception? _%exn99343%_)
                (macro-type-exception-arguments _%exn99343%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn99343%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn99339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99339%_))
            (let ((_%e99341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99339%_ 'exception))))
              (if (macro-type-exception? _%e99341%_)
                  (macro-type-exception-procedure _%e99341%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e99341%_ '())))))
            (if (macro-type-exception? _%exn99339%_)
                (macro-type-exception-procedure _%exn99339%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn99339%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn99333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99333%_))
            (let ((_%e99336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99333%_ 'exception))))
              (if (macro-type-exception? _%e99336%_)
                  (macro-type-exception-type-id _%e99336%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e99336%_ '())))))
            (if (macro-type-exception? _%exn99333%_)
                (macro-type-exception-type-id _%exn99333%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn99333%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn99329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99329%_))
            (let ((_%e99331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99329%_ 'exception))))
              (macro-unbound-global-exception? _%e99331%_))
            (macro-unbound-global-exception? _%exn99329%_))))
    (define unbound-global-exception-code
      (lambda (_%exn99325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99325%_))
            (let ((_%e99327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99325%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99327%_)
                  (macro-unbound-global-exception-code _%e99327%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e99327%_ '())))))
            (if (macro-unbound-global-exception? _%exn99325%_)
                (macro-unbound-global-exception-code _%exn99325%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn99325%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn99321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99321%_))
            (let ((_%e99323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99321%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99323%_)
                  (macro-unbound-global-exception-rte _%e99323%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e99323%_ '())))))
            (if (macro-unbound-global-exception? _%exn99321%_)
                (macro-unbound-global-exception-rte _%exn99321%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn99321%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99315%_))
            (let ((_%e99318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99315%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99318%_)
                  (macro-unbound-global-exception-variable _%e99318%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e99318%_ '())))))
            (if (macro-unbound-global-exception? _%exn99315%_)
                (macro-unbound-global-exception-variable _%exn99315%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99315%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn99311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99311%_))
            (let ((_%e99313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99311%_ 'exception))))
              (macro-unbound-key-exception? _%e99313%_))
            (macro-unbound-key-exception? _%exn99311%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99307%_))
            (let ((_%e99309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99307%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99309%_)
                  (macro-unbound-key-exception-arguments _%e99309%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99309%_ '())))))
            (if (macro-unbound-key-exception? _%exn99307%_)
                (macro-unbound-key-exception-arguments _%exn99307%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99307%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99301%_))
            (let ((_%e99304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99301%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99304%_)
                  (macro-unbound-key-exception-procedure _%e99304%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99304%_ '())))))
            (if (macro-unbound-key-exception? _%exn99301%_)
                (macro-unbound-key-exception-procedure _%exn99301%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99301%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99297%_))
            (let ((_%e99299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99297%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99299%_))
            (macro-unbound-os-environment-variable-exception? _%exn99297%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99293%_))
            (let ((_%e99295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99293%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99295%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99295%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99295%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99293%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99293%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99293%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99287%_))
            (let ((_%e99290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99287%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99290%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99290%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99290%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99287%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99287%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99287%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99283%_))
            (let ((_%e99285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99283%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99285%_))
            (macro-unbound-serial-number-exception? _%exn99283%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99279%_))
            (let ((_%e99281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99279%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99281%_)
                  (macro-unbound-serial-number-exception-arguments _%e99281%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99281%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn99279%_)
                (macro-unbound-serial-number-exception-arguments _%exn99279%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99279%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99273%_))
            (let ((_%e99276%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99273%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99276%_)
                  (macro-unbound-serial-number-exception-procedure _%e99276%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99276%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn99273%_)
                (macro-unbound-serial-number-exception-procedure _%exn99273%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99273%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn99269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99269%_))
            (let ((_%e99271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99269%_ 'exception))))
              (macro-uncaught-exception? _%e99271%_))
            (macro-uncaught-exception? _%exn99269%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99265%_))
            (let ((_%e99267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99265%_ 'exception))))
              (if (macro-uncaught-exception? _%e99267%_)
                  (macro-uncaught-exception-arguments _%e99267%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e99267%_ '())))))
            (if (macro-uncaught-exception? _%exn99265%_)
                (macro-uncaught-exception-arguments _%exn99265%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99265%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99261%_))
            (let ((_%e99263%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99261%_ 'exception))))
              (if (macro-uncaught-exception? _%e99263%_)
                  (macro-uncaught-exception-procedure _%e99263%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e99263%_ '())))))
            (if (macro-uncaught-exception? _%exn99261%_)
                (macro-uncaught-exception-procedure _%exn99261%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99261%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn99255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99255%_))
            (let ((_%e99258%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99255%_ 'exception))))
              (if (macro-uncaught-exception? _%e99258%_)
                  (macro-uncaught-exception-reason _%e99258%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e99258%_ '())))))
            (if (macro-uncaught-exception? _%exn99255%_)
                (macro-uncaught-exception-reason _%exn99255%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn99255%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99251%_))
            (let ((_%e99253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99251%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99253%_))
            (macro-uninitialized-thread-exception? _%exn99251%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99247%_))
            (let ((_%e99249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99247%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99249%_)
                  (macro-uninitialized-thread-exception-arguments _%e99249%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99249%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn99247%_)
                (macro-uninitialized-thread-exception-arguments _%exn99247%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99247%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99241%_))
            (let ((_%e99244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99241%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99244%_)
                  (macro-uninitialized-thread-exception-procedure _%e99244%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99244%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn99241%_)
                (macro-uninitialized-thread-exception-procedure _%exn99241%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99241%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99237%_))
            (let ((_%e99239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99237%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99239%_))
            (macro-unknown-keyword-argument-exception? _%exn99237%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99233%_))
            (let ((_%e99235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99233%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99235%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99235%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99235%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn99233%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99233%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99233%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99227%_))
            (let ((_%e99230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99227%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99230%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99230%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99230%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn99227%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99227%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99227%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn99223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99223%_))
            (let ((_%e99225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99223%_ 'exception))))
              (macro-unterminated-process-exception? _%e99225%_))
            (macro-unterminated-process-exception? _%exn99223%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99219%_))
            (let ((_%e99221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99219%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99221%_)
                  (macro-unterminated-process-exception-arguments _%e99221%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99221%_ '())))))
            (if (macro-unterminated-process-exception? _%exn99219%_)
                (macro-unterminated-process-exception-arguments _%exn99219%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99219%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99213%_))
            (let ((_%e99216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99213%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99216%_)
                  (macro-unterminated-process-exception-procedure _%e99216%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99216%_ '())))))
            (if (macro-unterminated-process-exception? _%exn99213%_)
                (macro-unterminated-process-exception-procedure _%exn99213%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99213%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99209%_))
            (let ((_%e99211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99209%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99211%_))
            (macro-wrong-number-of-arguments-exception? _%exn99209%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99205%_))
            (let ((_%e99207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99205%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99207%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99207%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99207%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99205%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99205%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99205%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99199%_))
            (let ((_%e99202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99199%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99202%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99202%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99202%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99199%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99199%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99199%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99195%_))
            (let ((_%e99197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99195%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99197%_))
            (macro-wrong-number-of-values-exception? _%exn99195%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99191%_))
            (let ((_%e99193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99191%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99193%_)
                  (macro-wrong-number-of-values-exception-code _%e99193%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99193%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99191%_)
                (macro-wrong-number-of-values-exception-code _%exn99191%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99191%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99187%_))
            (let ((_%e99189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99187%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99189%_)
                  (macro-wrong-number-of-values-exception-rte _%e99189%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99189%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99187%_)
                (macro-wrong-number-of-values-exception-rte _%exn99187%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99187%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99181%_))
            (let ((_%e99184%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99181%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99184%_)
                  (macro-wrong-number-of-values-exception-vals _%e99184%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99184%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99181%_)
                (macro-wrong-number-of-values-exception-vals _%exn99181%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99181%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99175%_))
            (let ((_%e99178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99175%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99178%_))
            (macro-wrong-processor-c-return-exception? _%exn99175%_))))))
