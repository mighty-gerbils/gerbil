(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1768863411)
  (begin
    (define Exception::t
      (let ((__tmp114284 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp114284
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args114254%_
        (apply make-instance Exception::t _%$args114254%_)))
    (define StackTrace::t
      (let ((__tmp114285 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp114285
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args114251%_
        (apply make-instance StackTrace::t _%$args114251%_)))
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
      (let ((__tmp114286 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp114286
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args114248%_ (apply make-instance Error::t _%$args114248%_)))
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
      (let ((__tmp114287 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp114287
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args114245%_
        (apply make-instance ContractViolation::t _%$args114245%_)))
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
      (let ((__tmp114288 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp114288
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args114242%_
        (apply make-instance RuntimeException::t _%$args114242%_)))
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
      (lambda (_%exn114237%_ _%continue114238%_)
        (let ((_%exn114240%_ (wrap-runtime-exception _%exn114237%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn114240%_ _%continue114238%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn114233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn114233%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn114233%_ 'continuation))
                '#!void
                (let ((__tmp114289
                       (lambda (_%cont114235%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn114233%_
                            'continuation
                            _%cont114235%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp114289)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn114233%_))))
    (define error
      (lambda (_%message114230%_ . _%irritants114231%_)
        (raise (let ((__obj114281
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj114281
                  _%message114230%_
                  'irritants:
                  _%irritants114231%_)
                 __obj114281))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords114202%_
               _%ctx114197114203%_
               _%contract-expr114198114205%_
               _%value114199114207%_
               _%message114209%_)
        (let* ((_%ctx114211%_
                (if (eq? _%ctx114197114203%_ absent-value)
                    '#f
                    _%ctx114197114203%_))
               (_%contract-expr114213%_
                (if (eq? _%contract-expr114198114205%_ absent-value)
                    '#f
                    _%contract-expr114198114205%_))
               (_%value114215%_
                (if (eq? _%value114199114207%_ absent-value)
                    '#f
                    _%value114199114207%_)))
          (raise (let ((__obj114282
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj114282
                    _%message114209%_
                    'where:
                    _%ctx114211%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr114213%_
                                (cons 'value: (cons _%value114215%_ '())))))
                   __obj114282)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords114220%_ . _%args114221%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords114220%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114220%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114220%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114220%_
                  'value:
                  absent-value))
               _%args114221%_)))
    (define __raise-contract-violation-error
      (lambda _%args114200114227%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args114200114227%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler114171%_ _%thunk114172%_)
        (if (procedure? _%handler114171%_)
            (let ((_%handler114176%_ _%handler114171%_))
              (if (procedure? _%thunk114172%_)
                  (let ((_%thunk114186%_ _%thunk114172%_))
                    (__with-exception-handler
                     _%handler114176%_
                     _%thunk114186%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114172%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler114171%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler114146%_ _%thunk114147%_)
        (let* ((_%handler114150%_ _%handler114146%_)
               (_%thunk114158%_ _%thunk114147%_)
               (__tmp114290
                (lambda (_%exn114167%_)
                  (let ((_%exn114169%_ (wrap-runtime-exception _%exn114167%_)))
                    (declare (not safe))
                    (_%handler114150%_ _%exn114169%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp114290 _%thunk114158%_))))
    (define with-catch
      (lambda (_%handler114121%_ _%thunk114122%_)
        (if (procedure? _%handler114121%_)
            (let ((_%handler114126%_ _%handler114121%_))
              (if (procedure? _%thunk114122%_)
                  (let ((_%thunk114136%_ _%thunk114122%_))
                    (__with-catch _%handler114126%_ _%thunk114136%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114122%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler114121%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler114096%_ _%thunk114097%_)
        (let* ((_%handler114100%_ _%handler114096%_)
               (_%thunk114108%_ _%thunk114097%_)
               (__tmp114291
                (lambda (_%cont114117%_)
                  (__with-exception-handler
                   (lambda (_%exn114119%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont114117%_
                        _%handler114100%_
                        _%exn114119%_)))
                   _%thunk114108%_))))
          (declare (not safe))
          (##continuation-capture __tmp114291))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn114083%_)
        (if (or (heap-overflow-exception? _%exn114083%_)
                (stack-overflow-exception? _%exn114083%_))
            _%exn114083%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn114083%_))
                _%exn114083%_
                (if (macro-exception? _%exn114083%_)
                    (let ((_%rte114091%_
                           (let ((__obj114283
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj114283
                                _%exn114083%_
                                '2
                                '#f
                                '#f))
                             __obj114283)))
                      (let ((__tmp114292
                             (lambda (_%cont114093%_)
                               (let ((__tmp114293
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont114093%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte114091%_
                                  'continuation
                                  __tmp114293)))))
                        (declare (not safe))
                        (##continuation-capture __tmp114292))
                      _%rte114091%_)
                    _%exn114083%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj114078%_)
        (let ((_%$e114080%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj114078%_))))
          (if _%$e114080%_ _%$e114080%_ (error-exception? _%obj114078%_)))))
    (define error-message
      (lambda (_%obj114071%_)
        (let ((_%$e114073%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj114071%_ 'message false))))
          (if _%$e114073%_
              _%$e114073%_
              (if (error-exception? _%obj114071%_)
                  (error-exception-message _%obj114071%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj114066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114066%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114066%_ 'irritants))
            (if (error-exception? _%obj114066%_)
                (error-exception-parameters _%obj114066%_)
                '#f))))
    (define error-trace
      (lambda (_%obj114064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114064%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114064%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e114045%_ _%port114046%_)
        (let ((_%$e114048%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e114045%_ 'display-exception))))
          (if _%$e114048%_
              ((lambda (_%f114051%_) (_%f114051%_ _%e114045%_ _%port114046%_))
               _%$e114048%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e114045%_ _%port114046%_))))))
    (define display-exception__0
      (lambda (_%e114057%_)
        (let ((_%port114059%_ (current-error-port)))
          (display-exception__% _%e114057%_ _%port114059%_))))
    (define display-exception
      (lambda _g114294_
        (let ((_g114295_ (let () (declare (not safe)) (##length _g114294_))))
          (cond ((let () (declare (not safe)) (##fx= _g114295_ 1))
                 (apply display-exception__0 _g114294_))
                ((let () (declare (not safe)) (##fx= _g114295_ 2))
                 (apply display-exception__% _g114294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g114294_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self114023%_ _%message114024%_ . _%rest114025%_)
        (let* ((_%self114028%_ _%self114023%_)
               (_%message114042%_
                (if (string? _%message114024%_)
                    _%message114024%_
                    (call-with-output-string
                     '""
                     (lambda (_%g114037114039%_)
                       (display _%message114024%_ _%g114037114039%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self114028%_ 'message _%message114042%_))
          (apply class-instance-init! _%self114028%_ _%rest114025%_))))
    (define Error:::init!::specialize
      (lambda (__klass114256 __method-table114257)
        (let ((__message114258
               (let ((__slot114259
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114256 'message))))
                 (if __slot114259
                     __slot114259
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self114023%_ _%message114024%_ . _%rest114025%_)
            (let* ((_%self114028%_ _%self114023%_)
                   (_%message114042%_
                    (if (string? _%message114024%_)
                        _%message114024%_
                        (call-with-output-string
                         '""
                         (lambda (_%g114037114039%_)
                           (display _%message114024%_ _%g114037114039%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self114028%_
                 _%message114042%_
                 __message114258
                 '#f
                 '#f))
              (apply class-instance-init! _%self114028%_ _%rest114025%_))))))
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
      (lambda (_%self113747%_ _%port113748%_)
        (let ((_%self113751%_ _%self113747%_))
          (let ((_%tmp-port113761%_ (open-output-string))
                (_%display-error-newline113762%_
                 (> (output-port-column _%port113748%_) '0)))
            (fix-port-width! _%tmp-port113761%_)
            (let ((__tmp114296
                   (lambda ()
                     (if _%display-error-newline113762%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e113765%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113751%_ 'where))))
                       (if _%$e113765%_ (display _%$e113765%_) (display '"?")))
                     (let ((__tmp114297
                            (let ((__tmp114298
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self113751%_))))
                              (declare (not safe))
                              (##type-name __tmp114298))))
                       (declare (not safe))
                       (display* '" [" __tmp114297 '"]: "))
                     (let ((__tmp114299
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113751%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp114299))
                     (let ((_%irritants113769%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self113751%_ 'irritants))))
                       (if (null? _%irritants113769%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj113771%_)
                                (if (u8vector? _%obj113771%_)
                                    (let ((__tmp114300
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj113771%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp114300))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj113771%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants113769%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont113772113774%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self113751%_
                                   'continuation))))
                           (if _%cont113772113774%_
                               (let ((_%cont113777%_ _%cont113772113774%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont113777%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp114296
               current-output-port
               _%tmp-port113761%_))
            (let ((__tmp114301 (get-output-string _%tmp-port113761%_)))
              (declare (not safe))
              (##write-string __tmp114301 _%port113748%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass114260 __method-table114261)
        (let ((__irritants114262
               (let ((__slot114266
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'irritants))))
                 (if __slot114266
                     __slot114266
                     (error '"Unknown slot" 'irritants))))
              (__continuation114263
               (let ((__slot114267
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'continuation))))
                 (if __slot114267
                     __slot114267
                     (error '"Unknown slot" 'continuation))))
              (__message114264
               (let ((__slot114268
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'message))))
                 (if __slot114268
                     __slot114268
                     (error '"Unknown slot" 'message))))
              (__where114265
               (let ((__slot114269
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'where))))
                 (if __slot114269
                     __slot114269
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self113747%_ _%port113748%_)
            (let ((_%self113751%_ _%self113747%_))
              (let ((_%tmp-port113761%_ (open-output-string))
                    (_%display-error-newline113762%_
                     (> (output-port-column _%port113748%_) '0)))
                (fix-port-width! _%tmp-port113761%_)
                (let ((__tmp114302
                       (lambda ()
                         (if _%display-error-newline113762%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e113765%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113751%_
                                   __where114265
                                   '#f
                                   '#f))))
                           (if _%$e113765%_
                               (display _%$e113765%_)
                               (display '"?")))
                         (let ((__tmp114303
                                (let ((__tmp114304
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self113751%_))))
                                  (declare (not safe))
                                  (##type-name __tmp114304))))
                           (declare (not safe))
                           (display* '" [" __tmp114303 '"]: "))
                         (let ((__tmp114305
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113751%_
                                   __message114264
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp114305))
                         (let ((_%irritants113769%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self113751%_
                                   __irritants114262
                                   '#f
                                   '#f))))
                           (if (null? _%irritants113769%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj113771%_)
                                    (if (u8vector? _%obj113771%_)
                                        (let ((__tmp114306
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj113771%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp114306))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj113771%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants113769%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont113772113774%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self113751%_
                                       __continuation114263
                                       '#f
                                       '#f))))
                               (if _%cont113772113774%_
                                   (let ((_%cont113777%_ _%cont113772113774%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont113777%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp114302
                   current-output-port
                   _%tmp-port113761%_))
                (let ((__tmp114307 (get-output-string _%tmp-port113761%_)))
                  (declare (not safe))
                  (##write-string __tmp114307 _%port113748%_))))))))
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
      (lambda (_%self113603%_ _%port113604%_)
        (let* ((_%self113607%_ _%self113603%_)
               (_%tmp-port113617%_ (open-output-string)))
          (fix-port-width! _%tmp-port113617%_)
          (let ((__tmp114308
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self113607%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp114308 _%tmp-port113617%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont113618113620%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self113607%_ 'continuation))))
                (if _%cont113618113620%_
                    (let ((_%cont113623%_ _%cont113618113620%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port113617%_)
                      (newline _%tmp-port113617%_)
                      (display-continuation-backtrace
                       _%cont113623%_
                       _%tmp-port113617%_))
                    '#f))
              '#!void)
          (let ((__tmp114309 (get-output-string _%tmp-port113617%_)))
            (declare (not safe))
            (##write-string __tmp114309 _%port113604%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass114270 __method-table114271)
        (let ((__continuation114272
               (let ((__slot114274
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114270 'continuation))))
                 (if __slot114274
                     __slot114274
                     (error '"Unknown slot" 'continuation))))
              (__exception114273
               (let ((__slot114275
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114270 'exception))))
                 (if __slot114275
                     __slot114275
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self113603%_ _%port113604%_)
            (let* ((_%self113607%_ _%self113603%_)
                   (_%tmp-port113617%_ (open-output-string)))
              (fix-port-width! _%tmp-port113617%_)
              (let ((__tmp114310
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self113607%_
                        __exception114273
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp114310 _%tmp-port113617%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont113618113620%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self113607%_
                            __continuation114272
                            '#f
                            '#f))))
                    (if _%cont113618113620%_
                        (let ((_%cont113623%_ _%cont113618113620%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port113617%_)
                          (newline _%tmp-port113617%_)
                          (display-continuation-backtrace
                           _%cont113623%_
                           _%tmp-port113617%_))
                        '#f))
                  '#!void)
              (let ((__tmp114311 (get-output-string _%tmp-port113617%_)))
                (declare (not safe))
                (##write-string __tmp114311 _%port113604%_)))))))
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
      (lambda (_%port113475%_)
        (if (macro-character-port? _%port113475%_)
            (let ((_%old-width113477%_
                   (macro-character-port-output-width _%port113475%_)))
              (macro-character-port-output-width-set!
               _%port113475%_
               (lambda (_%port113479%_) '256))
              _%old-width113477%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port113472%_ _%old-width113473%_)
        (if (macro-character-port? _%port113472%_)
            (macro-character-port-output-width-set!
             _%port113472%_
             _%old-width113473%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e113470%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e113470%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn113464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113464%_))
            (let ((_%e113467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113464%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e113467%_))
            (macro-abandoned-mutex-exception? _%exn113464%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn113460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113460%_))
            (let ((_%e113462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113460%_ 'exception))))
              (macro-cfun-conversion-exception? _%e113462%_))
            (macro-cfun-conversion-exception? _%exn113460%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn113456%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113456%_))
            (let ((_%e113458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113456%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113458%_)
                  (macro-cfun-conversion-exception-arguments _%e113458%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e113458%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113456%_)
                (macro-cfun-conversion-exception-arguments _%exn113456%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn113456%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn113452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113452%_))
            (let ((_%e113454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113452%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113454%_)
                  (macro-cfun-conversion-exception-code _%e113454%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e113454%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113452%_)
                (macro-cfun-conversion-exception-code _%exn113452%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn113452%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn113448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113448%_))
            (let ((_%e113450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113448%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113450%_)
                  (macro-cfun-conversion-exception-message _%e113450%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e113450%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113448%_)
                (macro-cfun-conversion-exception-message _%exn113448%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn113448%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn113442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113442%_))
            (let ((_%e113445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113442%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113445%_)
                  (macro-cfun-conversion-exception-procedure _%e113445%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e113445%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113442%_)
                (macro-cfun-conversion-exception-procedure _%exn113442%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn113442%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn113438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113438%_))
            (let ((_%e113440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113438%_ 'exception))))
              (macro-datum-parsing-exception? _%e113440%_))
            (macro-datum-parsing-exception? _%exn113438%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn113434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113434%_))
            (let ((_%e113436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113434%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113436%_)
                  (macro-datum-parsing-exception-kind _%e113436%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e113436%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113434%_)
                (macro-datum-parsing-exception-kind _%exn113434%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn113434%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn113430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113430%_))
            (let ((_%e113432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113430%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113432%_)
                  (macro-datum-parsing-exception-parameters _%e113432%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e113432%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113430%_)
                (macro-datum-parsing-exception-parameters _%exn113430%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn113430%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn113424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113424%_))
            (let ((_%e113427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113424%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113427%_)
                  (macro-datum-parsing-exception-readenv _%e113427%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e113427%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113424%_)
                (macro-datum-parsing-exception-readenv _%exn113424%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn113424%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn113418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113418%_))
            (let ((_%e113421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113418%_ 'exception))))
              (macro-deadlock-exception? _%e113421%_))
            (macro-deadlock-exception? _%exn113418%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn113414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113414%_))
            (let ((_%e113416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113414%_ 'exception))))
              (macro-divide-by-zero-exception? _%e113416%_))
            (macro-divide-by-zero-exception? _%exn113414%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn113410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113410%_))
            (let ((_%e113412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113410%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113412%_)
                  (macro-divide-by-zero-exception-arguments _%e113412%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e113412%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113410%_)
                (macro-divide-by-zero-exception-arguments _%exn113410%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn113410%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn113404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113404%_))
            (let ((_%e113407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113404%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113407%_)
                  (macro-divide-by-zero-exception-procedure _%e113407%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e113407%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113404%_)
                (macro-divide-by-zero-exception-procedure _%exn113404%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn113404%_ '())))))))
    (define error-exception?
      (lambda (_%exn113400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113400%_))
            (let ((_%e113402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113400%_ 'exception))))
              (macro-error-exception? _%e113402%_))
            (macro-error-exception? _%exn113400%_))))
    (define error-exception-message
      (lambda (_%exn113396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113396%_))
            (let ((_%e113398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113396%_ 'exception))))
              (if (macro-error-exception? _%e113398%_)
                  (macro-error-exception-message _%e113398%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e113398%_ '())))))
            (if (macro-error-exception? _%exn113396%_)
                (macro-error-exception-message _%exn113396%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn113396%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn113390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113390%_))
            (let ((_%e113393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113390%_ 'exception))))
              (if (macro-error-exception? _%e113393%_)
                  (macro-error-exception-parameters _%e113393%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e113393%_ '())))))
            (if (macro-error-exception? _%exn113390%_)
                (macro-error-exception-parameters _%exn113390%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn113390%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn113386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113386%_))
            (let ((_%e113388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113386%_ 'exception))))
              (macro-expression-parsing-exception? _%e113388%_))
            (macro-expression-parsing-exception? _%exn113386%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn113382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113382%_))
            (let ((_%e113384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113382%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113384%_)
                  (macro-expression-parsing-exception-kind _%e113384%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e113384%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113382%_)
                (macro-expression-parsing-exception-kind _%exn113382%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn113382%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn113378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113378%_))
            (let ((_%e113380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113378%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113380%_)
                  (macro-expression-parsing-exception-parameters _%e113380%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e113380%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113378%_)
                (macro-expression-parsing-exception-parameters _%exn113378%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn113378%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn113372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113372%_))
            (let ((_%e113375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113372%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113375%_)
                  (macro-expression-parsing-exception-source _%e113375%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e113375%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113372%_)
                (macro-expression-parsing-exception-source _%exn113372%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn113372%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn113368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113368%_))
            (let ((_%e113370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113368%_ 'exception))))
              (macro-file-exists-exception? _%e113370%_))
            (macro-file-exists-exception? _%exn113368%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn113364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113364%_))
            (let ((_%e113366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113364%_ 'exception))))
              (if (macro-file-exists-exception? _%e113366%_)
                  (macro-file-exists-exception-arguments _%e113366%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e113366%_ '())))))
            (if (macro-file-exists-exception? _%exn113364%_)
                (macro-file-exists-exception-arguments _%exn113364%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn113364%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn113358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113358%_))
            (let ((_%e113361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113358%_ 'exception))))
              (if (macro-file-exists-exception? _%e113361%_)
                  (macro-file-exists-exception-procedure _%e113361%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e113361%_ '())))))
            (if (macro-file-exists-exception? _%exn113358%_)
                (macro-file-exists-exception-procedure _%exn113358%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn113358%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn113354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113354%_))
            (let ((_%e113356%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113354%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e113356%_))
            (macro-fixnum-overflow-exception? _%exn113354%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn113350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113350%_))
            (let ((_%e113352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113350%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113352%_)
                  (macro-fixnum-overflow-exception-arguments _%e113352%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e113352%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113350%_)
                (macro-fixnum-overflow-exception-arguments _%exn113350%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn113350%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn113344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113344%_))
            (let ((_%e113347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113344%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113347%_)
                  (macro-fixnum-overflow-exception-procedure _%e113347%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e113347%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113344%_)
                (macro-fixnum-overflow-exception-procedure _%exn113344%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn113344%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn113338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113338%_))
            (let ((_%e113341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113338%_ 'exception))))
              (macro-heap-overflow-exception? _%e113341%_))
            (macro-heap-overflow-exception? _%exn113338%_))))
    (define inactive-thread-exception?
      (lambda (_%exn113334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113334%_))
            (let ((_%e113336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113334%_ 'exception))))
              (macro-inactive-thread-exception? _%e113336%_))
            (macro-inactive-thread-exception? _%exn113334%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn113330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113330%_))
            (let ((_%e113332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113330%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113332%_)
                  (macro-inactive-thread-exception-arguments _%e113332%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e113332%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113330%_)
                (macro-inactive-thread-exception-arguments _%exn113330%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn113330%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn113324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113324%_))
            (let ((_%e113327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113324%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113327%_)
                  (macro-inactive-thread-exception-procedure _%e113327%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e113327%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113324%_)
                (macro-inactive-thread-exception-procedure _%exn113324%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn113324%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn113320%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113320%_))
            (let ((_%e113322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113320%_ 'exception))))
              (macro-initialized-thread-exception? _%e113322%_))
            (macro-initialized-thread-exception? _%exn113320%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn113316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113316%_))
            (let ((_%e113318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113316%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113318%_)
                  (macro-initialized-thread-exception-arguments _%e113318%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e113318%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113316%_)
                (macro-initialized-thread-exception-arguments _%exn113316%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn113316%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn113310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113310%_))
            (let ((_%e113313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113310%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113313%_)
                  (macro-initialized-thread-exception-procedure _%e113313%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e113313%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113310%_)
                (macro-initialized-thread-exception-procedure _%exn113310%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn113310%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn113306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113306%_))
            (let ((_%e113308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113306%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e113308%_))
            (macro-invalid-hash-number-exception? _%exn113306%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn113302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113302%_))
            (let ((_%e113304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113302%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113304%_)
                  (macro-invalid-hash-number-exception-arguments _%e113304%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e113304%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113302%_)
                (macro-invalid-hash-number-exception-arguments _%exn113302%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn113302%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn113296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113296%_))
            (let ((_%e113299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113296%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113299%_)
                  (macro-invalid-hash-number-exception-procedure _%e113299%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e113299%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113296%_)
                (macro-invalid-hash-number-exception-procedure _%exn113296%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn113296%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn113292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113292%_))
            (let ((_%e113294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113292%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e113294%_))
            (macro-invalid-utf8-encoding-exception? _%exn113292%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn113288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113288%_))
            (let ((_%e113290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113288%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113290%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e113290%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e113290%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113288%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn113288%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn113288%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn113282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113282%_))
            (let ((_%e113285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113282%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113285%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e113285%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e113285%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113282%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn113282%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn113282%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn113278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113278%_))
            (let ((_%e113280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113278%_ 'exception))))
              (macro-join-timeout-exception? _%e113280%_))
            (macro-join-timeout-exception? _%exn113278%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn113274%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113274%_))
            (let ((_%e113276%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113274%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113276%_)
                  (macro-join-timeout-exception-arguments _%e113276%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e113276%_ '())))))
            (if (macro-join-timeout-exception? _%exn113274%_)
                (macro-join-timeout-exception-arguments _%exn113274%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn113274%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn113268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113268%_))
            (let ((_%e113271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113268%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113271%_)
                  (macro-join-timeout-exception-procedure _%e113271%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e113271%_ '())))))
            (if (macro-join-timeout-exception? _%exn113268%_)
                (macro-join-timeout-exception-procedure _%exn113268%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn113268%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn113264%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113264%_))
            (let ((_%e113266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113264%_ 'exception))))
              (macro-keyword-expected-exception? _%e113266%_))
            (macro-keyword-expected-exception? _%exn113264%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn113260%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113260%_))
            (let ((_%e113262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113260%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113262%_)
                  (macro-keyword-expected-exception-arguments _%e113262%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e113262%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113260%_)
                (macro-keyword-expected-exception-arguments _%exn113260%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn113260%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn113254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113254%_))
            (let ((_%e113257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113254%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113257%_)
                  (macro-keyword-expected-exception-procedure _%e113257%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e113257%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113254%_)
                (macro-keyword-expected-exception-procedure _%exn113254%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn113254%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn113250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113250%_))
            (let ((_%e113252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113250%_ 'exception))))
              (macro-length-mismatch-exception? _%e113252%_))
            (macro-length-mismatch-exception? _%exn113250%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn113246%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113246%_))
            (let ((_%e113248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113246%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113248%_)
                  (macro-length-mismatch-exception-arg-id _%e113248%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e113248%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113246%_)
                (macro-length-mismatch-exception-arg-id _%exn113246%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn113246%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn113242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113242%_))
            (let ((_%e113244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113242%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113244%_)
                  (macro-length-mismatch-exception-arguments _%e113244%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e113244%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113242%_)
                (macro-length-mismatch-exception-arguments _%exn113242%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn113242%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn113236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113236%_))
            (let ((_%e113239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113236%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113239%_)
                  (macro-length-mismatch-exception-procedure _%e113239%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e113239%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113236%_)
                (macro-length-mismatch-exception-procedure _%exn113236%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn113236%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn113232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113232%_))
            (let ((_%e113234%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113232%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e113234%_))
            (macro-mailbox-receive-timeout-exception? _%exn113232%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn113228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113228%_))
            (let ((_%e113230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113228%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113230%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e113230%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e113230%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113228%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn113228%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn113228%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn113222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113222%_))
            (let ((_%e113225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113222%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113225%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e113225%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e113225%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113222%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn113222%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn113222%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn113218%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113218%_))
            (let ((_%e113220%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113218%_ 'exception))))
              (macro-module-not-found-exception? _%e113220%_))
            (macro-module-not-found-exception? _%exn113218%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn113214%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113214%_))
            (let ((_%e113216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113214%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113216%_)
                  (macro-module-not-found-exception-arguments _%e113216%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e113216%_ '())))))
            (if (macro-module-not-found-exception? _%exn113214%_)
                (macro-module-not-found-exception-arguments _%exn113214%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn113214%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn113208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113208%_))
            (let ((_%e113211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113208%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113211%_)
                  (macro-module-not-found-exception-procedure _%e113211%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e113211%_ '())))))
            (if (macro-module-not-found-exception? _%exn113208%_)
                (macro-module-not-found-exception-procedure _%exn113208%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn113208%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn113202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113202%_))
            (let ((_%e113205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113202%_ 'exception))))
              (macro-multiple-c-return-exception? _%e113205%_))
            (macro-multiple-c-return-exception? _%exn113202%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn113198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113198%_))
            (let ((_%e113200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113198%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e113200%_))
            (macro-no-such-file-or-directory-exception? _%exn113198%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn113194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113194%_))
            (let ((_%e113196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113194%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113196%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e113196%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e113196%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113194%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn113194%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn113194%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn113188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113188%_))
            (let ((_%e113191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113188%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113191%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e113191%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e113191%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113188%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn113188%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn113188%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn113184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113184%_))
            (let ((_%e113186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113184%_ 'exception))))
              (macro-noncontinuable-exception? _%e113186%_))
            (macro-noncontinuable-exception? _%exn113184%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn113178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113178%_))
            (let ((_%e113181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113178%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e113181%_)
                  (macro-noncontinuable-exception-reason _%e113181%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e113181%_ '())))))
            (if (macro-noncontinuable-exception? _%exn113178%_)
                (macro-noncontinuable-exception-reason _%exn113178%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn113178%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn113174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113174%_))
            (let ((_%e113176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113174%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e113176%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn113174%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn113170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113170%_))
            (let ((_%e113172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113170%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113172%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e113172%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e113172%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113170%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn113170%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn113170%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn113164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113164%_))
            (let ((_%e113167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113164%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113167%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e113167%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e113167%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113164%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn113164%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn113164%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn113160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113160%_))
            (let ((_%e113162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113160%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e113162%_))
            (macro-nonprocedure-operator-exception? _%exn113160%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn113156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113156%_))
            (let ((_%e113158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113156%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113158%_)
                  (macro-nonprocedure-operator-exception-arguments _%e113158%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e113158%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113156%_)
                (macro-nonprocedure-operator-exception-arguments _%exn113156%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn113156%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn113152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113152%_))
            (let ((_%e113154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113152%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113154%_)
                  (macro-nonprocedure-operator-exception-code _%e113154%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e113154%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113152%_)
                (macro-nonprocedure-operator-exception-code _%exn113152%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn113152%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn113148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113148%_))
            (let ((_%e113150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113148%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113150%_)
                  (macro-nonprocedure-operator-exception-operator _%e113150%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e113150%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113148%_)
                (macro-nonprocedure-operator-exception-operator _%exn113148%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn113148%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn113142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113142%_))
            (let ((_%e113145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113142%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113145%_)
                  (macro-nonprocedure-operator-exception-rte _%e113145%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e113145%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113142%_)
                (macro-nonprocedure-operator-exception-rte _%exn113142%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn113142%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn113138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113138%_))
            (let ((_%e113140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113138%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e113140%_))
            (macro-not-in-compilation-context-exception? _%exn113138%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn113134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113134%_))
            (let ((_%e113136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113134%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113136%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e113136%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e113136%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113134%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn113134%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn113134%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn113128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113128%_))
            (let ((_%e113131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113128%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113131%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e113131%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e113131%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113128%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn113128%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn113128%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn113124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113124%_))
            (let ((_%e113126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113124%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e113126%_))
            (macro-number-of-arguments-limit-exception? _%exn113124%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn113120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113120%_))
            (let ((_%e113122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113120%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113122%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e113122%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e113122%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113120%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn113120%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn113120%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn113114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113114%_))
            (let ((_%e113117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113114%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113117%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e113117%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e113117%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113114%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn113114%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn113114%_ '())))))))
    (define os-exception?
      (lambda (_%exn113110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113110%_))
            (let ((_%e113112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113110%_ 'exception))))
              (macro-os-exception? _%e113112%_))
            (macro-os-exception? _%exn113110%_))))
    (define os-exception-arguments
      (lambda (_%exn113106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113106%_))
            (let ((_%e113108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113106%_ 'exception))))
              (if (macro-os-exception? _%e113108%_)
                  (macro-os-exception-arguments _%e113108%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e113108%_ '())))))
            (if (macro-os-exception? _%exn113106%_)
                (macro-os-exception-arguments _%exn113106%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn113106%_ '())))))))
    (define os-exception-code
      (lambda (_%exn113102%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113102%_))
            (let ((_%e113104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113102%_ 'exception))))
              (if (macro-os-exception? _%e113104%_)
                  (macro-os-exception-code _%e113104%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e113104%_ '())))))
            (if (macro-os-exception? _%exn113102%_)
                (macro-os-exception-code _%exn113102%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn113102%_ '())))))))
    (define os-exception-message
      (lambda (_%exn113098%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113098%_))
            (let ((_%e113100%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113098%_ 'exception))))
              (if (macro-os-exception? _%e113100%_)
                  (macro-os-exception-message _%e113100%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e113100%_ '())))))
            (if (macro-os-exception? _%exn113098%_)
                (macro-os-exception-message _%exn113098%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn113098%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn113092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113092%_))
            (let ((_%e113095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113092%_ 'exception))))
              (if (macro-os-exception? _%e113095%_)
                  (macro-os-exception-procedure _%e113095%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e113095%_ '())))))
            (if (macro-os-exception? _%exn113092%_)
                (macro-os-exception-procedure _%exn113092%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn113092%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn113088%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113088%_))
            (let ((_%e113090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113088%_ 'exception))))
              (macro-permission-denied-exception? _%e113090%_))
            (macro-permission-denied-exception? _%exn113088%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn113084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113084%_))
            (let ((_%e113086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113084%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113086%_)
                  (macro-permission-denied-exception-arguments _%e113086%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e113086%_ '())))))
            (if (macro-permission-denied-exception? _%exn113084%_)
                (macro-permission-denied-exception-arguments _%exn113084%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn113084%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn113078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113078%_))
            (let ((_%e113081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113078%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113081%_)
                  (macro-permission-denied-exception-procedure _%e113081%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e113081%_ '())))))
            (if (macro-permission-denied-exception? _%exn113078%_)
                (macro-permission-denied-exception-procedure _%exn113078%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn113078%_ '())))))))
    (define range-exception?
      (lambda (_%exn113074%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113074%_))
            (let ((_%e113076%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113074%_ 'exception))))
              (macro-range-exception? _%e113076%_))
            (macro-range-exception? _%exn113074%_))))
    (define range-exception-arg-id
      (lambda (_%exn113070%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113070%_))
            (let ((_%e113072%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113070%_ 'exception))))
              (if (macro-range-exception? _%e113072%_)
                  (macro-range-exception-arg-id _%e113072%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e113072%_ '())))))
            (if (macro-range-exception? _%exn113070%_)
                (macro-range-exception-arg-id _%exn113070%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn113070%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn113066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113066%_))
            (let ((_%e113068%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113066%_ 'exception))))
              (if (macro-range-exception? _%e113068%_)
                  (macro-range-exception-arguments _%e113068%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e113068%_ '())))))
            (if (macro-range-exception? _%exn113066%_)
                (macro-range-exception-arguments _%exn113066%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn113066%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn113060%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113060%_))
            (let ((_%e113063%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113060%_ 'exception))))
              (if (macro-range-exception? _%e113063%_)
                  (macro-range-exception-procedure _%e113063%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e113063%_ '())))))
            (if (macro-range-exception? _%exn113060%_)
                (macro-range-exception-procedure _%exn113060%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn113060%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn113056%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113056%_))
            (let ((_%e113058%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113056%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e113058%_))
            (macro-rpc-remote-error-exception? _%exn113056%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn113052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113052%_))
            (let ((_%e113054%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113052%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113054%_)
                  (macro-rpc-remote-error-exception-arguments _%e113054%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e113054%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113052%_)
                (macro-rpc-remote-error-exception-arguments _%exn113052%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn113052%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn113048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113048%_))
            (let ((_%e113050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113048%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113050%_)
                  (macro-rpc-remote-error-exception-message _%e113050%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e113050%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113048%_)
                (macro-rpc-remote-error-exception-message _%exn113048%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn113048%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn113042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113042%_))
            (let ((_%e113045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113042%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113045%_)
                  (macro-rpc-remote-error-exception-procedure _%e113045%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e113045%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113042%_)
                (macro-rpc-remote-error-exception-procedure _%exn113042%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn113042%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn113038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113038%_))
            (let ((_%e113040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113038%_ 'exception))))
              (macro-scheduler-exception? _%e113040%_))
            (macro-scheduler-exception? _%exn113038%_))))
    (define scheduler-exception-reason
      (lambda (_%exn113032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113032%_))
            (let ((_%e113035%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113032%_ 'exception))))
              (if (macro-scheduler-exception? _%e113035%_)
                  (macro-scheduler-exception-reason _%e113035%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e113035%_ '())))))
            (if (macro-scheduler-exception? _%exn113032%_)
                (macro-scheduler-exception-reason _%exn113032%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn113032%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn113028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113028%_))
            (let ((_%e113030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113028%_ 'exception))))
              (macro-sfun-conversion-exception? _%e113030%_))
            (macro-sfun-conversion-exception? _%exn113028%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn113024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113024%_))
            (let ((_%e113026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113024%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113026%_)
                  (macro-sfun-conversion-exception-arguments _%e113026%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e113026%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113024%_)
                (macro-sfun-conversion-exception-arguments _%exn113024%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn113024%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn113020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113020%_))
            (let ((_%e113022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113020%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113022%_)
                  (macro-sfun-conversion-exception-code _%e113022%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e113022%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113020%_)
                (macro-sfun-conversion-exception-code _%exn113020%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn113020%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn113016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113016%_))
            (let ((_%e113018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113016%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113018%_)
                  (macro-sfun-conversion-exception-message _%e113018%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e113018%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113016%_)
                (macro-sfun-conversion-exception-message _%exn113016%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn113016%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn113010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113010%_))
            (let ((_%e113013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113010%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113013%_)
                  (macro-sfun-conversion-exception-procedure _%e113013%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e113013%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113010%_)
                (macro-sfun-conversion-exception-procedure _%exn113010%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn113010%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn113004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113004%_))
            (let ((_%e113007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113004%_ 'exception))))
              (macro-stack-overflow-exception? _%e113007%_))
            (macro-stack-overflow-exception? _%exn113004%_))))
    (define started-thread-exception?
      (lambda (_%exn113000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113000%_))
            (let ((_%e113002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113000%_ 'exception))))
              (macro-started-thread-exception? _%e113002%_))
            (macro-started-thread-exception? _%exn113000%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn112996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112996%_))
            (let ((_%e112998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112996%_ 'exception))))
              (if (macro-started-thread-exception? _%e112998%_)
                  (macro-started-thread-exception-arguments _%e112998%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e112998%_ '())))))
            (if (macro-started-thread-exception? _%exn112996%_)
                (macro-started-thread-exception-arguments _%exn112996%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn112996%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn112990%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112990%_))
            (let ((_%e112993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112990%_ 'exception))))
              (if (macro-started-thread-exception? _%e112993%_)
                  (macro-started-thread-exception-procedure _%e112993%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e112993%_ '())))))
            (if (macro-started-thread-exception? _%exn112990%_)
                (macro-started-thread-exception-procedure _%exn112990%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn112990%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn112986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112986%_))
            (let ((_%e112988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112986%_ 'exception))))
              (macro-terminated-thread-exception? _%e112988%_))
            (macro-terminated-thread-exception? _%exn112986%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn112982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112982%_))
            (let ((_%e112984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112982%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e112984%_)
                  (macro-terminated-thread-exception-arguments _%e112984%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e112984%_ '())))))
            (if (macro-terminated-thread-exception? _%exn112982%_)
                (macro-terminated-thread-exception-arguments _%exn112982%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn112982%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn112976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112976%_))
            (let ((_%e112979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112976%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e112979%_)
                  (macro-terminated-thread-exception-procedure _%e112979%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e112979%_ '())))))
            (if (macro-terminated-thread-exception? _%exn112976%_)
                (macro-terminated-thread-exception-procedure _%exn112976%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn112976%_ '())))))))
    (define type-exception?
      (lambda (_%exn112972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112972%_))
            (let ((_%e112974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112972%_ 'exception))))
              (macro-type-exception? _%e112974%_))
            (macro-type-exception? _%exn112972%_))))
    (define type-exception-arg-id
      (lambda (_%exn112968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112968%_))
            (let ((_%e112970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112968%_ 'exception))))
              (if (macro-type-exception? _%e112970%_)
                  (macro-type-exception-arg-id _%e112970%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e112970%_ '())))))
            (if (macro-type-exception? _%exn112968%_)
                (macro-type-exception-arg-id _%exn112968%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn112968%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn112964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112964%_))
            (let ((_%e112966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112964%_ 'exception))))
              (if (macro-type-exception? _%e112966%_)
                  (macro-type-exception-arguments _%e112966%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e112966%_ '())))))
            (if (macro-type-exception? _%exn112964%_)
                (macro-type-exception-arguments _%exn112964%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn112964%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn112960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112960%_))
            (let ((_%e112962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112960%_ 'exception))))
              (if (macro-type-exception? _%e112962%_)
                  (macro-type-exception-procedure _%e112962%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e112962%_ '())))))
            (if (macro-type-exception? _%exn112960%_)
                (macro-type-exception-procedure _%exn112960%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn112960%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn112954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112954%_))
            (let ((_%e112957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112954%_ 'exception))))
              (if (macro-type-exception? _%e112957%_)
                  (macro-type-exception-type-id _%e112957%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e112957%_ '())))))
            (if (macro-type-exception? _%exn112954%_)
                (macro-type-exception-type-id _%exn112954%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn112954%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn112950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112950%_))
            (let ((_%e112952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112950%_ 'exception))))
              (macro-unbound-global-exception? _%e112952%_))
            (macro-unbound-global-exception? _%exn112950%_))))
    (define unbound-global-exception-code
      (lambda (_%exn112946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112946%_))
            (let ((_%e112948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112946%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112948%_)
                  (macro-unbound-global-exception-code _%e112948%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e112948%_ '())))))
            (if (macro-unbound-global-exception? _%exn112946%_)
                (macro-unbound-global-exception-code _%exn112946%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn112946%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn112942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112942%_))
            (let ((_%e112944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112942%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112944%_)
                  (macro-unbound-global-exception-rte _%e112944%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e112944%_ '())))))
            (if (macro-unbound-global-exception? _%exn112942%_)
                (macro-unbound-global-exception-rte _%exn112942%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn112942%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn112936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112936%_))
            (let ((_%e112939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112936%_ 'exception))))
              (if (macro-unbound-global-exception? _%e112939%_)
                  (macro-unbound-global-exception-variable _%e112939%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e112939%_ '())))))
            (if (macro-unbound-global-exception? _%exn112936%_)
                (macro-unbound-global-exception-variable _%exn112936%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn112936%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn112932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112932%_))
            (let ((_%e112934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112932%_ 'exception))))
              (macro-unbound-key-exception? _%e112934%_))
            (macro-unbound-key-exception? _%exn112932%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn112928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112928%_))
            (let ((_%e112930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112928%_ 'exception))))
              (if (macro-unbound-key-exception? _%e112930%_)
                  (macro-unbound-key-exception-arguments _%e112930%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e112930%_ '())))))
            (if (macro-unbound-key-exception? _%exn112928%_)
                (macro-unbound-key-exception-arguments _%exn112928%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn112928%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn112922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112922%_))
            (let ((_%e112925%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112922%_ 'exception))))
              (if (macro-unbound-key-exception? _%e112925%_)
                  (macro-unbound-key-exception-procedure _%e112925%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e112925%_ '())))))
            (if (macro-unbound-key-exception? _%exn112922%_)
                (macro-unbound-key-exception-procedure _%exn112922%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn112922%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn112918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112918%_))
            (let ((_%e112920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112918%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e112920%_))
            (macro-unbound-os-environment-variable-exception? _%exn112918%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn112914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112914%_))
            (let ((_%e112916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112914%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e112916%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e112916%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e112916%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn112914%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn112914%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn112914%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn112908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112908%_))
            (let ((_%e112911%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112908%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e112911%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e112911%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e112911%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn112908%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn112908%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn112908%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn112904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112904%_))
            (let ((_%e112906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112904%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e112906%_))
            (macro-unbound-serial-number-exception? _%exn112904%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn112900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112900%_))
            (let ((_%e112902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112900%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e112902%_)
                  (macro-unbound-serial-number-exception-arguments _%e112902%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e112902%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn112900%_)
                (macro-unbound-serial-number-exception-arguments _%exn112900%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn112900%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn112894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112894%_))
            (let ((_%e112897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112894%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e112897%_)
                  (macro-unbound-serial-number-exception-procedure _%e112897%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e112897%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn112894%_)
                (macro-unbound-serial-number-exception-procedure _%exn112894%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn112894%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn112890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112890%_))
            (let ((_%e112892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112890%_ 'exception))))
              (macro-uncaught-exception? _%e112892%_))
            (macro-uncaught-exception? _%exn112890%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn112886%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112886%_))
            (let ((_%e112888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112886%_ 'exception))))
              (if (macro-uncaught-exception? _%e112888%_)
                  (macro-uncaught-exception-arguments _%e112888%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e112888%_ '())))))
            (if (macro-uncaught-exception? _%exn112886%_)
                (macro-uncaught-exception-arguments _%exn112886%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn112886%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn112882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112882%_))
            (let ((_%e112884%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112882%_ 'exception))))
              (if (macro-uncaught-exception? _%e112884%_)
                  (macro-uncaught-exception-procedure _%e112884%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e112884%_ '())))))
            (if (macro-uncaught-exception? _%exn112882%_)
                (macro-uncaught-exception-procedure _%exn112882%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn112882%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn112876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112876%_))
            (let ((_%e112879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112876%_ 'exception))))
              (if (macro-uncaught-exception? _%e112879%_)
                  (macro-uncaught-exception-reason _%e112879%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e112879%_ '())))))
            (if (macro-uncaught-exception? _%exn112876%_)
                (macro-uncaught-exception-reason _%exn112876%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn112876%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn112872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112872%_))
            (let ((_%e112874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112872%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e112874%_))
            (macro-uninitialized-thread-exception? _%exn112872%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn112868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112868%_))
            (let ((_%e112870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112868%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e112870%_)
                  (macro-uninitialized-thread-exception-arguments _%e112870%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e112870%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn112868%_)
                (macro-uninitialized-thread-exception-arguments _%exn112868%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn112868%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn112862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112862%_))
            (let ((_%e112865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112862%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e112865%_)
                  (macro-uninitialized-thread-exception-procedure _%e112865%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e112865%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn112862%_)
                (macro-uninitialized-thread-exception-procedure _%exn112862%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn112862%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn112858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112858%_))
            (let ((_%e112860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112858%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e112860%_))
            (macro-unknown-keyword-argument-exception? _%exn112858%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn112854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112854%_))
            (let ((_%e112856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112854%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e112856%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e112856%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e112856%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn112854%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn112854%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn112854%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn112848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112848%_))
            (let ((_%e112851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112848%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e112851%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e112851%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e112851%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn112848%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn112848%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn112848%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn112844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112844%_))
            (let ((_%e112846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112844%_ 'exception))))
              (macro-unterminated-process-exception? _%e112846%_))
            (macro-unterminated-process-exception? _%exn112844%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn112840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112840%_))
            (let ((_%e112842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112840%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e112842%_)
                  (macro-unterminated-process-exception-arguments _%e112842%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e112842%_ '())))))
            (if (macro-unterminated-process-exception? _%exn112840%_)
                (macro-unterminated-process-exception-arguments _%exn112840%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn112840%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn112834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112834%_))
            (let ((_%e112837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112834%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e112837%_)
                  (macro-unterminated-process-exception-procedure _%e112837%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e112837%_ '())))))
            (if (macro-unterminated-process-exception? _%exn112834%_)
                (macro-unterminated-process-exception-procedure _%exn112834%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn112834%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn112830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112830%_))
            (let ((_%e112832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112830%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e112832%_))
            (macro-wrong-number-of-arguments-exception? _%exn112830%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn112826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112826%_))
            (let ((_%e112828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112826%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e112828%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e112828%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e112828%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn112826%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn112826%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn112826%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn112820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112820%_))
            (let ((_%e112823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112820%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e112823%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e112823%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e112823%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn112820%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn112820%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn112820%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn112816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112816%_))
            (let ((_%e112818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112816%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e112818%_))
            (macro-wrong-number-of-values-exception? _%exn112816%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn112812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112812%_))
            (let ((_%e112814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112812%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112814%_)
                  (macro-wrong-number-of-values-exception-code _%e112814%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e112814%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112812%_)
                (macro-wrong-number-of-values-exception-code _%exn112812%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn112812%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn112808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112808%_))
            (let ((_%e112810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112808%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112810%_)
                  (macro-wrong-number-of-values-exception-rte _%e112810%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e112810%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112808%_)
                (macro-wrong-number-of-values-exception-rte _%exn112808%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn112808%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn112802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112802%_))
            (let ((_%e112805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112802%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e112805%_)
                  (macro-wrong-number-of-values-exception-vals _%e112805%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e112805%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn112802%_)
                (macro-wrong-number-of-values-exception-vals _%exn112802%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn112802%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn112796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn112796%_))
            (let ((_%e112799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn112796%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e112799%_))
            (macro-wrong-processor-c-return-exception? _%exn112796%_))))))
