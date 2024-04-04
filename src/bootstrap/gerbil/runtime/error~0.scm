(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712256086)
  (begin
    (define Exception::t
      (let ((__tmp100661 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100661
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100651%_
        (apply make-instance Exception::t _%$args100651%_)))
    (define StackTrace::t
      (let ((__tmp100662 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100662
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100648%_
        (apply make-instance StackTrace::t _%$args100648%_)))
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
      (let ((__tmp100663 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100663
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100645%_ (apply make-instance Error::t _%$args100645%_)))
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
      (let ((__tmp100664 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100664
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100642%_
        (apply make-instance ContractViolation::t _%$args100642%_)))
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
      (let ((__tmp100665 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100665
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100639%_
        (apply make-instance RuntimeException::t _%$args100639%_)))
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
      (lambda (_%exn100634%_ _%continue100635%_)
        (let ((_%exn100637%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100634%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100637%_ _%continue100635%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100630%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100630%_ 'continuation))
                '#!void
                (let ((__tmp100666
                       (lambda (_%cont100632%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100630%_
                            'continuation
                            _%cont100632%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100666)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100630%_))))
    (define error
      (lambda (_%message100627%_ . _%irritants100628%_)
        (let ((__tmp100667
               (let ((__obj100658
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100658
                  _%message100627%_
                  'irritants:
                  _%irritants100628%_)
                 __obj100658)))
          (declare (not safe))
          (raise __tmp100667))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100599%_
               _%ctx100594100600%_
               _%contract-expr100595100602%_
               _%value100596100604%_
               _%message100606%_)
        (let* ((_%ctx100608%_
                (if (eq? _%ctx100594100600%_ absent-value)
                    '#f
                    _%ctx100594100600%_))
               (_%contract-expr100610%_
                (if (eq? _%contract-expr100595100602%_ absent-value)
                    '#f
                    _%contract-expr100595100602%_))
               (_%value100612%_
                (if (eq? _%value100596100604%_ absent-value)
                    '#f
                    _%value100596100604%_))
               (__tmp100668
                (let ((__obj100659
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100659
                   _%message100606%_
                   'where:
                   _%ctx100608%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100610%_
                               (cons 'value: (cons _%value100612%_ '())))))
                  __obj100659)))
          (declare (not safe))
          (raise __tmp100668))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100617%_ . _%args100618%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100617%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100617%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100617%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100617%_
                  'value:
                  absent-value))
               _%args100618%_)))
    (define __raise-contract-violation-error
      (lambda _%args100597100624%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100597100624%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100568%_ _%thunk100569%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100568%_))
              (let ((_%handler100573%_ _%handler100568%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100569%_))
                    (let ((_%thunk100583%_ _%thunk100569%_))
                      (declare (not safe))
                      (__with-exception-handler
                       _%handler100573%_
                       _%thunk100583%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100569%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@59.31-59.38"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100568%_)
                '#!void)))))
    (define __with-exception-handler
      (lambda (_%handler100543%_ _%thunk100544%_)
        (let ((_%handler100547%_ _%handler100543%_))
          (let* ((_%thunk100555%_ _%thunk100544%_)
                 (__tmp100669
                  (lambda (_%exn100564%_)
                    (let ((_%exn100566%_
                           (let ()
                             (declare (not safe))
                             (wrap-runtime-exception _%exn100564%_))))
                      (declare (not safe))
                      (_%handler100547%_ _%exn100566%_)))))
            (declare (not safe))
            (##with-exception-handler __tmp100669 _%thunk100555%_)))))
    (define with-catch
      (lambda (_%handler100518%_ _%thunk100519%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100518%_))
              (let ((_%handler100523%_ _%handler100518%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100519%_))
                    (let ((_%thunk100533%_ _%thunk100519%_))
                      (declare (not safe))
                      (__with-catch _%handler100523%_ _%thunk100533%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100519%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@66.19-66.26"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100518%_)
                '#!void)))))
    (define __with-catch
      (lambda (_%handler100493%_ _%thunk100494%_)
        (let ((_%handler100497%_ _%handler100493%_))
          (let* ((_%thunk100505%_ _%thunk100494%_)
                 (__tmp100670
                  (lambda (_%cont100514%_)
                    (let ((__tmp100671
                           (lambda (_%exn100516%_)
                             (let ()
                               (declare (not safe))
                               (##continuation-graft
                                _%cont100514%_
                                _%handler100497%_
                                _%exn100516%_)))))
                      (declare (not safe))
                      (__with-exception-handler
                       __tmp100671
                       _%thunk100505%_)))))
            (declare (not safe))
            (##continuation-capture __tmp100670)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100480%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn100480%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn100480%_)))
            (let () _%exn100480%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100480%_))
                (let () _%exn100480%_)
                (if (macro-exception? _%exn100480%_)
                    (let ((_%rte100488%_
                           (let ((__obj100660
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100660
                                _%exn100480%_
                                '2
                                '#f
                                '#f))
                             __obj100660)))
                      (let ((__tmp100672
                             (lambda (_%cont100490%_)
                               (let ((__tmp100673
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100490%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100488%_
                                  'continuation
                                  __tmp100673)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100672))
                      _%rte100488%_)
                    (let () _%exn100480%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj100475%_)
        (let ((_%$e100477%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj100475%_))))
          (if _%$e100477%_
              _%$e100477%_
              (let ()
                (declare (not safe))
                (error-exception? _%obj100475%_))))))
    (define error-message
      (lambda (_%obj100468%_)
        (let ((_%$e100470%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj100468%_ 'message false))))
          (if _%$e100470%_
              _%$e100470%_
              (if (let ()
                    (declare (not safe))
                    (error-exception? _%obj100468%_))
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj100468%_))
                  (let () '#f))))))
    (define error-irritants
      (lambda (_%obj100463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100463%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100463%_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _%obj100463%_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _%obj100463%_))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj100461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100461%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100461%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e100442%_ _%port100443%_)
        (let ((_%$e100445%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e100442%_ 'display-exception))))
          (if _%$e100445%_
              ((lambda (_%f100448%_) (_%f100448%_ _%e100442%_ _%port100443%_))
               _%$e100445%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e100442%_ _%port100443%_))))))
    (define display-exception__0
      (lambda (_%e100454%_)
        (let ((_%port100456%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e100454%_ _%port100456%_))))
    (define display-exception
      (lambda _g100675_
        (let ((_g100674_ (let () (declare (not safe)) (##length _g100675_))))
          (cond ((let () (declare (not safe)) (##fx= _g100674_ 1))
                 (apply (lambda (_%e100454%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e100454%_)))
                        _g100675_))
                ((let () (declare (not safe)) (##fx= _g100674_ 2))
                 (apply (lambda (_%e100458%_ _%port100459%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e100458%_ _%port100459%_)))
                        _g100675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100675_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100420%_ _%message100421%_ . _%rest100422%_)
        (let ()
          (let* ((_%self100425%_ _%self100420%_)
                 (_%message100439%_
                  (if (let () (declare (not safe)) (string? _%message100421%_))
                      _%message100421%_
                      (call-with-output-string
                       '""
                       (lambda (_%g100434100436%_)
                         (display _%message100421%_ _%g100434100436%_))))))
            (let ()
              (declare (not safe))
              (unchecked-slot-set! _%self100425%_ 'message _%message100439%_))
            (apply class-instance-init! _%self100425%_ _%rest100422%_)))))
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
      (lambda (_%self100144%_ _%port100145%_)
        (let ((_%self100148%_ _%self100144%_))
          (let ((_%tmp-port100158%_ (open-output-string))
                (_%display-error-newline100159%_
                 (> (output-port-column _%port100145%_) '0)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100158%_))
            (let ((__tmp100676
                   (lambda ()
                     (if _%display-error-newline100159%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100162%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100148%_ 'where))))
                       (if _%$e100162%_
                           (display _%$e100162%_)
                           (let () (display '"?"))))
                     (let ((__tmp100677
                            (let ((__tmp100678
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100148%_))))
                              (declare (not safe))
                              (##type-name __tmp100678))))
                       (declare (not safe))
                       (display* '" [" __tmp100677 '"]: "))
                     (let ((__tmp100679
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100148%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100679))
                     (let ((_%irritants100166%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100148%_ 'irritants))))
                       (if (let ()
                             (declare (not safe))
                             (null? _%irritants100166%_))
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100168%_)
                                (let ()
                                  (declare (not safe))
                                  (##write _%obj100168%_))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100166%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100169100171%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100148%_
                                   'continuation))))
                           (if _%cont100169100171%_
                               (let ((_%cont100174%_ _%cont100169100171%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100174%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100676
               current-output-port
               _%tmp-port100158%_))
            (let ((__tmp100680 (get-output-string _%tmp-port100158%_)))
              (declare (not safe))
              (##write-string __tmp100680 _%port100145%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self100000%_ _%port100001%_)
        (let ()
          (let* ((_%self100004%_ _%self100000%_)
                 (_%tmp-port100014%_ (open-output-string)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100014%_))
            (let ((__tmp100681
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%self100004%_ 'exception))))
              (declare (not safe))
              (##default-display-exception __tmp100681 _%tmp-port100014%_))
            (if (let () (declare (not safe)) (dump-stack-trace?))
                (let ((_%cont100015100017%_
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self100004%_ 'continuation))))
                  (if _%cont100015100017%_
                      (let ((_%cont100020%_ _%cont100015100017%_))
                        (display '"--- continuation backtrace:"
                                 _%tmp-port100014%_)
                        (newline _%tmp-port100014%_)
                        (display-continuation-backtrace
                         _%cont100020%_
                         _%tmp-port100014%_))
                      '#f))
                '#!void)
            (let ((__tmp100682 (get-output-string _%tmp-port100014%_)))
              (declare (not safe))
              (##write-string __tmp100682 _%port100001%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99872%_)
        (if (macro-character-port? _%port99872%_)
            (let ((_%old-width99874%_
                   (macro-character-port-output-width _%port99872%_)))
              (macro-character-port-output-width-set!
               _%port99872%_
               (lambda (_%port99876%_) '256))
              _%old-width99874%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99869%_ _%old-width99870%_)
        (if (macro-character-port? _%port99869%_)
            (macro-character-port-output-width-set!
             _%port99869%_
             _%old-width99870%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99867%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99867%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99861%_))
            (let ((_%e99864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99861%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99864%_))
            (macro-abandoned-mutex-exception? _%exn99861%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99857%_))
            (let ((_%e99859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99857%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99859%_))
            (macro-cfun-conversion-exception? _%exn99857%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99853%_))
            (let ((_%e99855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99853%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99855%_)
                  (macro-cfun-conversion-exception-arguments _%e99855%_)
                  (let ((__tmp100683
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99855%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100683))))
            (if (macro-cfun-conversion-exception? _%exn99853%_)
                (macro-cfun-conversion-exception-arguments _%exn99853%_)
                (let ((__tmp100684
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99853%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100684))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99849%_))
            (let ((_%e99851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99849%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99851%_)
                  (macro-cfun-conversion-exception-code _%e99851%_)
                  (let ((__tmp100685
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99851%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100685))))
            (if (macro-cfun-conversion-exception? _%exn99849%_)
                (macro-cfun-conversion-exception-code _%exn99849%_)
                (let ((__tmp100686
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99849%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100686))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99845%_))
            (let ((_%e99847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99845%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99847%_)
                  (macro-cfun-conversion-exception-message _%e99847%_)
                  (let ((__tmp100687
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99847%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100687))))
            (if (macro-cfun-conversion-exception? _%exn99845%_)
                (macro-cfun-conversion-exception-message _%exn99845%_)
                (let ((__tmp100688
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99845%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100688))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99839%_))
            (let ((_%e99842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99839%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99842%_)
                  (macro-cfun-conversion-exception-procedure _%e99842%_)
                  (let ((__tmp100689
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99842%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100689))))
            (if (macro-cfun-conversion-exception? _%exn99839%_)
                (macro-cfun-conversion-exception-procedure _%exn99839%_)
                (let ((__tmp100690
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99839%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100690))))))
    (define datum-parsing-exception?
      (lambda (_%exn99835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99835%_))
            (let ((_%e99837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99835%_ 'exception))))
              (macro-datum-parsing-exception? _%e99837%_))
            (macro-datum-parsing-exception? _%exn99835%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99831%_))
            (let ((_%e99833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99831%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99833%_)
                  (macro-datum-parsing-exception-kind _%e99833%_)
                  (let ((__tmp100691
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99833%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100691))))
            (if (macro-datum-parsing-exception? _%exn99831%_)
                (macro-datum-parsing-exception-kind _%exn99831%_)
                (let ((__tmp100692
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99831%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100692))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99827%_))
            (let ((_%e99829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99827%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99829%_)
                  (macro-datum-parsing-exception-parameters _%e99829%_)
                  (let ((__tmp100693
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99829%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100693))))
            (if (macro-datum-parsing-exception? _%exn99827%_)
                (macro-datum-parsing-exception-parameters _%exn99827%_)
                (let ((__tmp100694
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99827%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100694))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99821%_))
            (let ((_%e99824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99821%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99824%_)
                  (macro-datum-parsing-exception-readenv _%e99824%_)
                  (let ((__tmp100695
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99824%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100695))))
            (if (macro-datum-parsing-exception? _%exn99821%_)
                (macro-datum-parsing-exception-readenv _%exn99821%_)
                (let ((__tmp100696
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99821%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100696))))))
    (define deadlock-exception?
      (lambda (_%exn99815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99815%_))
            (let ((_%e99818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99815%_ 'exception))))
              (macro-deadlock-exception? _%e99818%_))
            (macro-deadlock-exception? _%exn99815%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99811%_))
            (let ((_%e99813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99811%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99813%_))
            (macro-divide-by-zero-exception? _%exn99811%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99807%_))
            (let ((_%e99809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99807%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99809%_)
                  (macro-divide-by-zero-exception-arguments _%e99809%_)
                  (let ((__tmp100697
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99809%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100697))))
            (if (macro-divide-by-zero-exception? _%exn99807%_)
                (macro-divide-by-zero-exception-arguments _%exn99807%_)
                (let ((__tmp100698
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99807%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100698))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99801%_))
            (let ((_%e99804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99801%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99804%_)
                  (macro-divide-by-zero-exception-procedure _%e99804%_)
                  (let ((__tmp100699
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99804%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100699))))
            (if (macro-divide-by-zero-exception? _%exn99801%_)
                (macro-divide-by-zero-exception-procedure _%exn99801%_)
                (let ((__tmp100700
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99801%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100700))))))
    (define error-exception?
      (lambda (_%exn99797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99797%_))
            (let ((_%e99799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99797%_ 'exception))))
              (macro-error-exception? _%e99799%_))
            (macro-error-exception? _%exn99797%_))))
    (define error-exception-message
      (lambda (_%exn99793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99793%_))
            (let ((_%e99795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99793%_ 'exception))))
              (if (macro-error-exception? _%e99795%_)
                  (macro-error-exception-message _%e99795%_)
                  (let ((__tmp100701
                         (cons 'error-exception-message
                               (cons _%e99795%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100701))))
            (if (macro-error-exception? _%exn99793%_)
                (macro-error-exception-message _%exn99793%_)
                (let ((__tmp100702
                       (cons 'error-exception-message
                             (cons _%exn99793%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100702))))))
    (define error-exception-parameters
      (lambda (_%exn99787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99787%_))
            (let ((_%e99790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99787%_ 'exception))))
              (if (macro-error-exception? _%e99790%_)
                  (macro-error-exception-parameters _%e99790%_)
                  (let ((__tmp100703
                         (cons 'error-exception-parameters
                               (cons _%e99790%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100703))))
            (if (macro-error-exception? _%exn99787%_)
                (macro-error-exception-parameters _%exn99787%_)
                (let ((__tmp100704
                       (cons 'error-exception-parameters
                             (cons _%exn99787%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100704))))))
    (define expression-parsing-exception?
      (lambda (_%exn99783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99783%_))
            (let ((_%e99785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99783%_ 'exception))))
              (macro-expression-parsing-exception? _%e99785%_))
            (macro-expression-parsing-exception? _%exn99783%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99779%_))
            (let ((_%e99781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99779%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99781%_)
                  (macro-expression-parsing-exception-kind _%e99781%_)
                  (let ((__tmp100705
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99781%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100705))))
            (if (macro-expression-parsing-exception? _%exn99779%_)
                (macro-expression-parsing-exception-kind _%exn99779%_)
                (let ((__tmp100706
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99779%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100706))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99775%_))
            (let ((_%e99777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99775%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99777%_)
                  (macro-expression-parsing-exception-parameters _%e99777%_)
                  (let ((__tmp100707
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99777%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100707))))
            (if (macro-expression-parsing-exception? _%exn99775%_)
                (macro-expression-parsing-exception-parameters _%exn99775%_)
                (let ((__tmp100708
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99775%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100708))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99769%_))
            (let ((_%e99772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99769%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99772%_)
                  (macro-expression-parsing-exception-source _%e99772%_)
                  (let ((__tmp100709
                         (cons 'expression-parsing-exception-source
                               (cons _%e99772%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100709))))
            (if (macro-expression-parsing-exception? _%exn99769%_)
                (macro-expression-parsing-exception-source _%exn99769%_)
                (let ((__tmp100710
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99769%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100710))))))
    (define file-exists-exception?
      (lambda (_%exn99765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99765%_))
            (let ((_%e99767%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99765%_ 'exception))))
              (macro-file-exists-exception? _%e99767%_))
            (macro-file-exists-exception? _%exn99765%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99761%_))
            (let ((_%e99763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99761%_ 'exception))))
              (if (macro-file-exists-exception? _%e99763%_)
                  (macro-file-exists-exception-arguments _%e99763%_)
                  (let ((__tmp100711
                         (cons 'file-exists-exception-arguments
                               (cons _%e99763%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100711))))
            (if (macro-file-exists-exception? _%exn99761%_)
                (macro-file-exists-exception-arguments _%exn99761%_)
                (let ((__tmp100712
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99761%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100712))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99755%_))
            (let ((_%e99758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99755%_ 'exception))))
              (if (macro-file-exists-exception? _%e99758%_)
                  (macro-file-exists-exception-procedure _%e99758%_)
                  (let ((__tmp100713
                         (cons 'file-exists-exception-procedure
                               (cons _%e99758%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100713))))
            (if (macro-file-exists-exception? _%exn99755%_)
                (macro-file-exists-exception-procedure _%exn99755%_)
                (let ((__tmp100714
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99755%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100714))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99751%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99751%_))
            (let ((_%e99753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99751%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99753%_))
            (macro-fixnum-overflow-exception? _%exn99751%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99747%_))
            (let ((_%e99749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99747%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99749%_)
                  (macro-fixnum-overflow-exception-arguments _%e99749%_)
                  (let ((__tmp100715
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99749%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100715))))
            (if (macro-fixnum-overflow-exception? _%exn99747%_)
                (macro-fixnum-overflow-exception-arguments _%exn99747%_)
                (let ((__tmp100716
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99747%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100716))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99741%_))
            (let ((_%e99744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99741%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99744%_)
                  (macro-fixnum-overflow-exception-procedure _%e99744%_)
                  (let ((__tmp100717
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99744%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100717))))
            (if (macro-fixnum-overflow-exception? _%exn99741%_)
                (macro-fixnum-overflow-exception-procedure _%exn99741%_)
                (let ((__tmp100718
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99741%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100718))))))
    (define heap-overflow-exception?
      (lambda (_%exn99735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99735%_))
            (let ((_%e99738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99735%_ 'exception))))
              (macro-heap-overflow-exception? _%e99738%_))
            (macro-heap-overflow-exception? _%exn99735%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99731%_))
            (let ((_%e99733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99731%_ 'exception))))
              (macro-inactive-thread-exception? _%e99733%_))
            (macro-inactive-thread-exception? _%exn99731%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99727%_))
            (let ((_%e99729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99727%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99729%_)
                  (macro-inactive-thread-exception-arguments _%e99729%_)
                  (let ((__tmp100719
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99729%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100719))))
            (if (macro-inactive-thread-exception? _%exn99727%_)
                (macro-inactive-thread-exception-arguments _%exn99727%_)
                (let ((__tmp100720
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99727%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100720))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99721%_))
            (let ((_%e99724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99721%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99724%_)
                  (macro-inactive-thread-exception-procedure _%e99724%_)
                  (let ((__tmp100721
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99724%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100721))))
            (if (macro-inactive-thread-exception? _%exn99721%_)
                (macro-inactive-thread-exception-procedure _%exn99721%_)
                (let ((__tmp100722
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99721%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100722))))))
    (define initialized-thread-exception?
      (lambda (_%exn99717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99717%_))
            (let ((_%e99719%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99717%_ 'exception))))
              (macro-initialized-thread-exception? _%e99719%_))
            (macro-initialized-thread-exception? _%exn99717%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99713%_))
            (let ((_%e99715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99713%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99715%_)
                  (macro-initialized-thread-exception-arguments _%e99715%_)
                  (let ((__tmp100723
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99715%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100723))))
            (if (macro-initialized-thread-exception? _%exn99713%_)
                (macro-initialized-thread-exception-arguments _%exn99713%_)
                (let ((__tmp100724
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99713%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100724))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99707%_))
            (let ((_%e99710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99707%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99710%_)
                  (macro-initialized-thread-exception-procedure _%e99710%_)
                  (let ((__tmp100725
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99710%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100725))))
            (if (macro-initialized-thread-exception? _%exn99707%_)
                (macro-initialized-thread-exception-procedure _%exn99707%_)
                (let ((__tmp100726
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99707%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100726))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99703%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99703%_))
            (let ((_%e99705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99703%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99705%_))
            (macro-invalid-hash-number-exception? _%exn99703%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99699%_))
            (let ((_%e99701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99699%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99701%_)
                  (macro-invalid-hash-number-exception-arguments _%e99701%_)
                  (let ((__tmp100727
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99701%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100727))))
            (if (macro-invalid-hash-number-exception? _%exn99699%_)
                (macro-invalid-hash-number-exception-arguments _%exn99699%_)
                (let ((__tmp100728
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99699%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100728))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99693%_))
            (let ((_%e99696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99693%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99696%_)
                  (macro-invalid-hash-number-exception-procedure _%e99696%_)
                  (let ((__tmp100729
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99696%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100729))))
            (if (macro-invalid-hash-number-exception? _%exn99693%_)
                (macro-invalid-hash-number-exception-procedure _%exn99693%_)
                (let ((__tmp100730
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99693%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100730))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99689%_))
            (let ((_%e99691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99689%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99691%_))
            (macro-invalid-utf8-encoding-exception? _%exn99689%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99685%_))
            (let ((_%e99687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99685%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99687%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99687%_)
                  (let ((__tmp100731
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99687%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100731))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99685%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99685%_)
                (let ((__tmp100732
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99685%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100732))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99679%_))
            (let ((_%e99682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99679%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99682%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99682%_)
                  (let ((__tmp100733
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99682%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100733))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99679%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99679%_)
                (let ((__tmp100734
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99679%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100734))))))
    (define join-timeout-exception?
      (lambda (_%exn99675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99675%_))
            (let ((_%e99677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99675%_ 'exception))))
              (macro-join-timeout-exception? _%e99677%_))
            (macro-join-timeout-exception? _%exn99675%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99671%_))
            (let ((_%e99673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99671%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99673%_)
                  (macro-join-timeout-exception-arguments _%e99673%_)
                  (let ((__tmp100735
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99673%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100735))))
            (if (macro-join-timeout-exception? _%exn99671%_)
                (macro-join-timeout-exception-arguments _%exn99671%_)
                (let ((__tmp100736
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99671%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100736))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99665%_))
            (let ((_%e99668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99665%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99668%_)
                  (macro-join-timeout-exception-procedure _%e99668%_)
                  (let ((__tmp100737
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99668%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100737))))
            (if (macro-join-timeout-exception? _%exn99665%_)
                (macro-join-timeout-exception-procedure _%exn99665%_)
                (let ((__tmp100738
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99665%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100738))))))
    (define keyword-expected-exception?
      (lambda (_%exn99661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99661%_))
            (let ((_%e99663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99661%_ 'exception))))
              (macro-keyword-expected-exception? _%e99663%_))
            (macro-keyword-expected-exception? _%exn99661%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99657%_))
            (let ((_%e99659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99657%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99659%_)
                  (macro-keyword-expected-exception-arguments _%e99659%_)
                  (let ((__tmp100739
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99659%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100739))))
            (if (macro-keyword-expected-exception? _%exn99657%_)
                (macro-keyword-expected-exception-arguments _%exn99657%_)
                (let ((__tmp100740
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99657%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100740))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99651%_))
            (let ((_%e99654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99651%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99654%_)
                  (macro-keyword-expected-exception-procedure _%e99654%_)
                  (let ((__tmp100741
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99654%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100741))))
            (if (macro-keyword-expected-exception? _%exn99651%_)
                (macro-keyword-expected-exception-procedure _%exn99651%_)
                (let ((__tmp100742
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99651%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100742))))))
    (define length-mismatch-exception?
      (lambda (_%exn99647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99647%_))
            (let ((_%e99649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99647%_ 'exception))))
              (macro-length-mismatch-exception? _%e99649%_))
            (macro-length-mismatch-exception? _%exn99647%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99643%_))
            (let ((_%e99645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99643%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99645%_)
                  (macro-length-mismatch-exception-arg-id _%e99645%_)
                  (let ((__tmp100743
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99645%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100743))))
            (if (macro-length-mismatch-exception? _%exn99643%_)
                (macro-length-mismatch-exception-arg-id _%exn99643%_)
                (let ((__tmp100744
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99643%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100744))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99639%_))
            (let ((_%e99641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99639%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99641%_)
                  (macro-length-mismatch-exception-arguments _%e99641%_)
                  (let ((__tmp100745
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99641%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100745))))
            (if (macro-length-mismatch-exception? _%exn99639%_)
                (macro-length-mismatch-exception-arguments _%exn99639%_)
                (let ((__tmp100746
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99639%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100746))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99633%_))
            (let ((_%e99636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99633%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99636%_)
                  (macro-length-mismatch-exception-procedure _%e99636%_)
                  (let ((__tmp100747
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99636%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100747))))
            (if (macro-length-mismatch-exception? _%exn99633%_)
                (macro-length-mismatch-exception-procedure _%exn99633%_)
                (let ((__tmp100748
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99633%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100748))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99629%_))
            (let ((_%e99631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99629%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99631%_))
            (macro-mailbox-receive-timeout-exception? _%exn99629%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99625%_))
            (let ((_%e99627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99625%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99627%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99627%_)
                  (let ((__tmp100749
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99627%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100749))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99625%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99625%_)
                (let ((__tmp100750
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99625%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100750))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99619%_))
            (let ((_%e99622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99619%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99622%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99622%_)
                  (let ((__tmp100751
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99622%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100751))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99619%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99619%_)
                (let ((__tmp100752
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99619%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100752))))))
    (define module-not-found-exception?
      (lambda (_%exn99615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99615%_))
            (let ((_%e99617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99615%_ 'exception))))
              (macro-module-not-found-exception? _%e99617%_))
            (macro-module-not-found-exception? _%exn99615%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99611%_))
            (let ((_%e99613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99611%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99613%_)
                  (macro-module-not-found-exception-arguments _%e99613%_)
                  (let ((__tmp100753
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99613%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100753))))
            (if (macro-module-not-found-exception? _%exn99611%_)
                (macro-module-not-found-exception-arguments _%exn99611%_)
                (let ((__tmp100754
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99611%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100754))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99605%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99605%_))
            (let ((_%e99608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99605%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99608%_)
                  (macro-module-not-found-exception-procedure _%e99608%_)
                  (let ((__tmp100755
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99608%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100755))))
            (if (macro-module-not-found-exception? _%exn99605%_)
                (macro-module-not-found-exception-procedure _%exn99605%_)
                (let ((__tmp100756
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99605%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100756))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99599%_))
            (let ((_%e99602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99599%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99602%_))
            (macro-multiple-c-return-exception? _%exn99599%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99595%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99595%_))
            (let ((_%e99597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99595%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99597%_))
            (macro-no-such-file-or-directory-exception? _%exn99595%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99591%_))
            (let ((_%e99593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99591%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99593%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99593%_)
                  (let ((__tmp100757
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99593%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100757))))
            (if (macro-no-such-file-or-directory-exception? _%exn99591%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99591%_)
                (let ((__tmp100758
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99591%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100758))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99585%_))
            (let ((_%e99588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99585%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99588%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99588%_)
                  (let ((__tmp100759
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99588%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100759))))
            (if (macro-no-such-file-or-directory-exception? _%exn99585%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99585%_)
                (let ((__tmp100760
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99585%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100760))))))
    (define noncontinuable-exception?
      (lambda (_%exn99581%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99581%_))
            (let ((_%e99583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99581%_ 'exception))))
              (macro-noncontinuable-exception? _%e99583%_))
            (macro-noncontinuable-exception? _%exn99581%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99575%_))
            (let ((_%e99578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99575%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99578%_)
                  (macro-noncontinuable-exception-reason _%e99578%_)
                  (let ((__tmp100761
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99578%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100761))))
            (if (macro-noncontinuable-exception? _%exn99575%_)
                (macro-noncontinuable-exception-reason _%exn99575%_)
                (let ((__tmp100762
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99575%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100762))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99571%_))
            (let ((_%e99573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99571%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99573%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99571%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99567%_))
            (let ((_%e99569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99567%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99569%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99569%_)
                  (let ((__tmp100763
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99569%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100763))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99567%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99567%_)
                (let ((__tmp100764
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99567%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100764))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99561%_))
            (let ((_%e99564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99561%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99564%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99564%_)
                  (let ((__tmp100765
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99564%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100765))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99561%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99561%_)
                (let ((__tmp100766
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99561%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100766))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99557%_))
            (let ((_%e99559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99557%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99559%_))
            (macro-nonprocedure-operator-exception? _%exn99557%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99553%_))
            (let ((_%e99555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99553%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99555%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99555%_)
                  (let ((__tmp100767
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99555%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100767))))
            (if (macro-nonprocedure-operator-exception? _%exn99553%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99553%_)
                (let ((__tmp100768
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99553%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100768))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99549%_))
            (let ((_%e99551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99549%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99551%_)
                  (macro-nonprocedure-operator-exception-code _%e99551%_)
                  (let ((__tmp100769
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99551%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100769))))
            (if (macro-nonprocedure-operator-exception? _%exn99549%_)
                (macro-nonprocedure-operator-exception-code _%exn99549%_)
                (let ((__tmp100770
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99549%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100770))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99545%_))
            (let ((_%e99547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99545%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99547%_)
                  (macro-nonprocedure-operator-exception-operator _%e99547%_)
                  (let ((__tmp100771
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99547%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100771))))
            (if (macro-nonprocedure-operator-exception? _%exn99545%_)
                (macro-nonprocedure-operator-exception-operator _%exn99545%_)
                (let ((__tmp100772
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99545%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100772))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99539%_))
            (let ((_%e99542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99539%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99542%_)
                  (macro-nonprocedure-operator-exception-rte _%e99542%_)
                  (let ((__tmp100773
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99542%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100773))))
            (if (macro-nonprocedure-operator-exception? _%exn99539%_)
                (macro-nonprocedure-operator-exception-rte _%exn99539%_)
                (let ((__tmp100774
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99539%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100774))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99535%_))
            (let ((_%e99537%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99535%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99537%_))
            (macro-not-in-compilation-context-exception? _%exn99535%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99531%_))
            (let ((_%e99533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99531%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99533%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99533%_)
                  (let ((__tmp100775
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99533%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100775))))
            (if (macro-not-in-compilation-context-exception? _%exn99531%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99531%_)
                (let ((__tmp100776
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99531%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100776))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99525%_))
            (let ((_%e99528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99525%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99528%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99528%_)
                  (let ((__tmp100777
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99528%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100777))))
            (if (macro-not-in-compilation-context-exception? _%exn99525%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99525%_)
                (let ((__tmp100778
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99525%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100778))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99521%_))
            (let ((_%e99523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99521%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99523%_))
            (macro-number-of-arguments-limit-exception? _%exn99521%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99517%_))
            (let ((_%e99519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99517%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99519%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99519%_)
                  (let ((__tmp100779
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99519%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100779))))
            (if (macro-number-of-arguments-limit-exception? _%exn99517%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99517%_)
                (let ((__tmp100780
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99517%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100780))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99511%_))
            (let ((_%e99514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99511%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99514%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99514%_)
                  (let ((__tmp100781
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99514%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100781))))
            (if (macro-number-of-arguments-limit-exception? _%exn99511%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99511%_)
                (let ((__tmp100782
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99511%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100782))))))
    (define os-exception?
      (lambda (_%exn99507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99507%_))
            (let ((_%e99509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99507%_ 'exception))))
              (macro-os-exception? _%e99509%_))
            (macro-os-exception? _%exn99507%_))))
    (define os-exception-arguments
      (lambda (_%exn99503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99503%_))
            (let ((_%e99505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99503%_ 'exception))))
              (if (macro-os-exception? _%e99505%_)
                  (macro-os-exception-arguments _%e99505%_)
                  (let ((__tmp100783
                         (cons 'os-exception-arguments (cons _%e99505%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100783))))
            (if (macro-os-exception? _%exn99503%_)
                (macro-os-exception-arguments _%exn99503%_)
                (let ((__tmp100784
                       (cons 'os-exception-arguments (cons _%exn99503%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100784))))))
    (define os-exception-code
      (lambda (_%exn99499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99499%_))
            (let ((_%e99501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99499%_ 'exception))))
              (if (macro-os-exception? _%e99501%_)
                  (macro-os-exception-code _%e99501%_)
                  (let ((__tmp100785
                         (cons 'os-exception-code (cons _%e99501%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100785))))
            (if (macro-os-exception? _%exn99499%_)
                (macro-os-exception-code _%exn99499%_)
                (let ((__tmp100786
                       (cons 'os-exception-code (cons _%exn99499%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100786))))))
    (define os-exception-message
      (lambda (_%exn99495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99495%_))
            (let ((_%e99497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99495%_ 'exception))))
              (if (macro-os-exception? _%e99497%_)
                  (macro-os-exception-message _%e99497%_)
                  (let ((__tmp100787
                         (cons 'os-exception-message (cons _%e99497%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100787))))
            (if (macro-os-exception? _%exn99495%_)
                (macro-os-exception-message _%exn99495%_)
                (let ((__tmp100788
                       (cons 'os-exception-message (cons _%exn99495%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100788))))))
    (define os-exception-procedure
      (lambda (_%exn99489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99489%_))
            (let ((_%e99492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99489%_ 'exception))))
              (if (macro-os-exception? _%e99492%_)
                  (macro-os-exception-procedure _%e99492%_)
                  (let ((__tmp100789
                         (cons 'os-exception-procedure (cons _%e99492%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100789))))
            (if (macro-os-exception? _%exn99489%_)
                (macro-os-exception-procedure _%exn99489%_)
                (let ((__tmp100790
                       (cons 'os-exception-procedure (cons _%exn99489%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100790))))))
    (define permission-denied-exception?
      (lambda (_%exn99485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99485%_))
            (let ((_%e99487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99485%_ 'exception))))
              (macro-permission-denied-exception? _%e99487%_))
            (macro-permission-denied-exception? _%exn99485%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99481%_))
            (let ((_%e99483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99481%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99483%_)
                  (macro-permission-denied-exception-arguments _%e99483%_)
                  (let ((__tmp100791
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99483%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100791))))
            (if (macro-permission-denied-exception? _%exn99481%_)
                (macro-permission-denied-exception-arguments _%exn99481%_)
                (let ((__tmp100792
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99481%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100792))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn99475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99475%_))
            (let ((_%e99478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99475%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99478%_)
                  (macro-permission-denied-exception-procedure _%e99478%_)
                  (let ((__tmp100793
                         (cons 'permission-denied-exception-procedure
                               (cons _%e99478%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100793))))
            (if (macro-permission-denied-exception? _%exn99475%_)
                (macro-permission-denied-exception-procedure _%exn99475%_)
                (let ((__tmp100794
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn99475%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100794))))))
    (define range-exception?
      (lambda (_%exn99471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99471%_))
            (let ((_%e99473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99471%_ 'exception))))
              (macro-range-exception? _%e99473%_))
            (macro-range-exception? _%exn99471%_))))
    (define range-exception-arg-id
      (lambda (_%exn99467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99467%_))
            (let ((_%e99469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99467%_ 'exception))))
              (if (macro-range-exception? _%e99469%_)
                  (macro-range-exception-arg-id _%e99469%_)
                  (let ((__tmp100795
                         (cons 'range-exception-arg-id (cons _%e99469%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100795))))
            (if (macro-range-exception? _%exn99467%_)
                (macro-range-exception-arg-id _%exn99467%_)
                (let ((__tmp100796
                       (cons 'range-exception-arg-id (cons _%exn99467%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100796))))))
    (define range-exception-arguments
      (lambda (_%exn99463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99463%_))
            (let ((_%e99465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99463%_ 'exception))))
              (if (macro-range-exception? _%e99465%_)
                  (macro-range-exception-arguments _%e99465%_)
                  (let ((__tmp100797
                         (cons 'range-exception-arguments
                               (cons _%e99465%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100797))))
            (if (macro-range-exception? _%exn99463%_)
                (macro-range-exception-arguments _%exn99463%_)
                (let ((__tmp100798
                       (cons 'range-exception-arguments
                             (cons _%exn99463%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100798))))))
    (define range-exception-procedure
      (lambda (_%exn99457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99457%_))
            (let ((_%e99460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99457%_ 'exception))))
              (if (macro-range-exception? _%e99460%_)
                  (macro-range-exception-procedure _%e99460%_)
                  (let ((__tmp100799
                         (cons 'range-exception-procedure
                               (cons _%e99460%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100799))))
            (if (macro-range-exception? _%exn99457%_)
                (macro-range-exception-procedure _%exn99457%_)
                (let ((__tmp100800
                       (cons 'range-exception-procedure
                             (cons _%exn99457%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100800))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn99453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99453%_))
            (let ((_%e99455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99453%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e99455%_))
            (macro-rpc-remote-error-exception? _%exn99453%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn99449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99449%_))
            (let ((_%e99451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99449%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99451%_)
                  (macro-rpc-remote-error-exception-arguments _%e99451%_)
                  (let ((__tmp100801
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e99451%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100801))))
            (if (macro-rpc-remote-error-exception? _%exn99449%_)
                (macro-rpc-remote-error-exception-arguments _%exn99449%_)
                (let ((__tmp100802
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn99449%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100802))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn99445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99445%_))
            (let ((_%e99447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99445%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99447%_)
                  (macro-rpc-remote-error-exception-message _%e99447%_)
                  (let ((__tmp100803
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e99447%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100803))))
            (if (macro-rpc-remote-error-exception? _%exn99445%_)
                (macro-rpc-remote-error-exception-message _%exn99445%_)
                (let ((__tmp100804
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn99445%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100804))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn99439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99439%_))
            (let ((_%e99442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99439%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99442%_)
                  (macro-rpc-remote-error-exception-procedure _%e99442%_)
                  (let ((__tmp100805
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e99442%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100805))))
            (if (macro-rpc-remote-error-exception? _%exn99439%_)
                (macro-rpc-remote-error-exception-procedure _%exn99439%_)
                (let ((__tmp100806
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn99439%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100806))))))
    (define scheduler-exception?
      (lambda (_%exn99435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99435%_))
            (let ((_%e99437%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99435%_ 'exception))))
              (macro-scheduler-exception? _%e99437%_))
            (macro-scheduler-exception? _%exn99435%_))))
    (define scheduler-exception-reason
      (lambda (_%exn99429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99429%_))
            (let ((_%e99432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99429%_ 'exception))))
              (if (macro-scheduler-exception? _%e99432%_)
                  (macro-scheduler-exception-reason _%e99432%_)
                  (let ((__tmp100807
                         (cons 'scheduler-exception-reason
                               (cons _%e99432%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100807))))
            (if (macro-scheduler-exception? _%exn99429%_)
                (macro-scheduler-exception-reason _%exn99429%_)
                (let ((__tmp100808
                       (cons 'scheduler-exception-reason
                             (cons _%exn99429%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100808))))))
    (define sfun-conversion-exception?
      (lambda (_%exn99425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99425%_))
            (let ((_%e99427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99425%_ 'exception))))
              (macro-sfun-conversion-exception? _%e99427%_))
            (macro-sfun-conversion-exception? _%exn99425%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn99421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99421%_))
            (let ((_%e99423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99421%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99423%_)
                  (macro-sfun-conversion-exception-arguments _%e99423%_)
                  (let ((__tmp100809
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e99423%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100809))))
            (if (macro-sfun-conversion-exception? _%exn99421%_)
                (macro-sfun-conversion-exception-arguments _%exn99421%_)
                (let ((__tmp100810
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn99421%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100810))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn99417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99417%_))
            (let ((_%e99419%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99417%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99419%_)
                  (macro-sfun-conversion-exception-code _%e99419%_)
                  (let ((__tmp100811
                         (cons 'sfun-conversion-exception-code
                               (cons _%e99419%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100811))))
            (if (macro-sfun-conversion-exception? _%exn99417%_)
                (macro-sfun-conversion-exception-code _%exn99417%_)
                (let ((__tmp100812
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn99417%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100812))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn99413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99413%_))
            (let ((_%e99415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99413%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99415%_)
                  (macro-sfun-conversion-exception-message _%e99415%_)
                  (let ((__tmp100813
                         (cons 'sfun-conversion-exception-message
                               (cons _%e99415%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100813))))
            (if (macro-sfun-conversion-exception? _%exn99413%_)
                (macro-sfun-conversion-exception-message _%exn99413%_)
                (let ((__tmp100814
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn99413%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100814))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn99407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99407%_))
            (let ((_%e99410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99407%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99410%_)
                  (macro-sfun-conversion-exception-procedure _%e99410%_)
                  (let ((__tmp100815
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e99410%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100815))))
            (if (macro-sfun-conversion-exception? _%exn99407%_)
                (macro-sfun-conversion-exception-procedure _%exn99407%_)
                (let ((__tmp100816
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn99407%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100816))))))
    (define stack-overflow-exception?
      (lambda (_%exn99401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99401%_))
            (let ((_%e99404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99401%_ 'exception))))
              (macro-stack-overflow-exception? _%e99404%_))
            (macro-stack-overflow-exception? _%exn99401%_))))
    (define started-thread-exception?
      (lambda (_%exn99397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99397%_))
            (let ((_%e99399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99397%_ 'exception))))
              (macro-started-thread-exception? _%e99399%_))
            (macro-started-thread-exception? _%exn99397%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn99393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99393%_))
            (let ((_%e99395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99393%_ 'exception))))
              (if (macro-started-thread-exception? _%e99395%_)
                  (macro-started-thread-exception-arguments _%e99395%_)
                  (let ((__tmp100817
                         (cons 'started-thread-exception-arguments
                               (cons _%e99395%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100817))))
            (if (macro-started-thread-exception? _%exn99393%_)
                (macro-started-thread-exception-arguments _%exn99393%_)
                (let ((__tmp100818
                       (cons 'started-thread-exception-arguments
                             (cons _%exn99393%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100818))))))
    (define started-thread-exception-procedure
      (lambda (_%exn99387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99387%_))
            (let ((_%e99390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99387%_ 'exception))))
              (if (macro-started-thread-exception? _%e99390%_)
                  (macro-started-thread-exception-procedure _%e99390%_)
                  (let ((__tmp100819
                         (cons 'started-thread-exception-procedure
                               (cons _%e99390%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100819))))
            (if (macro-started-thread-exception? _%exn99387%_)
                (macro-started-thread-exception-procedure _%exn99387%_)
                (let ((__tmp100820
                       (cons 'started-thread-exception-procedure
                             (cons _%exn99387%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100820))))))
    (define terminated-thread-exception?
      (lambda (_%exn99383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99383%_))
            (let ((_%e99385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99383%_ 'exception))))
              (macro-terminated-thread-exception? _%e99385%_))
            (macro-terminated-thread-exception? _%exn99383%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn99379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99379%_))
            (let ((_%e99381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99379%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99381%_)
                  (macro-terminated-thread-exception-arguments _%e99381%_)
                  (let ((__tmp100821
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e99381%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100821))))
            (if (macro-terminated-thread-exception? _%exn99379%_)
                (macro-terminated-thread-exception-arguments _%exn99379%_)
                (let ((__tmp100822
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn99379%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100822))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn99373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99373%_))
            (let ((_%e99376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99373%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99376%_)
                  (macro-terminated-thread-exception-procedure _%e99376%_)
                  (let ((__tmp100823
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e99376%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100823))))
            (if (macro-terminated-thread-exception? _%exn99373%_)
                (macro-terminated-thread-exception-procedure _%exn99373%_)
                (let ((__tmp100824
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn99373%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100824))))))
    (define type-exception?
      (lambda (_%exn99369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99369%_))
            (let ((_%e99371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99369%_ 'exception))))
              (macro-type-exception? _%e99371%_))
            (macro-type-exception? _%exn99369%_))))
    (define type-exception-arg-id
      (lambda (_%exn99365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99365%_))
            (let ((_%e99367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99365%_ 'exception))))
              (if (macro-type-exception? _%e99367%_)
                  (macro-type-exception-arg-id _%e99367%_)
                  (let ((__tmp100825
                         (cons 'type-exception-arg-id (cons _%e99367%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100825))))
            (if (macro-type-exception? _%exn99365%_)
                (macro-type-exception-arg-id _%exn99365%_)
                (let ((__tmp100826
                       (cons 'type-exception-arg-id (cons _%exn99365%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100826))))))
    (define type-exception-arguments
      (lambda (_%exn99361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99361%_))
            (let ((_%e99363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99361%_ 'exception))))
              (if (macro-type-exception? _%e99363%_)
                  (macro-type-exception-arguments _%e99363%_)
                  (let ((__tmp100827
                         (cons 'type-exception-arguments
                               (cons _%e99363%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100827))))
            (if (macro-type-exception? _%exn99361%_)
                (macro-type-exception-arguments _%exn99361%_)
                (let ((__tmp100828
                       (cons 'type-exception-arguments
                             (cons _%exn99361%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100828))))))
    (define type-exception-procedure
      (lambda (_%exn99357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99357%_))
            (let ((_%e99359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99357%_ 'exception))))
              (if (macro-type-exception? _%e99359%_)
                  (macro-type-exception-procedure _%e99359%_)
                  (let ((__tmp100829
                         (cons 'type-exception-procedure
                               (cons _%e99359%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100829))))
            (if (macro-type-exception? _%exn99357%_)
                (macro-type-exception-procedure _%exn99357%_)
                (let ((__tmp100830
                       (cons 'type-exception-procedure
                             (cons _%exn99357%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100830))))))
    (define type-exception-type-id
      (lambda (_%exn99351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99351%_))
            (let ((_%e99354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99351%_ 'exception))))
              (if (macro-type-exception? _%e99354%_)
                  (macro-type-exception-type-id _%e99354%_)
                  (let ((__tmp100831
                         (cons 'type-exception-type-id (cons _%e99354%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100831))))
            (if (macro-type-exception? _%exn99351%_)
                (macro-type-exception-type-id _%exn99351%_)
                (let ((__tmp100832
                       (cons 'type-exception-type-id (cons _%exn99351%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100832))))))
    (define unbound-global-exception?
      (lambda (_%exn99347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99347%_))
            (let ((_%e99349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99347%_ 'exception))))
              (macro-unbound-global-exception? _%e99349%_))
            (macro-unbound-global-exception? _%exn99347%_))))
    (define unbound-global-exception-code
      (lambda (_%exn99343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99343%_))
            (let ((_%e99345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99343%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99345%_)
                  (macro-unbound-global-exception-code _%e99345%_)
                  (let ((__tmp100833
                         (cons 'unbound-global-exception-code
                               (cons _%e99345%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100833))))
            (if (macro-unbound-global-exception? _%exn99343%_)
                (macro-unbound-global-exception-code _%exn99343%_)
                (let ((__tmp100834
                       (cons 'unbound-global-exception-code
                             (cons _%exn99343%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100834))))))
    (define unbound-global-exception-rte
      (lambda (_%exn99339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99339%_))
            (let ((_%e99341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99339%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99341%_)
                  (macro-unbound-global-exception-rte _%e99341%_)
                  (let ((__tmp100835
                         (cons 'unbound-global-exception-rte
                               (cons _%e99341%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100835))))
            (if (macro-unbound-global-exception? _%exn99339%_)
                (macro-unbound-global-exception-rte _%exn99339%_)
                (let ((__tmp100836
                       (cons 'unbound-global-exception-rte
                             (cons _%exn99339%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100836))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99333%_))
            (let ((_%e99336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99333%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99336%_)
                  (macro-unbound-global-exception-variable _%e99336%_)
                  (let ((__tmp100837
                         (cons 'unbound-global-exception-variable
                               (cons _%e99336%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100837))))
            (if (macro-unbound-global-exception? _%exn99333%_)
                (macro-unbound-global-exception-variable _%exn99333%_)
                (let ((__tmp100838
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99333%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100838))))))
    (define unbound-key-exception?
      (lambda (_%exn99329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99329%_))
            (let ((_%e99331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99329%_ 'exception))))
              (macro-unbound-key-exception? _%e99331%_))
            (macro-unbound-key-exception? _%exn99329%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99325%_))
            (let ((_%e99327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99325%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99327%_)
                  (macro-unbound-key-exception-arguments _%e99327%_)
                  (let ((__tmp100839
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99327%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100839))))
            (if (macro-unbound-key-exception? _%exn99325%_)
                (macro-unbound-key-exception-arguments _%exn99325%_)
                (let ((__tmp100840
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99325%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100840))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99319%_))
            (let ((_%e99322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99319%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99322%_)
                  (macro-unbound-key-exception-procedure _%e99322%_)
                  (let ((__tmp100841
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99322%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100841))))
            (if (macro-unbound-key-exception? _%exn99319%_)
                (macro-unbound-key-exception-procedure _%exn99319%_)
                (let ((__tmp100842
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99319%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100842))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99315%_))
            (let ((_%e99317%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99315%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99317%_))
            (macro-unbound-os-environment-variable-exception? _%exn99315%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99311%_))
            (let ((_%e99313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99311%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99313%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99313%_)
                  (let ((__tmp100843
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99313%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100843))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99311%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99311%_)
                (let ((__tmp100844
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99311%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100844))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99305%_))
            (let ((_%e99308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99305%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99308%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99308%_)
                  (let ((__tmp100845
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99308%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100845))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99305%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99305%_)
                (let ((__tmp100846
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99305%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100846))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99301%_))
            (let ((_%e99303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99301%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99303%_))
            (macro-unbound-serial-number-exception? _%exn99301%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99297%_))
            (let ((_%e99299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99297%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99299%_)
                  (macro-unbound-serial-number-exception-arguments _%e99299%_)
                  (let ((__tmp100847
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99299%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100847))))
            (if (macro-unbound-serial-number-exception? _%exn99297%_)
                (macro-unbound-serial-number-exception-arguments _%exn99297%_)
                (let ((__tmp100848
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99297%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100848))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99291%_))
            (let ((_%e99294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99291%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99294%_)
                  (macro-unbound-serial-number-exception-procedure _%e99294%_)
                  (let ((__tmp100849
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99294%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100849))))
            (if (macro-unbound-serial-number-exception? _%exn99291%_)
                (macro-unbound-serial-number-exception-procedure _%exn99291%_)
                (let ((__tmp100850
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99291%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100850))))))
    (define uncaught-exception?
      (lambda (_%exn99287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99287%_))
            (let ((_%e99289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99287%_ 'exception))))
              (macro-uncaught-exception? _%e99289%_))
            (macro-uncaught-exception? _%exn99287%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99283%_))
            (let ((_%e99285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99283%_ 'exception))))
              (if (macro-uncaught-exception? _%e99285%_)
                  (macro-uncaught-exception-arguments _%e99285%_)
                  (let ((__tmp100851
                         (cons 'uncaught-exception-arguments
                               (cons _%e99285%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100851))))
            (if (macro-uncaught-exception? _%exn99283%_)
                (macro-uncaught-exception-arguments _%exn99283%_)
                (let ((__tmp100852
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99283%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100852))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99279%_))
            (let ((_%e99281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99279%_ 'exception))))
              (if (macro-uncaught-exception? _%e99281%_)
                  (macro-uncaught-exception-procedure _%e99281%_)
                  (let ((__tmp100853
                         (cons 'uncaught-exception-procedure
                               (cons _%e99281%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100853))))
            (if (macro-uncaught-exception? _%exn99279%_)
                (macro-uncaught-exception-procedure _%exn99279%_)
                (let ((__tmp100854
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99279%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100854))))))
    (define uncaught-exception-reason
      (lambda (_%exn99273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99273%_))
            (let ((_%e99276%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99273%_ 'exception))))
              (if (macro-uncaught-exception? _%e99276%_)
                  (macro-uncaught-exception-reason _%e99276%_)
                  (let ((__tmp100855
                         (cons 'uncaught-exception-reason
                               (cons _%e99276%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100855))))
            (if (macro-uncaught-exception? _%exn99273%_)
                (macro-uncaught-exception-reason _%exn99273%_)
                (let ((__tmp100856
                       (cons 'uncaught-exception-reason
                             (cons _%exn99273%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100856))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99269%_))
            (let ((_%e99271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99269%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99271%_))
            (macro-uninitialized-thread-exception? _%exn99269%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99265%_))
            (let ((_%e99267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99265%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99267%_)
                  (macro-uninitialized-thread-exception-arguments _%e99267%_)
                  (let ((__tmp100857
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99267%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100857))))
            (if (macro-uninitialized-thread-exception? _%exn99265%_)
                (macro-uninitialized-thread-exception-arguments _%exn99265%_)
                (let ((__tmp100858
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99265%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100858))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99259%_))
            (let ((_%e99262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99259%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99262%_)
                  (macro-uninitialized-thread-exception-procedure _%e99262%_)
                  (let ((__tmp100859
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99262%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100859))))
            (if (macro-uninitialized-thread-exception? _%exn99259%_)
                (macro-uninitialized-thread-exception-procedure _%exn99259%_)
                (let ((__tmp100860
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99259%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100860))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99255%_))
            (let ((_%e99257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99255%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99257%_))
            (macro-unknown-keyword-argument-exception? _%exn99255%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99251%_))
            (let ((_%e99253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99251%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99253%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99253%_)
                  (let ((__tmp100861
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99253%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100861))))
            (if (macro-unknown-keyword-argument-exception? _%exn99251%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99251%_)
                (let ((__tmp100862
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99251%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100862))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99245%_))
            (let ((_%e99248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99245%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99248%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99248%_)
                  (let ((__tmp100863
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99248%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100863))))
            (if (macro-unknown-keyword-argument-exception? _%exn99245%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99245%_)
                (let ((__tmp100864
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99245%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100864))))))
    (define unterminated-process-exception?
      (lambda (_%exn99241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99241%_))
            (let ((_%e99243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99241%_ 'exception))))
              (macro-unterminated-process-exception? _%e99243%_))
            (macro-unterminated-process-exception? _%exn99241%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99237%_))
            (let ((_%e99239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99237%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99239%_)
                  (macro-unterminated-process-exception-arguments _%e99239%_)
                  (let ((__tmp100865
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99239%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100865))))
            (if (macro-unterminated-process-exception? _%exn99237%_)
                (macro-unterminated-process-exception-arguments _%exn99237%_)
                (let ((__tmp100866
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99237%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100866))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99231%_))
            (let ((_%e99234%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99231%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99234%_)
                  (macro-unterminated-process-exception-procedure _%e99234%_)
                  (let ((__tmp100867
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99234%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100867))))
            (if (macro-unterminated-process-exception? _%exn99231%_)
                (macro-unterminated-process-exception-procedure _%exn99231%_)
                (let ((__tmp100868
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99231%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100868))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99227%_))
            (let ((_%e99229%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99227%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99229%_))
            (macro-wrong-number-of-arguments-exception? _%exn99227%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99223%_))
            (let ((_%e99225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99223%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99225%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99225%_)
                  (let ((__tmp100869
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99225%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100869))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99223%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99223%_)
                (let ((__tmp100870
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99223%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100870))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99217%_))
            (let ((_%e99220%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99217%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99220%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99220%_)
                  (let ((__tmp100871
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99220%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100871))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99217%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99217%_)
                (let ((__tmp100872
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99217%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100872))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99213%_))
            (let ((_%e99215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99213%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99215%_))
            (macro-wrong-number-of-values-exception? _%exn99213%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99209%_))
            (let ((_%e99211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99209%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99211%_)
                  (macro-wrong-number-of-values-exception-code _%e99211%_)
                  (let ((__tmp100873
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99211%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100873))))
            (if (macro-wrong-number-of-values-exception? _%exn99209%_)
                (macro-wrong-number-of-values-exception-code _%exn99209%_)
                (let ((__tmp100874
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99209%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100874))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99205%_))
            (let ((_%e99207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99205%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99207%_)
                  (macro-wrong-number-of-values-exception-rte _%e99207%_)
                  (let ((__tmp100875
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99207%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100875))))
            (if (macro-wrong-number-of-values-exception? _%exn99205%_)
                (macro-wrong-number-of-values-exception-rte _%exn99205%_)
                (let ((__tmp100876
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99205%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100876))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99199%_))
            (let ((_%e99202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99199%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99202%_)
                  (macro-wrong-number-of-values-exception-vals _%e99202%_)
                  (let ((__tmp100877
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99202%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100877))))
            (if (macro-wrong-number-of-values-exception? _%exn99199%_)
                (macro-wrong-number-of-values-exception-vals _%exn99199%_)
                (let ((__tmp100878
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99199%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100878))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99193%_))
            (let ((_%e99196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99193%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99196%_))
            (macro-wrong-processor-c-return-exception? _%exn99193%_))))))
