(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712251111)
  (begin
    (define Exception::t
      (let ((__tmp100653 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100653
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100643%_
        (apply make-instance Exception::t _%$args100643%_)))
    (define StackTrace::t
      (let ((__tmp100654 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100654
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100640%_
        (apply make-instance StackTrace::t _%$args100640%_)))
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
      (let ((__tmp100655 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100655
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100637%_ (apply make-instance Error::t _%$args100637%_)))
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
      (let ((__tmp100656 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100656
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100634%_
        (apply make-instance ContractViolation::t _%$args100634%_)))
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
      (let ((__tmp100657 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100657
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100631%_
        (apply make-instance RuntimeException::t _%$args100631%_)))
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
      (lambda (_%exn100626%_ _%continue100627%_)
        (let ((_%exn100629%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100626%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100629%_ _%continue100627%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100622%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100622%_ 'continuation))
                '#!void
                (let ((__tmp100658
                       (lambda (_%cont100624%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100622%_
                            'continuation
                            _%cont100624%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100658)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100622%_))))
    (define error
      (lambda (_%message100619%_ . _%irritants100620%_)
        (let ((__tmp100659
               (let ((__obj100650
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100650
                  _%message100619%_
                  'irritants:
                  _%irritants100620%_)
                 __obj100650)))
          (declare (not safe))
          (raise __tmp100659))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100591%_
               _%ctx100586100592%_
               _%contract-expr100587100594%_
               _%value100588100596%_
               _%message100598%_)
        (let* ((_%ctx100600%_
                (if (eq? _%ctx100586100592%_ absent-value)
                    '#f
                    _%ctx100586100592%_))
               (_%contract-expr100602%_
                (if (eq? _%contract-expr100587100594%_ absent-value)
                    '#f
                    _%contract-expr100587100594%_))
               (_%value100604%_
                (if (eq? _%value100588100596%_ absent-value)
                    '#f
                    _%value100588100596%_))
               (__tmp100660
                (let ((__obj100651
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100651
                   _%message100598%_
                   'where:
                   _%ctx100600%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100602%_
                               (cons 'value: (cons _%value100604%_ '())))))
                  __obj100651)))
          (declare (not safe))
          (raise __tmp100660))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100609%_ . _%args100610%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100609%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100609%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100609%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100609%_
                  'value:
                  absent-value))
               _%args100610%_)))
    (define __raise-contract-violation-error
      (lambda _%args100589100616%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100589100616%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100560%_ _%thunk100561%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100560%_))
              (let ((_%handler100565%_ _%handler100560%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100561%_))
                    (let ((_%thunk100575%_ _%thunk100561%_))
                      (declare (not safe))
                      (__with-exception-handler
                       _%handler100565%_
                       _%thunk100575%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100561%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@59.31-59.38"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100560%_)
                '#!void)))))
    (define __with-exception-handler
      (lambda (_%handler100535%_ _%thunk100536%_)
        (let ((_%handler100539%_ _%handler100535%_))
          (let* ((_%thunk100547%_ _%thunk100536%_)
                 (__tmp100661
                  (lambda (_%exn100556%_)
                    (let ((_%exn100558%_
                           (let ()
                             (declare (not safe))
                             (wrap-runtime-exception _%exn100556%_))))
                      (declare (not safe))
                      (_%handler100539%_ _%exn100558%_)))))
            (declare (not safe))
            (##with-exception-handler __tmp100661 _%thunk100547%_)))))
    (define with-catch
      (lambda (_%handler100510%_ _%thunk100511%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler100510%_))
              (let ((_%handler100515%_ _%handler100510%_))
                (if (let () (declare (not safe)) (procedure? _%thunk100511%_))
                    (let ((_%thunk100525%_ _%thunk100511%_))
                      (declare (not safe))
                      (__with-catch _%handler100515%_ _%thunk100525%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk100511%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@66.19-66.26"
                 'contract:
                 'procedure?
                 'value:
                 _%handler100510%_)
                '#!void)))))
    (define __with-catch
      (lambda (_%handler100485%_ _%thunk100486%_)
        (let ((_%handler100489%_ _%handler100485%_))
          (let* ((_%thunk100497%_ _%thunk100486%_)
                 (__tmp100662
                  (lambda (_%cont100506%_)
                    (let ((__tmp100663
                           (lambda (_%exn100508%_)
                             (let ()
                               (declare (not safe))
                               (##continuation-graft
                                _%cont100506%_
                                _%handler100489%_
                                _%exn100508%_)))))
                      (declare (not safe))
                      (__with-exception-handler
                       __tmp100663
                       _%thunk100497%_)))))
            (declare (not safe))
            (##continuation-capture __tmp100662)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100472%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn100472%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn100472%_)))
            (let () _%exn100472%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100472%_))
                (let () _%exn100472%_)
                (if (macro-exception? _%exn100472%_)
                    (let ((_%rte100480%_
                           (let ((__obj100652
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100652
                                _%exn100472%_
                                '2
                                '#f
                                '#f))
                             __obj100652)))
                      (let ((__tmp100664
                             (lambda (_%cont100482%_)
                               (let ((__tmp100665
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100482%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100480%_
                                  'continuation
                                  __tmp100665)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100664))
                      _%rte100480%_)
                    (let () _%exn100472%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj100467%_)
        (let ((_%$e100469%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj100467%_))))
          (if _%$e100469%_
              _%$e100469%_
              (let ()
                (declare (not safe))
                (error-exception? _%obj100467%_))))))
    (define error-message
      (lambda (_%obj100460%_)
        (let ((_%$e100462%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj100460%_ 'message false))))
          (if _%$e100462%_
              _%$e100462%_
              (if (let ()
                    (declare (not safe))
                    (error-exception? _%obj100460%_))
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj100460%_))
                  (let () '#f))))))
    (define error-irritants
      (lambda (_%obj100455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100455%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100455%_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _%obj100455%_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _%obj100455%_))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj100453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100453%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100453%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e100434%_ _%port100435%_)
        (let ((_%$e100437%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e100434%_ 'display-exception))))
          (if _%$e100437%_
              ((lambda (_%f100440%_) (_%f100440%_ _%e100434%_ _%port100435%_))
               _%$e100437%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e100434%_ _%port100435%_))))))
    (define display-exception__0
      (lambda (_%e100446%_)
        (let ((_%port100448%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e100446%_ _%port100448%_))))
    (define display-exception
      (lambda _g100667_
        (let ((_g100666_ (let () (declare (not safe)) (##length _g100667_))))
          (cond ((let () (declare (not safe)) (##fx= _g100666_ 1))
                 (apply (lambda (_%e100446%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e100446%_)))
                        _g100667_))
                ((let () (declare (not safe)) (##fx= _g100666_ 2))
                 (apply (lambda (_%e100450%_ _%port100451%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e100450%_ _%port100451%_)))
                        _g100667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100667_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100412%_ _%message100413%_ . _%rest100414%_)
        (let ()
          (let* ((_%self100417%_ _%self100412%_)
                 (_%message100431%_
                  (if (let () (declare (not safe)) (string? _%message100413%_))
                      _%message100413%_
                      (call-with-output-string
                       '""
                       (lambda (_%g100426100428%_)
                         (display _%message100413%_ _%g100426100428%_))))))
            (let ()
              (declare (not safe))
              (unchecked-slot-set! _%self100417%_ 'message _%message100431%_))
            (apply class-instance-init! _%self100417%_ _%rest100414%_)))))
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
      (lambda (_%self100136%_ _%port100137%_)
        (let ((_%self100140%_ _%self100136%_))
          (let ((_%tmp-port100150%_ (open-output-string))
                (_%display-error-newline100151%_
                 (> (output-port-column _%port100137%_) '0)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100150%_))
            (let ((__tmp100668
                   (lambda ()
                     (if _%display-error-newline100151%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100154%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100140%_ 'where))))
                       (if _%$e100154%_
                           (display _%$e100154%_)
                           (let () (display '"?"))))
                     (let ((__tmp100669
                            (let ((__tmp100670
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100140%_))))
                              (declare (not safe))
                              (##type-name __tmp100670))))
                       (declare (not safe))
                       (display* '" [" __tmp100669 '"]: "))
                     (let ((__tmp100671
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100140%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100671))
                     (let ((_%irritants100158%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100140%_ 'irritants))))
                       (if (let ()
                             (declare (not safe))
                             (null? _%irritants100158%_))
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100160%_)
                                (let ()
                                  (declare (not safe))
                                  (##write _%obj100160%_))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100158%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100161100163%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100140%_
                                   'continuation))))
                           (if _%cont100161100163%_
                               (let ((_%cont100166%_ _%cont100161100163%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100166%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100668
               current-output-port
               _%tmp-port100150%_))
            (let ((__tmp100672 (get-output-string _%tmp-port100150%_)))
              (declare (not safe))
              (##write-string __tmp100672 _%port100137%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99992%_ _%port99993%_)
        (let ()
          (let* ((_%self99996%_ _%self99992%_)
                 (_%tmp-port100006%_ (open-output-string)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port100006%_))
            (let ((__tmp100673
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%self99996%_ 'exception))))
              (declare (not safe))
              (##default-display-exception __tmp100673 _%tmp-port100006%_))
            (if (let () (declare (not safe)) (dump-stack-trace?))
                (let ((_%cont100007100009%_
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99996%_ 'continuation))))
                  (if _%cont100007100009%_
                      (let ((_%cont100012%_ _%cont100007100009%_))
                        (display '"--- continuation backtrace:"
                                 _%tmp-port100006%_)
                        (newline _%tmp-port100006%_)
                        (display-continuation-backtrace
                         _%cont100012%_
                         _%tmp-port100006%_))
                      '#f))
                '#!void)
            (let ((__tmp100674 (get-output-string _%tmp-port100006%_)))
              (declare (not safe))
              (##write-string __tmp100674 _%port99993%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99864%_)
        (if (macro-character-port? _%port99864%_)
            (let ((_%old-width99866%_
                   (macro-character-port-output-width _%port99864%_)))
              (macro-character-port-output-width-set!
               _%port99864%_
               (lambda (_%port99868%_) '256))
              _%old-width99866%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99861%_ _%old-width99862%_)
        (if (macro-character-port? _%port99861%_)
            (macro-character-port-output-width-set!
             _%port99861%_
             _%old-width99862%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99859%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99859%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99853%_))
            (let ((_%e99856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99853%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99856%_))
            (macro-abandoned-mutex-exception? _%exn99853%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99849%_))
            (let ((_%e99851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99849%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99851%_))
            (macro-cfun-conversion-exception? _%exn99849%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99845%_))
            (let ((_%e99847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99845%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99847%_)
                  (macro-cfun-conversion-exception-arguments _%e99847%_)
                  (let ((__tmp100675
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99847%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100675))))
            (if (macro-cfun-conversion-exception? _%exn99845%_)
                (macro-cfun-conversion-exception-arguments _%exn99845%_)
                (let ((__tmp100676
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99845%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100676))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99841%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99841%_))
            (let ((_%e99843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99841%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99843%_)
                  (macro-cfun-conversion-exception-code _%e99843%_)
                  (let ((__tmp100677
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99843%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100677))))
            (if (macro-cfun-conversion-exception? _%exn99841%_)
                (macro-cfun-conversion-exception-code _%exn99841%_)
                (let ((__tmp100678
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99841%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100678))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99837%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99837%_))
            (let ((_%e99839%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99837%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99839%_)
                  (macro-cfun-conversion-exception-message _%e99839%_)
                  (let ((__tmp100679
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99839%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100679))))
            (if (macro-cfun-conversion-exception? _%exn99837%_)
                (macro-cfun-conversion-exception-message _%exn99837%_)
                (let ((__tmp100680
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99837%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100680))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99831%_))
            (let ((_%e99834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99831%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99834%_)
                  (macro-cfun-conversion-exception-procedure _%e99834%_)
                  (let ((__tmp100681
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99834%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100681))))
            (if (macro-cfun-conversion-exception? _%exn99831%_)
                (macro-cfun-conversion-exception-procedure _%exn99831%_)
                (let ((__tmp100682
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99831%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100682))))))
    (define datum-parsing-exception?
      (lambda (_%exn99827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99827%_))
            (let ((_%e99829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99827%_ 'exception))))
              (macro-datum-parsing-exception? _%e99829%_))
            (macro-datum-parsing-exception? _%exn99827%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99823%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99823%_))
            (let ((_%e99825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99823%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99825%_)
                  (macro-datum-parsing-exception-kind _%e99825%_)
                  (let ((__tmp100683
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99825%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100683))))
            (if (macro-datum-parsing-exception? _%exn99823%_)
                (macro-datum-parsing-exception-kind _%exn99823%_)
                (let ((__tmp100684
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99823%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100684))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99819%_))
            (let ((_%e99821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99819%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99821%_)
                  (macro-datum-parsing-exception-parameters _%e99821%_)
                  (let ((__tmp100685
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99821%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100685))))
            (if (macro-datum-parsing-exception? _%exn99819%_)
                (macro-datum-parsing-exception-parameters _%exn99819%_)
                (let ((__tmp100686
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99819%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100686))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99813%_))
            (let ((_%e99816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99813%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99816%_)
                  (macro-datum-parsing-exception-readenv _%e99816%_)
                  (let ((__tmp100687
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99816%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100687))))
            (if (macro-datum-parsing-exception? _%exn99813%_)
                (macro-datum-parsing-exception-readenv _%exn99813%_)
                (let ((__tmp100688
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99813%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100688))))))
    (define deadlock-exception?
      (lambda (_%exn99807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99807%_))
            (let ((_%e99810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99807%_ 'exception))))
              (macro-deadlock-exception? _%e99810%_))
            (macro-deadlock-exception? _%exn99807%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99803%_))
            (let ((_%e99805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99803%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99805%_))
            (macro-divide-by-zero-exception? _%exn99803%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99799%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99799%_))
            (let ((_%e99801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99799%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99801%_)
                  (macro-divide-by-zero-exception-arguments _%e99801%_)
                  (let ((__tmp100689
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99801%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100689))))
            (if (macro-divide-by-zero-exception? _%exn99799%_)
                (macro-divide-by-zero-exception-arguments _%exn99799%_)
                (let ((__tmp100690
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99799%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100690))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99793%_))
            (let ((_%e99796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99793%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99796%_)
                  (macro-divide-by-zero-exception-procedure _%e99796%_)
                  (let ((__tmp100691
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99796%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100691))))
            (if (macro-divide-by-zero-exception? _%exn99793%_)
                (macro-divide-by-zero-exception-procedure _%exn99793%_)
                (let ((__tmp100692
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99793%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100692))))))
    (define error-exception?
      (lambda (_%exn99789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99789%_))
            (let ((_%e99791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99789%_ 'exception))))
              (macro-error-exception? _%e99791%_))
            (macro-error-exception? _%exn99789%_))))
    (define error-exception-message
      (lambda (_%exn99785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99785%_))
            (let ((_%e99787%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99785%_ 'exception))))
              (if (macro-error-exception? _%e99787%_)
                  (macro-error-exception-message _%e99787%_)
                  (let ((__tmp100693
                         (cons 'error-exception-message
                               (cons _%e99787%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100693))))
            (if (macro-error-exception? _%exn99785%_)
                (macro-error-exception-message _%exn99785%_)
                (let ((__tmp100694
                       (cons 'error-exception-message
                             (cons _%exn99785%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100694))))))
    (define error-exception-parameters
      (lambda (_%exn99779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99779%_))
            (let ((_%e99782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99779%_ 'exception))))
              (if (macro-error-exception? _%e99782%_)
                  (macro-error-exception-parameters _%e99782%_)
                  (let ((__tmp100695
                         (cons 'error-exception-parameters
                               (cons _%e99782%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100695))))
            (if (macro-error-exception? _%exn99779%_)
                (macro-error-exception-parameters _%exn99779%_)
                (let ((__tmp100696
                       (cons 'error-exception-parameters
                             (cons _%exn99779%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100696))))))
    (define expression-parsing-exception?
      (lambda (_%exn99775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99775%_))
            (let ((_%e99777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99775%_ 'exception))))
              (macro-expression-parsing-exception? _%e99777%_))
            (macro-expression-parsing-exception? _%exn99775%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99771%_))
            (let ((_%e99773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99771%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99773%_)
                  (macro-expression-parsing-exception-kind _%e99773%_)
                  (let ((__tmp100697
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99773%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100697))))
            (if (macro-expression-parsing-exception? _%exn99771%_)
                (macro-expression-parsing-exception-kind _%exn99771%_)
                (let ((__tmp100698
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99771%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100698))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99767%_))
            (let ((_%e99769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99767%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99769%_)
                  (macro-expression-parsing-exception-parameters _%e99769%_)
                  (let ((__tmp100699
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99769%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100699))))
            (if (macro-expression-parsing-exception? _%exn99767%_)
                (macro-expression-parsing-exception-parameters _%exn99767%_)
                (let ((__tmp100700
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99767%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100700))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99761%_))
            (let ((_%e99764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99761%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99764%_)
                  (macro-expression-parsing-exception-source _%e99764%_)
                  (let ((__tmp100701
                         (cons 'expression-parsing-exception-source
                               (cons _%e99764%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100701))))
            (if (macro-expression-parsing-exception? _%exn99761%_)
                (macro-expression-parsing-exception-source _%exn99761%_)
                (let ((__tmp100702
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99761%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100702))))))
    (define file-exists-exception?
      (lambda (_%exn99757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99757%_))
            (let ((_%e99759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99757%_ 'exception))))
              (macro-file-exists-exception? _%e99759%_))
            (macro-file-exists-exception? _%exn99757%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99753%_))
            (let ((_%e99755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99753%_ 'exception))))
              (if (macro-file-exists-exception? _%e99755%_)
                  (macro-file-exists-exception-arguments _%e99755%_)
                  (let ((__tmp100703
                         (cons 'file-exists-exception-arguments
                               (cons _%e99755%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100703))))
            (if (macro-file-exists-exception? _%exn99753%_)
                (macro-file-exists-exception-arguments _%exn99753%_)
                (let ((__tmp100704
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99753%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100704))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99747%_))
            (let ((_%e99750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99747%_ 'exception))))
              (if (macro-file-exists-exception? _%e99750%_)
                  (macro-file-exists-exception-procedure _%e99750%_)
                  (let ((__tmp100705
                         (cons 'file-exists-exception-procedure
                               (cons _%e99750%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100705))))
            (if (macro-file-exists-exception? _%exn99747%_)
                (macro-file-exists-exception-procedure _%exn99747%_)
                (let ((__tmp100706
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99747%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100706))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99743%_))
            (let ((_%e99745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99743%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99745%_))
            (macro-fixnum-overflow-exception? _%exn99743%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99739%_))
            (let ((_%e99741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99739%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99741%_)
                  (macro-fixnum-overflow-exception-arguments _%e99741%_)
                  (let ((__tmp100707
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99741%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100707))))
            (if (macro-fixnum-overflow-exception? _%exn99739%_)
                (macro-fixnum-overflow-exception-arguments _%exn99739%_)
                (let ((__tmp100708
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99739%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100708))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99733%_))
            (let ((_%e99736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99733%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99736%_)
                  (macro-fixnum-overflow-exception-procedure _%e99736%_)
                  (let ((__tmp100709
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99736%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100709))))
            (if (macro-fixnum-overflow-exception? _%exn99733%_)
                (macro-fixnum-overflow-exception-procedure _%exn99733%_)
                (let ((__tmp100710
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99733%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100710))))))
    (define heap-overflow-exception?
      (lambda (_%exn99727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99727%_))
            (let ((_%e99730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99727%_ 'exception))))
              (macro-heap-overflow-exception? _%e99730%_))
            (macro-heap-overflow-exception? _%exn99727%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99723%_))
            (let ((_%e99725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99723%_ 'exception))))
              (macro-inactive-thread-exception? _%e99725%_))
            (macro-inactive-thread-exception? _%exn99723%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99719%_))
            (let ((_%e99721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99719%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99721%_)
                  (macro-inactive-thread-exception-arguments _%e99721%_)
                  (let ((__tmp100711
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99721%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100711))))
            (if (macro-inactive-thread-exception? _%exn99719%_)
                (macro-inactive-thread-exception-arguments _%exn99719%_)
                (let ((__tmp100712
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99719%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100712))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99713%_))
            (let ((_%e99716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99713%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99716%_)
                  (macro-inactive-thread-exception-procedure _%e99716%_)
                  (let ((__tmp100713
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99716%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100713))))
            (if (macro-inactive-thread-exception? _%exn99713%_)
                (macro-inactive-thread-exception-procedure _%exn99713%_)
                (let ((__tmp100714
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99713%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100714))))))
    (define initialized-thread-exception?
      (lambda (_%exn99709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99709%_))
            (let ((_%e99711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99709%_ 'exception))))
              (macro-initialized-thread-exception? _%e99711%_))
            (macro-initialized-thread-exception? _%exn99709%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99705%_))
            (let ((_%e99707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99705%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99707%_)
                  (macro-initialized-thread-exception-arguments _%e99707%_)
                  (let ((__tmp100715
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99707%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100715))))
            (if (macro-initialized-thread-exception? _%exn99705%_)
                (macro-initialized-thread-exception-arguments _%exn99705%_)
                (let ((__tmp100716
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99705%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100716))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99699%_))
            (let ((_%e99702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99699%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99702%_)
                  (macro-initialized-thread-exception-procedure _%e99702%_)
                  (let ((__tmp100717
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99702%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100717))))
            (if (macro-initialized-thread-exception? _%exn99699%_)
                (macro-initialized-thread-exception-procedure _%exn99699%_)
                (let ((__tmp100718
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99699%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100718))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99695%_))
            (let ((_%e99697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99695%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99697%_))
            (macro-invalid-hash-number-exception? _%exn99695%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99691%_))
            (let ((_%e99693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99691%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99693%_)
                  (macro-invalid-hash-number-exception-arguments _%e99693%_)
                  (let ((__tmp100719
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99693%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100719))))
            (if (macro-invalid-hash-number-exception? _%exn99691%_)
                (macro-invalid-hash-number-exception-arguments _%exn99691%_)
                (let ((__tmp100720
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99691%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100720))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99685%_))
            (let ((_%e99688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99685%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99688%_)
                  (macro-invalid-hash-number-exception-procedure _%e99688%_)
                  (let ((__tmp100721
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99688%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100721))))
            (if (macro-invalid-hash-number-exception? _%exn99685%_)
                (macro-invalid-hash-number-exception-procedure _%exn99685%_)
                (let ((__tmp100722
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99685%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100722))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99681%_))
            (let ((_%e99683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99681%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99683%_))
            (macro-invalid-utf8-encoding-exception? _%exn99681%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99677%_))
            (let ((_%e99679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99677%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99679%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99679%_)
                  (let ((__tmp100723
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99679%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100723))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99677%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99677%_)
                (let ((__tmp100724
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99677%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100724))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99671%_))
            (let ((_%e99674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99671%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99674%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99674%_)
                  (let ((__tmp100725
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99674%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100725))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99671%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99671%_)
                (let ((__tmp100726
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99671%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100726))))))
    (define join-timeout-exception?
      (lambda (_%exn99667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99667%_))
            (let ((_%e99669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99667%_ 'exception))))
              (macro-join-timeout-exception? _%e99669%_))
            (macro-join-timeout-exception? _%exn99667%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99663%_))
            (let ((_%e99665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99663%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99665%_)
                  (macro-join-timeout-exception-arguments _%e99665%_)
                  (let ((__tmp100727
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99665%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100727))))
            (if (macro-join-timeout-exception? _%exn99663%_)
                (macro-join-timeout-exception-arguments _%exn99663%_)
                (let ((__tmp100728
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99663%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100728))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99657%_))
            (let ((_%e99660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99657%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99660%_)
                  (macro-join-timeout-exception-procedure _%e99660%_)
                  (let ((__tmp100729
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99660%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100729))))
            (if (macro-join-timeout-exception? _%exn99657%_)
                (macro-join-timeout-exception-procedure _%exn99657%_)
                (let ((__tmp100730
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99657%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100730))))))
    (define keyword-expected-exception?
      (lambda (_%exn99653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99653%_))
            (let ((_%e99655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99653%_ 'exception))))
              (macro-keyword-expected-exception? _%e99655%_))
            (macro-keyword-expected-exception? _%exn99653%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99649%_))
            (let ((_%e99651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99649%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99651%_)
                  (macro-keyword-expected-exception-arguments _%e99651%_)
                  (let ((__tmp100731
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99651%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100731))))
            (if (macro-keyword-expected-exception? _%exn99649%_)
                (macro-keyword-expected-exception-arguments _%exn99649%_)
                (let ((__tmp100732
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99649%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100732))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99643%_))
            (let ((_%e99646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99643%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99646%_)
                  (macro-keyword-expected-exception-procedure _%e99646%_)
                  (let ((__tmp100733
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99646%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100733))))
            (if (macro-keyword-expected-exception? _%exn99643%_)
                (macro-keyword-expected-exception-procedure _%exn99643%_)
                (let ((__tmp100734
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99643%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100734))))))
    (define length-mismatch-exception?
      (lambda (_%exn99639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99639%_))
            (let ((_%e99641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99639%_ 'exception))))
              (macro-length-mismatch-exception? _%e99641%_))
            (macro-length-mismatch-exception? _%exn99639%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99635%_))
            (let ((_%e99637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99635%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99637%_)
                  (macro-length-mismatch-exception-arg-id _%e99637%_)
                  (let ((__tmp100735
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99637%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100735))))
            (if (macro-length-mismatch-exception? _%exn99635%_)
                (macro-length-mismatch-exception-arg-id _%exn99635%_)
                (let ((__tmp100736
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99635%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100736))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99631%_))
            (let ((_%e99633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99631%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99633%_)
                  (macro-length-mismatch-exception-arguments _%e99633%_)
                  (let ((__tmp100737
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99633%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100737))))
            (if (macro-length-mismatch-exception? _%exn99631%_)
                (macro-length-mismatch-exception-arguments _%exn99631%_)
                (let ((__tmp100738
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99631%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100738))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99625%_))
            (let ((_%e99628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99625%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99628%_)
                  (macro-length-mismatch-exception-procedure _%e99628%_)
                  (let ((__tmp100739
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99628%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100739))))
            (if (macro-length-mismatch-exception? _%exn99625%_)
                (macro-length-mismatch-exception-procedure _%exn99625%_)
                (let ((__tmp100740
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99625%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100740))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99621%_))
            (let ((_%e99623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99621%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99623%_))
            (macro-mailbox-receive-timeout-exception? _%exn99621%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99617%_))
            (let ((_%e99619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99617%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99619%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99619%_)
                  (let ((__tmp100741
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99619%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100741))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99617%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99617%_)
                (let ((__tmp100742
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99617%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100742))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99611%_))
            (let ((_%e99614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99611%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99614%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99614%_)
                  (let ((__tmp100743
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99614%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100743))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99611%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99611%_)
                (let ((__tmp100744
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99611%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100744))))))
    (define module-not-found-exception?
      (lambda (_%exn99607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99607%_))
            (let ((_%e99609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99607%_ 'exception))))
              (macro-module-not-found-exception? _%e99609%_))
            (macro-module-not-found-exception? _%exn99607%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99603%_))
            (let ((_%e99605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99603%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99605%_)
                  (macro-module-not-found-exception-arguments _%e99605%_)
                  (let ((__tmp100745
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99605%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100745))))
            (if (macro-module-not-found-exception? _%exn99603%_)
                (macro-module-not-found-exception-arguments _%exn99603%_)
                (let ((__tmp100746
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99603%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100746))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99597%_))
            (let ((_%e99600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99597%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99600%_)
                  (macro-module-not-found-exception-procedure _%e99600%_)
                  (let ((__tmp100747
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99600%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100747))))
            (if (macro-module-not-found-exception? _%exn99597%_)
                (macro-module-not-found-exception-procedure _%exn99597%_)
                (let ((__tmp100748
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99597%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100748))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99591%_))
            (let ((_%e99594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99591%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99594%_))
            (macro-multiple-c-return-exception? _%exn99591%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99587%_))
            (let ((_%e99589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99587%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99589%_))
            (macro-no-such-file-or-directory-exception? _%exn99587%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99583%_))
            (let ((_%e99585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99583%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99585%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99585%_)
                  (let ((__tmp100749
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99585%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100749))))
            (if (macro-no-such-file-or-directory-exception? _%exn99583%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99583%_)
                (let ((__tmp100750
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99583%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100750))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99577%_))
            (let ((_%e99580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99577%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99580%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99580%_)
                  (let ((__tmp100751
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99580%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100751))))
            (if (macro-no-such-file-or-directory-exception? _%exn99577%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99577%_)
                (let ((__tmp100752
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99577%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100752))))))
    (define noncontinuable-exception?
      (lambda (_%exn99573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99573%_))
            (let ((_%e99575%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99573%_ 'exception))))
              (macro-noncontinuable-exception? _%e99575%_))
            (macro-noncontinuable-exception? _%exn99573%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99567%_))
            (let ((_%e99570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99567%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99570%_)
                  (macro-noncontinuable-exception-reason _%e99570%_)
                  (let ((__tmp100753
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99570%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100753))))
            (if (macro-noncontinuable-exception? _%exn99567%_)
                (macro-noncontinuable-exception-reason _%exn99567%_)
                (let ((__tmp100754
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99567%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100754))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99563%_))
            (let ((_%e99565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99563%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99565%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99563%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99559%_))
            (let ((_%e99561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99559%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99561%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99561%_)
                  (let ((__tmp100755
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99561%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100755))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99559%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99559%_)
                (let ((__tmp100756
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99559%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100756))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99553%_))
            (let ((_%e99556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99553%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99556%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99556%_)
                  (let ((__tmp100757
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99556%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100757))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99553%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99553%_)
                (let ((__tmp100758
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99553%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100758))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99549%_))
            (let ((_%e99551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99549%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99551%_))
            (macro-nonprocedure-operator-exception? _%exn99549%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99545%_))
            (let ((_%e99547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99545%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99547%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99547%_)
                  (let ((__tmp100759
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99547%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100759))))
            (if (macro-nonprocedure-operator-exception? _%exn99545%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99545%_)
                (let ((__tmp100760
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99545%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100760))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99541%_))
            (let ((_%e99543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99541%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99543%_)
                  (macro-nonprocedure-operator-exception-code _%e99543%_)
                  (let ((__tmp100761
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99543%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100761))))
            (if (macro-nonprocedure-operator-exception? _%exn99541%_)
                (macro-nonprocedure-operator-exception-code _%exn99541%_)
                (let ((__tmp100762
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99541%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100762))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99537%_))
            (let ((_%e99539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99537%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99539%_)
                  (macro-nonprocedure-operator-exception-operator _%e99539%_)
                  (let ((__tmp100763
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99539%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100763))))
            (if (macro-nonprocedure-operator-exception? _%exn99537%_)
                (macro-nonprocedure-operator-exception-operator _%exn99537%_)
                (let ((__tmp100764
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99537%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100764))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99531%_))
            (let ((_%e99534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99531%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99534%_)
                  (macro-nonprocedure-operator-exception-rte _%e99534%_)
                  (let ((__tmp100765
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99534%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100765))))
            (if (macro-nonprocedure-operator-exception? _%exn99531%_)
                (macro-nonprocedure-operator-exception-rte _%exn99531%_)
                (let ((__tmp100766
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99531%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100766))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99527%_))
            (let ((_%e99529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99527%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99529%_))
            (macro-not-in-compilation-context-exception? _%exn99527%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99523%_))
            (let ((_%e99525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99523%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99525%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99525%_)
                  (let ((__tmp100767
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99525%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100767))))
            (if (macro-not-in-compilation-context-exception? _%exn99523%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99523%_)
                (let ((__tmp100768
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99523%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100768))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99517%_))
            (let ((_%e99520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99517%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99520%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99520%_)
                  (let ((__tmp100769
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99520%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100769))))
            (if (macro-not-in-compilation-context-exception? _%exn99517%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99517%_)
                (let ((__tmp100770
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99517%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100770))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99513%_))
            (let ((_%e99515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99513%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99515%_))
            (macro-number-of-arguments-limit-exception? _%exn99513%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99509%_))
            (let ((_%e99511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99509%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99511%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99511%_)
                  (let ((__tmp100771
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99511%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100771))))
            (if (macro-number-of-arguments-limit-exception? _%exn99509%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99509%_)
                (let ((__tmp100772
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99509%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100772))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99503%_))
            (let ((_%e99506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99503%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99506%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99506%_)
                  (let ((__tmp100773
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99506%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100773))))
            (if (macro-number-of-arguments-limit-exception? _%exn99503%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99503%_)
                (let ((__tmp100774
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99503%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100774))))))
    (define os-exception?
      (lambda (_%exn99499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99499%_))
            (let ((_%e99501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99499%_ 'exception))))
              (macro-os-exception? _%e99501%_))
            (macro-os-exception? _%exn99499%_))))
    (define os-exception-arguments
      (lambda (_%exn99495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99495%_))
            (let ((_%e99497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99495%_ 'exception))))
              (if (macro-os-exception? _%e99497%_)
                  (macro-os-exception-arguments _%e99497%_)
                  (let ((__tmp100775
                         (cons 'os-exception-arguments (cons _%e99497%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100775))))
            (if (macro-os-exception? _%exn99495%_)
                (macro-os-exception-arguments _%exn99495%_)
                (let ((__tmp100776
                       (cons 'os-exception-arguments (cons _%exn99495%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100776))))))
    (define os-exception-code
      (lambda (_%exn99491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99491%_))
            (let ((_%e99493%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99491%_ 'exception))))
              (if (macro-os-exception? _%e99493%_)
                  (macro-os-exception-code _%e99493%_)
                  (let ((__tmp100777
                         (cons 'os-exception-code (cons _%e99493%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100777))))
            (if (macro-os-exception? _%exn99491%_)
                (macro-os-exception-code _%exn99491%_)
                (let ((__tmp100778
                       (cons 'os-exception-code (cons _%exn99491%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100778))))))
    (define os-exception-message
      (lambda (_%exn99487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99487%_))
            (let ((_%e99489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99487%_ 'exception))))
              (if (macro-os-exception? _%e99489%_)
                  (macro-os-exception-message _%e99489%_)
                  (let ((__tmp100779
                         (cons 'os-exception-message (cons _%e99489%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100779))))
            (if (macro-os-exception? _%exn99487%_)
                (macro-os-exception-message _%exn99487%_)
                (let ((__tmp100780
                       (cons 'os-exception-message (cons _%exn99487%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100780))))))
    (define os-exception-procedure
      (lambda (_%exn99481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99481%_))
            (let ((_%e99484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99481%_ 'exception))))
              (if (macro-os-exception? _%e99484%_)
                  (macro-os-exception-procedure _%e99484%_)
                  (let ((__tmp100781
                         (cons 'os-exception-procedure (cons _%e99484%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100781))))
            (if (macro-os-exception? _%exn99481%_)
                (macro-os-exception-procedure _%exn99481%_)
                (let ((__tmp100782
                       (cons 'os-exception-procedure (cons _%exn99481%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100782))))))
    (define permission-denied-exception?
      (lambda (_%exn99477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99477%_))
            (let ((_%e99479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99477%_ 'exception))))
              (macro-permission-denied-exception? _%e99479%_))
            (macro-permission-denied-exception? _%exn99477%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99473%_))
            (let ((_%e99475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99473%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99475%_)
                  (macro-permission-denied-exception-arguments _%e99475%_)
                  (let ((__tmp100783
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99475%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100783))))
            (if (macro-permission-denied-exception? _%exn99473%_)
                (macro-permission-denied-exception-arguments _%exn99473%_)
                (let ((__tmp100784
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99473%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100784))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn99467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99467%_))
            (let ((_%e99470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99467%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99470%_)
                  (macro-permission-denied-exception-procedure _%e99470%_)
                  (let ((__tmp100785
                         (cons 'permission-denied-exception-procedure
                               (cons _%e99470%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100785))))
            (if (macro-permission-denied-exception? _%exn99467%_)
                (macro-permission-denied-exception-procedure _%exn99467%_)
                (let ((__tmp100786
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn99467%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100786))))))
    (define range-exception?
      (lambda (_%exn99463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99463%_))
            (let ((_%e99465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99463%_ 'exception))))
              (macro-range-exception? _%e99465%_))
            (macro-range-exception? _%exn99463%_))))
    (define range-exception-arg-id
      (lambda (_%exn99459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99459%_))
            (let ((_%e99461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99459%_ 'exception))))
              (if (macro-range-exception? _%e99461%_)
                  (macro-range-exception-arg-id _%e99461%_)
                  (let ((__tmp100787
                         (cons 'range-exception-arg-id (cons _%e99461%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100787))))
            (if (macro-range-exception? _%exn99459%_)
                (macro-range-exception-arg-id _%exn99459%_)
                (let ((__tmp100788
                       (cons 'range-exception-arg-id (cons _%exn99459%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100788))))))
    (define range-exception-arguments
      (lambda (_%exn99455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99455%_))
            (let ((_%e99457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99455%_ 'exception))))
              (if (macro-range-exception? _%e99457%_)
                  (macro-range-exception-arguments _%e99457%_)
                  (let ((__tmp100789
                         (cons 'range-exception-arguments
                               (cons _%e99457%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100789))))
            (if (macro-range-exception? _%exn99455%_)
                (macro-range-exception-arguments _%exn99455%_)
                (let ((__tmp100790
                       (cons 'range-exception-arguments
                             (cons _%exn99455%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100790))))))
    (define range-exception-procedure
      (lambda (_%exn99449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99449%_))
            (let ((_%e99452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99449%_ 'exception))))
              (if (macro-range-exception? _%e99452%_)
                  (macro-range-exception-procedure _%e99452%_)
                  (let ((__tmp100791
                         (cons 'range-exception-procedure
                               (cons _%e99452%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100791))))
            (if (macro-range-exception? _%exn99449%_)
                (macro-range-exception-procedure _%exn99449%_)
                (let ((__tmp100792
                       (cons 'range-exception-procedure
                             (cons _%exn99449%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100792))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn99445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99445%_))
            (let ((_%e99447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99445%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e99447%_))
            (macro-rpc-remote-error-exception? _%exn99445%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn99441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99441%_))
            (let ((_%e99443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99441%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99443%_)
                  (macro-rpc-remote-error-exception-arguments _%e99443%_)
                  (let ((__tmp100793
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e99443%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100793))))
            (if (macro-rpc-remote-error-exception? _%exn99441%_)
                (macro-rpc-remote-error-exception-arguments _%exn99441%_)
                (let ((__tmp100794
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn99441%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100794))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn99437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99437%_))
            (let ((_%e99439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99437%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99439%_)
                  (macro-rpc-remote-error-exception-message _%e99439%_)
                  (let ((__tmp100795
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e99439%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100795))))
            (if (macro-rpc-remote-error-exception? _%exn99437%_)
                (macro-rpc-remote-error-exception-message _%exn99437%_)
                (let ((__tmp100796
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn99437%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100796))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn99431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99431%_))
            (let ((_%e99434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99431%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99434%_)
                  (macro-rpc-remote-error-exception-procedure _%e99434%_)
                  (let ((__tmp100797
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e99434%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100797))))
            (if (macro-rpc-remote-error-exception? _%exn99431%_)
                (macro-rpc-remote-error-exception-procedure _%exn99431%_)
                (let ((__tmp100798
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn99431%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100798))))))
    (define scheduler-exception?
      (lambda (_%exn99427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99427%_))
            (let ((_%e99429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99427%_ 'exception))))
              (macro-scheduler-exception? _%e99429%_))
            (macro-scheduler-exception? _%exn99427%_))))
    (define scheduler-exception-reason
      (lambda (_%exn99421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99421%_))
            (let ((_%e99424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99421%_ 'exception))))
              (if (macro-scheduler-exception? _%e99424%_)
                  (macro-scheduler-exception-reason _%e99424%_)
                  (let ((__tmp100799
                         (cons 'scheduler-exception-reason
                               (cons _%e99424%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100799))))
            (if (macro-scheduler-exception? _%exn99421%_)
                (macro-scheduler-exception-reason _%exn99421%_)
                (let ((__tmp100800
                       (cons 'scheduler-exception-reason
                             (cons _%exn99421%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100800))))))
    (define sfun-conversion-exception?
      (lambda (_%exn99417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99417%_))
            (let ((_%e99419%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99417%_ 'exception))))
              (macro-sfun-conversion-exception? _%e99419%_))
            (macro-sfun-conversion-exception? _%exn99417%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn99413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99413%_))
            (let ((_%e99415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99413%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99415%_)
                  (macro-sfun-conversion-exception-arguments _%e99415%_)
                  (let ((__tmp100801
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e99415%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100801))))
            (if (macro-sfun-conversion-exception? _%exn99413%_)
                (macro-sfun-conversion-exception-arguments _%exn99413%_)
                (let ((__tmp100802
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn99413%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100802))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn99409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99409%_))
            (let ((_%e99411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99409%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99411%_)
                  (macro-sfun-conversion-exception-code _%e99411%_)
                  (let ((__tmp100803
                         (cons 'sfun-conversion-exception-code
                               (cons _%e99411%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100803))))
            (if (macro-sfun-conversion-exception? _%exn99409%_)
                (macro-sfun-conversion-exception-code _%exn99409%_)
                (let ((__tmp100804
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn99409%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100804))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn99405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99405%_))
            (let ((_%e99407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99405%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99407%_)
                  (macro-sfun-conversion-exception-message _%e99407%_)
                  (let ((__tmp100805
                         (cons 'sfun-conversion-exception-message
                               (cons _%e99407%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100805))))
            (if (macro-sfun-conversion-exception? _%exn99405%_)
                (macro-sfun-conversion-exception-message _%exn99405%_)
                (let ((__tmp100806
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn99405%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100806))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn99399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99399%_))
            (let ((_%e99402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99399%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99402%_)
                  (macro-sfun-conversion-exception-procedure _%e99402%_)
                  (let ((__tmp100807
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e99402%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100807))))
            (if (macro-sfun-conversion-exception? _%exn99399%_)
                (macro-sfun-conversion-exception-procedure _%exn99399%_)
                (let ((__tmp100808
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn99399%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100808))))))
    (define stack-overflow-exception?
      (lambda (_%exn99393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99393%_))
            (let ((_%e99396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99393%_ 'exception))))
              (macro-stack-overflow-exception? _%e99396%_))
            (macro-stack-overflow-exception? _%exn99393%_))))
    (define started-thread-exception?
      (lambda (_%exn99389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99389%_))
            (let ((_%e99391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99389%_ 'exception))))
              (macro-started-thread-exception? _%e99391%_))
            (macro-started-thread-exception? _%exn99389%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn99385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99385%_))
            (let ((_%e99387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99385%_ 'exception))))
              (if (macro-started-thread-exception? _%e99387%_)
                  (macro-started-thread-exception-arguments _%e99387%_)
                  (let ((__tmp100809
                         (cons 'started-thread-exception-arguments
                               (cons _%e99387%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100809))))
            (if (macro-started-thread-exception? _%exn99385%_)
                (macro-started-thread-exception-arguments _%exn99385%_)
                (let ((__tmp100810
                       (cons 'started-thread-exception-arguments
                             (cons _%exn99385%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100810))))))
    (define started-thread-exception-procedure
      (lambda (_%exn99379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99379%_))
            (let ((_%e99382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99379%_ 'exception))))
              (if (macro-started-thread-exception? _%e99382%_)
                  (macro-started-thread-exception-procedure _%e99382%_)
                  (let ((__tmp100811
                         (cons 'started-thread-exception-procedure
                               (cons _%e99382%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100811))))
            (if (macro-started-thread-exception? _%exn99379%_)
                (macro-started-thread-exception-procedure _%exn99379%_)
                (let ((__tmp100812
                       (cons 'started-thread-exception-procedure
                             (cons _%exn99379%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100812))))))
    (define terminated-thread-exception?
      (lambda (_%exn99375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99375%_))
            (let ((_%e99377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99375%_ 'exception))))
              (macro-terminated-thread-exception? _%e99377%_))
            (macro-terminated-thread-exception? _%exn99375%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn99371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99371%_))
            (let ((_%e99373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99371%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99373%_)
                  (macro-terminated-thread-exception-arguments _%e99373%_)
                  (let ((__tmp100813
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e99373%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100813))))
            (if (macro-terminated-thread-exception? _%exn99371%_)
                (macro-terminated-thread-exception-arguments _%exn99371%_)
                (let ((__tmp100814
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn99371%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100814))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn99365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99365%_))
            (let ((_%e99368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99365%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99368%_)
                  (macro-terminated-thread-exception-procedure _%e99368%_)
                  (let ((__tmp100815
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e99368%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100815))))
            (if (macro-terminated-thread-exception? _%exn99365%_)
                (macro-terminated-thread-exception-procedure _%exn99365%_)
                (let ((__tmp100816
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn99365%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100816))))))
    (define type-exception?
      (lambda (_%exn99361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99361%_))
            (let ((_%e99363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99361%_ 'exception))))
              (macro-type-exception? _%e99363%_))
            (macro-type-exception? _%exn99361%_))))
    (define type-exception-arg-id
      (lambda (_%exn99357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99357%_))
            (let ((_%e99359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99357%_ 'exception))))
              (if (macro-type-exception? _%e99359%_)
                  (macro-type-exception-arg-id _%e99359%_)
                  (let ((__tmp100817
                         (cons 'type-exception-arg-id (cons _%e99359%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100817))))
            (if (macro-type-exception? _%exn99357%_)
                (macro-type-exception-arg-id _%exn99357%_)
                (let ((__tmp100818
                       (cons 'type-exception-arg-id (cons _%exn99357%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100818))))))
    (define type-exception-arguments
      (lambda (_%exn99353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99353%_))
            (let ((_%e99355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99353%_ 'exception))))
              (if (macro-type-exception? _%e99355%_)
                  (macro-type-exception-arguments _%e99355%_)
                  (let ((__tmp100819
                         (cons 'type-exception-arguments
                               (cons _%e99355%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100819))))
            (if (macro-type-exception? _%exn99353%_)
                (macro-type-exception-arguments _%exn99353%_)
                (let ((__tmp100820
                       (cons 'type-exception-arguments
                             (cons _%exn99353%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100820))))))
    (define type-exception-procedure
      (lambda (_%exn99349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99349%_))
            (let ((_%e99351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99349%_ 'exception))))
              (if (macro-type-exception? _%e99351%_)
                  (macro-type-exception-procedure _%e99351%_)
                  (let ((__tmp100821
                         (cons 'type-exception-procedure
                               (cons _%e99351%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100821))))
            (if (macro-type-exception? _%exn99349%_)
                (macro-type-exception-procedure _%exn99349%_)
                (let ((__tmp100822
                       (cons 'type-exception-procedure
                             (cons _%exn99349%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100822))))))
    (define type-exception-type-id
      (lambda (_%exn99343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99343%_))
            (let ((_%e99346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99343%_ 'exception))))
              (if (macro-type-exception? _%e99346%_)
                  (macro-type-exception-type-id _%e99346%_)
                  (let ((__tmp100823
                         (cons 'type-exception-type-id (cons _%e99346%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100823))))
            (if (macro-type-exception? _%exn99343%_)
                (macro-type-exception-type-id _%exn99343%_)
                (let ((__tmp100824
                       (cons 'type-exception-type-id (cons _%exn99343%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100824))))))
    (define unbound-global-exception?
      (lambda (_%exn99339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99339%_))
            (let ((_%e99341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99339%_ 'exception))))
              (macro-unbound-global-exception? _%e99341%_))
            (macro-unbound-global-exception? _%exn99339%_))))
    (define unbound-global-exception-code
      (lambda (_%exn99335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99335%_))
            (let ((_%e99337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99335%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99337%_)
                  (macro-unbound-global-exception-code _%e99337%_)
                  (let ((__tmp100825
                         (cons 'unbound-global-exception-code
                               (cons _%e99337%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100825))))
            (if (macro-unbound-global-exception? _%exn99335%_)
                (macro-unbound-global-exception-code _%exn99335%_)
                (let ((__tmp100826
                       (cons 'unbound-global-exception-code
                             (cons _%exn99335%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100826))))))
    (define unbound-global-exception-rte
      (lambda (_%exn99331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99331%_))
            (let ((_%e99333%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99331%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99333%_)
                  (macro-unbound-global-exception-rte _%e99333%_)
                  (let ((__tmp100827
                         (cons 'unbound-global-exception-rte
                               (cons _%e99333%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100827))))
            (if (macro-unbound-global-exception? _%exn99331%_)
                (macro-unbound-global-exception-rte _%exn99331%_)
                (let ((__tmp100828
                       (cons 'unbound-global-exception-rte
                             (cons _%exn99331%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100828))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99325%_))
            (let ((_%e99328%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99325%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99328%_)
                  (macro-unbound-global-exception-variable _%e99328%_)
                  (let ((__tmp100829
                         (cons 'unbound-global-exception-variable
                               (cons _%e99328%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100829))))
            (if (macro-unbound-global-exception? _%exn99325%_)
                (macro-unbound-global-exception-variable _%exn99325%_)
                (let ((__tmp100830
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99325%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100830))))))
    (define unbound-key-exception?
      (lambda (_%exn99321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99321%_))
            (let ((_%e99323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99321%_ 'exception))))
              (macro-unbound-key-exception? _%e99323%_))
            (macro-unbound-key-exception? _%exn99321%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99317%_))
            (let ((_%e99319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99317%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99319%_)
                  (macro-unbound-key-exception-arguments _%e99319%_)
                  (let ((__tmp100831
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99319%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100831))))
            (if (macro-unbound-key-exception? _%exn99317%_)
                (macro-unbound-key-exception-arguments _%exn99317%_)
                (let ((__tmp100832
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99317%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100832))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99311%_))
            (let ((_%e99314%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99311%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99314%_)
                  (macro-unbound-key-exception-procedure _%e99314%_)
                  (let ((__tmp100833
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99314%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100833))))
            (if (macro-unbound-key-exception? _%exn99311%_)
                (macro-unbound-key-exception-procedure _%exn99311%_)
                (let ((__tmp100834
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99311%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100834))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99307%_))
            (let ((_%e99309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99307%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99309%_))
            (macro-unbound-os-environment-variable-exception? _%exn99307%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99303%_))
            (let ((_%e99305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99303%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99305%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99305%_)
                  (let ((__tmp100835
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99305%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100835))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99303%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99303%_)
                (let ((__tmp100836
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99303%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100836))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99297%_))
            (let ((_%e99300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99297%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99300%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99300%_)
                  (let ((__tmp100837
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99300%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100837))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99297%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99297%_)
                (let ((__tmp100838
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99297%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100838))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99293%_))
            (let ((_%e99295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99293%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99295%_))
            (macro-unbound-serial-number-exception? _%exn99293%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99289%_))
            (let ((_%e99291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99289%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99291%_)
                  (macro-unbound-serial-number-exception-arguments _%e99291%_)
                  (let ((__tmp100839
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99291%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100839))))
            (if (macro-unbound-serial-number-exception? _%exn99289%_)
                (macro-unbound-serial-number-exception-arguments _%exn99289%_)
                (let ((__tmp100840
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99289%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100840))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99283%_))
            (let ((_%e99286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99283%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99286%_)
                  (macro-unbound-serial-number-exception-procedure _%e99286%_)
                  (let ((__tmp100841
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99286%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100841))))
            (if (macro-unbound-serial-number-exception? _%exn99283%_)
                (macro-unbound-serial-number-exception-procedure _%exn99283%_)
                (let ((__tmp100842
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99283%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100842))))))
    (define uncaught-exception?
      (lambda (_%exn99279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99279%_))
            (let ((_%e99281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99279%_ 'exception))))
              (macro-uncaught-exception? _%e99281%_))
            (macro-uncaught-exception? _%exn99279%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99275%_))
            (let ((_%e99277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99275%_ 'exception))))
              (if (macro-uncaught-exception? _%e99277%_)
                  (macro-uncaught-exception-arguments _%e99277%_)
                  (let ((__tmp100843
                         (cons 'uncaught-exception-arguments
                               (cons _%e99277%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100843))))
            (if (macro-uncaught-exception? _%exn99275%_)
                (macro-uncaught-exception-arguments _%exn99275%_)
                (let ((__tmp100844
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99275%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100844))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99271%_))
            (let ((_%e99273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99271%_ 'exception))))
              (if (macro-uncaught-exception? _%e99273%_)
                  (macro-uncaught-exception-procedure _%e99273%_)
                  (let ((__tmp100845
                         (cons 'uncaught-exception-procedure
                               (cons _%e99273%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100845))))
            (if (macro-uncaught-exception? _%exn99271%_)
                (macro-uncaught-exception-procedure _%exn99271%_)
                (let ((__tmp100846
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99271%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100846))))))
    (define uncaught-exception-reason
      (lambda (_%exn99265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99265%_))
            (let ((_%e99268%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99265%_ 'exception))))
              (if (macro-uncaught-exception? _%e99268%_)
                  (macro-uncaught-exception-reason _%e99268%_)
                  (let ((__tmp100847
                         (cons 'uncaught-exception-reason
                               (cons _%e99268%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100847))))
            (if (macro-uncaught-exception? _%exn99265%_)
                (macro-uncaught-exception-reason _%exn99265%_)
                (let ((__tmp100848
                       (cons 'uncaught-exception-reason
                             (cons _%exn99265%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100848))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99261%_))
            (let ((_%e99263%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99261%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99263%_))
            (macro-uninitialized-thread-exception? _%exn99261%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99257%_))
            (let ((_%e99259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99257%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99259%_)
                  (macro-uninitialized-thread-exception-arguments _%e99259%_)
                  (let ((__tmp100849
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99259%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100849))))
            (if (macro-uninitialized-thread-exception? _%exn99257%_)
                (macro-uninitialized-thread-exception-arguments _%exn99257%_)
                (let ((__tmp100850
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99257%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100850))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99251%_))
            (let ((_%e99254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99251%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99254%_)
                  (macro-uninitialized-thread-exception-procedure _%e99254%_)
                  (let ((__tmp100851
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99254%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100851))))
            (if (macro-uninitialized-thread-exception? _%exn99251%_)
                (macro-uninitialized-thread-exception-procedure _%exn99251%_)
                (let ((__tmp100852
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99251%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100852))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99247%_))
            (let ((_%e99249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99247%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99249%_))
            (macro-unknown-keyword-argument-exception? _%exn99247%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99243%_))
            (let ((_%e99245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99243%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99245%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99245%_)
                  (let ((__tmp100853
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99245%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100853))))
            (if (macro-unknown-keyword-argument-exception? _%exn99243%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99243%_)
                (let ((__tmp100854
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99243%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100854))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99237%_))
            (let ((_%e99240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99237%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99240%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99240%_)
                  (let ((__tmp100855
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99240%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100855))))
            (if (macro-unknown-keyword-argument-exception? _%exn99237%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99237%_)
                (let ((__tmp100856
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99237%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100856))))))
    (define unterminated-process-exception?
      (lambda (_%exn99233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99233%_))
            (let ((_%e99235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99233%_ 'exception))))
              (macro-unterminated-process-exception? _%e99235%_))
            (macro-unterminated-process-exception? _%exn99233%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99229%_))
            (let ((_%e99231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99229%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99231%_)
                  (macro-unterminated-process-exception-arguments _%e99231%_)
                  (let ((__tmp100857
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99231%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100857))))
            (if (macro-unterminated-process-exception? _%exn99229%_)
                (macro-unterminated-process-exception-arguments _%exn99229%_)
                (let ((__tmp100858
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99229%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100858))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99223%_))
            (let ((_%e99226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99223%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99226%_)
                  (macro-unterminated-process-exception-procedure _%e99226%_)
                  (let ((__tmp100859
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99226%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100859))))
            (if (macro-unterminated-process-exception? _%exn99223%_)
                (macro-unterminated-process-exception-procedure _%exn99223%_)
                (let ((__tmp100860
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99223%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100860))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99219%_))
            (let ((_%e99221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99219%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99221%_))
            (macro-wrong-number-of-arguments-exception? _%exn99219%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99215%_))
            (let ((_%e99217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99215%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99217%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99217%_)
                  (let ((__tmp100861
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99217%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100861))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99215%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99215%_)
                (let ((__tmp100862
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99215%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100862))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99209%_))
            (let ((_%e99212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99209%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99212%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99212%_)
                  (let ((__tmp100863
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99212%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100863))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99209%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99209%_)
                (let ((__tmp100864
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99209%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100864))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99205%_))
            (let ((_%e99207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99205%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99207%_))
            (macro-wrong-number-of-values-exception? _%exn99205%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99201%_))
            (let ((_%e99203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99201%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99203%_)
                  (macro-wrong-number-of-values-exception-code _%e99203%_)
                  (let ((__tmp100865
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99203%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100865))))
            (if (macro-wrong-number-of-values-exception? _%exn99201%_)
                (macro-wrong-number-of-values-exception-code _%exn99201%_)
                (let ((__tmp100866
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99201%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100866))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99197%_))
            (let ((_%e99199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99197%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99199%_)
                  (macro-wrong-number-of-values-exception-rte _%e99199%_)
                  (let ((__tmp100867
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99199%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100867))))
            (if (macro-wrong-number-of-values-exception? _%exn99197%_)
                (macro-wrong-number-of-values-exception-rte _%exn99197%_)
                (let ((__tmp100868
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99197%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100868))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99191%_))
            (let ((_%e99194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99191%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99194%_)
                  (macro-wrong-number-of-values-exception-vals _%e99194%_)
                  (let ((__tmp100869
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99194%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100869))))
            (if (macro-wrong-number-of-values-exception? _%exn99191%_)
                (macro-wrong-number-of-values-exception-vals _%exn99191%_)
                (let ((__tmp100870
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99191%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100870))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99185%_))
            (let ((_%e99188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99185%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99188%_))
            (macro-wrong-processor-c-return-exception? _%exn99185%_))))))
