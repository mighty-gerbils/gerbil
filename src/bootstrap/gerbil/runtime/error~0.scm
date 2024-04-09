(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712702630)
  (begin
    (define Exception::t
      (let ((__tmp100181 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100181
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100171%_
        (apply make-instance Exception::t _%$args100171%_)))
    (define StackTrace::t
      (let ((__tmp100182 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100182
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100168%_
        (apply make-instance StackTrace::t _%$args100168%_)))
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
      (let ((__tmp100183 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100183
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100165%_ (apply make-instance Error::t _%$args100165%_)))
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
      (let ((__tmp100184 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100184
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100162%_
        (apply make-instance ContractViolation::t _%$args100162%_)))
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
      (let ((__tmp100185 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100185
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100159%_
        (apply make-instance RuntimeException::t _%$args100159%_)))
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
      (lambda (_%exn100154%_ _%continue100155%_)
        (let ((_%exn100157%_ (wrap-runtime-exception _%exn100154%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100157%_ _%continue100155%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100150%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100150%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100150%_ 'continuation))
                '#!void
                (let ((__tmp100186
                       (lambda (_%cont100152%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100150%_
                            'continuation
                            _%cont100152%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100186)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100150%_))))
    (define error
      (lambda (_%message100147%_ . _%irritants100148%_)
        (raise (let ((__obj100178
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100178
                  _%message100147%_
                  'irritants:
                  _%irritants100148%_)
                 __obj100178))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100119%_
               _%ctx100114100120%_
               _%contract-expr100115100122%_
               _%value100116100124%_
               _%message100126%_)
        (let* ((_%ctx100128%_
                (if (eq? _%ctx100114100120%_ absent-value)
                    '#f
                    _%ctx100114100120%_))
               (_%contract-expr100130%_
                (if (eq? _%contract-expr100115100122%_ absent-value)
                    '#f
                    _%contract-expr100115100122%_))
               (_%value100132%_
                (if (eq? _%value100116100124%_ absent-value)
                    '#f
                    _%value100116100124%_)))
          (raise (let ((__obj100179
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj100179
                    _%message100126%_
                    'where:
                    _%ctx100128%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr100130%_
                                (cons 'value: (cons _%value100132%_ '())))))
                   __obj100179)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100137%_ . _%args100138%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100137%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100137%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100137%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100137%_
                  'value:
                  absent-value))
               _%args100138%_)))
    (define __raise-contract-violation-error
      (lambda _%args100117100144%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100117100144%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100088%_ _%thunk100089%_)
        (if (procedure? _%handler100088%_)
            (let ((_%handler100093%_ _%handler100088%_))
              (if (procedure? _%thunk100089%_)
                  (let ((_%thunk100103%_ _%thunk100089%_))
                    (__with-exception-handler
                     _%handler100093%_
                     _%thunk100103%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk100089%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler100088%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler100063%_ _%thunk100064%_)
        (let* ((_%handler100067%_ _%handler100063%_)
               (_%thunk100075%_ _%thunk100064%_)
               (__tmp100187
                (lambda (_%exn100084%_)
                  (let ((_%exn100086%_ (wrap-runtime-exception _%exn100084%_)))
                    (declare (not safe))
                    (_%handler100067%_ _%exn100086%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp100187 _%thunk100075%_))))
    (define with-catch
      (lambda (_%handler100038%_ _%thunk100039%_)
        (if (procedure? _%handler100038%_)
            (let ((_%handler100043%_ _%handler100038%_))
              (if (procedure? _%thunk100039%_)
                  (let ((_%thunk100053%_ _%thunk100039%_))
                    (__with-catch _%handler100043%_ _%thunk100053%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk100039%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler100038%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler100013%_ _%thunk100014%_)
        (let* ((_%handler100017%_ _%handler100013%_)
               (_%thunk100025%_ _%thunk100014%_)
               (__tmp100188
                (lambda (_%cont100034%_)
                  (__with-exception-handler
                   (lambda (_%exn100036%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont100034%_
                        _%handler100017%_
                        _%exn100036%_)))
                   _%thunk100025%_))))
          (declare (not safe))
          (##continuation-capture __tmp100188))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100000%_)
        (if (or (heap-overflow-exception? _%exn100000%_)
                (stack-overflow-exception? _%exn100000%_))
            _%exn100000%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100000%_))
                _%exn100000%_
                (if (macro-exception? _%exn100000%_)
                    (let ((_%rte100008%_
                           (let ((__obj100180
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100180
                                _%exn100000%_
                                '2
                                '#f
                                '#f))
                             __obj100180)))
                      (let ((__tmp100189
                             (lambda (_%cont100010%_)
                               (let ((__tmp100190
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100010%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100008%_
                                  'continuation
                                  __tmp100190)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100189))
                      _%rte100008%_)
                    _%exn100000%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj99995%_)
        (let ((_%$e99997%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj99995%_))))
          (if _%$e99997%_ _%$e99997%_ (error-exception? _%obj99995%_)))))
    (define error-message
      (lambda (_%obj99988%_)
        (let ((_%$e99990%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj99988%_ 'message false))))
          (if _%$e99990%_
              _%$e99990%_
              (if (error-exception? _%obj99988%_)
                  (error-exception-message _%obj99988%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj99983%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99983%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99983%_ 'irritants))
            (if (error-exception? _%obj99983%_)
                (error-exception-parameters _%obj99983%_)
                '#f))))
    (define error-trace
      (lambda (_%obj99981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99981%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99981%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e99962%_ _%port99963%_)
        (let ((_%$e99965%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e99962%_ 'display-exception))))
          (if _%$e99965%_
              ((lambda (_%f99968%_) (_%f99968%_ _%e99962%_ _%port99963%_))
               _%$e99965%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e99962%_ _%port99963%_))))))
    (define display-exception__0
      (lambda (_%e99974%_)
        (let ((_%port99976%_ (current-error-port)))
          (display-exception__% _%e99974%_ _%port99976%_))))
    (define display-exception
      (lambda _g100192_
        (let ((_g100191_ (let () (declare (not safe)) (##length _g100192_))))
          (cond ((let () (declare (not safe)) (##fx= _g100191_ 1))
                 (apply display-exception__0 _g100192_))
                ((let () (declare (not safe)) (##fx= _g100191_ 2))
                 (apply display-exception__% _g100192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100192_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99940%_ _%message99941%_ . _%rest99942%_)
        (let* ((_%self99945%_ _%self99940%_)
               (_%message99959%_
                (if (string? _%message99941%_)
                    _%message99941%_
                    (call-with-output-string
                     '""
                     (lambda (_%g9995499956%_)
                       (display _%message99941%_ _%g9995499956%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self99945%_ 'message _%message99959%_))
          (apply class-instance-init! _%self99945%_ _%rest99942%_))))
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
      (lambda (_%self99664%_ _%port99665%_)
        (let ((_%self99668%_ _%self99664%_))
          (let ((_%tmp-port99678%_ (open-output-string))
                (_%display-error-newline99679%_
                 (> (output-port-column _%port99665%_) '0)))
            (fix-port-width! _%tmp-port99678%_)
            (let ((__tmp100193
                   (lambda ()
                     (if _%display-error-newline99679%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e99682%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self99668%_ 'where))))
                       (if _%$e99682%_ (display _%$e99682%_) (display '"?")))
                     (let ((__tmp100194
                            (let ((__tmp100195
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self99668%_))))
                              (declare (not safe))
                              (##type-name __tmp100195))))
                       (declare (not safe))
                       (display* '" [" __tmp100194 '"]: "))
                     (let ((__tmp100196
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self99668%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100196))
                     (let ((_%irritants99686%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self99668%_ 'irritants))))
                       (if (null? _%irritants99686%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj99688%_)
                                (if (u8vector? _%obj99688%_)
                                    (let ((__tmp100197
                                           (cons '<u8vector>
                                                 (cons (u8vector-length
                                                        _%obj99688%_)
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp100197))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj99688%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants99686%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont9968999691%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99668%_
                                   'continuation))))
                           (if _%cont9968999691%_
                               (let ((_%cont99694%_ _%cont9968999691%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont99694%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100193
               current-output-port
               _%tmp-port99678%_))
            (let ((__tmp100198 (get-output-string _%tmp-port99678%_)))
              (declare (not safe))
              (##write-string __tmp100198 _%port99665%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99520%_ _%port99521%_)
        (let* ((_%self99524%_ _%self99520%_)
               (_%tmp-port99534%_ (open-output-string)))
          (fix-port-width! _%tmp-port99534%_)
          (let ((__tmp100199
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self99524%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp100199 _%tmp-port99534%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont9953599537%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self99524%_ 'continuation))))
                (if _%cont9953599537%_
                    (let ((_%cont99540%_ _%cont9953599537%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port99534%_)
                      (newline _%tmp-port99534%_)
                      (display-continuation-backtrace
                       _%cont99540%_
                       _%tmp-port99534%_))
                    '#f))
              '#!void)
          (let ((__tmp100200 (get-output-string _%tmp-port99534%_)))
            (declare (not safe))
            (##write-string __tmp100200 _%port99521%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99392%_)
        (if (macro-character-port? _%port99392%_)
            (let ((_%old-width99394%_
                   (macro-character-port-output-width _%port99392%_)))
              (macro-character-port-output-width-set!
               _%port99392%_
               (lambda (_%port99396%_) '256))
              _%old-width99394%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99389%_ _%old-width99390%_)
        (if (macro-character-port? _%port99389%_)
            (macro-character-port-output-width-set!
             _%port99389%_
             _%old-width99390%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99387%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e99387%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99381%_))
            (let ((_%e99384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99381%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99384%_))
            (macro-abandoned-mutex-exception? _%exn99381%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99377%_))
            (let ((_%e99379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99377%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99379%_))
            (macro-cfun-conversion-exception? _%exn99377%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99373%_))
            (let ((_%e99375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99373%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99375%_)
                  (macro-cfun-conversion-exception-arguments _%e99375%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99375%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99373%_)
                (macro-cfun-conversion-exception-arguments _%exn99373%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99373%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99369%_))
            (let ((_%e99371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99369%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99371%_)
                  (macro-cfun-conversion-exception-code _%e99371%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99371%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99369%_)
                (macro-cfun-conversion-exception-code _%exn99369%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99369%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99365%_))
            (let ((_%e99367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99365%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99367%_)
                  (macro-cfun-conversion-exception-message _%e99367%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99367%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99365%_)
                (macro-cfun-conversion-exception-message _%exn99365%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99365%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99359%_))
            (let ((_%e99362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99359%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99362%_)
                  (macro-cfun-conversion-exception-procedure _%e99362%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99362%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn99359%_)
                (macro-cfun-conversion-exception-procedure _%exn99359%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99359%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn99355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99355%_))
            (let ((_%e99357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99355%_ 'exception))))
              (macro-datum-parsing-exception? _%e99357%_))
            (macro-datum-parsing-exception? _%exn99355%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99351%_))
            (let ((_%e99353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99351%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99353%_)
                  (macro-datum-parsing-exception-kind _%e99353%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99353%_ '())))))
            (if (macro-datum-parsing-exception? _%exn99351%_)
                (macro-datum-parsing-exception-kind _%exn99351%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99351%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99347%_))
            (let ((_%e99349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99347%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99349%_)
                  (macro-datum-parsing-exception-parameters _%e99349%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99349%_ '())))))
            (if (macro-datum-parsing-exception? _%exn99347%_)
                (macro-datum-parsing-exception-parameters _%exn99347%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99347%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99341%_))
            (let ((_%e99344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99341%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99344%_)
                  (macro-datum-parsing-exception-readenv _%e99344%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99344%_ '())))))
            (if (macro-datum-parsing-exception? _%exn99341%_)
                (macro-datum-parsing-exception-readenv _%exn99341%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99341%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn99335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99335%_))
            (let ((_%e99338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99335%_ 'exception))))
              (macro-deadlock-exception? _%e99338%_))
            (macro-deadlock-exception? _%exn99335%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99331%_))
            (let ((_%e99333%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99331%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99333%_))
            (macro-divide-by-zero-exception? _%exn99331%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99327%_))
            (let ((_%e99329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99327%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99329%_)
                  (macro-divide-by-zero-exception-arguments _%e99329%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99329%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn99327%_)
                (macro-divide-by-zero-exception-arguments _%exn99327%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99327%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99321%_))
            (let ((_%e99324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99321%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99324%_)
                  (macro-divide-by-zero-exception-procedure _%e99324%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99324%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn99321%_)
                (macro-divide-by-zero-exception-procedure _%exn99321%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99321%_ '())))))))
    (define error-exception?
      (lambda (_%exn99317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99317%_))
            (let ((_%e99319%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99317%_ 'exception))))
              (macro-error-exception? _%e99319%_))
            (macro-error-exception? _%exn99317%_))))
    (define error-exception-message
      (lambda (_%exn99313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99313%_))
            (let ((_%e99315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99313%_ 'exception))))
              (if (macro-error-exception? _%e99315%_)
                  (macro-error-exception-message _%e99315%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e99315%_ '())))))
            (if (macro-error-exception? _%exn99313%_)
                (macro-error-exception-message _%exn99313%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn99313%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn99307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99307%_))
            (let ((_%e99310%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99307%_ 'exception))))
              (if (macro-error-exception? _%e99310%_)
                  (macro-error-exception-parameters _%e99310%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e99310%_ '())))))
            (if (macro-error-exception? _%exn99307%_)
                (macro-error-exception-parameters _%exn99307%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn99307%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn99303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99303%_))
            (let ((_%e99305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99303%_ 'exception))))
              (macro-expression-parsing-exception? _%e99305%_))
            (macro-expression-parsing-exception? _%exn99303%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99299%_))
            (let ((_%e99301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99299%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99301%_)
                  (macro-expression-parsing-exception-kind _%e99301%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99301%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99299%_)
                (macro-expression-parsing-exception-kind _%exn99299%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99299%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99295%_))
            (let ((_%e99297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99295%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99297%_)
                  (macro-expression-parsing-exception-parameters _%e99297%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99297%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99295%_)
                (macro-expression-parsing-exception-parameters _%exn99295%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99295%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99289%_))
            (let ((_%e99292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99289%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99292%_)
                  (macro-expression-parsing-exception-source _%e99292%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e99292%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99289%_)
                (macro-expression-parsing-exception-source _%exn99289%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99289%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn99285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99285%_))
            (let ((_%e99287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99285%_ 'exception))))
              (macro-file-exists-exception? _%e99287%_))
            (macro-file-exists-exception? _%exn99285%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99281%_))
            (let ((_%e99283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99281%_ 'exception))))
              (if (macro-file-exists-exception? _%e99283%_)
                  (macro-file-exists-exception-arguments _%e99283%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e99283%_ '())))))
            (if (macro-file-exists-exception? _%exn99281%_)
                (macro-file-exists-exception-arguments _%exn99281%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99281%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99275%_))
            (let ((_%e99278%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99275%_ 'exception))))
              (if (macro-file-exists-exception? _%e99278%_)
                  (macro-file-exists-exception-procedure _%e99278%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e99278%_ '())))))
            (if (macro-file-exists-exception? _%exn99275%_)
                (macro-file-exists-exception-procedure _%exn99275%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99275%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99271%_))
            (let ((_%e99273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99271%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99273%_))
            (macro-fixnum-overflow-exception? _%exn99271%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99267%_))
            (let ((_%e99269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99267%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99269%_)
                  (macro-fixnum-overflow-exception-arguments _%e99269%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99269%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn99267%_)
                (macro-fixnum-overflow-exception-arguments _%exn99267%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99267%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99261%_))
            (let ((_%e99264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99261%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99264%_)
                  (macro-fixnum-overflow-exception-procedure _%e99264%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99264%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn99261%_)
                (macro-fixnum-overflow-exception-procedure _%exn99261%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99261%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn99255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99255%_))
            (let ((_%e99258%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99255%_ 'exception))))
              (macro-heap-overflow-exception? _%e99258%_))
            (macro-heap-overflow-exception? _%exn99255%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99251%_))
            (let ((_%e99253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99251%_ 'exception))))
              (macro-inactive-thread-exception? _%e99253%_))
            (macro-inactive-thread-exception? _%exn99251%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99247%_))
            (let ((_%e99249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99247%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99249%_)
                  (macro-inactive-thread-exception-arguments _%e99249%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99249%_ '())))))
            (if (macro-inactive-thread-exception? _%exn99247%_)
                (macro-inactive-thread-exception-arguments _%exn99247%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99247%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99241%_))
            (let ((_%e99244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99241%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99244%_)
                  (macro-inactive-thread-exception-procedure _%e99244%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99244%_ '())))))
            (if (macro-inactive-thread-exception? _%exn99241%_)
                (macro-inactive-thread-exception-procedure _%exn99241%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99241%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn99237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99237%_))
            (let ((_%e99239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99237%_ 'exception))))
              (macro-initialized-thread-exception? _%e99239%_))
            (macro-initialized-thread-exception? _%exn99237%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99233%_))
            (let ((_%e99235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99233%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99235%_)
                  (macro-initialized-thread-exception-arguments _%e99235%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99235%_ '())))))
            (if (macro-initialized-thread-exception? _%exn99233%_)
                (macro-initialized-thread-exception-arguments _%exn99233%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99233%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99227%_))
            (let ((_%e99230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99227%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99230%_)
                  (macro-initialized-thread-exception-procedure _%e99230%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99230%_ '())))))
            (if (macro-initialized-thread-exception? _%exn99227%_)
                (macro-initialized-thread-exception-procedure _%exn99227%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99227%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99223%_))
            (let ((_%e99225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99223%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99225%_))
            (macro-invalid-hash-number-exception? _%exn99223%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99219%_))
            (let ((_%e99221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99219%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99221%_)
                  (macro-invalid-hash-number-exception-arguments _%e99221%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99221%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn99219%_)
                (macro-invalid-hash-number-exception-arguments _%exn99219%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99219%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99213%_))
            (let ((_%e99216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99213%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99216%_)
                  (macro-invalid-hash-number-exception-procedure _%e99216%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99216%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn99213%_)
                (macro-invalid-hash-number-exception-procedure _%exn99213%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99213%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99209%_))
            (let ((_%e99211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99209%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99211%_))
            (macro-invalid-utf8-encoding-exception? _%exn99209%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99205%_))
            (let ((_%e99207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99205%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99207%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99207%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99207%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99205%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99205%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99205%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99199%_))
            (let ((_%e99202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99199%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99202%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99202%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99202%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99199%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99199%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99199%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn99195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99195%_))
            (let ((_%e99197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99195%_ 'exception))))
              (macro-join-timeout-exception? _%e99197%_))
            (macro-join-timeout-exception? _%exn99195%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99191%_))
            (let ((_%e99193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99191%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99193%_)
                  (macro-join-timeout-exception-arguments _%e99193%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99193%_ '())))))
            (if (macro-join-timeout-exception? _%exn99191%_)
                (macro-join-timeout-exception-arguments _%exn99191%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99191%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99185%_))
            (let ((_%e99188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99185%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99188%_)
                  (macro-join-timeout-exception-procedure _%e99188%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99188%_ '())))))
            (if (macro-join-timeout-exception? _%exn99185%_)
                (macro-join-timeout-exception-procedure _%exn99185%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99185%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn99181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99181%_))
            (let ((_%e99183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99181%_ 'exception))))
              (macro-keyword-expected-exception? _%e99183%_))
            (macro-keyword-expected-exception? _%exn99181%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99177%_))
            (let ((_%e99179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99177%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99179%_)
                  (macro-keyword-expected-exception-arguments _%e99179%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99179%_ '())))))
            (if (macro-keyword-expected-exception? _%exn99177%_)
                (macro-keyword-expected-exception-arguments _%exn99177%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99177%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99171%_))
            (let ((_%e99174%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99171%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99174%_)
                  (macro-keyword-expected-exception-procedure _%e99174%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99174%_ '())))))
            (if (macro-keyword-expected-exception? _%exn99171%_)
                (macro-keyword-expected-exception-procedure _%exn99171%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99171%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn99167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99167%_))
            (let ((_%e99169%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99167%_ 'exception))))
              (macro-length-mismatch-exception? _%e99169%_))
            (macro-length-mismatch-exception? _%exn99167%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99163%_))
            (let ((_%e99165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99163%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99165%_)
                  (macro-length-mismatch-exception-arg-id _%e99165%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99165%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99163%_)
                (macro-length-mismatch-exception-arg-id _%exn99163%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99163%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99159%_))
            (let ((_%e99161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99159%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99161%_)
                  (macro-length-mismatch-exception-arguments _%e99161%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99161%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99159%_)
                (macro-length-mismatch-exception-arguments _%exn99159%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99159%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99153%_))
            (let ((_%e99156%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99153%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99156%_)
                  (macro-length-mismatch-exception-procedure _%e99156%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99156%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99153%_)
                (macro-length-mismatch-exception-procedure _%exn99153%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99153%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99149%_))
            (let ((_%e99151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99149%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99151%_))
            (macro-mailbox-receive-timeout-exception? _%exn99149%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99145%_))
            (let ((_%e99147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99145%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99147%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99147%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99147%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99145%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99145%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99145%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99139%_))
            (let ((_%e99142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99139%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99142%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99142%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99142%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99139%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99139%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99139%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn99135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99135%_))
            (let ((_%e99137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99135%_ 'exception))))
              (macro-module-not-found-exception? _%e99137%_))
            (macro-module-not-found-exception? _%exn99135%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99131%_))
            (let ((_%e99133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99131%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99133%_)
                  (macro-module-not-found-exception-arguments _%e99133%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99133%_ '())))))
            (if (macro-module-not-found-exception? _%exn99131%_)
                (macro-module-not-found-exception-arguments _%exn99131%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99131%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99125%_))
            (let ((_%e99128%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99125%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99128%_)
                  (macro-module-not-found-exception-procedure _%e99128%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99128%_ '())))))
            (if (macro-module-not-found-exception? _%exn99125%_)
                (macro-module-not-found-exception-procedure _%exn99125%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99125%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99119%_))
            (let ((_%e99122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99119%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99122%_))
            (macro-multiple-c-return-exception? _%exn99119%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99115%_))
            (let ((_%e99117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99115%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99117%_))
            (macro-no-such-file-or-directory-exception? _%exn99115%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99111%_))
            (let ((_%e99113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99111%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99113%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99113%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99113%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn99111%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99111%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99111%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99105%_))
            (let ((_%e99108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99105%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99108%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99108%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99108%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn99105%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99105%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99105%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn99101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99101%_))
            (let ((_%e99103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99101%_ 'exception))))
              (macro-noncontinuable-exception? _%e99103%_))
            (macro-noncontinuable-exception? _%exn99101%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99095%_))
            (let ((_%e99098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99095%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99098%_)
                  (macro-noncontinuable-exception-reason _%e99098%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99098%_ '())))))
            (if (macro-noncontinuable-exception? _%exn99095%_)
                (macro-noncontinuable-exception-reason _%exn99095%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99095%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99091%_))
            (let ((_%e99093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99091%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99093%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99091%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99087%_))
            (let ((_%e99089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99087%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99089%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99089%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99089%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99087%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99087%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99087%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99081%_))
            (let ((_%e99084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99081%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99084%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99084%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99084%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99081%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99081%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99081%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99077%_))
            (let ((_%e99079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99077%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99079%_))
            (macro-nonprocedure-operator-exception? _%exn99077%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99073%_))
            (let ((_%e99075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99073%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99075%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99075%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99075%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99073%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99073%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99073%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99069%_))
            (let ((_%e99071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99069%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99071%_)
                  (macro-nonprocedure-operator-exception-code _%e99071%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99071%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99069%_)
                (macro-nonprocedure-operator-exception-code _%exn99069%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99069%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99065%_))
            (let ((_%e99067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99065%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99067%_)
                  (macro-nonprocedure-operator-exception-operator _%e99067%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99067%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99065%_)
                (macro-nonprocedure-operator-exception-operator _%exn99065%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99065%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99059%_))
            (let ((_%e99062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99059%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99062%_)
                  (macro-nonprocedure-operator-exception-rte _%e99062%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99062%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99059%_)
                (macro-nonprocedure-operator-exception-rte _%exn99059%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99059%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99055%_))
            (let ((_%e99057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99055%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99057%_))
            (macro-not-in-compilation-context-exception? _%exn99055%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99051%_))
            (let ((_%e99053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99051%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99053%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99053%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99053%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn99051%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99051%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99051%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99045%_))
            (let ((_%e99048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99045%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99048%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99048%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99048%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn99045%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99045%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99045%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99041%_))
            (let ((_%e99043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99041%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99043%_))
            (macro-number-of-arguments-limit-exception? _%exn99041%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99037%_))
            (let ((_%e99039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99037%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99039%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99039%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99039%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn99037%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99037%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99037%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99031%_))
            (let ((_%e99034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99031%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99034%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99034%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99034%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn99031%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99031%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99031%_ '())))))))
    (define os-exception?
      (lambda (_%exn99027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99027%_))
            (let ((_%e99029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99027%_ 'exception))))
              (macro-os-exception? _%e99029%_))
            (macro-os-exception? _%exn99027%_))))
    (define os-exception-arguments
      (lambda (_%exn99023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99023%_))
            (let ((_%e99025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99023%_ 'exception))))
              (if (macro-os-exception? _%e99025%_)
                  (macro-os-exception-arguments _%e99025%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e99025%_ '())))))
            (if (macro-os-exception? _%exn99023%_)
                (macro-os-exception-arguments _%exn99023%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn99023%_ '())))))))
    (define os-exception-code
      (lambda (_%exn99019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99019%_))
            (let ((_%e99021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99019%_ 'exception))))
              (if (macro-os-exception? _%e99021%_)
                  (macro-os-exception-code _%e99021%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e99021%_ '())))))
            (if (macro-os-exception? _%exn99019%_)
                (macro-os-exception-code _%exn99019%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn99019%_ '())))))))
    (define os-exception-message
      (lambda (_%exn99015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99015%_))
            (let ((_%e99017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99015%_ 'exception))))
              (if (macro-os-exception? _%e99017%_)
                  (macro-os-exception-message _%e99017%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e99017%_ '())))))
            (if (macro-os-exception? _%exn99015%_)
                (macro-os-exception-message _%exn99015%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn99015%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn99009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99009%_))
            (let ((_%e99012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99009%_ 'exception))))
              (if (macro-os-exception? _%e99012%_)
                  (macro-os-exception-procedure _%e99012%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e99012%_ '())))))
            (if (macro-os-exception? _%exn99009%_)
                (macro-os-exception-procedure _%exn99009%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn99009%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn99005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99005%_))
            (let ((_%e99007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99005%_ 'exception))))
              (macro-permission-denied-exception? _%e99007%_))
            (macro-permission-denied-exception? _%exn99005%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99001%_))
            (let ((_%e99003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99001%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99003%_)
                  (macro-permission-denied-exception-arguments _%e99003%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99003%_ '())))))
            (if (macro-permission-denied-exception? _%exn99001%_)
                (macro-permission-denied-exception-arguments _%exn99001%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99001%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn98995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98995%_))
            (let ((_%e98998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98995%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98998%_)
                  (macro-permission-denied-exception-procedure _%e98998%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e98998%_ '())))))
            (if (macro-permission-denied-exception? _%exn98995%_)
                (macro-permission-denied-exception-procedure _%exn98995%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn98995%_ '())))))))
    (define range-exception?
      (lambda (_%exn98991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98991%_))
            (let ((_%e98993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98991%_ 'exception))))
              (macro-range-exception? _%e98993%_))
            (macro-range-exception? _%exn98991%_))))
    (define range-exception-arg-id
      (lambda (_%exn98987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98987%_))
            (let ((_%e98989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98987%_ 'exception))))
              (if (macro-range-exception? _%e98989%_)
                  (macro-range-exception-arg-id _%e98989%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e98989%_ '())))))
            (if (macro-range-exception? _%exn98987%_)
                (macro-range-exception-arg-id _%exn98987%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn98987%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn98983%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98983%_))
            (let ((_%e98985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98983%_ 'exception))))
              (if (macro-range-exception? _%e98985%_)
                  (macro-range-exception-arguments _%e98985%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e98985%_ '())))))
            (if (macro-range-exception? _%exn98983%_)
                (macro-range-exception-arguments _%exn98983%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn98983%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn98977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98977%_))
            (let ((_%e98980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98977%_ 'exception))))
              (if (macro-range-exception? _%e98980%_)
                  (macro-range-exception-procedure _%e98980%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e98980%_ '())))))
            (if (macro-range-exception? _%exn98977%_)
                (macro-range-exception-procedure _%exn98977%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn98977%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn98973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98973%_))
            (let ((_%e98975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98973%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e98975%_))
            (macro-rpc-remote-error-exception? _%exn98973%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn98969%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98969%_))
            (let ((_%e98971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98969%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98971%_)
                  (macro-rpc-remote-error-exception-arguments _%e98971%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e98971%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn98969%_)
                (macro-rpc-remote-error-exception-arguments _%exn98969%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn98969%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn98965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98965%_))
            (let ((_%e98967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98965%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98967%_)
                  (macro-rpc-remote-error-exception-message _%e98967%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e98967%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn98965%_)
                (macro-rpc-remote-error-exception-message _%exn98965%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn98965%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn98959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98959%_))
            (let ((_%e98962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98959%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98962%_)
                  (macro-rpc-remote-error-exception-procedure _%e98962%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e98962%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn98959%_)
                (macro-rpc-remote-error-exception-procedure _%exn98959%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn98959%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn98955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98955%_))
            (let ((_%e98957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98955%_ 'exception))))
              (macro-scheduler-exception? _%e98957%_))
            (macro-scheduler-exception? _%exn98955%_))))
    (define scheduler-exception-reason
      (lambda (_%exn98949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98949%_))
            (let ((_%e98952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98949%_ 'exception))))
              (if (macro-scheduler-exception? _%e98952%_)
                  (macro-scheduler-exception-reason _%e98952%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e98952%_ '())))))
            (if (macro-scheduler-exception? _%exn98949%_)
                (macro-scheduler-exception-reason _%exn98949%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn98949%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn98945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98945%_))
            (let ((_%e98947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98945%_ 'exception))))
              (macro-sfun-conversion-exception? _%e98947%_))
            (macro-sfun-conversion-exception? _%exn98945%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn98941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98941%_))
            (let ((_%e98943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98941%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98943%_)
                  (macro-sfun-conversion-exception-arguments _%e98943%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e98943%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn98941%_)
                (macro-sfun-conversion-exception-arguments _%exn98941%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn98941%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn98937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98937%_))
            (let ((_%e98939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98937%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98939%_)
                  (macro-sfun-conversion-exception-code _%e98939%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e98939%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn98937%_)
                (macro-sfun-conversion-exception-code _%exn98937%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn98937%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn98933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98933%_))
            (let ((_%e98935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98933%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98935%_)
                  (macro-sfun-conversion-exception-message _%e98935%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e98935%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn98933%_)
                (macro-sfun-conversion-exception-message _%exn98933%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn98933%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn98927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98927%_))
            (let ((_%e98930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98927%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98930%_)
                  (macro-sfun-conversion-exception-procedure _%e98930%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e98930%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn98927%_)
                (macro-sfun-conversion-exception-procedure _%exn98927%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn98927%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn98921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98921%_))
            (let ((_%e98924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98921%_ 'exception))))
              (macro-stack-overflow-exception? _%e98924%_))
            (macro-stack-overflow-exception? _%exn98921%_))))
    (define started-thread-exception?
      (lambda (_%exn98917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98917%_))
            (let ((_%e98919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98917%_ 'exception))))
              (macro-started-thread-exception? _%e98919%_))
            (macro-started-thread-exception? _%exn98917%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn98913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98913%_))
            (let ((_%e98915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98913%_ 'exception))))
              (if (macro-started-thread-exception? _%e98915%_)
                  (macro-started-thread-exception-arguments _%e98915%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e98915%_ '())))))
            (if (macro-started-thread-exception? _%exn98913%_)
                (macro-started-thread-exception-arguments _%exn98913%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn98913%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn98907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98907%_))
            (let ((_%e98910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98907%_ 'exception))))
              (if (macro-started-thread-exception? _%e98910%_)
                  (macro-started-thread-exception-procedure _%e98910%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e98910%_ '())))))
            (if (macro-started-thread-exception? _%exn98907%_)
                (macro-started-thread-exception-procedure _%exn98907%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn98907%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn98903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98903%_))
            (let ((_%e98905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98903%_ 'exception))))
              (macro-terminated-thread-exception? _%e98905%_))
            (macro-terminated-thread-exception? _%exn98903%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn98899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98899%_))
            (let ((_%e98901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98899%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98901%_)
                  (macro-terminated-thread-exception-arguments _%e98901%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e98901%_ '())))))
            (if (macro-terminated-thread-exception? _%exn98899%_)
                (macro-terminated-thread-exception-arguments _%exn98899%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn98899%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn98893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98893%_))
            (let ((_%e98896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98893%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98896%_)
                  (macro-terminated-thread-exception-procedure _%e98896%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e98896%_ '())))))
            (if (macro-terminated-thread-exception? _%exn98893%_)
                (macro-terminated-thread-exception-procedure _%exn98893%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn98893%_ '())))))))
    (define type-exception?
      (lambda (_%exn98889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98889%_))
            (let ((_%e98891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98889%_ 'exception))))
              (macro-type-exception? _%e98891%_))
            (macro-type-exception? _%exn98889%_))))
    (define type-exception-arg-id
      (lambda (_%exn98885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98885%_))
            (let ((_%e98887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98885%_ 'exception))))
              (if (macro-type-exception? _%e98887%_)
                  (macro-type-exception-arg-id _%e98887%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id (cons _%e98887%_ '())))))
            (if (macro-type-exception? _%exn98885%_)
                (macro-type-exception-arg-id _%exn98885%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn98885%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn98881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98881%_))
            (let ((_%e98883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98881%_ 'exception))))
              (if (macro-type-exception? _%e98883%_)
                  (macro-type-exception-arguments _%e98883%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e98883%_ '())))))
            (if (macro-type-exception? _%exn98881%_)
                (macro-type-exception-arguments _%exn98881%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn98881%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn98877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98877%_))
            (let ((_%e98879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98877%_ 'exception))))
              (if (macro-type-exception? _%e98879%_)
                  (macro-type-exception-procedure _%e98879%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e98879%_ '())))))
            (if (macro-type-exception? _%exn98877%_)
                (macro-type-exception-procedure _%exn98877%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn98877%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn98871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98871%_))
            (let ((_%e98874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98871%_ 'exception))))
              (if (macro-type-exception? _%e98874%_)
                  (macro-type-exception-type-id _%e98874%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e98874%_ '())))))
            (if (macro-type-exception? _%exn98871%_)
                (macro-type-exception-type-id _%exn98871%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn98871%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn98867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98867%_))
            (let ((_%e98869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98867%_ 'exception))))
              (macro-unbound-global-exception? _%e98869%_))
            (macro-unbound-global-exception? _%exn98867%_))))
    (define unbound-global-exception-code
      (lambda (_%exn98863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98863%_))
            (let ((_%e98865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98863%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98865%_)
                  (macro-unbound-global-exception-code _%e98865%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e98865%_ '())))))
            (if (macro-unbound-global-exception? _%exn98863%_)
                (macro-unbound-global-exception-code _%exn98863%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn98863%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn98859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98859%_))
            (let ((_%e98861%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98859%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98861%_)
                  (macro-unbound-global-exception-rte _%e98861%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e98861%_ '())))))
            (if (macro-unbound-global-exception? _%exn98859%_)
                (macro-unbound-global-exception-rte _%exn98859%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn98859%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn98853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98853%_))
            (let ((_%e98856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98853%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98856%_)
                  (macro-unbound-global-exception-variable _%e98856%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e98856%_ '())))))
            (if (macro-unbound-global-exception? _%exn98853%_)
                (macro-unbound-global-exception-variable _%exn98853%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn98853%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn98849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98849%_))
            (let ((_%e98851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98849%_ 'exception))))
              (macro-unbound-key-exception? _%e98851%_))
            (macro-unbound-key-exception? _%exn98849%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn98845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98845%_))
            (let ((_%e98847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98845%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98847%_)
                  (macro-unbound-key-exception-arguments _%e98847%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e98847%_ '())))))
            (if (macro-unbound-key-exception? _%exn98845%_)
                (macro-unbound-key-exception-arguments _%exn98845%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn98845%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn98839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98839%_))
            (let ((_%e98842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98839%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98842%_)
                  (macro-unbound-key-exception-procedure _%e98842%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e98842%_ '())))))
            (if (macro-unbound-key-exception? _%exn98839%_)
                (macro-unbound-key-exception-procedure _%exn98839%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn98839%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn98835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98835%_))
            (let ((_%e98837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98835%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e98837%_))
            (macro-unbound-os-environment-variable-exception? _%exn98835%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn98831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98831%_))
            (let ((_%e98833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98831%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98833%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e98833%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e98833%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98831%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn98831%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn98831%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn98825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98825%_))
            (let ((_%e98828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98825%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98828%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e98828%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e98828%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98825%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn98825%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn98825%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn98821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98821%_))
            (let ((_%e98823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98821%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e98823%_))
            (macro-unbound-serial-number-exception? _%exn98821%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn98817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98817%_))
            (let ((_%e98819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98817%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98819%_)
                  (macro-unbound-serial-number-exception-arguments _%e98819%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e98819%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn98817%_)
                (macro-unbound-serial-number-exception-arguments _%exn98817%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn98817%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn98811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98811%_))
            (let ((_%e98814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98811%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98814%_)
                  (macro-unbound-serial-number-exception-procedure _%e98814%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e98814%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn98811%_)
                (macro-unbound-serial-number-exception-procedure _%exn98811%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn98811%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn98807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98807%_))
            (let ((_%e98809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98807%_ 'exception))))
              (macro-uncaught-exception? _%e98809%_))
            (macro-uncaught-exception? _%exn98807%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn98803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98803%_))
            (let ((_%e98805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98803%_ 'exception))))
              (if (macro-uncaught-exception? _%e98805%_)
                  (macro-uncaught-exception-arguments _%e98805%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e98805%_ '())))))
            (if (macro-uncaught-exception? _%exn98803%_)
                (macro-uncaught-exception-arguments _%exn98803%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn98803%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn98799%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98799%_))
            (let ((_%e98801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98799%_ 'exception))))
              (if (macro-uncaught-exception? _%e98801%_)
                  (macro-uncaught-exception-procedure _%e98801%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e98801%_ '())))))
            (if (macro-uncaught-exception? _%exn98799%_)
                (macro-uncaught-exception-procedure _%exn98799%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn98799%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn98793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98793%_))
            (let ((_%e98796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98793%_ 'exception))))
              (if (macro-uncaught-exception? _%e98796%_)
                  (macro-uncaught-exception-reason _%e98796%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e98796%_ '())))))
            (if (macro-uncaught-exception? _%exn98793%_)
                (macro-uncaught-exception-reason _%exn98793%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn98793%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn98789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98789%_))
            (let ((_%e98791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98789%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e98791%_))
            (macro-uninitialized-thread-exception? _%exn98789%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn98785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98785%_))
            (let ((_%e98787%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98785%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98787%_)
                  (macro-uninitialized-thread-exception-arguments _%e98787%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e98787%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn98785%_)
                (macro-uninitialized-thread-exception-arguments _%exn98785%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn98785%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn98779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98779%_))
            (let ((_%e98782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98779%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98782%_)
                  (macro-uninitialized-thread-exception-procedure _%e98782%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e98782%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn98779%_)
                (macro-uninitialized-thread-exception-procedure _%exn98779%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn98779%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn98775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98775%_))
            (let ((_%e98777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98775%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e98777%_))
            (macro-unknown-keyword-argument-exception? _%exn98775%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn98771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98771%_))
            (let ((_%e98773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98771%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98773%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e98773%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e98773%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn98771%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn98771%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn98771%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn98765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98765%_))
            (let ((_%e98768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98765%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98768%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e98768%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e98768%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn98765%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn98765%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn98765%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn98761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98761%_))
            (let ((_%e98763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98761%_ 'exception))))
              (macro-unterminated-process-exception? _%e98763%_))
            (macro-unterminated-process-exception? _%exn98761%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn98757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98757%_))
            (let ((_%e98759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98757%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98759%_)
                  (macro-unterminated-process-exception-arguments _%e98759%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e98759%_ '())))))
            (if (macro-unterminated-process-exception? _%exn98757%_)
                (macro-unterminated-process-exception-arguments _%exn98757%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn98757%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn98751%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98751%_))
            (let ((_%e98754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98751%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98754%_)
                  (macro-unterminated-process-exception-procedure _%e98754%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e98754%_ '())))))
            (if (macro-unterminated-process-exception? _%exn98751%_)
                (macro-unterminated-process-exception-procedure _%exn98751%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn98751%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn98747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98747%_))
            (let ((_%e98749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98747%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e98749%_))
            (macro-wrong-number-of-arguments-exception? _%exn98747%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn98743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98743%_))
            (let ((_%e98745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98743%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98745%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e98745%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e98745%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98743%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn98743%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn98743%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn98737%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98737%_))
            (let ((_%e98740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98737%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98740%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e98740%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e98740%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98737%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn98737%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn98737%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn98733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98733%_))
            (let ((_%e98735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98733%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e98735%_))
            (macro-wrong-number-of-values-exception? _%exn98733%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn98729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98729%_))
            (let ((_%e98731%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98729%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98731%_)
                  (macro-wrong-number-of-values-exception-code _%e98731%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e98731%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn98729%_)
                (macro-wrong-number-of-values-exception-code _%exn98729%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn98729%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn98725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98725%_))
            (let ((_%e98727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98725%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98727%_)
                  (macro-wrong-number-of-values-exception-rte _%e98727%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e98727%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn98725%_)
                (macro-wrong-number-of-values-exception-rte _%exn98725%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn98725%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn98719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98719%_))
            (let ((_%e98722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98719%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98722%_)
                  (macro-wrong-number-of-values-exception-vals _%e98722%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e98722%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn98719%_)
                (macro-wrong-number-of-values-exception-vals _%exn98719%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn98719%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn98713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98713%_))
            (let ((_%e98716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98713%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e98716%_))
            (macro-wrong-processor-c-return-exception? _%exn98713%_))))))
