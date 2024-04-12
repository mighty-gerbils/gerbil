(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712944161)
  (begin
    (define Exception::t
      (let ((__tmp102069 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp102069
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args102039%_
        (apply make-instance Exception::t _%$args102039%_)))
    (define StackTrace::t
      (let ((__tmp102070 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp102070
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args102036%_
        (apply make-instance StackTrace::t _%$args102036%_)))
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
      (let ((__tmp102071 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp102071
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args102033%_ (apply make-instance Error::t _%$args102033%_)))
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
      (let ((__tmp102072 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp102072
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args102030%_
        (apply make-instance ContractViolation::t _%$args102030%_)))
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
      (let ((__tmp102073 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp102073
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args102027%_
        (apply make-instance RuntimeException::t _%$args102027%_)))
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
      (lambda (_%exn102022%_ _%continue102023%_)
        (let ((_%exn102025%_ (wrap-runtime-exception _%exn102022%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn102025%_ _%continue102023%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn102018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn102018%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn102018%_ 'continuation))
                '#!void
                (let ((__tmp102074
                       (lambda (_%cont102020%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn102018%_
                            'continuation
                            _%cont102020%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp102074)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn102018%_))))
    (define error
      (lambda (_%message102015%_ . _%irritants102016%_)
        (raise (let ((__obj102066
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj102066
                  _%message102015%_
                  'irritants:
                  _%irritants102016%_)
                 __obj102066))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords101987%_
               _%ctx101982101988%_
               _%contract-expr101983101990%_
               _%value101984101992%_
               _%message101994%_)
        (let* ((_%ctx101996%_
                (if (eq? _%ctx101982101988%_ absent-value)
                    '#f
                    _%ctx101982101988%_))
               (_%contract-expr101998%_
                (if (eq? _%contract-expr101983101990%_ absent-value)
                    '#f
                    _%contract-expr101983101990%_))
               (_%value102000%_
                (if (eq? _%value101984101992%_ absent-value)
                    '#f
                    _%value101984101992%_)))
          (raise (let ((__obj102067
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj102067
                    _%message101994%_
                    'where:
                    _%ctx101996%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr101998%_
                                (cons 'value: (cons _%value102000%_ '())))))
                   __obj102067)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords102005%_ . _%args102006%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords102005%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102005%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102005%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102005%_
                  'value:
                  absent-value))
               _%args102006%_)))
    (define __raise-contract-violation-error
      (lambda _%args101985102012%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args101985102012%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler101956%_ _%thunk101957%_)
        (if (procedure? _%handler101956%_)
            (let ((_%handler101961%_ _%handler101956%_))
              (if (procedure? _%thunk101957%_)
                  (let ((_%thunk101971%_ _%thunk101957%_))
                    (__with-exception-handler
                     _%handler101961%_
                     _%thunk101971%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk101957%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler101956%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler101931%_ _%thunk101932%_)
        (let* ((_%handler101935%_ _%handler101931%_)
               (_%thunk101943%_ _%thunk101932%_)
               (__tmp102075
                (lambda (_%exn101952%_)
                  (let ((_%exn101954%_ (wrap-runtime-exception _%exn101952%_)))
                    (declare (not safe))
                    (_%handler101935%_ _%exn101954%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp102075 _%thunk101943%_))))
    (define with-catch
      (lambda (_%handler101906%_ _%thunk101907%_)
        (if (procedure? _%handler101906%_)
            (let ((_%handler101911%_ _%handler101906%_))
              (if (procedure? _%thunk101907%_)
                  (let ((_%thunk101921%_ _%thunk101907%_))
                    (__with-catch _%handler101911%_ _%thunk101921%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk101907%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler101906%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler101881%_ _%thunk101882%_)
        (let* ((_%handler101885%_ _%handler101881%_)
               (_%thunk101893%_ _%thunk101882%_)
               (__tmp102076
                (lambda (_%cont101902%_)
                  (__with-exception-handler
                   (lambda (_%exn101904%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont101902%_
                        _%handler101885%_
                        _%exn101904%_)))
                   _%thunk101893%_))))
          (declare (not safe))
          (##continuation-capture __tmp102076))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn101868%_)
        (if (or (heap-overflow-exception? _%exn101868%_)
                (stack-overflow-exception? _%exn101868%_))
            _%exn101868%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn101868%_))
                _%exn101868%_
                (if (macro-exception? _%exn101868%_)
                    (let ((_%rte101876%_
                           (let ((__obj102068
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj102068
                                _%exn101868%_
                                '2
                                '#f
                                '#f))
                             __obj102068)))
                      (let ((__tmp102077
                             (lambda (_%cont101878%_)
                               (let ((__tmp102078
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont101878%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte101876%_
                                  'continuation
                                  __tmp102078)))))
                        (declare (not safe))
                        (##continuation-capture __tmp102077))
                      _%rte101876%_)
                    _%exn101868%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj101863%_)
        (let ((_%$e101865%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj101863%_))))
          (if _%$e101865%_ _%$e101865%_ (error-exception? _%obj101863%_)))))
    (define error-message
      (lambda (_%obj101856%_)
        (let ((_%$e101858%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj101856%_ 'message false))))
          (if _%$e101858%_
              _%$e101858%_
              (if (error-exception? _%obj101856%_)
                  (error-exception-message _%obj101856%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj101851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj101851%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj101851%_ 'irritants))
            (if (error-exception? _%obj101851%_)
                (error-exception-parameters _%obj101851%_)
                '#f))))
    (define error-trace
      (lambda (_%obj101849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj101849%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj101849%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e101830%_ _%port101831%_)
        (let ((_%$e101833%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e101830%_ 'display-exception))))
          (if _%$e101833%_
              ((lambda (_%f101836%_) (_%f101836%_ _%e101830%_ _%port101831%_))
               _%$e101833%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e101830%_ _%port101831%_))))))
    (define display-exception__0
      (lambda (_%e101842%_)
        (let ((_%port101844%_ (current-error-port)))
          (display-exception__% _%e101842%_ _%port101844%_))))
    (define display-exception
      (lambda _g102080_
        (let ((_g102079_ (let () (declare (not safe)) (##length _g102080_))))
          (cond ((let () (declare (not safe)) (##fx= _g102079_ 1))
                 (apply display-exception__0 _g102080_))
                ((let () (declare (not safe)) (##fx= _g102079_ 2))
                 (apply display-exception__% _g102080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g102080_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100199101806%_ _%message101808%_ . _%rest101809%_)
        (let* ((_%self101811%_ _%self100199101806%_)
               (_%self101813%_ _%self101811%_)
               (_%message101827%_
                (if (string? _%message101808%_)
                    _%message101808%_
                    (call-with-output-string
                     '""
                     (lambda (_%g101822101824%_)
                       (display _%message101808%_ _%g101822101824%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self101813%_ 'message _%message101827%_))
          (apply class-instance-init! _%self101813%_ _%rest101809%_))))
    (define Error:::init!::specialize
      (lambda (__klass102041 __method-table102042)
        (let ((__message102043
               (let ((__slot102044
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102041 'message))))
                 (if __slot102044
                     __slot102044
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self100199101806%_ _%message101808%_ . _%rest101809%_)
            (let* ((_%self101811%_ _%self100199101806%_)
                   (_%self101813%_ _%self101811%_)
                   (_%message101827%_
                    (if (string? _%message101808%_)
                        _%message101808%_
                        (call-with-output-string
                         '""
                         (lambda (_%g101822101824%_)
                           (display _%message101808%_ _%g101822101824%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self101813%_
                 _%message101827%_
                 __message102043
                 '#f
                 '#f))
              (apply class-instance-init! _%self101813%_ _%rest101809%_))))))
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
      (lambda (_%self100200101528%_ _%port101530%_)
        (let* ((_%self101532%_ _%self100200101528%_)
               (_%self101534%_ _%self101532%_))
          (let ((_%tmp-port101544%_ (open-output-string))
                (_%display-error-newline101545%_
                 (> (output-port-column _%port101530%_) '0)))
            (fix-port-width! _%tmp-port101544%_)
            (let ((__tmp102081
                   (lambda ()
                     (if _%display-error-newline101545%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e101548%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101534%_ 'where))))
                       (if _%$e101548%_ (display _%$e101548%_) (display '"?")))
                     (let ((__tmp102082
                            (let ((__tmp102083
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self101534%_))))
                              (declare (not safe))
                              (##type-name __tmp102083))))
                       (declare (not safe))
                       (display* '" [" __tmp102082 '"]: "))
                     (let ((__tmp102084
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101534%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp102084))
                     (let ((_%irritants101552%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101534%_ 'irritants))))
                       (if (null? _%irritants101552%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj101554%_)
                                (if (u8vector? _%obj101554%_)
                                    (let ((__tmp102085
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj101554%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp102085))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj101554%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants101552%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont101555101557%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self101534%_
                                   'continuation))))
                           (if _%cont101555101557%_
                               (let ((_%cont101560%_ _%cont101555101557%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont101560%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp102081
               current-output-port
               _%tmp-port101544%_))
            (let ((__tmp102086 (get-output-string _%tmp-port101544%_)))
              (declare (not safe))
              (##write-string __tmp102086 _%port101530%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass102045 __method-table102046)
        (let ((__where102047
               (let ((__slot102051
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102045 'where))))
                 (if __slot102051
                     __slot102051
                     (error '"Unknown slot" 'where))))
              (__message102048
               (let ((__slot102052
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102045 'message))))
                 (if __slot102052
                     __slot102052
                     (error '"Unknown slot" 'message))))
              (__continuation102049
               (let ((__slot102053
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102045 'continuation))))
                 (if __slot102053
                     __slot102053
                     (error '"Unknown slot" 'continuation))))
              (__irritants102050
               (let ((__slot102054
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102045 'irritants))))
                 (if __slot102054
                     __slot102054
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self100200101528%_ _%port101530%_)
            (let* ((_%self101532%_ _%self100200101528%_)
                   (_%self101534%_ _%self101532%_))
              (let ((_%tmp-port101544%_ (open-output-string))
                    (_%display-error-newline101545%_
                     (> (output-port-column _%port101530%_) '0)))
                (fix-port-width! _%tmp-port101544%_)
                (let ((__tmp102087
                       (lambda ()
                         (if _%display-error-newline101545%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e101548%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101534%_
                                   __where102047
                                   '#f
                                   '#f))))
                           (if _%$e101548%_
                               (display _%$e101548%_)
                               (display '"?")))
                         (let ((__tmp102088
                                (let ((__tmp102089
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self101534%_))))
                                  (declare (not safe))
                                  (##type-name __tmp102089))))
                           (declare (not safe))
                           (display* '" [" __tmp102088 '"]: "))
                         (let ((__tmp102090
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101534%_
                                   __message102048
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp102090))
                         (let ((_%irritants101552%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101534%_
                                   __irritants102050
                                   '#f
                                   '#f))))
                           (if (null? _%irritants101552%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj101554%_)
                                    (if (u8vector? _%obj101554%_)
                                        (let ((__tmp102091
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj101554%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp102091))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj101554%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants101552%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont101555101557%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self101534%_
                                       __continuation102049
                                       '#f
                                       '#f))))
                               (if _%cont101555101557%_
                                   (let ((_%cont101560%_ _%cont101555101557%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont101560%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp102087
                   current-output-port
                   _%tmp-port101544%_))
                (let ((__tmp102092 (get-output-string _%tmp-port101544%_)))
                  (declare (not safe))
                  (##write-string __tmp102092 _%port101530%_))))))))
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
      (lambda (_%self100201101382%_ _%port101384%_)
        (let* ((_%self101386%_ _%self100201101382%_)
               (_%self101388%_ _%self101386%_)
               (_%tmp-port101398%_ (open-output-string)))
          (fix-port-width! _%tmp-port101398%_)
          (let ((__tmp102093
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self101388%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp102093 _%tmp-port101398%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont101399101401%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self101388%_ 'continuation))))
                (if _%cont101399101401%_
                    (let ((_%cont101404%_ _%cont101399101401%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port101398%_)
                      (newline _%tmp-port101398%_)
                      (display-continuation-backtrace
                       _%cont101404%_
                       _%tmp-port101398%_))
                    '#f))
              '#!void)
          (let ((__tmp102094 (get-output-string _%tmp-port101398%_)))
            (declare (not safe))
            (##write-string __tmp102094 _%port101384%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass102055 __method-table102056)
        (let ((__exception102057
               (let ((__slot102059
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102055 'exception))))
                 (if __slot102059
                     __slot102059
                     (error '"Unknown slot" 'exception))))
              (__continuation102058
               (let ((__slot102060
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102055 'continuation))))
                 (if __slot102060
                     __slot102060
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100201101382%_ _%port101384%_)
            (let* ((_%self101386%_ _%self100201101382%_)
                   (_%self101388%_ _%self101386%_)
                   (_%tmp-port101398%_ (open-output-string)))
              (fix-port-width! _%tmp-port101398%_)
              (let ((__tmp102095
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self101388%_
                        __exception102057
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp102095 _%tmp-port101398%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont101399101401%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self101388%_
                            __continuation102058
                            '#f
                            '#f))))
                    (if _%cont101399101401%_
                        (let ((_%cont101404%_ _%cont101399101401%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port101398%_)
                          (newline _%tmp-port101398%_)
                          (display-continuation-backtrace
                           _%cont101404%_
                           _%tmp-port101398%_))
                        '#f))
                  '#!void)
              (let ((__tmp102096 (get-output-string _%tmp-port101398%_)))
                (declare (not safe))
                (##write-string __tmp102096 _%port101384%_)))))))
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
      (lambda (_%port101254%_)
        (if (macro-character-port? _%port101254%_)
            (let ((_%old-width101256%_
                   (macro-character-port-output-width _%port101254%_)))
              (macro-character-port-output-width-set!
               _%port101254%_
               (lambda (_%port101258%_) '256))
              _%old-width101256%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port101251%_ _%old-width101252%_)
        (if (macro-character-port? _%port101251%_)
            (macro-character-port-output-width-set!
             _%port101251%_
             _%old-width101252%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e101249%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e101249%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn101243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101243%_))
            (let ((_%e101246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101243%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e101246%_))
            (macro-abandoned-mutex-exception? _%exn101243%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn101239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101239%_))
            (let ((_%e101241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101239%_ 'exception))))
              (macro-cfun-conversion-exception? _%e101241%_))
            (macro-cfun-conversion-exception? _%exn101239%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn101235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101235%_))
            (let ((_%e101237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101235%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101237%_)
                  (macro-cfun-conversion-exception-arguments _%e101237%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e101237%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101235%_)
                (macro-cfun-conversion-exception-arguments _%exn101235%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn101235%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn101231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101231%_))
            (let ((_%e101233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101231%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101233%_)
                  (macro-cfun-conversion-exception-code _%e101233%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e101233%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101231%_)
                (macro-cfun-conversion-exception-code _%exn101231%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn101231%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn101227%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101227%_))
            (let ((_%e101229%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101227%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101229%_)
                  (macro-cfun-conversion-exception-message _%e101229%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e101229%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101227%_)
                (macro-cfun-conversion-exception-message _%exn101227%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn101227%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn101221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101221%_))
            (let ((_%e101224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101221%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101224%_)
                  (macro-cfun-conversion-exception-procedure _%e101224%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e101224%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101221%_)
                (macro-cfun-conversion-exception-procedure _%exn101221%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn101221%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn101217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101217%_))
            (let ((_%e101219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101217%_ 'exception))))
              (macro-datum-parsing-exception? _%e101219%_))
            (macro-datum-parsing-exception? _%exn101217%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn101213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101213%_))
            (let ((_%e101215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101213%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101215%_)
                  (macro-datum-parsing-exception-kind _%e101215%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e101215%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101213%_)
                (macro-datum-parsing-exception-kind _%exn101213%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn101213%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn101209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101209%_))
            (let ((_%e101211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101209%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101211%_)
                  (macro-datum-parsing-exception-parameters _%e101211%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e101211%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101209%_)
                (macro-datum-parsing-exception-parameters _%exn101209%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn101209%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn101203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101203%_))
            (let ((_%e101206%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101203%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101206%_)
                  (macro-datum-parsing-exception-readenv _%e101206%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e101206%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101203%_)
                (macro-datum-parsing-exception-readenv _%exn101203%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn101203%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn101197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101197%_))
            (let ((_%e101200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101197%_ 'exception))))
              (macro-deadlock-exception? _%e101200%_))
            (macro-deadlock-exception? _%exn101197%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn101193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101193%_))
            (let ((_%e101195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101193%_ 'exception))))
              (macro-divide-by-zero-exception? _%e101195%_))
            (macro-divide-by-zero-exception? _%exn101193%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn101189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101189%_))
            (let ((_%e101191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101189%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101191%_)
                  (macro-divide-by-zero-exception-arguments _%e101191%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e101191%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101189%_)
                (macro-divide-by-zero-exception-arguments _%exn101189%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn101189%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn101183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101183%_))
            (let ((_%e101186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101183%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101186%_)
                  (macro-divide-by-zero-exception-procedure _%e101186%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e101186%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101183%_)
                (macro-divide-by-zero-exception-procedure _%exn101183%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn101183%_ '())))))))
    (define error-exception?
      (lambda (_%exn101179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101179%_))
            (let ((_%e101181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101179%_ 'exception))))
              (macro-error-exception? _%e101181%_))
            (macro-error-exception? _%exn101179%_))))
    (define error-exception-message
      (lambda (_%exn101175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101175%_))
            (let ((_%e101177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101175%_ 'exception))))
              (if (macro-error-exception? _%e101177%_)
                  (macro-error-exception-message _%e101177%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e101177%_ '())))))
            (if (macro-error-exception? _%exn101175%_)
                (macro-error-exception-message _%exn101175%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn101175%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn101169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101169%_))
            (let ((_%e101172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101169%_ 'exception))))
              (if (macro-error-exception? _%e101172%_)
                  (macro-error-exception-parameters _%e101172%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e101172%_ '())))))
            (if (macro-error-exception? _%exn101169%_)
                (macro-error-exception-parameters _%exn101169%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn101169%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn101165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101165%_))
            (let ((_%e101167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101165%_ 'exception))))
              (macro-expression-parsing-exception? _%e101167%_))
            (macro-expression-parsing-exception? _%exn101165%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn101161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101161%_))
            (let ((_%e101163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101161%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101163%_)
                  (macro-expression-parsing-exception-kind _%e101163%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e101163%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101161%_)
                (macro-expression-parsing-exception-kind _%exn101161%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn101161%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn101157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101157%_))
            (let ((_%e101159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101157%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101159%_)
                  (macro-expression-parsing-exception-parameters _%e101159%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e101159%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101157%_)
                (macro-expression-parsing-exception-parameters _%exn101157%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn101157%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn101151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101151%_))
            (let ((_%e101154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101151%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101154%_)
                  (macro-expression-parsing-exception-source _%e101154%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e101154%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101151%_)
                (macro-expression-parsing-exception-source _%exn101151%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn101151%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn101147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101147%_))
            (let ((_%e101149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101147%_ 'exception))))
              (macro-file-exists-exception? _%e101149%_))
            (macro-file-exists-exception? _%exn101147%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn101143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101143%_))
            (let ((_%e101145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101143%_ 'exception))))
              (if (macro-file-exists-exception? _%e101145%_)
                  (macro-file-exists-exception-arguments _%e101145%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e101145%_ '())))))
            (if (macro-file-exists-exception? _%exn101143%_)
                (macro-file-exists-exception-arguments _%exn101143%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn101143%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn101137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101137%_))
            (let ((_%e101140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101137%_ 'exception))))
              (if (macro-file-exists-exception? _%e101140%_)
                  (macro-file-exists-exception-procedure _%e101140%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e101140%_ '())))))
            (if (macro-file-exists-exception? _%exn101137%_)
                (macro-file-exists-exception-procedure _%exn101137%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn101137%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn101133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101133%_))
            (let ((_%e101135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101133%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e101135%_))
            (macro-fixnum-overflow-exception? _%exn101133%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn101129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101129%_))
            (let ((_%e101131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101129%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101131%_)
                  (macro-fixnum-overflow-exception-arguments _%e101131%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e101131%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101129%_)
                (macro-fixnum-overflow-exception-arguments _%exn101129%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn101129%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn101123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101123%_))
            (let ((_%e101126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101123%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101126%_)
                  (macro-fixnum-overflow-exception-procedure _%e101126%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e101126%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101123%_)
                (macro-fixnum-overflow-exception-procedure _%exn101123%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn101123%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn101117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101117%_))
            (let ((_%e101120%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101117%_ 'exception))))
              (macro-heap-overflow-exception? _%e101120%_))
            (macro-heap-overflow-exception? _%exn101117%_))))
    (define inactive-thread-exception?
      (lambda (_%exn101113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101113%_))
            (let ((_%e101115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101113%_ 'exception))))
              (macro-inactive-thread-exception? _%e101115%_))
            (macro-inactive-thread-exception? _%exn101113%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn101109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101109%_))
            (let ((_%e101111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101109%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101111%_)
                  (macro-inactive-thread-exception-arguments _%e101111%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e101111%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101109%_)
                (macro-inactive-thread-exception-arguments _%exn101109%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn101109%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn101103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101103%_))
            (let ((_%e101106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101103%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101106%_)
                  (macro-inactive-thread-exception-procedure _%e101106%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e101106%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101103%_)
                (macro-inactive-thread-exception-procedure _%exn101103%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn101103%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn101099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101099%_))
            (let ((_%e101101%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101099%_ 'exception))))
              (macro-initialized-thread-exception? _%e101101%_))
            (macro-initialized-thread-exception? _%exn101099%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn101095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101095%_))
            (let ((_%e101097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101095%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101097%_)
                  (macro-initialized-thread-exception-arguments _%e101097%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e101097%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101095%_)
                (macro-initialized-thread-exception-arguments _%exn101095%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn101095%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn101089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101089%_))
            (let ((_%e101092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101089%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101092%_)
                  (macro-initialized-thread-exception-procedure _%e101092%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e101092%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101089%_)
                (macro-initialized-thread-exception-procedure _%exn101089%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn101089%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn101085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101085%_))
            (let ((_%e101087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101085%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e101087%_))
            (macro-invalid-hash-number-exception? _%exn101085%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn101081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101081%_))
            (let ((_%e101083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101081%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101083%_)
                  (macro-invalid-hash-number-exception-arguments _%e101083%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e101083%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101081%_)
                (macro-invalid-hash-number-exception-arguments _%exn101081%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn101081%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn101075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101075%_))
            (let ((_%e101078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101075%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101078%_)
                  (macro-invalid-hash-number-exception-procedure _%e101078%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e101078%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101075%_)
                (macro-invalid-hash-number-exception-procedure _%exn101075%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn101075%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn101071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101071%_))
            (let ((_%e101073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101071%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e101073%_))
            (macro-invalid-utf8-encoding-exception? _%exn101071%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn101067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101067%_))
            (let ((_%e101069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101067%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101069%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e101069%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e101069%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101067%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn101067%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn101067%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn101061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101061%_))
            (let ((_%e101064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101061%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101064%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e101064%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e101064%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101061%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn101061%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn101061%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn101057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101057%_))
            (let ((_%e101059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101057%_ 'exception))))
              (macro-join-timeout-exception? _%e101059%_))
            (macro-join-timeout-exception? _%exn101057%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn101053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101053%_))
            (let ((_%e101055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101053%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101055%_)
                  (macro-join-timeout-exception-arguments _%e101055%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e101055%_ '())))))
            (if (macro-join-timeout-exception? _%exn101053%_)
                (macro-join-timeout-exception-arguments _%exn101053%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn101053%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn101047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101047%_))
            (let ((_%e101050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101047%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101050%_)
                  (macro-join-timeout-exception-procedure _%e101050%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e101050%_ '())))))
            (if (macro-join-timeout-exception? _%exn101047%_)
                (macro-join-timeout-exception-procedure _%exn101047%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn101047%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn101043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101043%_))
            (let ((_%e101045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101043%_ 'exception))))
              (macro-keyword-expected-exception? _%e101045%_))
            (macro-keyword-expected-exception? _%exn101043%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn101039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101039%_))
            (let ((_%e101041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101039%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101041%_)
                  (macro-keyword-expected-exception-arguments _%e101041%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e101041%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101039%_)
                (macro-keyword-expected-exception-arguments _%exn101039%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn101039%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn101033%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101033%_))
            (let ((_%e101036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101033%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101036%_)
                  (macro-keyword-expected-exception-procedure _%e101036%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e101036%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101033%_)
                (macro-keyword-expected-exception-procedure _%exn101033%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn101033%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn101029%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101029%_))
            (let ((_%e101031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101029%_ 'exception))))
              (macro-length-mismatch-exception? _%e101031%_))
            (macro-length-mismatch-exception? _%exn101029%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn101025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101025%_))
            (let ((_%e101027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101025%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101027%_)
                  (macro-length-mismatch-exception-arg-id _%e101027%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e101027%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101025%_)
                (macro-length-mismatch-exception-arg-id _%exn101025%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn101025%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn101021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101021%_))
            (let ((_%e101023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101021%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101023%_)
                  (macro-length-mismatch-exception-arguments _%e101023%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e101023%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101021%_)
                (macro-length-mismatch-exception-arguments _%exn101021%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn101021%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn101015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101015%_))
            (let ((_%e101018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101015%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101018%_)
                  (macro-length-mismatch-exception-procedure _%e101018%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e101018%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101015%_)
                (macro-length-mismatch-exception-procedure _%exn101015%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn101015%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn101011%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101011%_))
            (let ((_%e101013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101011%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e101013%_))
            (macro-mailbox-receive-timeout-exception? _%exn101011%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn101007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101007%_))
            (let ((_%e101009%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101007%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101009%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e101009%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e101009%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101007%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn101007%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn101007%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn101001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101001%_))
            (let ((_%e101004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101001%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101004%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e101004%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e101004%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101001%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn101001%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn101001%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn100997%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100997%_))
            (let ((_%e100999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100997%_ 'exception))))
              (macro-module-not-found-exception? _%e100999%_))
            (macro-module-not-found-exception? _%exn100997%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn100993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100993%_))
            (let ((_%e100995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100993%_ 'exception))))
              (if (macro-module-not-found-exception? _%e100995%_)
                  (macro-module-not-found-exception-arguments _%e100995%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e100995%_ '())))))
            (if (macro-module-not-found-exception? _%exn100993%_)
                (macro-module-not-found-exception-arguments _%exn100993%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn100993%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn100987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100987%_))
            (let ((_%e100990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100987%_ 'exception))))
              (if (macro-module-not-found-exception? _%e100990%_)
                  (macro-module-not-found-exception-procedure _%e100990%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e100990%_ '())))))
            (if (macro-module-not-found-exception? _%exn100987%_)
                (macro-module-not-found-exception-procedure _%exn100987%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn100987%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn100981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100981%_))
            (let ((_%e100984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100981%_ 'exception))))
              (macro-multiple-c-return-exception? _%e100984%_))
            (macro-multiple-c-return-exception? _%exn100981%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn100977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100977%_))
            (let ((_%e100979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100977%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e100979%_))
            (macro-no-such-file-or-directory-exception? _%exn100977%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn100973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100973%_))
            (let ((_%e100975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100973%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e100975%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e100975%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e100975%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn100973%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn100973%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn100973%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn100967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100967%_))
            (let ((_%e100970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100967%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e100970%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e100970%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e100970%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn100967%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn100967%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn100967%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn100963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100963%_))
            (let ((_%e100965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100963%_ 'exception))))
              (macro-noncontinuable-exception? _%e100965%_))
            (macro-noncontinuable-exception? _%exn100963%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn100957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100957%_))
            (let ((_%e100960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100957%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e100960%_)
                  (macro-noncontinuable-exception-reason _%e100960%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e100960%_ '())))))
            (if (macro-noncontinuable-exception? _%exn100957%_)
                (macro-noncontinuable-exception-reason _%exn100957%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn100957%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn100953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100953%_))
            (let ((_%e100955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100953%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e100955%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn100953%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn100949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100949%_))
            (let ((_%e100951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100949%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e100951%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e100951%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e100951%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn100949%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn100949%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn100949%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn100943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100943%_))
            (let ((_%e100946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100943%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e100946%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e100946%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e100946%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn100943%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn100943%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn100943%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn100939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100939%_))
            (let ((_%e100941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100939%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e100941%_))
            (macro-nonprocedure-operator-exception? _%exn100939%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn100935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100935%_))
            (let ((_%e100937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100935%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100937%_)
                  (macro-nonprocedure-operator-exception-arguments _%e100937%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e100937%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100935%_)
                (macro-nonprocedure-operator-exception-arguments _%exn100935%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn100935%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn100931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100931%_))
            (let ((_%e100933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100931%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100933%_)
                  (macro-nonprocedure-operator-exception-code _%e100933%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e100933%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100931%_)
                (macro-nonprocedure-operator-exception-code _%exn100931%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn100931%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn100927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100927%_))
            (let ((_%e100929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100927%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100929%_)
                  (macro-nonprocedure-operator-exception-operator _%e100929%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e100929%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100927%_)
                (macro-nonprocedure-operator-exception-operator _%exn100927%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn100927%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn100921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100921%_))
            (let ((_%e100924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100921%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100924%_)
                  (macro-nonprocedure-operator-exception-rte _%e100924%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e100924%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100921%_)
                (macro-nonprocedure-operator-exception-rte _%exn100921%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn100921%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn100917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100917%_))
            (let ((_%e100919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100917%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e100919%_))
            (macro-not-in-compilation-context-exception? _%exn100917%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn100913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100913%_))
            (let ((_%e100915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100913%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e100915%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e100915%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e100915%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn100913%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn100913%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn100913%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn100907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100907%_))
            (let ((_%e100910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100907%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e100910%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e100910%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e100910%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn100907%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn100907%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn100907%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn100903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100903%_))
            (let ((_%e100905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100903%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e100905%_))
            (macro-number-of-arguments-limit-exception? _%exn100903%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn100899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100899%_))
            (let ((_%e100901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100899%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e100901%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e100901%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e100901%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn100899%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn100899%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn100899%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn100893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100893%_))
            (let ((_%e100896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100893%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e100896%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e100896%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e100896%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn100893%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn100893%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn100893%_ '())))))))
    (define os-exception?
      (lambda (_%exn100889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100889%_))
            (let ((_%e100891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100889%_ 'exception))))
              (macro-os-exception? _%e100891%_))
            (macro-os-exception? _%exn100889%_))))
    (define os-exception-arguments
      (lambda (_%exn100885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100885%_))
            (let ((_%e100887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100885%_ 'exception))))
              (if (macro-os-exception? _%e100887%_)
                  (macro-os-exception-arguments _%e100887%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e100887%_ '())))))
            (if (macro-os-exception? _%exn100885%_)
                (macro-os-exception-arguments _%exn100885%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn100885%_ '())))))))
    (define os-exception-code
      (lambda (_%exn100881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100881%_))
            (let ((_%e100883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100881%_ 'exception))))
              (if (macro-os-exception? _%e100883%_)
                  (macro-os-exception-code _%e100883%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e100883%_ '())))))
            (if (macro-os-exception? _%exn100881%_)
                (macro-os-exception-code _%exn100881%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn100881%_ '())))))))
    (define os-exception-message
      (lambda (_%exn100877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100877%_))
            (let ((_%e100879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100877%_ 'exception))))
              (if (macro-os-exception? _%e100879%_)
                  (macro-os-exception-message _%e100879%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e100879%_ '())))))
            (if (macro-os-exception? _%exn100877%_)
                (macro-os-exception-message _%exn100877%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn100877%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn100871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100871%_))
            (let ((_%e100874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100871%_ 'exception))))
              (if (macro-os-exception? _%e100874%_)
                  (macro-os-exception-procedure _%e100874%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e100874%_ '())))))
            (if (macro-os-exception? _%exn100871%_)
                (macro-os-exception-procedure _%exn100871%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn100871%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn100867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100867%_))
            (let ((_%e100869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100867%_ 'exception))))
              (macro-permission-denied-exception? _%e100869%_))
            (macro-permission-denied-exception? _%exn100867%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn100863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100863%_))
            (let ((_%e100865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100863%_ 'exception))))
              (if (macro-permission-denied-exception? _%e100865%_)
                  (macro-permission-denied-exception-arguments _%e100865%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e100865%_ '())))))
            (if (macro-permission-denied-exception? _%exn100863%_)
                (macro-permission-denied-exception-arguments _%exn100863%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn100863%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn100857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100857%_))
            (let ((_%e100860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100857%_ 'exception))))
              (if (macro-permission-denied-exception? _%e100860%_)
                  (macro-permission-denied-exception-procedure _%e100860%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e100860%_ '())))))
            (if (macro-permission-denied-exception? _%exn100857%_)
                (macro-permission-denied-exception-procedure _%exn100857%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn100857%_ '())))))))
    (define range-exception?
      (lambda (_%exn100853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100853%_))
            (let ((_%e100855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100853%_ 'exception))))
              (macro-range-exception? _%e100855%_))
            (macro-range-exception? _%exn100853%_))))
    (define range-exception-arg-id
      (lambda (_%exn100849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100849%_))
            (let ((_%e100851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100849%_ 'exception))))
              (if (macro-range-exception? _%e100851%_)
                  (macro-range-exception-arg-id _%e100851%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e100851%_ '())))))
            (if (macro-range-exception? _%exn100849%_)
                (macro-range-exception-arg-id _%exn100849%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn100849%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn100845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100845%_))
            (let ((_%e100847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100845%_ 'exception))))
              (if (macro-range-exception? _%e100847%_)
                  (macro-range-exception-arguments _%e100847%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e100847%_ '())))))
            (if (macro-range-exception? _%exn100845%_)
                (macro-range-exception-arguments _%exn100845%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn100845%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn100839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100839%_))
            (let ((_%e100842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100839%_ 'exception))))
              (if (macro-range-exception? _%e100842%_)
                  (macro-range-exception-procedure _%e100842%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e100842%_ '())))))
            (if (macro-range-exception? _%exn100839%_)
                (macro-range-exception-procedure _%exn100839%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn100839%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn100835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100835%_))
            (let ((_%e100837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100835%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e100837%_))
            (macro-rpc-remote-error-exception? _%exn100835%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn100831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100831%_))
            (let ((_%e100833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100831%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100833%_)
                  (macro-rpc-remote-error-exception-arguments _%e100833%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e100833%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100831%_)
                (macro-rpc-remote-error-exception-arguments _%exn100831%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn100831%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn100827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100827%_))
            (let ((_%e100829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100827%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100829%_)
                  (macro-rpc-remote-error-exception-message _%e100829%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e100829%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100827%_)
                (macro-rpc-remote-error-exception-message _%exn100827%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn100827%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn100821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100821%_))
            (let ((_%e100824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100821%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100824%_)
                  (macro-rpc-remote-error-exception-procedure _%e100824%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e100824%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100821%_)
                (macro-rpc-remote-error-exception-procedure _%exn100821%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn100821%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn100817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100817%_))
            (let ((_%e100819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100817%_ 'exception))))
              (macro-scheduler-exception? _%e100819%_))
            (macro-scheduler-exception? _%exn100817%_))))
    (define scheduler-exception-reason
      (lambda (_%exn100811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100811%_))
            (let ((_%e100814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100811%_ 'exception))))
              (if (macro-scheduler-exception? _%e100814%_)
                  (macro-scheduler-exception-reason _%e100814%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e100814%_ '())))))
            (if (macro-scheduler-exception? _%exn100811%_)
                (macro-scheduler-exception-reason _%exn100811%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn100811%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn100807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100807%_))
            (let ((_%e100809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100807%_ 'exception))))
              (macro-sfun-conversion-exception? _%e100809%_))
            (macro-sfun-conversion-exception? _%exn100807%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn100803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100803%_))
            (let ((_%e100805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100803%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100805%_)
                  (macro-sfun-conversion-exception-arguments _%e100805%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e100805%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100803%_)
                (macro-sfun-conversion-exception-arguments _%exn100803%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn100803%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn100799%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100799%_))
            (let ((_%e100801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100799%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100801%_)
                  (macro-sfun-conversion-exception-code _%e100801%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e100801%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100799%_)
                (macro-sfun-conversion-exception-code _%exn100799%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn100799%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn100795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100795%_))
            (let ((_%e100797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100795%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100797%_)
                  (macro-sfun-conversion-exception-message _%e100797%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e100797%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100795%_)
                (macro-sfun-conversion-exception-message _%exn100795%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn100795%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn100789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100789%_))
            (let ((_%e100792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100789%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100792%_)
                  (macro-sfun-conversion-exception-procedure _%e100792%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e100792%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100789%_)
                (macro-sfun-conversion-exception-procedure _%exn100789%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn100789%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn100783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100783%_))
            (let ((_%e100786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100783%_ 'exception))))
              (macro-stack-overflow-exception? _%e100786%_))
            (macro-stack-overflow-exception? _%exn100783%_))))
    (define started-thread-exception?
      (lambda (_%exn100779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100779%_))
            (let ((_%e100781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100779%_ 'exception))))
              (macro-started-thread-exception? _%e100781%_))
            (macro-started-thread-exception? _%exn100779%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn100775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100775%_))
            (let ((_%e100777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100775%_ 'exception))))
              (if (macro-started-thread-exception? _%e100777%_)
                  (macro-started-thread-exception-arguments _%e100777%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e100777%_ '())))))
            (if (macro-started-thread-exception? _%exn100775%_)
                (macro-started-thread-exception-arguments _%exn100775%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn100775%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn100769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100769%_))
            (let ((_%e100772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100769%_ 'exception))))
              (if (macro-started-thread-exception? _%e100772%_)
                  (macro-started-thread-exception-procedure _%e100772%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e100772%_ '())))))
            (if (macro-started-thread-exception? _%exn100769%_)
                (macro-started-thread-exception-procedure _%exn100769%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn100769%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn100765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100765%_))
            (let ((_%e100767%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100765%_ 'exception))))
              (macro-terminated-thread-exception? _%e100767%_))
            (macro-terminated-thread-exception? _%exn100765%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn100761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100761%_))
            (let ((_%e100763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100761%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e100763%_)
                  (macro-terminated-thread-exception-arguments _%e100763%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e100763%_ '())))))
            (if (macro-terminated-thread-exception? _%exn100761%_)
                (macro-terminated-thread-exception-arguments _%exn100761%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn100761%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn100755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100755%_))
            (let ((_%e100758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100755%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e100758%_)
                  (macro-terminated-thread-exception-procedure _%e100758%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e100758%_ '())))))
            (if (macro-terminated-thread-exception? _%exn100755%_)
                (macro-terminated-thread-exception-procedure _%exn100755%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn100755%_ '())))))))
    (define type-exception?
      (lambda (_%exn100751%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100751%_))
            (let ((_%e100753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100751%_ 'exception))))
              (macro-type-exception? _%e100753%_))
            (macro-type-exception? _%exn100751%_))))
    (define type-exception-arg-id
      (lambda (_%exn100747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100747%_))
            (let ((_%e100749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100747%_ 'exception))))
              (if (macro-type-exception? _%e100749%_)
                  (macro-type-exception-arg-id _%e100749%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e100749%_ '())))))
            (if (macro-type-exception? _%exn100747%_)
                (macro-type-exception-arg-id _%exn100747%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn100747%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn100743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100743%_))
            (let ((_%e100745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100743%_ 'exception))))
              (if (macro-type-exception? _%e100745%_)
                  (macro-type-exception-arguments _%e100745%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e100745%_ '())))))
            (if (macro-type-exception? _%exn100743%_)
                (macro-type-exception-arguments _%exn100743%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn100743%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn100739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100739%_))
            (let ((_%e100741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100739%_ 'exception))))
              (if (macro-type-exception? _%e100741%_)
                  (macro-type-exception-procedure _%e100741%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e100741%_ '())))))
            (if (macro-type-exception? _%exn100739%_)
                (macro-type-exception-procedure _%exn100739%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn100739%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn100733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100733%_))
            (let ((_%e100736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100733%_ 'exception))))
              (if (macro-type-exception? _%e100736%_)
                  (macro-type-exception-type-id _%e100736%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e100736%_ '())))))
            (if (macro-type-exception? _%exn100733%_)
                (macro-type-exception-type-id _%exn100733%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn100733%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn100729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100729%_))
            (let ((_%e100731%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100729%_ 'exception))))
              (macro-unbound-global-exception? _%e100731%_))
            (macro-unbound-global-exception? _%exn100729%_))))
    (define unbound-global-exception-code
      (lambda (_%exn100725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100725%_))
            (let ((_%e100727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100725%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100727%_)
                  (macro-unbound-global-exception-code _%e100727%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e100727%_ '())))))
            (if (macro-unbound-global-exception? _%exn100725%_)
                (macro-unbound-global-exception-code _%exn100725%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn100725%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn100721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100721%_))
            (let ((_%e100723%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100721%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100723%_)
                  (macro-unbound-global-exception-rte _%e100723%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e100723%_ '())))))
            (if (macro-unbound-global-exception? _%exn100721%_)
                (macro-unbound-global-exception-rte _%exn100721%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn100721%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn100715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100715%_))
            (let ((_%e100718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100715%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100718%_)
                  (macro-unbound-global-exception-variable _%e100718%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e100718%_ '())))))
            (if (macro-unbound-global-exception? _%exn100715%_)
                (macro-unbound-global-exception-variable _%exn100715%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn100715%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn100711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100711%_))
            (let ((_%e100713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100711%_ 'exception))))
              (macro-unbound-key-exception? _%e100713%_))
            (macro-unbound-key-exception? _%exn100711%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn100707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100707%_))
            (let ((_%e100709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100707%_ 'exception))))
              (if (macro-unbound-key-exception? _%e100709%_)
                  (macro-unbound-key-exception-arguments _%e100709%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e100709%_ '())))))
            (if (macro-unbound-key-exception? _%exn100707%_)
                (macro-unbound-key-exception-arguments _%exn100707%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn100707%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn100701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100701%_))
            (let ((_%e100704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100701%_ 'exception))))
              (if (macro-unbound-key-exception? _%e100704%_)
                  (macro-unbound-key-exception-procedure _%e100704%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e100704%_ '())))))
            (if (macro-unbound-key-exception? _%exn100701%_)
                (macro-unbound-key-exception-procedure _%exn100701%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn100701%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn100697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100697%_))
            (let ((_%e100699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100697%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e100699%_))
            (macro-unbound-os-environment-variable-exception? _%exn100697%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn100693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100693%_))
            (let ((_%e100695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100693%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e100695%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e100695%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e100695%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn100693%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn100693%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn100693%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn100687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100687%_))
            (let ((_%e100690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100687%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e100690%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e100690%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e100690%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn100687%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn100687%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn100687%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn100683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100683%_))
            (let ((_%e100685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100683%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e100685%_))
            (macro-unbound-serial-number-exception? _%exn100683%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn100679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100679%_))
            (let ((_%e100681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100679%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e100681%_)
                  (macro-unbound-serial-number-exception-arguments _%e100681%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e100681%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn100679%_)
                (macro-unbound-serial-number-exception-arguments _%exn100679%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn100679%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn100673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100673%_))
            (let ((_%e100676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100673%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e100676%_)
                  (macro-unbound-serial-number-exception-procedure _%e100676%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e100676%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn100673%_)
                (macro-unbound-serial-number-exception-procedure _%exn100673%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn100673%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn100669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100669%_))
            (let ((_%e100671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100669%_ 'exception))))
              (macro-uncaught-exception? _%e100671%_))
            (macro-uncaught-exception? _%exn100669%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn100665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100665%_))
            (let ((_%e100667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100665%_ 'exception))))
              (if (macro-uncaught-exception? _%e100667%_)
                  (macro-uncaught-exception-arguments _%e100667%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e100667%_ '())))))
            (if (macro-uncaught-exception? _%exn100665%_)
                (macro-uncaught-exception-arguments _%exn100665%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn100665%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn100661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100661%_))
            (let ((_%e100663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100661%_ 'exception))))
              (if (macro-uncaught-exception? _%e100663%_)
                  (macro-uncaught-exception-procedure _%e100663%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e100663%_ '())))))
            (if (macro-uncaught-exception? _%exn100661%_)
                (macro-uncaught-exception-procedure _%exn100661%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn100661%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn100655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100655%_))
            (let ((_%e100658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100655%_ 'exception))))
              (if (macro-uncaught-exception? _%e100658%_)
                  (macro-uncaught-exception-reason _%e100658%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e100658%_ '())))))
            (if (macro-uncaught-exception? _%exn100655%_)
                (macro-uncaught-exception-reason _%exn100655%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn100655%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn100651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100651%_))
            (let ((_%e100653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100651%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e100653%_))
            (macro-uninitialized-thread-exception? _%exn100651%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn100647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100647%_))
            (let ((_%e100649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100647%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e100649%_)
                  (macro-uninitialized-thread-exception-arguments _%e100649%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e100649%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn100647%_)
                (macro-uninitialized-thread-exception-arguments _%exn100647%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn100647%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn100641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100641%_))
            (let ((_%e100644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100641%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e100644%_)
                  (macro-uninitialized-thread-exception-procedure _%e100644%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e100644%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn100641%_)
                (macro-uninitialized-thread-exception-procedure _%exn100641%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn100641%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn100637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100637%_))
            (let ((_%e100639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100637%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e100639%_))
            (macro-unknown-keyword-argument-exception? _%exn100637%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn100633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100633%_))
            (let ((_%e100635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100633%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e100635%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e100635%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e100635%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn100633%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn100633%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn100633%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn100627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100627%_))
            (let ((_%e100630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100627%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e100630%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e100630%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e100630%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn100627%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn100627%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn100627%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn100623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100623%_))
            (let ((_%e100625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100623%_ 'exception))))
              (macro-unterminated-process-exception? _%e100625%_))
            (macro-unterminated-process-exception? _%exn100623%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn100619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100619%_))
            (let ((_%e100621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100619%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e100621%_)
                  (macro-unterminated-process-exception-arguments _%e100621%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e100621%_ '())))))
            (if (macro-unterminated-process-exception? _%exn100619%_)
                (macro-unterminated-process-exception-arguments _%exn100619%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn100619%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn100613%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100613%_))
            (let ((_%e100616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100613%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e100616%_)
                  (macro-unterminated-process-exception-procedure _%e100616%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e100616%_ '())))))
            (if (macro-unterminated-process-exception? _%exn100613%_)
                (macro-unterminated-process-exception-procedure _%exn100613%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn100613%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn100609%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100609%_))
            (let ((_%e100611%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100609%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e100611%_))
            (macro-wrong-number-of-arguments-exception? _%exn100609%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn100605%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100605%_))
            (let ((_%e100607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100605%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100607%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e100607%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e100607%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100605%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn100605%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn100605%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn100599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100599%_))
            (let ((_%e100602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100599%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100602%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e100602%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e100602%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100599%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn100599%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn100599%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn100595%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100595%_))
            (let ((_%e100597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100595%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e100597%_))
            (macro-wrong-number-of-values-exception? _%exn100595%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn100591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100591%_))
            (let ((_%e100593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100591%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100593%_)
                  (macro-wrong-number-of-values-exception-code _%e100593%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e100593%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100591%_)
                (macro-wrong-number-of-values-exception-code _%exn100591%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn100591%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn100587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100587%_))
            (let ((_%e100589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100587%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100589%_)
                  (macro-wrong-number-of-values-exception-rte _%e100589%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e100589%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100587%_)
                (macro-wrong-number-of-values-exception-rte _%exn100587%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn100587%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn100581%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100581%_))
            (let ((_%e100584%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100581%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100584%_)
                  (macro-wrong-number-of-values-exception-vals _%e100584%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e100584%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100581%_)
                (macro-wrong-number-of-values-exception-vals _%exn100581%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn100581%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn100575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100575%_))
            (let ((_%e100578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100575%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e100578%_))
            (macro-wrong-processor-c-return-exception? _%exn100575%_))))))
