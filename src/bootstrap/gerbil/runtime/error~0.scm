(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712246554)
  (begin
    (define Exception::t
      (let ((__tmp100678 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100678
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100668%_
        (apply make-instance Exception::t _%$args100668%_)))
    (define StackTrace::t
      (let ((__tmp100679 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100679
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100665%_
        (apply make-instance StackTrace::t _%$args100665%_)))
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
      (let ((__tmp100680 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100680
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100662%_ (apply make-instance Error::t _%$args100662%_)))
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
      (let ((__tmp100681 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100681
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100659%_
        (apply make-instance ContractViolation::t _%$args100659%_)))
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
      (let ((__tmp100682 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100682
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100656%_
        (apply make-instance RuntimeException::t _%$args100656%_)))
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
      (lambda (_%exn100651%_ _%continue100652%_)
        (let ((_%exn100654%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100651%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100654%_ _%continue100652%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100647%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100647%_ 'continuation))
                '#!void
                (let ((__tmp100683
                       (lambda (_%cont100649%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100647%_
                            'continuation
                            _%cont100649%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100683)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100647%_))))
    (define error
      (lambda (_%message100644%_ . _%irritants100645%_)
        (let ((__tmp100684
               (let ((__obj100675
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100675
                  _%message100644%_
                  'irritants:
                  _%irritants100645%_)
                 __obj100675)))
          (declare (not safe))
          (raise __tmp100684))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100616%_
               _%ctx100611100617%_
               _%contract-expr100612100619%_
               _%value100613100621%_
               _%message100623%_)
        (let* ((_%ctx100625%_
                (if (eq? _%ctx100611100617%_ absent-value)
                    '#f
                    _%ctx100611100617%_))
               (_%contract-expr100627%_
                (if (eq? _%contract-expr100612100619%_ absent-value)
                    '#f
                    _%contract-expr100612100619%_))
               (_%value100629%_
                (if (eq? _%value100613100621%_ absent-value)
                    '#f
                    _%value100613100621%_))
               (__tmp100685
                (let ((__obj100676
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100676
                   _%message100623%_
                   'where:
                   _%ctx100625%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100627%_
                               (cons 'value: (cons _%value100629%_ '())))))
                  __obj100676)))
          (declare (not safe))
          (raise __tmp100685))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100634%_ . _%args100635%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100634%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100634%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100634%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100634%_
                  'value:
                  absent-value))
               _%args100635%_)))
    (define __raise-contract-violation-error
      (lambda _%args100614100641%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100614100641%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100585%_ _%thunk100586%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100585%_))
              (let ((_%handler100590%_ _%handler100585%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100586%_))
                    (let ((_%thunk100600%_ _%thunk100586%_))
                      (declare (not safe))
                      (__with-exception-handler
                       _%handler100590%_
                       _%thunk100600%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100586%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@59.31-59.38"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100585%_)
                '#!void)))))
    (define __with-exception-handler
      (lambda (_%handler100560%_ _%thunk100561%_)
        (let ((_%handler100564%_ _%handler100560%_))
          (let* ((_%thunk100572%_ _%thunk100561%_)
                 (__tmp100686
                  (lambda (_%exn100581%_)
                    (let ((_%exn100583%_
                           (let ()
                             (declare (not safe))
                             (wrap-runtime-exception _%exn100581%_))))
                      (declare (not safe))
                      (_%handler100564%_ _%exn100583%_)))))
            (declare (not safe))
            (##with-exception-handler __tmp100686 _%thunk100572%_)))))
    (define with-catch
      (lambda (_%handler100535%_ _%thunk100536%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100535%_))
              (let ((_%handler100540%_ _%handler100535%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100536%_))
                    (let ((_%thunk100550%_ _%thunk100536%_))
                      (declare (not safe))
                      (__with-catch _%handler100540%_ _%thunk100550%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100536%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@66.19-66.26"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100535%_)
                '#!void)))))
    (define __with-catch
      (lambda (_%handler100510%_ _%thunk100511%_)
        (let ((_%handler100514%_ _%handler100510%_))
          (let* ((_%thunk100522%_ _%thunk100511%_)
                 (__tmp100687
                  (lambda (_%cont100531%_)
                    (let ((__tmp100688
                           (lambda (_%exn100533%_)
                             (let ()
                               (declare (not safe))
                               (##continuation-graft
                                _%cont100531%_
                                _%handler100514%_
                                _%exn100533%_)))))
                      (declare (not safe))
                      (__with-exception-handler
                       __tmp100688
                       _%thunk100522%_)))))
            (declare (not safe))
            (##continuation-capture __tmp100687)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100497%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn100497%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn100497%_)))
            (let () _%exn100497%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100497%_))
                (let () _%exn100497%_)
                (if (macro-exception? _%exn100497%_)
                    (let ((_%rte100505%_
                           (let ((__obj100677
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100677
                                _%exn100497%_
                                '2
                                '#f
                                '#f))
                             __obj100677)))
                      (let ((__tmp100689
                             (lambda (_%cont100507%_)
                               (let ((__tmp100690
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100507%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100505%_
                                  'continuation
                                  __tmp100690)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100689))
                      _%rte100505%_)
                    (let () _%exn100497%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj100492%_)
        (let ((_%$e100494%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj100492%_))))
          (if _%$e100494%_
              _%$e100494%_
              (let ()
                (declare (not safe))
                (error-exception? _%obj100492%_))))))
    (define error-message
      (lambda (_%obj100485%_)
        (let ((_%$e100487%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj100485%_ 'message false))))
          (if _%$e100487%_
              _%$e100487%_
              (if (let ()
                    (declare (not safe))
                    (error-exception? _%obj100485%_))
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj100485%_))
                  (let () '#f))))))
    (define error-irritants
      (lambda (_%obj100480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100480%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100480%_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _%obj100480%_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _%obj100480%_))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj100478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100478%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100478%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e100459%_ _%port100460%_)
        (let ((_%$e100462%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e100459%_ 'display-exception))))
          (if _%$e100462%_
              ((lambda (_%f100465%_) (_%f100465%_ _%e100459%_ _%port100460%_))
               _%$e100462%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e100459%_ _%port100460%_))))))
    (define display-exception__0
      (lambda (_%e100471%_)
        (let ((_%port100473%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e100471%_ _%port100473%_))))
    (define display-exception
      (lambda _g100692_
        (let ((_g100691_ (let () (declare (not safe)) (##length _g100692_))))
          (cond ((let () (declare (not safe)) (##fx= _g100691_ 1))
                 (apply (lambda (_%e100471%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e100471%_)))
                        _g100692_))
                ((let () (declare (not safe)) (##fx= _g100691_ 2))
                 (apply (lambda (_%e100475%_ _%port100476%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e100475%_ _%port100476%_)))
                        _g100692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100692_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100437%_ _%message100438%_ . _%rest100439%_)
        (let ()
          (let* ((_%self100442%_ _%self100437%_)
                 (_%message100456%_
                  (if (let () (declare (not safe)) (string? _%message100438%_))
                      _%message100438%_
                      (call-with-output-string
                       '""
                       (lambda (_%g100451100453%_)
                         (display _%message100438%_ _%g100451100453%_))))))
            (let ()
              (declare (not safe))
              (unchecked-slot-set! _%self100442%_ 'message _%message100456%_))
            (apply class-instance-init! _%self100442%_ _%rest100439%_)))))
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
      (lambda (_%self100161%_ _%port100162%_)
        (let ((_%self100165%_ _%self100161%_))
          (let ((_%tmp-port100175%_ (open-output-string))
                (_%display-error-newline100176%_
                 (> (output-port-column _%port100162%_) '0)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100175%_))
            (let ((__tmp100693
                   (lambda ()
                     (if _%display-error-newline100176%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100179%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100165%_ 'where))))
                       (if _%$e100179%_
                           (display _%$e100179%_)
                           (let () (display '"?"))))
                     (let ((__tmp100694
                            (let ((__tmp100695
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100165%_))))
                              (declare (not safe))
                              (##type-name __tmp100695))))
                       (declare (not safe))
                       (display* '" [" __tmp100694 '"]: "))
                     (let ((__tmp100696
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100165%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100696))
                     (let ((_%irritants100183%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100165%_ 'irritants))))
                       (if (let ()
                             (declare (not safe))
                             (null? _%irritants100183%_))
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100185%_)
                                (let ()
                                  (declare (not safe))
                                  (##write _%obj100185%_))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100183%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100186100188%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100165%_
                                   'continuation))))
                           (if _%cont100186100188%_
                               (let ((_%cont100191%_ _%cont100186100188%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100191%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100693
               current-output-port
               _%tmp-port100175%_))
            (let ((__tmp100697 (get-output-string _%tmp-port100175%_)))
              (declare (not safe))
              (##write-string __tmp100697 _%port100162%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self100017%_ _%port100018%_)
        (let ()
          (let* ((_%self100021%_ _%self100017%_)
                 (_%tmp-port100031%_ (open-output-string)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100031%_))
            (let ((__tmp100698
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%self100021%_ 'exception))))
              (declare (not safe))
              (##default-display-exception __tmp100698 _%tmp-port100031%_))
            (if (let () (declare (not safe)) (dump-stack-trace?))
                (let ((_%cont100032100034%_
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self100021%_ 'continuation))))
                  (if _%cont100032100034%_
                      (let ((_%cont100037%_ _%cont100032100034%_))
                        (display '"--- continuation backtrace:"
                                 _%tmp-port100031%_)
                        (newline _%tmp-port100031%_)
                        (display-continuation-backtrace
                         _%cont100037%_
                         _%tmp-port100031%_))
                      '#f))
                '#!void)
            (let ((__tmp100699 (get-output-string _%tmp-port100031%_)))
              (declare (not safe))
              (##write-string __tmp100699 _%port100018%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99889%_)
        (if (macro-character-port? _%port99889%_)
            (let ((_%old-width99891%_
                   (macro-character-port-output-width _%port99889%_)))
              (macro-character-port-output-width-set!
               _%port99889%_
               (lambda (_%port99893%_) '256))
              _%old-width99891%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99886%_ _%old-width99887%_)
        (if (macro-character-port? _%port99886%_)
            (macro-character-port-output-width-set!
             _%port99886%_
             _%old-width99887%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99884%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99884%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99878%_))
            (let ((_%e99881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99878%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99881%_))
            (macro-abandoned-mutex-exception? _%exn99878%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99874%_))
            (let ((_%e99876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99874%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99876%_))
            (macro-cfun-conversion-exception? _%exn99874%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99870%_))
            (let ((_%e99872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99870%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99872%_)
                  (macro-cfun-conversion-exception-arguments _%e99872%_)
                  (let ((__tmp100700
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99872%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100700))))
            (if (macro-cfun-conversion-exception? _%exn99870%_)
                (macro-cfun-conversion-exception-arguments _%exn99870%_)
                (let ((__tmp100701
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99870%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100701))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99866%_))
            (let ((_%e99868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99866%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99868%_)
                  (macro-cfun-conversion-exception-code _%e99868%_)
                  (let ((__tmp100702
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99868%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100702))))
            (if (macro-cfun-conversion-exception? _%exn99866%_)
                (macro-cfun-conversion-exception-code _%exn99866%_)
                (let ((__tmp100703
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99866%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100703))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99862%_))
            (let ((_%e99864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99862%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99864%_)
                  (macro-cfun-conversion-exception-message _%e99864%_)
                  (let ((__tmp100704
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99864%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100704))))
            (if (macro-cfun-conversion-exception? _%exn99862%_)
                (macro-cfun-conversion-exception-message _%exn99862%_)
                (let ((__tmp100705
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99862%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100705))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99856%_))
            (let ((_%e99859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99856%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99859%_)
                  (macro-cfun-conversion-exception-procedure _%e99859%_)
                  (let ((__tmp100706
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99859%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100706))))
            (if (macro-cfun-conversion-exception? _%exn99856%_)
                (macro-cfun-conversion-exception-procedure _%exn99856%_)
                (let ((__tmp100707
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99856%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100707))))))
    (define datum-parsing-exception?
      (lambda (_%exn99852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99852%_))
            (let ((_%e99854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99852%_ 'exception))))
              (macro-datum-parsing-exception? _%e99854%_))
            (macro-datum-parsing-exception? _%exn99852%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99848%_))
            (let ((_%e99850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99848%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99850%_)
                  (macro-datum-parsing-exception-kind _%e99850%_)
                  (let ((__tmp100708
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99850%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100708))))
            (if (macro-datum-parsing-exception? _%exn99848%_)
                (macro-datum-parsing-exception-kind _%exn99848%_)
                (let ((__tmp100709
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99848%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100709))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99844%_))
            (let ((_%e99846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99844%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99846%_)
                  (macro-datum-parsing-exception-parameters _%e99846%_)
                  (let ((__tmp100710
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99846%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100710))))
            (if (macro-datum-parsing-exception? _%exn99844%_)
                (macro-datum-parsing-exception-parameters _%exn99844%_)
                (let ((__tmp100711
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99844%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100711))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99838%_))
            (let ((_%e99841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99838%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99841%_)
                  (macro-datum-parsing-exception-readenv _%e99841%_)
                  (let ((__tmp100712
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99841%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100712))))
            (if (macro-datum-parsing-exception? _%exn99838%_)
                (macro-datum-parsing-exception-readenv _%exn99838%_)
                (let ((__tmp100713
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99838%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100713))))))
    (define deadlock-exception?
      (lambda (_%exn99832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99832%_))
            (let ((_%e99835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99832%_ 'exception))))
              (macro-deadlock-exception? _%e99835%_))
            (macro-deadlock-exception? _%exn99832%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99828%_))
            (let ((_%e99830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99828%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99830%_))
            (macro-divide-by-zero-exception? _%exn99828%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99824%_))
            (let ((_%e99826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99824%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99826%_)
                  (macro-divide-by-zero-exception-arguments _%e99826%_)
                  (let ((__tmp100714
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99826%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100714))))
            (if (macro-divide-by-zero-exception? _%exn99824%_)
                (macro-divide-by-zero-exception-arguments _%exn99824%_)
                (let ((__tmp100715
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99824%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100715))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99818%_))
            (let ((_%e99821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99818%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99821%_)
                  (macro-divide-by-zero-exception-procedure _%e99821%_)
                  (let ((__tmp100716
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99821%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100716))))
            (if (macro-divide-by-zero-exception? _%exn99818%_)
                (macro-divide-by-zero-exception-procedure _%exn99818%_)
                (let ((__tmp100717
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99818%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100717))))))
    (define error-exception?
      (lambda (_%exn99814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99814%_))
            (let ((_%e99816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99814%_ 'exception))))
              (macro-error-exception? _%e99816%_))
            (macro-error-exception? _%exn99814%_))))
    (define error-exception-message
      (lambda (_%exn99810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99810%_))
            (let ((_%e99812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99810%_ 'exception))))
              (if (macro-error-exception? _%e99812%_)
                  (macro-error-exception-message _%e99812%_)
                  (let ((__tmp100718
                         (cons 'error-exception-message
                               (cons _%e99812%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100718))))
            (if (macro-error-exception? _%exn99810%_)
                (macro-error-exception-message _%exn99810%_)
                (let ((__tmp100719
                       (cons 'error-exception-message
                             (cons _%exn99810%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100719))))))
    (define error-exception-parameters
      (lambda (_%exn99804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99804%_))
            (let ((_%e99807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99804%_ 'exception))))
              (if (macro-error-exception? _%e99807%_)
                  (macro-error-exception-parameters _%e99807%_)
                  (let ((__tmp100720
                         (cons 'error-exception-parameters
                               (cons _%e99807%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100720))))
            (if (macro-error-exception? _%exn99804%_)
                (macro-error-exception-parameters _%exn99804%_)
                (let ((__tmp100721
                       (cons 'error-exception-parameters
                             (cons _%exn99804%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100721))))))
    (define expression-parsing-exception?
      (lambda (_%exn99800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99800%_))
            (let ((_%e99802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99800%_ 'exception))))
              (macro-expression-parsing-exception? _%e99802%_))
            (macro-expression-parsing-exception? _%exn99800%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99796%_))
            (let ((_%e99798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99796%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99798%_)
                  (macro-expression-parsing-exception-kind _%e99798%_)
                  (let ((__tmp100722
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99798%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100722))))
            (if (macro-expression-parsing-exception? _%exn99796%_)
                (macro-expression-parsing-exception-kind _%exn99796%_)
                (let ((__tmp100723
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99796%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100723))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99792%_))
            (let ((_%e99794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99792%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99794%_)
                  (macro-expression-parsing-exception-parameters _%e99794%_)
                  (let ((__tmp100724
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99794%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100724))))
            (if (macro-expression-parsing-exception? _%exn99792%_)
                (macro-expression-parsing-exception-parameters _%exn99792%_)
                (let ((__tmp100725
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99792%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100725))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99786%_))
            (let ((_%e99789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99786%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99789%_)
                  (macro-expression-parsing-exception-source _%e99789%_)
                  (let ((__tmp100726
                         (cons 'expression-parsing-exception-source
                               (cons _%e99789%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100726))))
            (if (macro-expression-parsing-exception? _%exn99786%_)
                (macro-expression-parsing-exception-source _%exn99786%_)
                (let ((__tmp100727
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99786%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100727))))))
    (define file-exists-exception?
      (lambda (_%exn99782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99782%_))
            (let ((_%e99784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99782%_ 'exception))))
              (macro-file-exists-exception? _%e99784%_))
            (macro-file-exists-exception? _%exn99782%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99778%_))
            (let ((_%e99780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99778%_ 'exception))))
              (if (macro-file-exists-exception? _%e99780%_)
                  (macro-file-exists-exception-arguments _%e99780%_)
                  (let ((__tmp100728
                         (cons 'file-exists-exception-arguments
                               (cons _%e99780%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100728))))
            (if (macro-file-exists-exception? _%exn99778%_)
                (macro-file-exists-exception-arguments _%exn99778%_)
                (let ((__tmp100729
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99778%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100729))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99772%_))
            (let ((_%e99775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99772%_ 'exception))))
              (if (macro-file-exists-exception? _%e99775%_)
                  (macro-file-exists-exception-procedure _%e99775%_)
                  (let ((__tmp100730
                         (cons 'file-exists-exception-procedure
                               (cons _%e99775%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100730))))
            (if (macro-file-exists-exception? _%exn99772%_)
                (macro-file-exists-exception-procedure _%exn99772%_)
                (let ((__tmp100731
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99772%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100731))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99768%_))
            (let ((_%e99770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99768%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99770%_))
            (macro-fixnum-overflow-exception? _%exn99768%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99764%_))
            (let ((_%e99766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99764%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99766%_)
                  (macro-fixnum-overflow-exception-arguments _%e99766%_)
                  (let ((__tmp100732
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99766%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100732))))
            (if (macro-fixnum-overflow-exception? _%exn99764%_)
                (macro-fixnum-overflow-exception-arguments _%exn99764%_)
                (let ((__tmp100733
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99764%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100733))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99758%_))
            (let ((_%e99761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99758%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99761%_)
                  (macro-fixnum-overflow-exception-procedure _%e99761%_)
                  (let ((__tmp100734
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99761%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100734))))
            (if (macro-fixnum-overflow-exception? _%exn99758%_)
                (macro-fixnum-overflow-exception-procedure _%exn99758%_)
                (let ((__tmp100735
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99758%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100735))))))
    (define heap-overflow-exception?
      (lambda (_%exn99752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99752%_))
            (let ((_%e99755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99752%_ 'exception))))
              (macro-heap-overflow-exception? _%e99755%_))
            (macro-heap-overflow-exception? _%exn99752%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99748%_))
            (let ((_%e99750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99748%_ 'exception))))
              (macro-inactive-thread-exception? _%e99750%_))
            (macro-inactive-thread-exception? _%exn99748%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99744%_))
            (let ((_%e99746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99744%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99746%_)
                  (macro-inactive-thread-exception-arguments _%e99746%_)
                  (let ((__tmp100736
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99746%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100736))))
            (if (macro-inactive-thread-exception? _%exn99744%_)
                (macro-inactive-thread-exception-arguments _%exn99744%_)
                (let ((__tmp100737
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99744%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100737))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99738%_))
            (let ((_%e99741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99738%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99741%_)
                  (macro-inactive-thread-exception-procedure _%e99741%_)
                  (let ((__tmp100738
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99741%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100738))))
            (if (macro-inactive-thread-exception? _%exn99738%_)
                (macro-inactive-thread-exception-procedure _%exn99738%_)
                (let ((__tmp100739
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99738%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100739))))))
    (define initialized-thread-exception?
      (lambda (_%exn99734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99734%_))
            (let ((_%e99736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99734%_ 'exception))))
              (macro-initialized-thread-exception? _%e99736%_))
            (macro-initialized-thread-exception? _%exn99734%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99730%_))
            (let ((_%e99732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99730%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99732%_)
                  (macro-initialized-thread-exception-arguments _%e99732%_)
                  (let ((__tmp100740
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99732%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100740))))
            (if (macro-initialized-thread-exception? _%exn99730%_)
                (macro-initialized-thread-exception-arguments _%exn99730%_)
                (let ((__tmp100741
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99730%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100741))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99724%_))
            (let ((_%e99727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99724%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99727%_)
                  (macro-initialized-thread-exception-procedure _%e99727%_)
                  (let ((__tmp100742
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99727%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100742))))
            (if (macro-initialized-thread-exception? _%exn99724%_)
                (macro-initialized-thread-exception-procedure _%exn99724%_)
                (let ((__tmp100743
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99724%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100743))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99720%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99720%_))
            (let ((_%e99722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99720%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99722%_))
            (macro-invalid-hash-number-exception? _%exn99720%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99716%_))
            (let ((_%e99718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99716%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99718%_)
                  (macro-invalid-hash-number-exception-arguments _%e99718%_)
                  (let ((__tmp100744
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99718%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100744))))
            (if (macro-invalid-hash-number-exception? _%exn99716%_)
                (macro-invalid-hash-number-exception-arguments _%exn99716%_)
                (let ((__tmp100745
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99716%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100745))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99710%_))
            (let ((_%e99713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99710%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99713%_)
                  (macro-invalid-hash-number-exception-procedure _%e99713%_)
                  (let ((__tmp100746
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99713%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100746))))
            (if (macro-invalid-hash-number-exception? _%exn99710%_)
                (macro-invalid-hash-number-exception-procedure _%exn99710%_)
                (let ((__tmp100747
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99710%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100747))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99706%_))
            (let ((_%e99708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99706%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99708%_))
            (macro-invalid-utf8-encoding-exception? _%exn99706%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99702%_))
            (let ((_%e99704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99702%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99704%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99704%_)
                  (let ((__tmp100748
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99704%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100748))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99702%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99702%_)
                (let ((__tmp100749
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99702%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100749))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99696%_))
            (let ((_%e99699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99696%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99699%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99699%_)
                  (let ((__tmp100750
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99699%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100750))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99696%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99696%_)
                (let ((__tmp100751
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99696%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100751))))))
    (define join-timeout-exception?
      (lambda (_%exn99692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99692%_))
            (let ((_%e99694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99692%_ 'exception))))
              (macro-join-timeout-exception? _%e99694%_))
            (macro-join-timeout-exception? _%exn99692%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99688%_))
            (let ((_%e99690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99688%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99690%_)
                  (macro-join-timeout-exception-arguments _%e99690%_)
                  (let ((__tmp100752
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99690%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100752))))
            (if (macro-join-timeout-exception? _%exn99688%_)
                (macro-join-timeout-exception-arguments _%exn99688%_)
                (let ((__tmp100753
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99688%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100753))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99682%_))
            (let ((_%e99685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99682%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99685%_)
                  (macro-join-timeout-exception-procedure _%e99685%_)
                  (let ((__tmp100754
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99685%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100754))))
            (if (macro-join-timeout-exception? _%exn99682%_)
                (macro-join-timeout-exception-procedure _%exn99682%_)
                (let ((__tmp100755
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99682%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100755))))))
    (define keyword-expected-exception?
      (lambda (_%exn99678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99678%_))
            (let ((_%e99680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99678%_ 'exception))))
              (macro-keyword-expected-exception? _%e99680%_))
            (macro-keyword-expected-exception? _%exn99678%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99674%_))
            (let ((_%e99676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99674%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99676%_)
                  (macro-keyword-expected-exception-arguments _%e99676%_)
                  (let ((__tmp100756
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99676%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100756))))
            (if (macro-keyword-expected-exception? _%exn99674%_)
                (macro-keyword-expected-exception-arguments _%exn99674%_)
                (let ((__tmp100757
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99674%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100757))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99668%_))
            (let ((_%e99671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99668%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99671%_)
                  (macro-keyword-expected-exception-procedure _%e99671%_)
                  (let ((__tmp100758
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99671%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100758))))
            (if (macro-keyword-expected-exception? _%exn99668%_)
                (macro-keyword-expected-exception-procedure _%exn99668%_)
                (let ((__tmp100759
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99668%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100759))))))
    (define length-mismatch-exception?
      (lambda (_%exn99664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99664%_))
            (let ((_%e99666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99664%_ 'exception))))
              (macro-length-mismatch-exception? _%e99666%_))
            (macro-length-mismatch-exception? _%exn99664%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99660%_))
            (let ((_%e99662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99660%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99662%_)
                  (macro-length-mismatch-exception-arg-id _%e99662%_)
                  (let ((__tmp100760
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99662%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100760))))
            (if (macro-length-mismatch-exception? _%exn99660%_)
                (macro-length-mismatch-exception-arg-id _%exn99660%_)
                (let ((__tmp100761
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99660%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100761))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99656%_))
            (let ((_%e99658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99656%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99658%_)
                  (macro-length-mismatch-exception-arguments _%e99658%_)
                  (let ((__tmp100762
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99658%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100762))))
            (if (macro-length-mismatch-exception? _%exn99656%_)
                (macro-length-mismatch-exception-arguments _%exn99656%_)
                (let ((__tmp100763
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99656%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100763))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99650%_))
            (let ((_%e99653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99650%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99653%_)
                  (macro-length-mismatch-exception-procedure _%e99653%_)
                  (let ((__tmp100764
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99653%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100764))))
            (if (macro-length-mismatch-exception? _%exn99650%_)
                (macro-length-mismatch-exception-procedure _%exn99650%_)
                (let ((__tmp100765
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99650%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100765))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99646%_))
            (let ((_%e99648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99646%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99648%_))
            (macro-mailbox-receive-timeout-exception? _%exn99646%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99642%_))
            (let ((_%e99644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99642%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99644%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99644%_)
                  (let ((__tmp100766
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99644%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100766))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99642%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99642%_)
                (let ((__tmp100767
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99642%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100767))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99636%_))
            (let ((_%e99639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99636%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99639%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99639%_)
                  (let ((__tmp100768
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99639%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100768))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99636%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99636%_)
                (let ((__tmp100769
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99636%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100769))))))
    (define module-not-found-exception?
      (lambda (_%exn99632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99632%_))
            (let ((_%e99634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99632%_ 'exception))))
              (macro-module-not-found-exception? _%e99634%_))
            (macro-module-not-found-exception? _%exn99632%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99628%_))
            (let ((_%e99630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99628%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99630%_)
                  (macro-module-not-found-exception-arguments _%e99630%_)
                  (let ((__tmp100770
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99630%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100770))))
            (if (macro-module-not-found-exception? _%exn99628%_)
                (macro-module-not-found-exception-arguments _%exn99628%_)
                (let ((__tmp100771
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99628%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100771))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99622%_))
            (let ((_%e99625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99622%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99625%_)
                  (macro-module-not-found-exception-procedure _%e99625%_)
                  (let ((__tmp100772
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99625%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100772))))
            (if (macro-module-not-found-exception? _%exn99622%_)
                (macro-module-not-found-exception-procedure _%exn99622%_)
                (let ((__tmp100773
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99622%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100773))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99616%_))
            (let ((_%e99619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99616%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99619%_))
            (macro-multiple-c-return-exception? _%exn99616%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99612%_))
            (let ((_%e99614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99612%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99614%_))
            (macro-no-such-file-or-directory-exception? _%exn99612%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99608%_))
            (let ((_%e99610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99608%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99610%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99610%_)
                  (let ((__tmp100774
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99610%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100774))))
            (if (macro-no-such-file-or-directory-exception? _%exn99608%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99608%_)
                (let ((__tmp100775
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99608%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100775))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99602%_))
            (let ((_%e99605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99602%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99605%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99605%_)
                  (let ((__tmp100776
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99605%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100776))))
            (if (macro-no-such-file-or-directory-exception? _%exn99602%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99602%_)
                (let ((__tmp100777
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99602%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100777))))))
    (define noncontinuable-exception?
      (lambda (_%exn99598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99598%_))
            (let ((_%e99600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99598%_ 'exception))))
              (macro-noncontinuable-exception? _%e99600%_))
            (macro-noncontinuable-exception? _%exn99598%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99592%_))
            (let ((_%e99595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99592%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99595%_)
                  (macro-noncontinuable-exception-reason _%e99595%_)
                  (let ((__tmp100778
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99595%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100778))))
            (if (macro-noncontinuable-exception? _%exn99592%_)
                (macro-noncontinuable-exception-reason _%exn99592%_)
                (let ((__tmp100779
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99592%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100779))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99588%_))
            (let ((_%e99590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99588%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99590%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99588%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99584%_))
            (let ((_%e99586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99584%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99586%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99586%_)
                  (let ((__tmp100780
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99586%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100780))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99584%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99584%_)
                (let ((__tmp100781
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99584%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100781))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99578%_))
            (let ((_%e99581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99578%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99581%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99581%_)
                  (let ((__tmp100782
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99581%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100782))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99578%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99578%_)
                (let ((__tmp100783
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99578%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100783))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99574%_))
            (let ((_%e99576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99574%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99576%_))
            (macro-nonprocedure-operator-exception? _%exn99574%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99570%_))
            (let ((_%e99572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99570%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99572%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99572%_)
                  (let ((__tmp100784
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99572%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100784))))
            (if (macro-nonprocedure-operator-exception? _%exn99570%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99570%_)
                (let ((__tmp100785
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99570%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100785))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99566%_))
            (let ((_%e99568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99566%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99568%_)
                  (macro-nonprocedure-operator-exception-code _%e99568%_)
                  (let ((__tmp100786
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99568%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100786))))
            (if (macro-nonprocedure-operator-exception? _%exn99566%_)
                (macro-nonprocedure-operator-exception-code _%exn99566%_)
                (let ((__tmp100787
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99566%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100787))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99562%_))
            (let ((_%e99564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99562%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99564%_)
                  (macro-nonprocedure-operator-exception-operator _%e99564%_)
                  (let ((__tmp100788
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99564%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100788))))
            (if (macro-nonprocedure-operator-exception? _%exn99562%_)
                (macro-nonprocedure-operator-exception-operator _%exn99562%_)
                (let ((__tmp100789
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99562%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100789))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99556%_))
            (let ((_%e99559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99556%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99559%_)
                  (macro-nonprocedure-operator-exception-rte _%e99559%_)
                  (let ((__tmp100790
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99559%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100790))))
            (if (macro-nonprocedure-operator-exception? _%exn99556%_)
                (macro-nonprocedure-operator-exception-rte _%exn99556%_)
                (let ((__tmp100791
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99556%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100791))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99552%_))
            (let ((_%e99554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99552%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99554%_))
            (macro-not-in-compilation-context-exception? _%exn99552%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99548%_))
            (let ((_%e99550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99548%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99550%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99550%_)
                  (let ((__tmp100792
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99550%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100792))))
            (if (macro-not-in-compilation-context-exception? _%exn99548%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99548%_)
                (let ((__tmp100793
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99548%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100793))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99542%_))
            (let ((_%e99545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99542%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99545%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99545%_)
                  (let ((__tmp100794
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99545%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100794))))
            (if (macro-not-in-compilation-context-exception? _%exn99542%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99542%_)
                (let ((__tmp100795
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99542%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100795))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99538%_))
            (let ((_%e99540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99538%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99540%_))
            (macro-number-of-arguments-limit-exception? _%exn99538%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99534%_))
            (let ((_%e99536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99534%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99536%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99536%_)
                  (let ((__tmp100796
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99536%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100796))))
            (if (macro-number-of-arguments-limit-exception? _%exn99534%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99534%_)
                (let ((__tmp100797
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99534%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100797))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99528%_))
            (let ((_%e99531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99528%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99531%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99531%_)
                  (let ((__tmp100798
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99531%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100798))))
            (if (macro-number-of-arguments-limit-exception? _%exn99528%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99528%_)
                (let ((__tmp100799
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99528%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100799))))))
    (define os-exception?
      (lambda (_%exn99524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99524%_))
            (let ((_%e99526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99524%_ 'exception))))
              (macro-os-exception? _%e99526%_))
            (macro-os-exception? _%exn99524%_))))
    (define os-exception-arguments
      (lambda (_%exn99520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99520%_))
            (let ((_%e99522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99520%_ 'exception))))
              (if (macro-os-exception? _%e99522%_)
                  (macro-os-exception-arguments _%e99522%_)
                  (let ((__tmp100800
                         (cons 'os-exception-arguments (cons _%e99522%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100800))))
            (if (macro-os-exception? _%exn99520%_)
                (macro-os-exception-arguments _%exn99520%_)
                (let ((__tmp100801
                       (cons 'os-exception-arguments (cons _%exn99520%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100801))))))
    (define os-exception-code
      (lambda (_%exn99516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99516%_))
            (let ((_%e99518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99516%_ 'exception))))
              (if (macro-os-exception? _%e99518%_)
                  (macro-os-exception-code _%e99518%_)
                  (let ((__tmp100802
                         (cons 'os-exception-code (cons _%e99518%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100802))))
            (if (macro-os-exception? _%exn99516%_)
                (macro-os-exception-code _%exn99516%_)
                (let ((__tmp100803
                       (cons 'os-exception-code (cons _%exn99516%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100803))))))
    (define os-exception-message
      (lambda (_%exn99512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99512%_))
            (let ((_%e99514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99512%_ 'exception))))
              (if (macro-os-exception? _%e99514%_)
                  (macro-os-exception-message _%e99514%_)
                  (let ((__tmp100804
                         (cons 'os-exception-message (cons _%e99514%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100804))))
            (if (macro-os-exception? _%exn99512%_)
                (macro-os-exception-message _%exn99512%_)
                (let ((__tmp100805
                       (cons 'os-exception-message (cons _%exn99512%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100805))))))
    (define os-exception-procedure
      (lambda (_%exn99506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99506%_))
            (let ((_%e99509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99506%_ 'exception))))
              (if (macro-os-exception? _%e99509%_)
                  (macro-os-exception-procedure _%e99509%_)
                  (let ((__tmp100806
                         (cons 'os-exception-procedure (cons _%e99509%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100806))))
            (if (macro-os-exception? _%exn99506%_)
                (macro-os-exception-procedure _%exn99506%_)
                (let ((__tmp100807
                       (cons 'os-exception-procedure (cons _%exn99506%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100807))))))
    (define permission-denied-exception?
      (lambda (_%exn99502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99502%_))
            (let ((_%e99504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99502%_ 'exception))))
              (macro-permission-denied-exception? _%e99504%_))
            (macro-permission-denied-exception? _%exn99502%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99498%_))
            (let ((_%e99500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99498%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99500%_)
                  (macro-permission-denied-exception-arguments _%e99500%_)
                  (let ((__tmp100808
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99500%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100808))))
            (if (macro-permission-denied-exception? _%exn99498%_)
                (macro-permission-denied-exception-arguments _%exn99498%_)
                (let ((__tmp100809
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99498%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100809))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn99492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99492%_))
            (let ((_%e99495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99492%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99495%_)
                  (macro-permission-denied-exception-procedure _%e99495%_)
                  (let ((__tmp100810
                         (cons 'permission-denied-exception-procedure
                               (cons _%e99495%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100810))))
            (if (macro-permission-denied-exception? _%exn99492%_)
                (macro-permission-denied-exception-procedure _%exn99492%_)
                (let ((__tmp100811
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn99492%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100811))))))
    (define range-exception?
      (lambda (_%exn99488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99488%_))
            (let ((_%e99490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99488%_ 'exception))))
              (macro-range-exception? _%e99490%_))
            (macro-range-exception? _%exn99488%_))))
    (define range-exception-arg-id
      (lambda (_%exn99484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99484%_))
            (let ((_%e99486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99484%_ 'exception))))
              (if (macro-range-exception? _%e99486%_)
                  (macro-range-exception-arg-id _%e99486%_)
                  (let ((__tmp100812
                         (cons 'range-exception-arg-id (cons _%e99486%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100812))))
            (if (macro-range-exception? _%exn99484%_)
                (macro-range-exception-arg-id _%exn99484%_)
                (let ((__tmp100813
                       (cons 'range-exception-arg-id (cons _%exn99484%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100813))))))
    (define range-exception-arguments
      (lambda (_%exn99480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99480%_))
            (let ((_%e99482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99480%_ 'exception))))
              (if (macro-range-exception? _%e99482%_)
                  (macro-range-exception-arguments _%e99482%_)
                  (let ((__tmp100814
                         (cons 'range-exception-arguments
                               (cons _%e99482%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100814))))
            (if (macro-range-exception? _%exn99480%_)
                (macro-range-exception-arguments _%exn99480%_)
                (let ((__tmp100815
                       (cons 'range-exception-arguments
                             (cons _%exn99480%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100815))))))
    (define range-exception-procedure
      (lambda (_%exn99474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99474%_))
            (let ((_%e99477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99474%_ 'exception))))
              (if (macro-range-exception? _%e99477%_)
                  (macro-range-exception-procedure _%e99477%_)
                  (let ((__tmp100816
                         (cons 'range-exception-procedure
                               (cons _%e99477%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100816))))
            (if (macro-range-exception? _%exn99474%_)
                (macro-range-exception-procedure _%exn99474%_)
                (let ((__tmp100817
                       (cons 'range-exception-procedure
                             (cons _%exn99474%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100817))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn99470%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99470%_))
            (let ((_%e99472%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99470%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e99472%_))
            (macro-rpc-remote-error-exception? _%exn99470%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn99466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99466%_))
            (let ((_%e99468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99466%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99468%_)
                  (macro-rpc-remote-error-exception-arguments _%e99468%_)
                  (let ((__tmp100818
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e99468%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100818))))
            (if (macro-rpc-remote-error-exception? _%exn99466%_)
                (macro-rpc-remote-error-exception-arguments _%exn99466%_)
                (let ((__tmp100819
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn99466%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100819))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn99462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99462%_))
            (let ((_%e99464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99462%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99464%_)
                  (macro-rpc-remote-error-exception-message _%e99464%_)
                  (let ((__tmp100820
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e99464%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100820))))
            (if (macro-rpc-remote-error-exception? _%exn99462%_)
                (macro-rpc-remote-error-exception-message _%exn99462%_)
                (let ((__tmp100821
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn99462%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100821))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn99456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99456%_))
            (let ((_%e99459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99456%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99459%_)
                  (macro-rpc-remote-error-exception-procedure _%e99459%_)
                  (let ((__tmp100822
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e99459%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100822))))
            (if (macro-rpc-remote-error-exception? _%exn99456%_)
                (macro-rpc-remote-error-exception-procedure _%exn99456%_)
                (let ((__tmp100823
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn99456%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100823))))))
    (define scheduler-exception?
      (lambda (_%exn99452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99452%_))
            (let ((_%e99454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99452%_ 'exception))))
              (macro-scheduler-exception? _%e99454%_))
            (macro-scheduler-exception? _%exn99452%_))))
    (define scheduler-exception-reason
      (lambda (_%exn99446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99446%_))
            (let ((_%e99449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99446%_ 'exception))))
              (if (macro-scheduler-exception? _%e99449%_)
                  (macro-scheduler-exception-reason _%e99449%_)
                  (let ((__tmp100824
                         (cons 'scheduler-exception-reason
                               (cons _%e99449%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100824))))
            (if (macro-scheduler-exception? _%exn99446%_)
                (macro-scheduler-exception-reason _%exn99446%_)
                (let ((__tmp100825
                       (cons 'scheduler-exception-reason
                             (cons _%exn99446%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100825))))))
    (define sfun-conversion-exception?
      (lambda (_%exn99442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99442%_))
            (let ((_%e99444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99442%_ 'exception))))
              (macro-sfun-conversion-exception? _%e99444%_))
            (macro-sfun-conversion-exception? _%exn99442%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn99438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99438%_))
            (let ((_%e99440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99438%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99440%_)
                  (macro-sfun-conversion-exception-arguments _%e99440%_)
                  (let ((__tmp100826
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e99440%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100826))))
            (if (macro-sfun-conversion-exception? _%exn99438%_)
                (macro-sfun-conversion-exception-arguments _%exn99438%_)
                (let ((__tmp100827
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn99438%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100827))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn99434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99434%_))
            (let ((_%e99436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99434%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99436%_)
                  (macro-sfun-conversion-exception-code _%e99436%_)
                  (let ((__tmp100828
                         (cons 'sfun-conversion-exception-code
                               (cons _%e99436%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100828))))
            (if (macro-sfun-conversion-exception? _%exn99434%_)
                (macro-sfun-conversion-exception-code _%exn99434%_)
                (let ((__tmp100829
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn99434%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100829))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn99430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99430%_))
            (let ((_%e99432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99430%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99432%_)
                  (macro-sfun-conversion-exception-message _%e99432%_)
                  (let ((__tmp100830
                         (cons 'sfun-conversion-exception-message
                               (cons _%e99432%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100830))))
            (if (macro-sfun-conversion-exception? _%exn99430%_)
                (macro-sfun-conversion-exception-message _%exn99430%_)
                (let ((__tmp100831
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn99430%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100831))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn99424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99424%_))
            (let ((_%e99427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99424%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99427%_)
                  (macro-sfun-conversion-exception-procedure _%e99427%_)
                  (let ((__tmp100832
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e99427%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100832))))
            (if (macro-sfun-conversion-exception? _%exn99424%_)
                (macro-sfun-conversion-exception-procedure _%exn99424%_)
                (let ((__tmp100833
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn99424%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100833))))))
    (define stack-overflow-exception?
      (lambda (_%exn99418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99418%_))
            (let ((_%e99421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99418%_ 'exception))))
              (macro-stack-overflow-exception? _%e99421%_))
            (macro-stack-overflow-exception? _%exn99418%_))))
    (define started-thread-exception?
      (lambda (_%exn99414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99414%_))
            (let ((_%e99416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99414%_ 'exception))))
              (macro-started-thread-exception? _%e99416%_))
            (macro-started-thread-exception? _%exn99414%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn99410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99410%_))
            (let ((_%e99412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99410%_ 'exception))))
              (if (macro-started-thread-exception? _%e99412%_)
                  (macro-started-thread-exception-arguments _%e99412%_)
                  (let ((__tmp100834
                         (cons 'started-thread-exception-arguments
                               (cons _%e99412%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100834))))
            (if (macro-started-thread-exception? _%exn99410%_)
                (macro-started-thread-exception-arguments _%exn99410%_)
                (let ((__tmp100835
                       (cons 'started-thread-exception-arguments
                             (cons _%exn99410%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100835))))))
    (define started-thread-exception-procedure
      (lambda (_%exn99404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99404%_))
            (let ((_%e99407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99404%_ 'exception))))
              (if (macro-started-thread-exception? _%e99407%_)
                  (macro-started-thread-exception-procedure _%e99407%_)
                  (let ((__tmp100836
                         (cons 'started-thread-exception-procedure
                               (cons _%e99407%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100836))))
            (if (macro-started-thread-exception? _%exn99404%_)
                (macro-started-thread-exception-procedure _%exn99404%_)
                (let ((__tmp100837
                       (cons 'started-thread-exception-procedure
                             (cons _%exn99404%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100837))))))
    (define terminated-thread-exception?
      (lambda (_%exn99400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99400%_))
            (let ((_%e99402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99400%_ 'exception))))
              (macro-terminated-thread-exception? _%e99402%_))
            (macro-terminated-thread-exception? _%exn99400%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn99396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99396%_))
            (let ((_%e99398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99396%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99398%_)
                  (macro-terminated-thread-exception-arguments _%e99398%_)
                  (let ((__tmp100838
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e99398%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100838))))
            (if (macro-terminated-thread-exception? _%exn99396%_)
                (macro-terminated-thread-exception-arguments _%exn99396%_)
                (let ((__tmp100839
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn99396%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100839))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn99390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99390%_))
            (let ((_%e99393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99390%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99393%_)
                  (macro-terminated-thread-exception-procedure _%e99393%_)
                  (let ((__tmp100840
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e99393%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100840))))
            (if (macro-terminated-thread-exception? _%exn99390%_)
                (macro-terminated-thread-exception-procedure _%exn99390%_)
                (let ((__tmp100841
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn99390%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100841))))))
    (define type-exception?
      (lambda (_%exn99386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99386%_))
            (let ((_%e99388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99386%_ 'exception))))
              (macro-type-exception? _%e99388%_))
            (macro-type-exception? _%exn99386%_))))
    (define type-exception-arg-id
      (lambda (_%exn99382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99382%_))
            (let ((_%e99384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99382%_ 'exception))))
              (if (macro-type-exception? _%e99384%_)
                  (macro-type-exception-arg-id _%e99384%_)
                  (let ((__tmp100842
                         (cons 'type-exception-arg-id (cons _%e99384%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100842))))
            (if (macro-type-exception? _%exn99382%_)
                (macro-type-exception-arg-id _%exn99382%_)
                (let ((__tmp100843
                       (cons 'type-exception-arg-id (cons _%exn99382%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100843))))))
    (define type-exception-arguments
      (lambda (_%exn99378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99378%_))
            (let ((_%e99380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99378%_ 'exception))))
              (if (macro-type-exception? _%e99380%_)
                  (macro-type-exception-arguments _%e99380%_)
                  (let ((__tmp100844
                         (cons 'type-exception-arguments
                               (cons _%e99380%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100844))))
            (if (macro-type-exception? _%exn99378%_)
                (macro-type-exception-arguments _%exn99378%_)
                (let ((__tmp100845
                       (cons 'type-exception-arguments
                             (cons _%exn99378%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100845))))))
    (define type-exception-procedure
      (lambda (_%exn99374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99374%_))
            (let ((_%e99376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99374%_ 'exception))))
              (if (macro-type-exception? _%e99376%_)
                  (macro-type-exception-procedure _%e99376%_)
                  (let ((__tmp100846
                         (cons 'type-exception-procedure
                               (cons _%e99376%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100846))))
            (if (macro-type-exception? _%exn99374%_)
                (macro-type-exception-procedure _%exn99374%_)
                (let ((__tmp100847
                       (cons 'type-exception-procedure
                             (cons _%exn99374%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100847))))))
    (define type-exception-type-id
      (lambda (_%exn99368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99368%_))
            (let ((_%e99371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99368%_ 'exception))))
              (if (macro-type-exception? _%e99371%_)
                  (macro-type-exception-type-id _%e99371%_)
                  (let ((__tmp100848
                         (cons 'type-exception-type-id (cons _%e99371%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100848))))
            (if (macro-type-exception? _%exn99368%_)
                (macro-type-exception-type-id _%exn99368%_)
                (let ((__tmp100849
                       (cons 'type-exception-type-id (cons _%exn99368%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100849))))))
    (define unbound-global-exception?
      (lambda (_%exn99364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99364%_))
            (let ((_%e99366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99364%_ 'exception))))
              (macro-unbound-global-exception? _%e99366%_))
            (macro-unbound-global-exception? _%exn99364%_))))
    (define unbound-global-exception-code
      (lambda (_%exn99360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99360%_))
            (let ((_%e99362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99360%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99362%_)
                  (macro-unbound-global-exception-code _%e99362%_)
                  (let ((__tmp100850
                         (cons 'unbound-global-exception-code
                               (cons _%e99362%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100850))))
            (if (macro-unbound-global-exception? _%exn99360%_)
                (macro-unbound-global-exception-code _%exn99360%_)
                (let ((__tmp100851
                       (cons 'unbound-global-exception-code
                             (cons _%exn99360%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100851))))))
    (define unbound-global-exception-rte
      (lambda (_%exn99356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99356%_))
            (let ((_%e99358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99356%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99358%_)
                  (macro-unbound-global-exception-rte _%e99358%_)
                  (let ((__tmp100852
                         (cons 'unbound-global-exception-rte
                               (cons _%e99358%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100852))))
            (if (macro-unbound-global-exception? _%exn99356%_)
                (macro-unbound-global-exception-rte _%exn99356%_)
                (let ((__tmp100853
                       (cons 'unbound-global-exception-rte
                             (cons _%exn99356%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100853))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99350%_))
            (let ((_%e99353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99350%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99353%_)
                  (macro-unbound-global-exception-variable _%e99353%_)
                  (let ((__tmp100854
                         (cons 'unbound-global-exception-variable
                               (cons _%e99353%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100854))))
            (if (macro-unbound-global-exception? _%exn99350%_)
                (macro-unbound-global-exception-variable _%exn99350%_)
                (let ((__tmp100855
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99350%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100855))))))
    (define unbound-key-exception?
      (lambda (_%exn99346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99346%_))
            (let ((_%e99348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99346%_ 'exception))))
              (macro-unbound-key-exception? _%e99348%_))
            (macro-unbound-key-exception? _%exn99346%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99342%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99342%_))
            (let ((_%e99344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99342%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99344%_)
                  (macro-unbound-key-exception-arguments _%e99344%_)
                  (let ((__tmp100856
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99344%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100856))))
            (if (macro-unbound-key-exception? _%exn99342%_)
                (macro-unbound-key-exception-arguments _%exn99342%_)
                (let ((__tmp100857
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99342%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100857))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99336%_))
            (let ((_%e99339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99336%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99339%_)
                  (macro-unbound-key-exception-procedure _%e99339%_)
                  (let ((__tmp100858
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99339%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100858))))
            (if (macro-unbound-key-exception? _%exn99336%_)
                (macro-unbound-key-exception-procedure _%exn99336%_)
                (let ((__tmp100859
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99336%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100859))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99332%_))
            (let ((_%e99334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99332%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99334%_))
            (macro-unbound-os-environment-variable-exception? _%exn99332%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99328%_))
            (let ((_%e99330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99328%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99330%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99330%_)
                  (let ((__tmp100860
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99330%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100860))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99328%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99328%_)
                (let ((__tmp100861
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99328%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100861))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99322%_))
            (let ((_%e99325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99322%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99325%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99325%_)
                  (let ((__tmp100862
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99325%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100862))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99322%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99322%_)
                (let ((__tmp100863
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99322%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100863))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99318%_))
            (let ((_%e99320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99318%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99320%_))
            (macro-unbound-serial-number-exception? _%exn99318%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99314%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99314%_))
            (let ((_%e99316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99314%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99316%_)
                  (macro-unbound-serial-number-exception-arguments _%e99316%_)
                  (let ((__tmp100864
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99316%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100864))))
            (if (macro-unbound-serial-number-exception? _%exn99314%_)
                (macro-unbound-serial-number-exception-arguments _%exn99314%_)
                (let ((__tmp100865
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99314%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100865))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99308%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99308%_))
            (let ((_%e99311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99308%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99311%_)
                  (macro-unbound-serial-number-exception-procedure _%e99311%_)
                  (let ((__tmp100866
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99311%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100866))))
            (if (macro-unbound-serial-number-exception? _%exn99308%_)
                (macro-unbound-serial-number-exception-procedure _%exn99308%_)
                (let ((__tmp100867
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99308%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100867))))))
    (define uncaught-exception?
      (lambda (_%exn99304%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99304%_))
            (let ((_%e99306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99304%_ 'exception))))
              (macro-uncaught-exception? _%e99306%_))
            (macro-uncaught-exception? _%exn99304%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99300%_))
            (let ((_%e99302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99300%_ 'exception))))
              (if (macro-uncaught-exception? _%e99302%_)
                  (macro-uncaught-exception-arguments _%e99302%_)
                  (let ((__tmp100868
                         (cons 'uncaught-exception-arguments
                               (cons _%e99302%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100868))))
            (if (macro-uncaught-exception? _%exn99300%_)
                (macro-uncaught-exception-arguments _%exn99300%_)
                (let ((__tmp100869
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99300%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100869))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99296%_))
            (let ((_%e99298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99296%_ 'exception))))
              (if (macro-uncaught-exception? _%e99298%_)
                  (macro-uncaught-exception-procedure _%e99298%_)
                  (let ((__tmp100870
                         (cons 'uncaught-exception-procedure
                               (cons _%e99298%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100870))))
            (if (macro-uncaught-exception? _%exn99296%_)
                (macro-uncaught-exception-procedure _%exn99296%_)
                (let ((__tmp100871
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99296%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100871))))))
    (define uncaught-exception-reason
      (lambda (_%exn99290%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99290%_))
            (let ((_%e99293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99290%_ 'exception))))
              (if (macro-uncaught-exception? _%e99293%_)
                  (macro-uncaught-exception-reason _%e99293%_)
                  (let ((__tmp100872
                         (cons 'uncaught-exception-reason
                               (cons _%e99293%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100872))))
            (if (macro-uncaught-exception? _%exn99290%_)
                (macro-uncaught-exception-reason _%exn99290%_)
                (let ((__tmp100873
                       (cons 'uncaught-exception-reason
                             (cons _%exn99290%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100873))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99286%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99286%_))
            (let ((_%e99288%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99286%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99288%_))
            (macro-uninitialized-thread-exception? _%exn99286%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99282%_))
            (let ((_%e99284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99282%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99284%_)
                  (macro-uninitialized-thread-exception-arguments _%e99284%_)
                  (let ((__tmp100874
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99284%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100874))))
            (if (macro-uninitialized-thread-exception? _%exn99282%_)
                (macro-uninitialized-thread-exception-arguments _%exn99282%_)
                (let ((__tmp100875
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99282%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100875))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99276%_))
            (let ((_%e99279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99276%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99279%_)
                  (macro-uninitialized-thread-exception-procedure _%e99279%_)
                  (let ((__tmp100876
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99279%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100876))))
            (if (macro-uninitialized-thread-exception? _%exn99276%_)
                (macro-uninitialized-thread-exception-procedure _%exn99276%_)
                (let ((__tmp100877
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99276%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100877))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99272%_))
            (let ((_%e99274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99272%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99274%_))
            (macro-unknown-keyword-argument-exception? _%exn99272%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99268%_))
            (let ((_%e99270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99268%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99270%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99270%_)
                  (let ((__tmp100878
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99270%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100878))))
            (if (macro-unknown-keyword-argument-exception? _%exn99268%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99268%_)
                (let ((__tmp100879
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99268%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100879))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99262%_))
            (let ((_%e99265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99262%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99265%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99265%_)
                  (let ((__tmp100880
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99265%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100880))))
            (if (macro-unknown-keyword-argument-exception? _%exn99262%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99262%_)
                (let ((__tmp100881
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99262%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100881))))))
    (define unterminated-process-exception?
      (lambda (_%exn99258%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99258%_))
            (let ((_%e99260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99258%_ 'exception))))
              (macro-unterminated-process-exception? _%e99260%_))
            (macro-unterminated-process-exception? _%exn99258%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99254%_))
            (let ((_%e99256%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99254%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99256%_)
                  (macro-unterminated-process-exception-arguments _%e99256%_)
                  (let ((__tmp100882
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99256%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100882))))
            (if (macro-unterminated-process-exception? _%exn99254%_)
                (macro-unterminated-process-exception-arguments _%exn99254%_)
                (let ((__tmp100883
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99254%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100883))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99248%_))
            (let ((_%e99251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99248%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99251%_)
                  (macro-unterminated-process-exception-procedure _%e99251%_)
                  (let ((__tmp100884
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99251%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100884))))
            (if (macro-unterminated-process-exception? _%exn99248%_)
                (macro-unterminated-process-exception-procedure _%exn99248%_)
                (let ((__tmp100885
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99248%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100885))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99244%_))
            (let ((_%e99246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99244%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99246%_))
            (macro-wrong-number-of-arguments-exception? _%exn99244%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99240%_))
            (let ((_%e99242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99240%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99242%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99242%_)
                  (let ((__tmp100886
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99242%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100886))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99240%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99240%_)
                (let ((__tmp100887
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99240%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100887))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99234%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99234%_))
            (let ((_%e99237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99234%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99237%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99237%_)
                  (let ((__tmp100888
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99237%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100888))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99234%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99234%_)
                (let ((__tmp100889
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99234%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100889))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99230%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99230%_))
            (let ((_%e99232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99230%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99232%_))
            (macro-wrong-number-of-values-exception? _%exn99230%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99226%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99226%_))
            (let ((_%e99228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99226%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99228%_)
                  (macro-wrong-number-of-values-exception-code _%e99228%_)
                  (let ((__tmp100890
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99228%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100890))))
            (if (macro-wrong-number-of-values-exception? _%exn99226%_)
                (macro-wrong-number-of-values-exception-code _%exn99226%_)
                (let ((__tmp100891
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99226%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100891))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99222%_))
            (let ((_%e99224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99222%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99224%_)
                  (macro-wrong-number-of-values-exception-rte _%e99224%_)
                  (let ((__tmp100892
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99224%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100892))))
            (if (macro-wrong-number-of-values-exception? _%exn99222%_)
                (macro-wrong-number-of-values-exception-rte _%exn99222%_)
                (let ((__tmp100893
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99222%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100893))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99216%_))
            (let ((_%e99219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99216%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99219%_)
                  (macro-wrong-number-of-values-exception-vals _%e99219%_)
                  (let ((__tmp100894
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99219%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100894))))
            (if (macro-wrong-number-of-values-exception? _%exn99216%_)
                (macro-wrong-number-of-values-exception-vals _%exn99216%_)
                (let ((__tmp100895
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99216%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100895))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99210%_))
            (let ((_%e99213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99210%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99213%_))
            (macro-wrong-processor-c-return-exception? _%exn99210%_))))))
