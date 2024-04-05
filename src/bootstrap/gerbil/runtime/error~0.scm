(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712299483)
  (begin
    (define Exception::t
      (let ((__tmp100587 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100587
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100577%_
        (apply make-instance Exception::t _%$args100577%_)))
    (define StackTrace::t
      (let ((__tmp100588 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100588
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100574%_
        (apply make-instance StackTrace::t _%$args100574%_)))
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
      (let ((__tmp100589 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100589
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100571%_ (apply make-instance Error::t _%$args100571%_)))
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
      (let ((__tmp100590 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100590
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100568%_
        (apply make-instance ContractViolation::t _%$args100568%_)))
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
      (let ((__tmp100591 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100591
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100565%_
        (apply make-instance RuntimeException::t _%$args100565%_)))
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
      (lambda (_%exn100560%_ _%continue100561%_)
        (let ((_%exn100563%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100560%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100563%_ _%continue100561%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100556%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100556%_ 'continuation))
                '#!void
                (let ((__tmp100592
                       (lambda (_%cont100558%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100556%_
                            'continuation
                            _%cont100558%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100592)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100556%_))))
    (define error
      (lambda (_%message100553%_ . _%irritants100554%_)
        (let ((__tmp100593
               (let ((__obj100584
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100584
                  _%message100553%_
                  'irritants:
                  _%irritants100554%_)
                 __obj100584)))
          (declare (not safe))
          (raise __tmp100593))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100525%_
               _%ctx100520100526%_
               _%contract-expr100521100528%_
               _%value100522100530%_
               _%message100532%_)
        (let* ((_%ctx100534%_
                (if (eq? _%ctx100520100526%_ absent-value)
                    '#f
                    _%ctx100520100526%_))
               (_%contract-expr100536%_
                (if (eq? _%contract-expr100521100528%_ absent-value)
                    '#f
                    _%contract-expr100521100528%_))
               (_%value100538%_
                (if (eq? _%value100522100530%_ absent-value)
                    '#f
                    _%value100522100530%_))
               (__tmp100594
                (let ((__obj100585
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100585
                   _%message100532%_
                   'where:
                   _%ctx100534%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100536%_
                               (cons 'value: (cons _%value100538%_ '())))))
                  __obj100585)))
          (declare (not safe))
          (raise __tmp100594))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100543%_ . _%args100544%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100543%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100543%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100543%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100543%_
                  'value:
                  absent-value))
               _%args100544%_)))
    (define __raise-contract-violation-error
      (lambda _%args100523100550%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100523100550%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100494%_ _%thunk100495%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100494%_))
              (let ((_%handler100499%_ _%handler100494%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100495%_))
                    (let ((_%thunk100509%_ _%thunk100495%_))
                      (declare (not safe))
                      (__with-exception-handler
                       _%handler100499%_
                       _%thunk100509%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100495%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@59.31-59.38"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100494%_)
                '#!void)))))
    (define __with-exception-handler
      (lambda (_%handler100469%_ _%thunk100470%_)
        (let ((_%handler100473%_ _%handler100469%_))
          (let* ((_%thunk100481%_ _%thunk100470%_)
                 (__tmp100595
                  (lambda (_%exn100490%_)
                    (let ((_%exn100492%_
                           (let ()
                             (declare (not safe))
                             (wrap-runtime-exception _%exn100490%_))))
                      (declare (not safe))
                      (_%handler100473%_ _%exn100492%_)))))
            (declare (not safe))
            (##with-exception-handler __tmp100595 _%thunk100481%_)))))
    (define with-catch
      (lambda (_%handler100444%_ _%thunk100445%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100444%_))
              (let ((_%handler100449%_ _%handler100444%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100445%_))
                    (let ((_%thunk100459%_ _%thunk100445%_))
                      (declare (not safe))
                      (__with-catch _%handler100449%_ _%thunk100459%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100445%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@66.19-66.26"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100444%_)
                '#!void)))))
    (define __with-catch
      (lambda (_%handler100419%_ _%thunk100420%_)
        (let ((_%handler100423%_ _%handler100419%_))
          (let* ((_%thunk100431%_ _%thunk100420%_)
                 (__tmp100596
                  (lambda (_%cont100440%_)
                    (let ((__tmp100597
                           (lambda (_%exn100442%_)
                             (let ()
                               (declare (not safe))
                               (##continuation-graft
                                _%cont100440%_
                                _%handler100423%_
                                _%exn100442%_)))))
                      (declare (not safe))
                      (__with-exception-handler
                       __tmp100597
                       _%thunk100431%_)))))
            (declare (not safe))
            (##continuation-capture __tmp100596)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100406%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn100406%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn100406%_)))
            (let () _%exn100406%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100406%_))
                (let () _%exn100406%_)
                (if (macro-exception? _%exn100406%_)
                    (let ((_%rte100414%_
                           (let ((__obj100586
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100586
                                _%exn100406%_
                                '2
                                '#f
                                '#f))
                             __obj100586)))
                      (let ((__tmp100598
                             (lambda (_%cont100416%_)
                               (let ((__tmp100599
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100416%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100414%_
                                  'continuation
                                  __tmp100599)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100598))
                      _%rte100414%_)
                    (let () _%exn100406%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj100401%_)
        (let ((_%$e100403%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj100401%_))))
          (if _%$e100403%_
              _%$e100403%_
              (let ()
                (declare (not safe))
                (error-exception? _%obj100401%_))))))
    (define error-message
      (lambda (_%obj100394%_)
        (let ((_%$e100396%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj100394%_ 'message false))))
          (if _%$e100396%_
              _%$e100396%_
              (if (let ()
                    (declare (not safe))
                    (error-exception? _%obj100394%_))
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj100394%_))
                  (let () '#f))))))
    (define error-irritants
      (lambda (_%obj100389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100389%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100389%_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _%obj100389%_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _%obj100389%_))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj100387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100387%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100387%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e100368%_ _%port100369%_)
        (let ((_%$e100371%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e100368%_ 'display-exception))))
          (if _%$e100371%_
              ((lambda (_%f100374%_) (_%f100374%_ _%e100368%_ _%port100369%_))
               _%$e100371%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e100368%_ _%port100369%_))))))
    (define display-exception__0
      (lambda (_%e100380%_)
        (let ((_%port100382%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e100380%_ _%port100382%_))))
    (define display-exception
      (lambda _g100601_
        (let ((_g100600_ (let () (declare (not safe)) (##length _g100601_))))
          (cond ((let () (declare (not safe)) (##fx= _g100600_ 1))
                 (apply (lambda (_%e100380%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e100380%_)))
                        _g100601_))
                ((let () (declare (not safe)) (##fx= _g100600_ 2))
                 (apply (lambda (_%e100384%_ _%port100385%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e100384%_ _%port100385%_)))
                        _g100601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100601_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100346%_ _%message100347%_ . _%rest100348%_)
        (let ()
          (let* ((_%self100351%_ _%self100346%_)
                 (_%message100365%_
                  (if (let () (declare (not safe)) (string? _%message100347%_))
                      _%message100347%_
                      (call-with-output-string
                       '""
                       (lambda (_%g100360100362%_)
                         (display _%message100347%_ _%g100360100362%_))))))
            (let ()
              (declare (not safe))
              (unchecked-slot-set! _%self100351%_ 'message _%message100365%_))
            (apply class-instance-init! _%self100351%_ _%rest100348%_)))))
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
      (lambda (_%self100070%_ _%port100071%_)
        (let ((_%self100074%_ _%self100070%_))
          (let ((_%tmp-port100084%_ (open-output-string))
                (_%display-error-newline100085%_
                 (> (output-port-column _%port100071%_) '0)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100084%_))
            (let ((__tmp100602
                   (lambda ()
                     (if _%display-error-newline100085%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100088%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100074%_ 'where))))
                       (if _%$e100088%_
                           (display _%$e100088%_)
                           (let () (display '"?"))))
                     (let ((__tmp100603
                            (let ((__tmp100604
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100074%_))))
                              (declare (not safe))
                              (##type-name __tmp100604))))
                       (declare (not safe))
                       (display* '" [" __tmp100603 '"]: "))
                     (let ((__tmp100605
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100074%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100605))
                     (let ((_%irritants100092%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100074%_ 'irritants))))
                       (if (let ()
                             (declare (not safe))
                             (null? _%irritants100092%_))
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100094%_)
                                (if (let ()
                                      (declare (not safe))
                                      (u8vector? _%obj100094%_))
                                    (let ((__tmp100606
                                           (cons '<u8vector>
                                                 (cons (u8vector-length
                                                        _%obj100094%_)
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp100606))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj100094%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100092%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100095100097%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100074%_
                                   'continuation))))
                           (if _%cont100095100097%_
                               (let ((_%cont100100%_ _%cont100095100097%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100100%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100602
               current-output-port
               _%tmp-port100084%_))
            (let ((__tmp100607 (get-output-string _%tmp-port100084%_)))
              (declare (not safe))
              (##write-string __tmp100607 _%port100071%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99926%_ _%port99927%_)
        (let ()
          (let* ((_%self99930%_ _%self99926%_)
                 (_%tmp-port99940%_ (open-output-string)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port99940%_))
            (let ((__tmp100608
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%self99930%_ 'exception))))
              (declare (not safe))
              (##default-display-exception __tmp100608 _%tmp-port99940%_))
            (if (let () (declare (not safe)) (dump-stack-trace?))
                (let ((_%cont9994199943%_
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99930%_ 'continuation))))
                  (if _%cont9994199943%_
                      (let ((_%cont99946%_ _%cont9994199943%_))
                        (display '"--- continuation backtrace:"
                                 _%tmp-port99940%_)
                        (newline _%tmp-port99940%_)
                        (display-continuation-backtrace
                         _%cont99946%_
                         _%tmp-port99940%_))
                      '#f))
                '#!void)
            (let ((__tmp100609 (get-output-string _%tmp-port99940%_)))
              (declare (not safe))
              (##write-string __tmp100609 _%port99927%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99798%_)
        (if (macro-character-port? _%port99798%_)
            (let ((_%old-width99800%_
                   (macro-character-port-output-width _%port99798%_)))
              (macro-character-port-output-width-set!
               _%port99798%_
               (lambda (_%port99802%_) '256))
              _%old-width99800%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99795%_ _%old-width99796%_)
        (if (macro-character-port? _%port99795%_)
            (macro-character-port-output-width-set!
             _%port99795%_
             _%old-width99796%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99793%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99793%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99787%_))
            (let ((_%e99790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99787%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99790%_))
            (macro-abandoned-mutex-exception? _%exn99787%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99783%_))
            (let ((_%e99785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99783%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99785%_))
            (macro-cfun-conversion-exception? _%exn99783%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99779%_))
            (let ((_%e99781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99779%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99781%_)
                  (macro-cfun-conversion-exception-arguments _%e99781%_)
                  (let ((__tmp100610
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99781%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100610))))
            (if (macro-cfun-conversion-exception? _%exn99779%_)
                (macro-cfun-conversion-exception-arguments _%exn99779%_)
                (let ((__tmp100611
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99779%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100611))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99775%_))
            (let ((_%e99777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99775%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99777%_)
                  (macro-cfun-conversion-exception-code _%e99777%_)
                  (let ((__tmp100612
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99777%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100612))))
            (if (macro-cfun-conversion-exception? _%exn99775%_)
                (macro-cfun-conversion-exception-code _%exn99775%_)
                (let ((__tmp100613
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99775%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100613))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99771%_))
            (let ((_%e99773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99771%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99773%_)
                  (macro-cfun-conversion-exception-message _%e99773%_)
                  (let ((__tmp100614
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99773%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100614))))
            (if (macro-cfun-conversion-exception? _%exn99771%_)
                (macro-cfun-conversion-exception-message _%exn99771%_)
                (let ((__tmp100615
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99771%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100615))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99765%_))
            (let ((_%e99768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99765%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99768%_)
                  (macro-cfun-conversion-exception-procedure _%e99768%_)
                  (let ((__tmp100616
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99768%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100616))))
            (if (macro-cfun-conversion-exception? _%exn99765%_)
                (macro-cfun-conversion-exception-procedure _%exn99765%_)
                (let ((__tmp100617
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99765%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100617))))))
    (define datum-parsing-exception?
      (lambda (_%exn99761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99761%_))
            (let ((_%e99763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99761%_ 'exception))))
              (macro-datum-parsing-exception? _%e99763%_))
            (macro-datum-parsing-exception? _%exn99761%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99757%_))
            (let ((_%e99759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99757%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99759%_)
                  (macro-datum-parsing-exception-kind _%e99759%_)
                  (let ((__tmp100618
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99759%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100618))))
            (if (macro-datum-parsing-exception? _%exn99757%_)
                (macro-datum-parsing-exception-kind _%exn99757%_)
                (let ((__tmp100619
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99757%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100619))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99753%_))
            (let ((_%e99755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99753%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99755%_)
                  (macro-datum-parsing-exception-parameters _%e99755%_)
                  (let ((__tmp100620
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99755%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100620))))
            (if (macro-datum-parsing-exception? _%exn99753%_)
                (macro-datum-parsing-exception-parameters _%exn99753%_)
                (let ((__tmp100621
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99753%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100621))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99747%_))
            (let ((_%e99750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99747%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99750%_)
                  (macro-datum-parsing-exception-readenv _%e99750%_)
                  (let ((__tmp100622
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99750%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100622))))
            (if (macro-datum-parsing-exception? _%exn99747%_)
                (macro-datum-parsing-exception-readenv _%exn99747%_)
                (let ((__tmp100623
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99747%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100623))))))
    (define deadlock-exception?
      (lambda (_%exn99741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99741%_))
            (let ((_%e99744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99741%_ 'exception))))
              (macro-deadlock-exception? _%e99744%_))
            (macro-deadlock-exception? _%exn99741%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99737%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99737%_))
            (let ((_%e99739%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99737%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99739%_))
            (macro-divide-by-zero-exception? _%exn99737%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99733%_))
            (let ((_%e99735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99733%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99735%_)
                  (macro-divide-by-zero-exception-arguments _%e99735%_)
                  (let ((__tmp100624
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99735%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100624))))
            (if (macro-divide-by-zero-exception? _%exn99733%_)
                (macro-divide-by-zero-exception-arguments _%exn99733%_)
                (let ((__tmp100625
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99733%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100625))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99727%_))
            (let ((_%e99730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99727%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99730%_)
                  (macro-divide-by-zero-exception-procedure _%e99730%_)
                  (let ((__tmp100626
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99730%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100626))))
            (if (macro-divide-by-zero-exception? _%exn99727%_)
                (macro-divide-by-zero-exception-procedure _%exn99727%_)
                (let ((__tmp100627
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99727%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100627))))))
    (define error-exception?
      (lambda (_%exn99723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99723%_))
            (let ((_%e99725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99723%_ 'exception))))
              (macro-error-exception? _%e99725%_))
            (macro-error-exception? _%exn99723%_))))
    (define error-exception-message
      (lambda (_%exn99719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99719%_))
            (let ((_%e99721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99719%_ 'exception))))
              (if (macro-error-exception? _%e99721%_)
                  (macro-error-exception-message _%e99721%_)
                  (let ((__tmp100628
                         (cons 'error-exception-message
                               (cons _%e99721%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100628))))
            (if (macro-error-exception? _%exn99719%_)
                (macro-error-exception-message _%exn99719%_)
                (let ((__tmp100629
                       (cons 'error-exception-message
                             (cons _%exn99719%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100629))))))
    (define error-exception-parameters
      (lambda (_%exn99713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99713%_))
            (let ((_%e99716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99713%_ 'exception))))
              (if (macro-error-exception? _%e99716%_)
                  (macro-error-exception-parameters _%e99716%_)
                  (let ((__tmp100630
                         (cons 'error-exception-parameters
                               (cons _%e99716%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100630))))
            (if (macro-error-exception? _%exn99713%_)
                (macro-error-exception-parameters _%exn99713%_)
                (let ((__tmp100631
                       (cons 'error-exception-parameters
                             (cons _%exn99713%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100631))))))
    (define expression-parsing-exception?
      (lambda (_%exn99709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99709%_))
            (let ((_%e99711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99709%_ 'exception))))
              (macro-expression-parsing-exception? _%e99711%_))
            (macro-expression-parsing-exception? _%exn99709%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99705%_))
            (let ((_%e99707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99705%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99707%_)
                  (macro-expression-parsing-exception-kind _%e99707%_)
                  (let ((__tmp100632
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99707%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100632))))
            (if (macro-expression-parsing-exception? _%exn99705%_)
                (macro-expression-parsing-exception-kind _%exn99705%_)
                (let ((__tmp100633
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99705%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100633))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99701%_))
            (let ((_%e99703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99701%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99703%_)
                  (macro-expression-parsing-exception-parameters _%e99703%_)
                  (let ((__tmp100634
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99703%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100634))))
            (if (macro-expression-parsing-exception? _%exn99701%_)
                (macro-expression-parsing-exception-parameters _%exn99701%_)
                (let ((__tmp100635
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99701%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100635))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99695%_))
            (let ((_%e99698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99695%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99698%_)
                  (macro-expression-parsing-exception-source _%e99698%_)
                  (let ((__tmp100636
                         (cons 'expression-parsing-exception-source
                               (cons _%e99698%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100636))))
            (if (macro-expression-parsing-exception? _%exn99695%_)
                (macro-expression-parsing-exception-source _%exn99695%_)
                (let ((__tmp100637
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99695%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100637))))))
    (define file-exists-exception?
      (lambda (_%exn99691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99691%_))
            (let ((_%e99693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99691%_ 'exception))))
              (macro-file-exists-exception? _%e99693%_))
            (macro-file-exists-exception? _%exn99691%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99687%_))
            (let ((_%e99689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99687%_ 'exception))))
              (if (macro-file-exists-exception? _%e99689%_)
                  (macro-file-exists-exception-arguments _%e99689%_)
                  (let ((__tmp100638
                         (cons 'file-exists-exception-arguments
                               (cons _%e99689%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100638))))
            (if (macro-file-exists-exception? _%exn99687%_)
                (macro-file-exists-exception-arguments _%exn99687%_)
                (let ((__tmp100639
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99687%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100639))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99681%_))
            (let ((_%e99684%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99681%_ 'exception))))
              (if (macro-file-exists-exception? _%e99684%_)
                  (macro-file-exists-exception-procedure _%e99684%_)
                  (let ((__tmp100640
                         (cons 'file-exists-exception-procedure
                               (cons _%e99684%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100640))))
            (if (macro-file-exists-exception? _%exn99681%_)
                (macro-file-exists-exception-procedure _%exn99681%_)
                (let ((__tmp100641
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99681%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100641))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99677%_))
            (let ((_%e99679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99677%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99679%_))
            (macro-fixnum-overflow-exception? _%exn99677%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99673%_))
            (let ((_%e99675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99673%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99675%_)
                  (macro-fixnum-overflow-exception-arguments _%e99675%_)
                  (let ((__tmp100642
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99675%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100642))))
            (if (macro-fixnum-overflow-exception? _%exn99673%_)
                (macro-fixnum-overflow-exception-arguments _%exn99673%_)
                (let ((__tmp100643
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99673%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100643))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99667%_))
            (let ((_%e99670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99667%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99670%_)
                  (macro-fixnum-overflow-exception-procedure _%e99670%_)
                  (let ((__tmp100644
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99670%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100644))))
            (if (macro-fixnum-overflow-exception? _%exn99667%_)
                (macro-fixnum-overflow-exception-procedure _%exn99667%_)
                (let ((__tmp100645
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99667%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100645))))))
    (define heap-overflow-exception?
      (lambda (_%exn99661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99661%_))
            (let ((_%e99664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99661%_ 'exception))))
              (macro-heap-overflow-exception? _%e99664%_))
            (macro-heap-overflow-exception? _%exn99661%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99657%_))
            (let ((_%e99659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99657%_ 'exception))))
              (macro-inactive-thread-exception? _%e99659%_))
            (macro-inactive-thread-exception? _%exn99657%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99653%_))
            (let ((_%e99655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99653%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99655%_)
                  (macro-inactive-thread-exception-arguments _%e99655%_)
                  (let ((__tmp100646
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99655%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100646))))
            (if (macro-inactive-thread-exception? _%exn99653%_)
                (macro-inactive-thread-exception-arguments _%exn99653%_)
                (let ((__tmp100647
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99653%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100647))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99647%_))
            (let ((_%e99650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99647%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99650%_)
                  (macro-inactive-thread-exception-procedure _%e99650%_)
                  (let ((__tmp100648
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99650%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100648))))
            (if (macro-inactive-thread-exception? _%exn99647%_)
                (macro-inactive-thread-exception-procedure _%exn99647%_)
                (let ((__tmp100649
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99647%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100649))))))
    (define initialized-thread-exception?
      (lambda (_%exn99643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99643%_))
            (let ((_%e99645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99643%_ 'exception))))
              (macro-initialized-thread-exception? _%e99645%_))
            (macro-initialized-thread-exception? _%exn99643%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99639%_))
            (let ((_%e99641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99639%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99641%_)
                  (macro-initialized-thread-exception-arguments _%e99641%_)
                  (let ((__tmp100650
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99641%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100650))))
            (if (macro-initialized-thread-exception? _%exn99639%_)
                (macro-initialized-thread-exception-arguments _%exn99639%_)
                (let ((__tmp100651
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99639%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100651))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99633%_))
            (let ((_%e99636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99633%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99636%_)
                  (macro-initialized-thread-exception-procedure _%e99636%_)
                  (let ((__tmp100652
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99636%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100652))))
            (if (macro-initialized-thread-exception? _%exn99633%_)
                (macro-initialized-thread-exception-procedure _%exn99633%_)
                (let ((__tmp100653
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99633%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100653))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99629%_))
            (let ((_%e99631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99629%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99631%_))
            (macro-invalid-hash-number-exception? _%exn99629%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99625%_))
            (let ((_%e99627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99625%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99627%_)
                  (macro-invalid-hash-number-exception-arguments _%e99627%_)
                  (let ((__tmp100654
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99627%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100654))))
            (if (macro-invalid-hash-number-exception? _%exn99625%_)
                (macro-invalid-hash-number-exception-arguments _%exn99625%_)
                (let ((__tmp100655
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99625%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100655))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99619%_))
            (let ((_%e99622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99619%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99622%_)
                  (macro-invalid-hash-number-exception-procedure _%e99622%_)
                  (let ((__tmp100656
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99622%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100656))))
            (if (macro-invalid-hash-number-exception? _%exn99619%_)
                (macro-invalid-hash-number-exception-procedure _%exn99619%_)
                (let ((__tmp100657
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99619%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100657))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99615%_))
            (let ((_%e99617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99615%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99617%_))
            (macro-invalid-utf8-encoding-exception? _%exn99615%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99611%_))
            (let ((_%e99613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99611%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99613%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99613%_)
                  (let ((__tmp100658
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99613%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100658))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99611%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99611%_)
                (let ((__tmp100659
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99611%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100659))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99605%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99605%_))
            (let ((_%e99608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99605%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99608%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99608%_)
                  (let ((__tmp100660
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99608%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100660))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99605%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99605%_)
                (let ((__tmp100661
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99605%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100661))))))
    (define join-timeout-exception?
      (lambda (_%exn99601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99601%_))
            (let ((_%e99603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99601%_ 'exception))))
              (macro-join-timeout-exception? _%e99603%_))
            (macro-join-timeout-exception? _%exn99601%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99597%_))
            (let ((_%e99599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99597%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99599%_)
                  (macro-join-timeout-exception-arguments _%e99599%_)
                  (let ((__tmp100662
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99599%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100662))))
            (if (macro-join-timeout-exception? _%exn99597%_)
                (macro-join-timeout-exception-arguments _%exn99597%_)
                (let ((__tmp100663
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99597%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100663))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99591%_))
            (let ((_%e99594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99591%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99594%_)
                  (macro-join-timeout-exception-procedure _%e99594%_)
                  (let ((__tmp100664
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99594%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100664))))
            (if (macro-join-timeout-exception? _%exn99591%_)
                (macro-join-timeout-exception-procedure _%exn99591%_)
                (let ((__tmp100665
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99591%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100665))))))
    (define keyword-expected-exception?
      (lambda (_%exn99587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99587%_))
            (let ((_%e99589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99587%_ 'exception))))
              (macro-keyword-expected-exception? _%e99589%_))
            (macro-keyword-expected-exception? _%exn99587%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99583%_))
            (let ((_%e99585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99583%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99585%_)
                  (macro-keyword-expected-exception-arguments _%e99585%_)
                  (let ((__tmp100666
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99585%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100666))))
            (if (macro-keyword-expected-exception? _%exn99583%_)
                (macro-keyword-expected-exception-arguments _%exn99583%_)
                (let ((__tmp100667
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99583%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100667))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99577%_))
            (let ((_%e99580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99577%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99580%_)
                  (macro-keyword-expected-exception-procedure _%e99580%_)
                  (let ((__tmp100668
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99580%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100668))))
            (if (macro-keyword-expected-exception? _%exn99577%_)
                (macro-keyword-expected-exception-procedure _%exn99577%_)
                (let ((__tmp100669
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99577%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100669))))))
    (define length-mismatch-exception?
      (lambda (_%exn99573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99573%_))
            (let ((_%e99575%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99573%_ 'exception))))
              (macro-length-mismatch-exception? _%e99575%_))
            (macro-length-mismatch-exception? _%exn99573%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99569%_))
            (let ((_%e99571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99569%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99571%_)
                  (macro-length-mismatch-exception-arg-id _%e99571%_)
                  (let ((__tmp100670
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99571%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100670))))
            (if (macro-length-mismatch-exception? _%exn99569%_)
                (macro-length-mismatch-exception-arg-id _%exn99569%_)
                (let ((__tmp100671
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99569%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100671))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99565%_))
            (let ((_%e99567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99565%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99567%_)
                  (macro-length-mismatch-exception-arguments _%e99567%_)
                  (let ((__tmp100672
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99567%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100672))))
            (if (macro-length-mismatch-exception? _%exn99565%_)
                (macro-length-mismatch-exception-arguments _%exn99565%_)
                (let ((__tmp100673
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99565%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100673))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99559%_))
            (let ((_%e99562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99559%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99562%_)
                  (macro-length-mismatch-exception-procedure _%e99562%_)
                  (let ((__tmp100674
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99562%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100674))))
            (if (macro-length-mismatch-exception? _%exn99559%_)
                (macro-length-mismatch-exception-procedure _%exn99559%_)
                (let ((__tmp100675
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99559%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100675))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99555%_))
            (let ((_%e99557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99555%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99557%_))
            (macro-mailbox-receive-timeout-exception? _%exn99555%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99551%_))
            (let ((_%e99553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99551%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99553%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99553%_)
                  (let ((__tmp100676
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99553%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100676))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99551%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99551%_)
                (let ((__tmp100677
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99551%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100677))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99545%_))
            (let ((_%e99548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99545%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99548%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99548%_)
                  (let ((__tmp100678
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99548%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100678))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99545%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99545%_)
                (let ((__tmp100679
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99545%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100679))))))
    (define module-not-found-exception?
      (lambda (_%exn99541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99541%_))
            (let ((_%e99543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99541%_ 'exception))))
              (macro-module-not-found-exception? _%e99543%_))
            (macro-module-not-found-exception? _%exn99541%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99537%_))
            (let ((_%e99539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99537%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99539%_)
                  (macro-module-not-found-exception-arguments _%e99539%_)
                  (let ((__tmp100680
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99539%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100680))))
            (if (macro-module-not-found-exception? _%exn99537%_)
                (macro-module-not-found-exception-arguments _%exn99537%_)
                (let ((__tmp100681
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99537%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100681))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99531%_))
            (let ((_%e99534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99531%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99534%_)
                  (macro-module-not-found-exception-procedure _%e99534%_)
                  (let ((__tmp100682
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99534%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100682))))
            (if (macro-module-not-found-exception? _%exn99531%_)
                (macro-module-not-found-exception-procedure _%exn99531%_)
                (let ((__tmp100683
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99531%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100683))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99525%_))
            (let ((_%e99528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99525%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99528%_))
            (macro-multiple-c-return-exception? _%exn99525%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99521%_))
            (let ((_%e99523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99521%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99523%_))
            (macro-no-such-file-or-directory-exception? _%exn99521%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99517%_))
            (let ((_%e99519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99517%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99519%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99519%_)
                  (let ((__tmp100684
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99519%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100684))))
            (if (macro-no-such-file-or-directory-exception? _%exn99517%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99517%_)
                (let ((__tmp100685
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99517%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100685))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99511%_))
            (let ((_%e99514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99511%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99514%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99514%_)
                  (let ((__tmp100686
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99514%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100686))))
            (if (macro-no-such-file-or-directory-exception? _%exn99511%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99511%_)
                (let ((__tmp100687
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99511%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100687))))))
    (define noncontinuable-exception?
      (lambda (_%exn99507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99507%_))
            (let ((_%e99509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99507%_ 'exception))))
              (macro-noncontinuable-exception? _%e99509%_))
            (macro-noncontinuable-exception? _%exn99507%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99501%_))
            (let ((_%e99504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99501%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99504%_)
                  (macro-noncontinuable-exception-reason _%e99504%_)
                  (let ((__tmp100688
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99504%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100688))))
            (if (macro-noncontinuable-exception? _%exn99501%_)
                (macro-noncontinuable-exception-reason _%exn99501%_)
                (let ((__tmp100689
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99501%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100689))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99497%_))
            (let ((_%e99499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99497%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99499%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99497%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99493%_))
            (let ((_%e99495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99493%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99495%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99495%_)
                  (let ((__tmp100690
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99495%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100690))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99493%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99493%_)
                (let ((__tmp100691
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99493%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100691))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99487%_))
            (let ((_%e99490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99487%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99490%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99490%_)
                  (let ((__tmp100692
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99490%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100692))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99487%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99487%_)
                (let ((__tmp100693
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99487%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100693))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99483%_))
            (let ((_%e99485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99483%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99485%_))
            (macro-nonprocedure-operator-exception? _%exn99483%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99479%_))
            (let ((_%e99481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99479%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99481%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99481%_)
                  (let ((__tmp100694
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99481%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100694))))
            (if (macro-nonprocedure-operator-exception? _%exn99479%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99479%_)
                (let ((__tmp100695
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99479%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100695))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99475%_))
            (let ((_%e99477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99475%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99477%_)
                  (macro-nonprocedure-operator-exception-code _%e99477%_)
                  (let ((__tmp100696
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99477%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100696))))
            (if (macro-nonprocedure-operator-exception? _%exn99475%_)
                (macro-nonprocedure-operator-exception-code _%exn99475%_)
                (let ((__tmp100697
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99475%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100697))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99471%_))
            (let ((_%e99473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99471%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99473%_)
                  (macro-nonprocedure-operator-exception-operator _%e99473%_)
                  (let ((__tmp100698
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99473%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100698))))
            (if (macro-nonprocedure-operator-exception? _%exn99471%_)
                (macro-nonprocedure-operator-exception-operator _%exn99471%_)
                (let ((__tmp100699
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99471%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100699))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99465%_))
            (let ((_%e99468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99465%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99468%_)
                  (macro-nonprocedure-operator-exception-rte _%e99468%_)
                  (let ((__tmp100700
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99468%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100700))))
            (if (macro-nonprocedure-operator-exception? _%exn99465%_)
                (macro-nonprocedure-operator-exception-rte _%exn99465%_)
                (let ((__tmp100701
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99465%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100701))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99461%_))
            (let ((_%e99463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99461%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99463%_))
            (macro-not-in-compilation-context-exception? _%exn99461%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99457%_))
            (let ((_%e99459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99457%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99459%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99459%_)
                  (let ((__tmp100702
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99459%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100702))))
            (if (macro-not-in-compilation-context-exception? _%exn99457%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99457%_)
                (let ((__tmp100703
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99457%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100703))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99451%_))
            (let ((_%e99454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99451%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99454%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99454%_)
                  (let ((__tmp100704
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99454%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100704))))
            (if (macro-not-in-compilation-context-exception? _%exn99451%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99451%_)
                (let ((__tmp100705
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99451%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100705))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99447%_))
            (let ((_%e99449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99447%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99449%_))
            (macro-number-of-arguments-limit-exception? _%exn99447%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99443%_))
            (let ((_%e99445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99443%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99445%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99445%_)
                  (let ((__tmp100706
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99445%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100706))))
            (if (macro-number-of-arguments-limit-exception? _%exn99443%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99443%_)
                (let ((__tmp100707
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99443%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100707))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99437%_))
            (let ((_%e99440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99437%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99440%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99440%_)
                  (let ((__tmp100708
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99440%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100708))))
            (if (macro-number-of-arguments-limit-exception? _%exn99437%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99437%_)
                (let ((__tmp100709
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99437%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100709))))))
    (define os-exception?
      (lambda (_%exn99433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99433%_))
            (let ((_%e99435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99433%_ 'exception))))
              (macro-os-exception? _%e99435%_))
            (macro-os-exception? _%exn99433%_))))
    (define os-exception-arguments
      (lambda (_%exn99429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99429%_))
            (let ((_%e99431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99429%_ 'exception))))
              (if (macro-os-exception? _%e99431%_)
                  (macro-os-exception-arguments _%e99431%_)
                  (let ((__tmp100710
                         (cons 'os-exception-arguments (cons _%e99431%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100710))))
            (if (macro-os-exception? _%exn99429%_)
                (macro-os-exception-arguments _%exn99429%_)
                (let ((__tmp100711
                       (cons 'os-exception-arguments (cons _%exn99429%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100711))))))
    (define os-exception-code
      (lambda (_%exn99425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99425%_))
            (let ((_%e99427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99425%_ 'exception))))
              (if (macro-os-exception? _%e99427%_)
                  (macro-os-exception-code _%e99427%_)
                  (let ((__tmp100712
                         (cons 'os-exception-code (cons _%e99427%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100712))))
            (if (macro-os-exception? _%exn99425%_)
                (macro-os-exception-code _%exn99425%_)
                (let ((__tmp100713
                       (cons 'os-exception-code (cons _%exn99425%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100713))))))
    (define os-exception-message
      (lambda (_%exn99421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99421%_))
            (let ((_%e99423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99421%_ 'exception))))
              (if (macro-os-exception? _%e99423%_)
                  (macro-os-exception-message _%e99423%_)
                  (let ((__tmp100714
                         (cons 'os-exception-message (cons _%e99423%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100714))))
            (if (macro-os-exception? _%exn99421%_)
                (macro-os-exception-message _%exn99421%_)
                (let ((__tmp100715
                       (cons 'os-exception-message (cons _%exn99421%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100715))))))
    (define os-exception-procedure
      (lambda (_%exn99415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99415%_))
            (let ((_%e99418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99415%_ 'exception))))
              (if (macro-os-exception? _%e99418%_)
                  (macro-os-exception-procedure _%e99418%_)
                  (let ((__tmp100716
                         (cons 'os-exception-procedure (cons _%e99418%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100716))))
            (if (macro-os-exception? _%exn99415%_)
                (macro-os-exception-procedure _%exn99415%_)
                (let ((__tmp100717
                       (cons 'os-exception-procedure (cons _%exn99415%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100717))))))
    (define permission-denied-exception?
      (lambda (_%exn99411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99411%_))
            (let ((_%e99413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99411%_ 'exception))))
              (macro-permission-denied-exception? _%e99413%_))
            (macro-permission-denied-exception? _%exn99411%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99407%_))
            (let ((_%e99409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99407%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99409%_)
                  (macro-permission-denied-exception-arguments _%e99409%_)
                  (let ((__tmp100718
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99409%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100718))))
            (if (macro-permission-denied-exception? _%exn99407%_)
                (macro-permission-denied-exception-arguments _%exn99407%_)
                (let ((__tmp100719
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99407%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100719))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn99401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99401%_))
            (let ((_%e99404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99401%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99404%_)
                  (macro-permission-denied-exception-procedure _%e99404%_)
                  (let ((__tmp100720
                         (cons 'permission-denied-exception-procedure
                               (cons _%e99404%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100720))))
            (if (macro-permission-denied-exception? _%exn99401%_)
                (macro-permission-denied-exception-procedure _%exn99401%_)
                (let ((__tmp100721
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn99401%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100721))))))
    (define range-exception?
      (lambda (_%exn99397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99397%_))
            (let ((_%e99399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99397%_ 'exception))))
              (macro-range-exception? _%e99399%_))
            (macro-range-exception? _%exn99397%_))))
    (define range-exception-arg-id
      (lambda (_%exn99393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99393%_))
            (let ((_%e99395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99393%_ 'exception))))
              (if (macro-range-exception? _%e99395%_)
                  (macro-range-exception-arg-id _%e99395%_)
                  (let ((__tmp100722
                         (cons 'range-exception-arg-id (cons _%e99395%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100722))))
            (if (macro-range-exception? _%exn99393%_)
                (macro-range-exception-arg-id _%exn99393%_)
                (let ((__tmp100723
                       (cons 'range-exception-arg-id (cons _%exn99393%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100723))))))
    (define range-exception-arguments
      (lambda (_%exn99389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99389%_))
            (let ((_%e99391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99389%_ 'exception))))
              (if (macro-range-exception? _%e99391%_)
                  (macro-range-exception-arguments _%e99391%_)
                  (let ((__tmp100724
                         (cons 'range-exception-arguments
                               (cons _%e99391%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100724))))
            (if (macro-range-exception? _%exn99389%_)
                (macro-range-exception-arguments _%exn99389%_)
                (let ((__tmp100725
                       (cons 'range-exception-arguments
                             (cons _%exn99389%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100725))))))
    (define range-exception-procedure
      (lambda (_%exn99383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99383%_))
            (let ((_%e99386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99383%_ 'exception))))
              (if (macro-range-exception? _%e99386%_)
                  (macro-range-exception-procedure _%e99386%_)
                  (let ((__tmp100726
                         (cons 'range-exception-procedure
                               (cons _%e99386%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100726))))
            (if (macro-range-exception? _%exn99383%_)
                (macro-range-exception-procedure _%exn99383%_)
                (let ((__tmp100727
                       (cons 'range-exception-procedure
                             (cons _%exn99383%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100727))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn99379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99379%_))
            (let ((_%e99381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99379%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e99381%_))
            (macro-rpc-remote-error-exception? _%exn99379%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn99375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99375%_))
            (let ((_%e99377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99375%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99377%_)
                  (macro-rpc-remote-error-exception-arguments _%e99377%_)
                  (let ((__tmp100728
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e99377%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100728))))
            (if (macro-rpc-remote-error-exception? _%exn99375%_)
                (macro-rpc-remote-error-exception-arguments _%exn99375%_)
                (let ((__tmp100729
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn99375%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100729))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn99371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99371%_))
            (let ((_%e99373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99371%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99373%_)
                  (macro-rpc-remote-error-exception-message _%e99373%_)
                  (let ((__tmp100730
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e99373%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100730))))
            (if (macro-rpc-remote-error-exception? _%exn99371%_)
                (macro-rpc-remote-error-exception-message _%exn99371%_)
                (let ((__tmp100731
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn99371%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100731))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn99365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99365%_))
            (let ((_%e99368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99365%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99368%_)
                  (macro-rpc-remote-error-exception-procedure _%e99368%_)
                  (let ((__tmp100732
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e99368%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100732))))
            (if (macro-rpc-remote-error-exception? _%exn99365%_)
                (macro-rpc-remote-error-exception-procedure _%exn99365%_)
                (let ((__tmp100733
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn99365%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100733))))))
    (define scheduler-exception?
      (lambda (_%exn99361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99361%_))
            (let ((_%e99363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99361%_ 'exception))))
              (macro-scheduler-exception? _%e99363%_))
            (macro-scheduler-exception? _%exn99361%_))))
    (define scheduler-exception-reason
      (lambda (_%exn99355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99355%_))
            (let ((_%e99358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99355%_ 'exception))))
              (if (macro-scheduler-exception? _%e99358%_)
                  (macro-scheduler-exception-reason _%e99358%_)
                  (let ((__tmp100734
                         (cons 'scheduler-exception-reason
                               (cons _%e99358%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100734))))
            (if (macro-scheduler-exception? _%exn99355%_)
                (macro-scheduler-exception-reason _%exn99355%_)
                (let ((__tmp100735
                       (cons 'scheduler-exception-reason
                             (cons _%exn99355%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100735))))))
    (define sfun-conversion-exception?
      (lambda (_%exn99351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99351%_))
            (let ((_%e99353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99351%_ 'exception))))
              (macro-sfun-conversion-exception? _%e99353%_))
            (macro-sfun-conversion-exception? _%exn99351%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn99347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99347%_))
            (let ((_%e99349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99347%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99349%_)
                  (macro-sfun-conversion-exception-arguments _%e99349%_)
                  (let ((__tmp100736
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e99349%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100736))))
            (if (macro-sfun-conversion-exception? _%exn99347%_)
                (macro-sfun-conversion-exception-arguments _%exn99347%_)
                (let ((__tmp100737
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn99347%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100737))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn99343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99343%_))
            (let ((_%e99345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99343%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99345%_)
                  (macro-sfun-conversion-exception-code _%e99345%_)
                  (let ((__tmp100738
                         (cons 'sfun-conversion-exception-code
                               (cons _%e99345%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100738))))
            (if (macro-sfun-conversion-exception? _%exn99343%_)
                (macro-sfun-conversion-exception-code _%exn99343%_)
                (let ((__tmp100739
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn99343%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100739))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn99339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99339%_))
            (let ((_%e99341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99339%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99341%_)
                  (macro-sfun-conversion-exception-message _%e99341%_)
                  (let ((__tmp100740
                         (cons 'sfun-conversion-exception-message
                               (cons _%e99341%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100740))))
            (if (macro-sfun-conversion-exception? _%exn99339%_)
                (macro-sfun-conversion-exception-message _%exn99339%_)
                (let ((__tmp100741
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn99339%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100741))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn99333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99333%_))
            (let ((_%e99336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99333%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99336%_)
                  (macro-sfun-conversion-exception-procedure _%e99336%_)
                  (let ((__tmp100742
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e99336%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100742))))
            (if (macro-sfun-conversion-exception? _%exn99333%_)
                (macro-sfun-conversion-exception-procedure _%exn99333%_)
                (let ((__tmp100743
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn99333%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100743))))))
    (define stack-overflow-exception?
      (lambda (_%exn99327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99327%_))
            (let ((_%e99330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99327%_ 'exception))))
              (macro-stack-overflow-exception? _%e99330%_))
            (macro-stack-overflow-exception? _%exn99327%_))))
    (define started-thread-exception?
      (lambda (_%exn99323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99323%_))
            (let ((_%e99325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99323%_ 'exception))))
              (macro-started-thread-exception? _%e99325%_))
            (macro-started-thread-exception? _%exn99323%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn99319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99319%_))
            (let ((_%e99321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99319%_ 'exception))))
              (if (macro-started-thread-exception? _%e99321%_)
                  (macro-started-thread-exception-arguments _%e99321%_)
                  (let ((__tmp100744
                         (cons 'started-thread-exception-arguments
                               (cons _%e99321%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100744))))
            (if (macro-started-thread-exception? _%exn99319%_)
                (macro-started-thread-exception-arguments _%exn99319%_)
                (let ((__tmp100745
                       (cons 'started-thread-exception-arguments
                             (cons _%exn99319%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100745))))))
    (define started-thread-exception-procedure
      (lambda (_%exn99313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99313%_))
            (let ((_%e99316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99313%_ 'exception))))
              (if (macro-started-thread-exception? _%e99316%_)
                  (macro-started-thread-exception-procedure _%e99316%_)
                  (let ((__tmp100746
                         (cons 'started-thread-exception-procedure
                               (cons _%e99316%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100746))))
            (if (macro-started-thread-exception? _%exn99313%_)
                (macro-started-thread-exception-procedure _%exn99313%_)
                (let ((__tmp100747
                       (cons 'started-thread-exception-procedure
                             (cons _%exn99313%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100747))))))
    (define terminated-thread-exception?
      (lambda (_%exn99309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99309%_))
            (let ((_%e99311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99309%_ 'exception))))
              (macro-terminated-thread-exception? _%e99311%_))
            (macro-terminated-thread-exception? _%exn99309%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn99305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99305%_))
            (let ((_%e99307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99305%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99307%_)
                  (macro-terminated-thread-exception-arguments _%e99307%_)
                  (let ((__tmp100748
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e99307%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100748))))
            (if (macro-terminated-thread-exception? _%exn99305%_)
                (macro-terminated-thread-exception-arguments _%exn99305%_)
                (let ((__tmp100749
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn99305%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100749))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn99299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99299%_))
            (let ((_%e99302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99299%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99302%_)
                  (macro-terminated-thread-exception-procedure _%e99302%_)
                  (let ((__tmp100750
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e99302%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100750))))
            (if (macro-terminated-thread-exception? _%exn99299%_)
                (macro-terminated-thread-exception-procedure _%exn99299%_)
                (let ((__tmp100751
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn99299%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100751))))))
    (define type-exception?
      (lambda (_%exn99295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99295%_))
            (let ((_%e99297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99295%_ 'exception))))
              (macro-type-exception? _%e99297%_))
            (macro-type-exception? _%exn99295%_))))
    (define type-exception-arg-id
      (lambda (_%exn99291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99291%_))
            (let ((_%e99293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99291%_ 'exception))))
              (if (macro-type-exception? _%e99293%_)
                  (macro-type-exception-arg-id _%e99293%_)
                  (let ((__tmp100752
                         (cons 'type-exception-arg-id (cons _%e99293%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100752))))
            (if (macro-type-exception? _%exn99291%_)
                (macro-type-exception-arg-id _%exn99291%_)
                (let ((__tmp100753
                       (cons 'type-exception-arg-id (cons _%exn99291%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100753))))))
    (define type-exception-arguments
      (lambda (_%exn99287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99287%_))
            (let ((_%e99289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99287%_ 'exception))))
              (if (macro-type-exception? _%e99289%_)
                  (macro-type-exception-arguments _%e99289%_)
                  (let ((__tmp100754
                         (cons 'type-exception-arguments
                               (cons _%e99289%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100754))))
            (if (macro-type-exception? _%exn99287%_)
                (macro-type-exception-arguments _%exn99287%_)
                (let ((__tmp100755
                       (cons 'type-exception-arguments
                             (cons _%exn99287%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100755))))))
    (define type-exception-procedure
      (lambda (_%exn99283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99283%_))
            (let ((_%e99285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99283%_ 'exception))))
              (if (macro-type-exception? _%e99285%_)
                  (macro-type-exception-procedure _%e99285%_)
                  (let ((__tmp100756
                         (cons 'type-exception-procedure
                               (cons _%e99285%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100756))))
            (if (macro-type-exception? _%exn99283%_)
                (macro-type-exception-procedure _%exn99283%_)
                (let ((__tmp100757
                       (cons 'type-exception-procedure
                             (cons _%exn99283%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100757))))))
    (define type-exception-type-id
      (lambda (_%exn99277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99277%_))
            (let ((_%e99280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99277%_ 'exception))))
              (if (macro-type-exception? _%e99280%_)
                  (macro-type-exception-type-id _%e99280%_)
                  (let ((__tmp100758
                         (cons 'type-exception-type-id (cons _%e99280%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100758))))
            (if (macro-type-exception? _%exn99277%_)
                (macro-type-exception-type-id _%exn99277%_)
                (let ((__tmp100759
                       (cons 'type-exception-type-id (cons _%exn99277%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100759))))))
    (define unbound-global-exception?
      (lambda (_%exn99273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99273%_))
            (let ((_%e99275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99273%_ 'exception))))
              (macro-unbound-global-exception? _%e99275%_))
            (macro-unbound-global-exception? _%exn99273%_))))
    (define unbound-global-exception-code
      (lambda (_%exn99269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99269%_))
            (let ((_%e99271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99269%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99271%_)
                  (macro-unbound-global-exception-code _%e99271%_)
                  (let ((__tmp100760
                         (cons 'unbound-global-exception-code
                               (cons _%e99271%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100760))))
            (if (macro-unbound-global-exception? _%exn99269%_)
                (macro-unbound-global-exception-code _%exn99269%_)
                (let ((__tmp100761
                       (cons 'unbound-global-exception-code
                             (cons _%exn99269%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100761))))))
    (define unbound-global-exception-rte
      (lambda (_%exn99265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99265%_))
            (let ((_%e99267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99265%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99267%_)
                  (macro-unbound-global-exception-rte _%e99267%_)
                  (let ((__tmp100762
                         (cons 'unbound-global-exception-rte
                               (cons _%e99267%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100762))))
            (if (macro-unbound-global-exception? _%exn99265%_)
                (macro-unbound-global-exception-rte _%exn99265%_)
                (let ((__tmp100763
                       (cons 'unbound-global-exception-rte
                             (cons _%exn99265%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100763))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99259%_))
            (let ((_%e99262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99259%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99262%_)
                  (macro-unbound-global-exception-variable _%e99262%_)
                  (let ((__tmp100764
                         (cons 'unbound-global-exception-variable
                               (cons _%e99262%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100764))))
            (if (macro-unbound-global-exception? _%exn99259%_)
                (macro-unbound-global-exception-variable _%exn99259%_)
                (let ((__tmp100765
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99259%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100765))))))
    (define unbound-key-exception?
      (lambda (_%exn99255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99255%_))
            (let ((_%e99257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99255%_ 'exception))))
              (macro-unbound-key-exception? _%e99257%_))
            (macro-unbound-key-exception? _%exn99255%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99251%_))
            (let ((_%e99253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99251%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99253%_)
                  (macro-unbound-key-exception-arguments _%e99253%_)
                  (let ((__tmp100766
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99253%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100766))))
            (if (macro-unbound-key-exception? _%exn99251%_)
                (macro-unbound-key-exception-arguments _%exn99251%_)
                (let ((__tmp100767
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99251%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100767))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99245%_))
            (let ((_%e99248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99245%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99248%_)
                  (macro-unbound-key-exception-procedure _%e99248%_)
                  (let ((__tmp100768
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99248%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100768))))
            (if (macro-unbound-key-exception? _%exn99245%_)
                (macro-unbound-key-exception-procedure _%exn99245%_)
                (let ((__tmp100769
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99245%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100769))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99241%_))
            (let ((_%e99243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99241%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99243%_))
            (macro-unbound-os-environment-variable-exception? _%exn99241%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99237%_))
            (let ((_%e99239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99237%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99239%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99239%_)
                  (let ((__tmp100770
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99239%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100770))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99237%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99237%_)
                (let ((__tmp100771
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99237%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100771))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99231%_))
            (let ((_%e99234%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99231%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99234%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99234%_)
                  (let ((__tmp100772
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99234%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100772))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99231%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99231%_)
                (let ((__tmp100773
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99231%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100773))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99227%_))
            (let ((_%e99229%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99227%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99229%_))
            (macro-unbound-serial-number-exception? _%exn99227%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99223%_))
            (let ((_%e99225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99223%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99225%_)
                  (macro-unbound-serial-number-exception-arguments _%e99225%_)
                  (let ((__tmp100774
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99225%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100774))))
            (if (macro-unbound-serial-number-exception? _%exn99223%_)
                (macro-unbound-serial-number-exception-arguments _%exn99223%_)
                (let ((__tmp100775
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99223%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100775))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99217%_))
            (let ((_%e99220%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99217%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99220%_)
                  (macro-unbound-serial-number-exception-procedure _%e99220%_)
                  (let ((__tmp100776
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99220%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100776))))
            (if (macro-unbound-serial-number-exception? _%exn99217%_)
                (macro-unbound-serial-number-exception-procedure _%exn99217%_)
                (let ((__tmp100777
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99217%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100777))))))
    (define uncaught-exception?
      (lambda (_%exn99213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99213%_))
            (let ((_%e99215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99213%_ 'exception))))
              (macro-uncaught-exception? _%e99215%_))
            (macro-uncaught-exception? _%exn99213%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99209%_))
            (let ((_%e99211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99209%_ 'exception))))
              (if (macro-uncaught-exception? _%e99211%_)
                  (macro-uncaught-exception-arguments _%e99211%_)
                  (let ((__tmp100778
                         (cons 'uncaught-exception-arguments
                               (cons _%e99211%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100778))))
            (if (macro-uncaught-exception? _%exn99209%_)
                (macro-uncaught-exception-arguments _%exn99209%_)
                (let ((__tmp100779
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99209%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100779))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99205%_))
            (let ((_%e99207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99205%_ 'exception))))
              (if (macro-uncaught-exception? _%e99207%_)
                  (macro-uncaught-exception-procedure _%e99207%_)
                  (let ((__tmp100780
                         (cons 'uncaught-exception-procedure
                               (cons _%e99207%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100780))))
            (if (macro-uncaught-exception? _%exn99205%_)
                (macro-uncaught-exception-procedure _%exn99205%_)
                (let ((__tmp100781
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99205%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100781))))))
    (define uncaught-exception-reason
      (lambda (_%exn99199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99199%_))
            (let ((_%e99202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99199%_ 'exception))))
              (if (macro-uncaught-exception? _%e99202%_)
                  (macro-uncaught-exception-reason _%e99202%_)
                  (let ((__tmp100782
                         (cons 'uncaught-exception-reason
                               (cons _%e99202%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100782))))
            (if (macro-uncaught-exception? _%exn99199%_)
                (macro-uncaught-exception-reason _%exn99199%_)
                (let ((__tmp100783
                       (cons 'uncaught-exception-reason
                             (cons _%exn99199%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100783))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99195%_))
            (let ((_%e99197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99195%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99197%_))
            (macro-uninitialized-thread-exception? _%exn99195%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99191%_))
            (let ((_%e99193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99191%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99193%_)
                  (macro-uninitialized-thread-exception-arguments _%e99193%_)
                  (let ((__tmp100784
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99193%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100784))))
            (if (macro-uninitialized-thread-exception? _%exn99191%_)
                (macro-uninitialized-thread-exception-arguments _%exn99191%_)
                (let ((__tmp100785
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99191%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100785))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99185%_))
            (let ((_%e99188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99185%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99188%_)
                  (macro-uninitialized-thread-exception-procedure _%e99188%_)
                  (let ((__tmp100786
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99188%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100786))))
            (if (macro-uninitialized-thread-exception? _%exn99185%_)
                (macro-uninitialized-thread-exception-procedure _%exn99185%_)
                (let ((__tmp100787
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99185%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100787))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99181%_))
            (let ((_%e99183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99181%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99183%_))
            (macro-unknown-keyword-argument-exception? _%exn99181%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99177%_))
            (let ((_%e99179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99177%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99179%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99179%_)
                  (let ((__tmp100788
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99179%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100788))))
            (if (macro-unknown-keyword-argument-exception? _%exn99177%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99177%_)
                (let ((__tmp100789
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99177%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100789))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99171%_))
            (let ((_%e99174%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99171%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99174%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99174%_)
                  (let ((__tmp100790
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99174%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100790))))
            (if (macro-unknown-keyword-argument-exception? _%exn99171%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99171%_)
                (let ((__tmp100791
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99171%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100791))))))
    (define unterminated-process-exception?
      (lambda (_%exn99167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99167%_))
            (let ((_%e99169%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99167%_ 'exception))))
              (macro-unterminated-process-exception? _%e99169%_))
            (macro-unterminated-process-exception? _%exn99167%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99163%_))
            (let ((_%e99165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99163%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99165%_)
                  (macro-unterminated-process-exception-arguments _%e99165%_)
                  (let ((__tmp100792
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99165%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100792))))
            (if (macro-unterminated-process-exception? _%exn99163%_)
                (macro-unterminated-process-exception-arguments _%exn99163%_)
                (let ((__tmp100793
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99163%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100793))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99157%_))
            (let ((_%e99160%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99157%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99160%_)
                  (macro-unterminated-process-exception-procedure _%e99160%_)
                  (let ((__tmp100794
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99160%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100794))))
            (if (macro-unterminated-process-exception? _%exn99157%_)
                (macro-unterminated-process-exception-procedure _%exn99157%_)
                (let ((__tmp100795
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99157%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100795))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99153%_))
            (let ((_%e99155%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99153%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99155%_))
            (macro-wrong-number-of-arguments-exception? _%exn99153%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99149%_))
            (let ((_%e99151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99149%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99151%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99151%_)
                  (let ((__tmp100796
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99151%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100796))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99149%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99149%_)
                (let ((__tmp100797
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99149%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100797))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99143%_))
            (let ((_%e99146%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99143%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99146%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99146%_)
                  (let ((__tmp100798
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99146%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100798))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99143%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99143%_)
                (let ((__tmp100799
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99143%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100799))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99139%_))
            (let ((_%e99141%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99139%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99141%_))
            (macro-wrong-number-of-values-exception? _%exn99139%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99135%_))
            (let ((_%e99137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99135%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99137%_)
                  (macro-wrong-number-of-values-exception-code _%e99137%_)
                  (let ((__tmp100800
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99137%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100800))))
            (if (macro-wrong-number-of-values-exception? _%exn99135%_)
                (macro-wrong-number-of-values-exception-code _%exn99135%_)
                (let ((__tmp100801
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99135%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100801))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99131%_))
            (let ((_%e99133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99131%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99133%_)
                  (macro-wrong-number-of-values-exception-rte _%e99133%_)
                  (let ((__tmp100802
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99133%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100802))))
            (if (macro-wrong-number-of-values-exception? _%exn99131%_)
                (macro-wrong-number-of-values-exception-rte _%exn99131%_)
                (let ((__tmp100803
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99131%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100803))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99125%_))
            (let ((_%e99128%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99125%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99128%_)
                  (macro-wrong-number-of-values-exception-vals _%e99128%_)
                  (let ((__tmp100804
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99128%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100804))))
            (if (macro-wrong-number-of-values-exception? _%exn99125%_)
                (macro-wrong-number-of-values-exception-vals _%exn99125%_)
                (let ((__tmp100805
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99125%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100805))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99119%_))
            (let ((_%e99122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99119%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99122%_))
            (macro-wrong-processor-c-return-exception? _%exn99119%_))))))
