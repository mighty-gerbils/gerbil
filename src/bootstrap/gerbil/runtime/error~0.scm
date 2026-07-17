(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1784471377)
  (begin
    (define Exception::t
      (let ((__tmp149542 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp149542 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args149460%_
        (apply make-instance Exception::t _%$args149460%_)))
    (define StackTrace::t
      (let ((__tmp149543 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp149543
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args149457%_
        (apply make-instance StackTrace::t _%$args149457%_)))
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
      (let ((__tmp149544 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp149544
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args149454%_ (apply make-instance Error::t _%$args149454%_)))
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
      (let ((__tmp149545 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp149545
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args149451%_
        (apply make-instance ContractViolation::t _%$args149451%_)))
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
      (let ((__tmp149546 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp149546
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args149448%_
        (apply make-instance RuntimeException::t _%$args149448%_)))
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
      (lambda (_%exn149443%_ _%continue149444%_)
        (let ((_%exn149446%_ (wrap-runtime-exception _%exn149443%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn149446%_ _%continue149444%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn149439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn149439%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn149439%_ 'continuation))
                '#!void
                (let ((__tmp149547
                       (lambda (_%cont149441%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn149439%_
                            'continuation
                            _%cont149441%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp149547)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn149439%_))))
    (define error
      (lambda (_%message149436%_ . _%irritants149437%_)
        (raise (let ((__obj149539
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj149539
                  _%message149436%_
                  'irritants:
                  _%irritants149437%_)
                 __obj149539))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords149411%_
               _%$%ctx149406149412%_
               _%$%contract-expr149407149413%_
               _%$%value149408149414%_
               _%message149415%_)
        (let* ((_%ctx149417%_
                (if (eq? _%$%ctx149406149412%_ absent-value)
                    '#f
                    _%$%ctx149406149412%_))
               (_%contract-expr149419%_
                (if (eq? _%$%contract-expr149407149413%_ absent-value)
                    '#f
                    _%$%contract-expr149407149413%_))
               (_%value149421%_
                (if (eq? _%$%value149408149414%_ absent-value)
                    '#f
                    _%$%value149408149414%_)))
          (raise (let ((__obj149540
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj149540
                    _%message149415%_
                    'where:
                    _%ctx149417%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr149419%_
                                (cons 'value: (cons _%value149421%_ '())))))
                   __obj149540)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords149426%_ . _%args149427%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords149426%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149426%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149426%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149426%_
                  'value:
                  absent-value))
               _%args149427%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args149409149433%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args149409149433%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler149380%_ _%thunk149381%_)
        (let* ((_%handler149384%_ _%handler149380%_)
               (_%thunk149392%_ _%thunk149381%_)
               (__tmp149548
                (lambda (_%exn149401%_)
                  (let ((_%exn149403%_ (wrap-runtime-exception _%exn149401%_)))
                    (declare (not safe))
                    (_%handler149384%_ _%exn149403%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp149548 _%thunk149392%_))))
    (define with-exception-handler
      (lambda (_%handler149355%_ _%thunk149356%_)
        (if (procedure? _%handler149355%_)
            (let ((_%handler149360%_ _%handler149355%_))
              (if (procedure? _%thunk149356%_)
                  (let ((_%thunk149370%_ _%thunk149356%_))
                    (__with-exception-handler
                     _%handler149360%_
                     _%thunk149370%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149356%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler149355%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler149297%_ _%thunk149298%_)
        (let* ((_%handler149301%_ _%handler149297%_)
               (_%thunk149309%_ _%thunk149298%_)
               (__tmp149549
                (lambda (_%cont149318%_)
                  (let* ((_%handler149322%_
                          (lambda (_%exn149320%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont149318%_
                               _%handler149301%_
                               _%exn149320%_))))
                         (_%thunk149325%_ _%thunk149309%_)
                         (_%handler149330%_ _%handler149322%_)
                         (_%thunk149345%_ _%thunk149325%_))
                    (__with-exception-handler
                     _%handler149330%_
                     _%thunk149345%_)))))
          (declare (not safe))
          (##continuation-capture __tmp149549))))
    (define with-catch
      (lambda (_%handler149272%_ _%thunk149273%_)
        (if (procedure? _%handler149272%_)
            (let ((_%handler149277%_ _%handler149272%_))
              (if (procedure? _%thunk149273%_)
                  (let ((_%thunk149287%_ _%thunk149273%_))
                    (__with-catch _%handler149277%_ _%thunk149287%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149273%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler149272%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn149259%_)
        (if (or (heap-overflow-exception? _%exn149259%_)
                (stack-overflow-exception? _%exn149259%_))
            _%exn149259%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn149259%_))
                _%exn149259%_
                (if (macro-exception? _%exn149259%_)
                    (let ((_%rte149267%_
                           (let ((__obj149541
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj149541
                                _%exn149259%_
                                '2
                                '#f
                                '#f))
                             __obj149541)))
                      (let ((__tmp149550
                             (lambda (_%cont149269%_)
                               (let ((__tmp149551
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont149269%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte149267%_
                                  'continuation
                                  __tmp149551)))))
                        (declare (not safe))
                        (##continuation-capture __tmp149550))
                      _%rte149267%_)
                    _%exn149259%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj149254%_)
        (let ((_%$e149256%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj149254%_))))
          (if _%$e149256%_ _%$e149256%_ (error-exception? _%obj149254%_)))))
    (define error-message
      (lambda (_%obj149213%_)
        (let ((_%$e149249%_
               (let* ((_%obj149215%_ _%obj149213%_)
                      (_%slot149218%_ 'message)
                      (_%E149221%_ false)
                      (_%slot149226%_ _%slot149218%_)
                      (_%E149239%_ _%E149221%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj149215%_ _%slot149226%_ _%E149239%_))))
          (if _%$e149249%_
              _%$e149249%_
              (if (error-exception? _%obj149213%_)
                  (error-exception-message _%obj149213%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj149208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149208%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149208%_ 'irritants))
            (if (error-exception? _%obj149208%_)
                (error-exception-parameters _%obj149208%_)
                '#f))))
    (define error-trace
      (lambda (_%obj149206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149206%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149206%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e149167%_ _%port149168%_)
        (let ((_%$e149190%_
               (let* ((_%obj149170%_ _%e149167%_)
                      (_%id149173%_ 'display-exception)
                      (_%id149178%_ _%id149173%_))
                 (declare (not safe))
                 (__method-ref _%obj149170%_ _%id149178%_))))
          (if _%$e149190%_
              (_%$e149190%_ _%e149167%_ _%port149168%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e149167%_ _%port149168%_))))))
    (define display-exception__0
      (lambda (_%e149199%_)
        (let ((_%port149201%_ (current-error-port)))
          (display-exception__% _%e149199%_ _%port149201%_))))
    (define display-exception
      (lambda _g149552_
        (let ((_g149553_ (let () (declare (not safe)) (##length _g149552_))))
          (cond ((let () (declare (not safe)) (##fx= _g149553_ 1))
                 (apply display-exception__0 _g149552_))
                ((let () (declare (not safe)) (##fx= _g149553_ 2))
                 (apply display-exception__% _g149552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g149552_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self149145%_ _%message149146%_ . _%rest149147%_)
        (let* ((_%self149150%_ _%self149145%_)
               (_%message149164%_
                (if (string? _%message149146%_)
                    _%message149146%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g149159149161%_)
                       (display _%message149146%_ _%$%g149159149161%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self149150%_ 'message _%message149164%_))
          (apply class-instance-init! _%self149150%_ _%rest149147%_))))
    (define Error:::init!::specialize
      (lambda (__klass149462 __method-table149463)
        (let ((__message149464
               (let ((__slot149465
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149462 'message))))
                 (if __slot149465
                     __slot149465
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self149145%_ _%message149146%_ . _%rest149147%_)
            (let* ((_%self149150%_ _%self149145%_)
                   (_%message149164%_
                    (if (string? _%message149146%_)
                        _%message149146%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g149159149161%_)
                           (display _%message149146%_ _%$%g149159149161%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149150%_
                 _%message149164%_
                 __message149464
                 '#f
                 '#f))
              (apply class-instance-init! _%self149150%_ _%rest149147%_))))))
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
      (lambda (_%self148850%_ _%port148851%_)
        (let ((_%self148854%_ _%self148850%_))
          (let ((_%tmp-port148864%_ (open-output-string))
                (_%display-error-newline148865%_
                 (> (output-port-column _%port148851%_) '0)))
            (fix-port-width! _%tmp-port148864%_)
            (let ((__tmp149554
                   (lambda ()
                     (if _%display-error-newline148865%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e148868%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148854%_ 'where))))
                       (if _%$e148868%_ (display _%$e148868%_) (display '"?")))
                     (let ((__tmp149555
                            (let ((__tmp149556
                                   (let ((_%obj148872%_ _%self148854%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj148872%_))
                                         (let ((_%obj148877%_ _%obj148872%_))
                                           (declare (not safe))
                                           (__object-class _%obj148877%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj148872%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp149556))))
                       (declare (not safe))
                       (display* '" [" __tmp149555 '"]: "))
                     (let ((__tmp149557
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148854%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp149557))
                     (let ((_%irritants148892%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148854%_ 'irritants))))
                       (if (null? _%irritants148892%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj148894%_)
                                (if (u8vector? _%obj148894%_)
                                    (let ((__tmp149558
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj148894%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp149558))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj148894%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants148892%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont148895148897%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self148854%_
                                   'continuation))))
                           (if _%$%cont148895148897%_
                               (let ((_%cont148899%_ _%$%cont148895148897%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont148899%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp149554
               current-output-port
               _%tmp-port148864%_))
            (let ((__tmp149559 (get-output-string _%tmp-port148864%_)))
              (declare (not safe))
              (##write-string __tmp149559 _%port148851%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass149466 __method-table149467)
        (let ((__irritants149468
               (let ((__slot149472
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149466 'irritants))))
                 (if __slot149472
                     __slot149472
                     (error '"Unknown slot" 'irritants))))
              (__continuation149469
               (let ((__slot149473
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149466 'continuation))))
                 (if __slot149473
                     __slot149473
                     (error '"Unknown slot" 'continuation))))
              (__where149470
               (let ((__slot149474
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149466 'where))))
                 (if __slot149474
                     __slot149474
                     (error '"Unknown slot" 'where))))
              (__message149471
               (let ((__slot149475
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149466 'message))))
                 (if __slot149475
                     __slot149475
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self148850%_ _%port148851%_)
            (let ((_%self148854%_ _%self148850%_))
              (let ((_%tmp-port148864%_ (open-output-string))
                    (_%display-error-newline148865%_
                     (> (output-port-column _%port148851%_) '0)))
                (fix-port-width! _%tmp-port148864%_)
                (let ((__tmp149560
                       (lambda ()
                         (if _%display-error-newline148865%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e148868%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148854%_
                                   __where149470
                                   '#f
                                   '#f))))
                           (if _%$e148868%_
                               (display _%$e148868%_)
                               (display '"?")))
                         (let ((__tmp149561
                                (let ((__tmp149562
                                       (let ((_%obj148872%_ _%self148854%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj148872%_))
                                             (let ((_%obj148877%_
                                                    _%obj148872%_))
                                               (declare (not safe))
                                               (__object-class _%obj148877%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj148872%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp149562))))
                           (declare (not safe))
                           (display* '" [" __tmp149561 '"]: "))
                         (let ((__tmp149563
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148854%_
                                   __message149471
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp149563))
                         (let ((_%irritants148892%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148854%_
                                   __irritants149468
                                   '#f
                                   '#f))))
                           (if (null? _%irritants148892%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj148894%_)
                                    (if (u8vector? _%obj148894%_)
                                        (let ((__tmp149564
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj148894%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp149564))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj148894%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants148892%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont148895148897%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self148854%_
                                       __continuation149469
                                       '#f
                                       '#f))))
                               (if _%$%cont148895148897%_
                                   (let ((_%cont148899%_
                                          _%$%cont148895148897%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont148899%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp149560
                   current-output-port
                   _%tmp-port148864%_))
                (let ((__tmp149565 (get-output-string _%tmp-port148864%_)))
                  (declare (not safe))
                  (##write-string __tmp149565 _%port148851%_))))))))
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
      (lambda (_%self148707%_ _%port148708%_)
        (let* ((_%self148711%_ _%self148707%_)
               (_%tmp-port148721%_ (open-output-string)))
          (fix-port-width! _%tmp-port148721%_)
          (let ((__tmp149566
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self148711%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp149566 _%tmp-port148721%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont148722148724%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self148711%_ 'continuation))))
                (if _%$%cont148722148724%_
                    (let ((_%cont148726%_ _%$%cont148722148724%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port148721%_)
                      (newline _%tmp-port148721%_)
                      (display-continuation-backtrace
                       _%cont148726%_
                       _%tmp-port148721%_))
                    '#f))
              '#!void)
          (let ((__tmp149567 (get-output-string _%tmp-port148721%_)))
            (declare (not safe))
            (##write-string __tmp149567 _%port148708%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass149476 __method-table149477)
        (let ((__continuation149478
               (let ((__slot149480
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149476 'continuation))))
                 (if __slot149480
                     __slot149480
                     (error '"Unknown slot" 'continuation))))
              (__exception149479
               (let ((__slot149481
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149476 'exception))))
                 (if __slot149481
                     __slot149481
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self148707%_ _%port148708%_)
            (let* ((_%self148711%_ _%self148707%_)
                   (_%tmp-port148721%_ (open-output-string)))
              (fix-port-width! _%tmp-port148721%_)
              (let ((__tmp149568
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self148711%_
                        __exception149479
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp149568 _%tmp-port148721%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont148722148724%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self148711%_
                            __continuation149478
                            '#f
                            '#f))))
                    (if _%$%cont148722148724%_
                        (let ((_%cont148726%_ _%$%cont148722148724%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port148721%_)
                          (newline _%tmp-port148721%_)
                          (display-continuation-backtrace
                           _%cont148726%_
                           _%tmp-port148721%_))
                        '#f))
                  '#!void)
              (let ((__tmp149569 (get-output-string _%tmp-port148721%_)))
                (declare (not safe))
                (##write-string __tmp149569 _%port148708%_)))))))
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
      (lambda (_%port148579%_)
        (if (macro-character-port? _%port148579%_)
            (let ((_%old-width148581%_
                   (macro-character-port-output-width _%port148579%_)))
              (macro-character-port-output-width-set!
               _%port148579%_
               (lambda (_%port148583%_) '512))
              _%old-width148581%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port148576%_ _%old-width148577%_)
        (if (macro-character-port? _%port148576%_)
            (macro-character-port-output-width-set!
             _%port148576%_
             _%old-width148577%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e148574%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e148574%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn148568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148568%_))
            (let ((_%e148571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148568%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e148571%_))
            (macro-abandoned-mutex-exception? _%exn148568%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn148564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148564%_))
            (let ((_%e148566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148564%_ 'exception))))
              (macro-cfun-conversion-exception? _%e148566%_))
            (macro-cfun-conversion-exception? _%exn148564%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn148560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148560%_))
            (let ((_%e148562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148560%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148562%_)
                  (macro-cfun-conversion-exception-arguments _%e148562%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e148562%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148560%_)
                (macro-cfun-conversion-exception-arguments _%exn148560%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn148560%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn148556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148556%_))
            (let ((_%e148558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148556%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148558%_)
                  (macro-cfun-conversion-exception-code _%e148558%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e148558%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148556%_)
                (macro-cfun-conversion-exception-code _%exn148556%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn148556%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn148552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148552%_))
            (let ((_%e148554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148552%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148554%_)
                  (macro-cfun-conversion-exception-message _%e148554%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e148554%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148552%_)
                (macro-cfun-conversion-exception-message _%exn148552%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn148552%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn148546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148546%_))
            (let ((_%e148549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148546%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148549%_)
                  (macro-cfun-conversion-exception-procedure _%e148549%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e148549%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148546%_)
                (macro-cfun-conversion-exception-procedure _%exn148546%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn148546%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn148542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148542%_))
            (let ((_%e148544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148542%_ 'exception))))
              (macro-datum-parsing-exception? _%e148544%_))
            (macro-datum-parsing-exception? _%exn148542%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn148538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148538%_))
            (let ((_%e148540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148538%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148540%_)
                  (macro-datum-parsing-exception-kind _%e148540%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e148540%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148538%_)
                (macro-datum-parsing-exception-kind _%exn148538%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn148538%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn148534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148534%_))
            (let ((_%e148536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148534%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148536%_)
                  (macro-datum-parsing-exception-parameters _%e148536%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e148536%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148534%_)
                (macro-datum-parsing-exception-parameters _%exn148534%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn148534%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn148528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148528%_))
            (let ((_%e148531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148528%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148531%_)
                  (macro-datum-parsing-exception-readenv _%e148531%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e148531%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148528%_)
                (macro-datum-parsing-exception-readenv _%exn148528%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn148528%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn148522%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148522%_))
            (let ((_%e148525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148522%_ 'exception))))
              (macro-deadlock-exception? _%e148525%_))
            (macro-deadlock-exception? _%exn148522%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn148518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148518%_))
            (let ((_%e148520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148518%_ 'exception))))
              (macro-divide-by-zero-exception? _%e148520%_))
            (macro-divide-by-zero-exception? _%exn148518%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn148514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148514%_))
            (let ((_%e148516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148514%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148516%_)
                  (macro-divide-by-zero-exception-arguments _%e148516%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e148516%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148514%_)
                (macro-divide-by-zero-exception-arguments _%exn148514%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn148514%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn148508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148508%_))
            (let ((_%e148511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148508%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148511%_)
                  (macro-divide-by-zero-exception-procedure _%e148511%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e148511%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148508%_)
                (macro-divide-by-zero-exception-procedure _%exn148508%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn148508%_ '())))))))
    (define error-exception?
      (lambda (_%exn148504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148504%_))
            (let ((_%e148506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148504%_ 'exception))))
              (macro-error-exception? _%e148506%_))
            (macro-error-exception? _%exn148504%_))))
    (define error-exception-message
      (lambda (_%exn148500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148500%_))
            (let ((_%e148502%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148500%_ 'exception))))
              (if (macro-error-exception? _%e148502%_)
                  (macro-error-exception-message _%e148502%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e148502%_ '())))))
            (if (macro-error-exception? _%exn148500%_)
                (macro-error-exception-message _%exn148500%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn148500%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn148494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148494%_))
            (let ((_%e148497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148494%_ 'exception))))
              (if (macro-error-exception? _%e148497%_)
                  (macro-error-exception-parameters _%e148497%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e148497%_ '())))))
            (if (macro-error-exception? _%exn148494%_)
                (macro-error-exception-parameters _%exn148494%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn148494%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn148490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148490%_))
            (let ((_%e148492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148490%_ 'exception))))
              (macro-expression-parsing-exception? _%e148492%_))
            (macro-expression-parsing-exception? _%exn148490%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn148486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148486%_))
            (let ((_%e148488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148486%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148488%_)
                  (macro-expression-parsing-exception-kind _%e148488%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e148488%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148486%_)
                (macro-expression-parsing-exception-kind _%exn148486%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn148486%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn148482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148482%_))
            (let ((_%e148484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148482%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148484%_)
                  (macro-expression-parsing-exception-parameters _%e148484%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e148484%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148482%_)
                (macro-expression-parsing-exception-parameters _%exn148482%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn148482%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn148476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148476%_))
            (let ((_%e148479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148476%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148479%_)
                  (macro-expression-parsing-exception-source _%e148479%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e148479%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148476%_)
                (macro-expression-parsing-exception-source _%exn148476%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn148476%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn148472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148472%_))
            (let ((_%e148474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148472%_ 'exception))))
              (macro-file-exists-exception? _%e148474%_))
            (macro-file-exists-exception? _%exn148472%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn148468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148468%_))
            (let ((_%e148470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148468%_ 'exception))))
              (if (macro-file-exists-exception? _%e148470%_)
                  (macro-file-exists-exception-arguments _%e148470%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e148470%_ '())))))
            (if (macro-file-exists-exception? _%exn148468%_)
                (macro-file-exists-exception-arguments _%exn148468%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn148468%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn148462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148462%_))
            (let ((_%e148465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148462%_ 'exception))))
              (if (macro-file-exists-exception? _%e148465%_)
                  (macro-file-exists-exception-procedure _%e148465%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e148465%_ '())))))
            (if (macro-file-exists-exception? _%exn148462%_)
                (macro-file-exists-exception-procedure _%exn148462%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn148462%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn148458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148458%_))
            (let ((_%e148460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148458%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e148460%_))
            (macro-fixnum-overflow-exception? _%exn148458%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn148454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148454%_))
            (let ((_%e148456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148454%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148456%_)
                  (macro-fixnum-overflow-exception-arguments _%e148456%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e148456%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148454%_)
                (macro-fixnum-overflow-exception-arguments _%exn148454%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn148454%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn148448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148448%_))
            (let ((_%e148451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148448%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148451%_)
                  (macro-fixnum-overflow-exception-procedure _%e148451%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e148451%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148448%_)
                (macro-fixnum-overflow-exception-procedure _%exn148448%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn148448%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn148442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148442%_))
            (let ((_%e148445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148442%_ 'exception))))
              (macro-heap-overflow-exception? _%e148445%_))
            (macro-heap-overflow-exception? _%exn148442%_))))
    (define inactive-thread-exception?
      (lambda (_%exn148438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148438%_))
            (let ((_%e148440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148438%_ 'exception))))
              (macro-inactive-thread-exception? _%e148440%_))
            (macro-inactive-thread-exception? _%exn148438%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn148434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148434%_))
            (let ((_%e148436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148434%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148436%_)
                  (macro-inactive-thread-exception-arguments _%e148436%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e148436%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148434%_)
                (macro-inactive-thread-exception-arguments _%exn148434%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn148434%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn148428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148428%_))
            (let ((_%e148431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148428%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148431%_)
                  (macro-inactive-thread-exception-procedure _%e148431%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e148431%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148428%_)
                (macro-inactive-thread-exception-procedure _%exn148428%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn148428%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn148424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148424%_))
            (let ((_%e148426%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148424%_ 'exception))))
              (macro-initialized-thread-exception? _%e148426%_))
            (macro-initialized-thread-exception? _%exn148424%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn148420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148420%_))
            (let ((_%e148422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148420%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148422%_)
                  (macro-initialized-thread-exception-arguments _%e148422%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e148422%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148420%_)
                (macro-initialized-thread-exception-arguments _%exn148420%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn148420%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn148414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148414%_))
            (let ((_%e148417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148414%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148417%_)
                  (macro-initialized-thread-exception-procedure _%e148417%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e148417%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148414%_)
                (macro-initialized-thread-exception-procedure _%exn148414%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn148414%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn148410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148410%_))
            (let ((_%e148412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148410%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e148412%_))
            (macro-invalid-hash-number-exception? _%exn148410%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn148406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148406%_))
            (let ((_%e148408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148406%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148408%_)
                  (macro-invalid-hash-number-exception-arguments _%e148408%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e148408%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148406%_)
                (macro-invalid-hash-number-exception-arguments _%exn148406%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn148406%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn148400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148400%_))
            (let ((_%e148403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148400%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148403%_)
                  (macro-invalid-hash-number-exception-procedure _%e148403%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e148403%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148400%_)
                (macro-invalid-hash-number-exception-procedure _%exn148400%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn148400%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn148396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148396%_))
            (let ((_%e148398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148396%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e148398%_))
            (macro-invalid-utf8-encoding-exception? _%exn148396%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn148392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148392%_))
            (let ((_%e148394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148392%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148394%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e148394%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e148394%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148392%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn148392%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn148392%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn148386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148386%_))
            (let ((_%e148389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148386%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148389%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e148389%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e148389%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148386%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn148386%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn148386%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn148382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148382%_))
            (let ((_%e148384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148382%_ 'exception))))
              (macro-join-timeout-exception? _%e148384%_))
            (macro-join-timeout-exception? _%exn148382%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn148378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148378%_))
            (let ((_%e148380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148378%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148380%_)
                  (macro-join-timeout-exception-arguments _%e148380%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e148380%_ '())))))
            (if (macro-join-timeout-exception? _%exn148378%_)
                (macro-join-timeout-exception-arguments _%exn148378%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn148378%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn148372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148372%_))
            (let ((_%e148375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148372%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148375%_)
                  (macro-join-timeout-exception-procedure _%e148375%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e148375%_ '())))))
            (if (macro-join-timeout-exception? _%exn148372%_)
                (macro-join-timeout-exception-procedure _%exn148372%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn148372%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn148368%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148368%_))
            (let ((_%e148370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148368%_ 'exception))))
              (macro-keyword-expected-exception? _%e148370%_))
            (macro-keyword-expected-exception? _%exn148368%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn148364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148364%_))
            (let ((_%e148366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148364%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148366%_)
                  (macro-keyword-expected-exception-arguments _%e148366%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e148366%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148364%_)
                (macro-keyword-expected-exception-arguments _%exn148364%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn148364%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn148358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148358%_))
            (let ((_%e148361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148358%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148361%_)
                  (macro-keyword-expected-exception-procedure _%e148361%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e148361%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148358%_)
                (macro-keyword-expected-exception-procedure _%exn148358%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn148358%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn148354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148354%_))
            (let ((_%e148356%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148354%_ 'exception))))
              (macro-length-mismatch-exception? _%e148356%_))
            (macro-length-mismatch-exception? _%exn148354%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn148350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148350%_))
            (let ((_%e148352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148350%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148352%_)
                  (macro-length-mismatch-exception-arg-id _%e148352%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e148352%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148350%_)
                (macro-length-mismatch-exception-arg-id _%exn148350%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn148350%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn148346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148346%_))
            (let ((_%e148348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148346%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148348%_)
                  (macro-length-mismatch-exception-arguments _%e148348%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e148348%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148346%_)
                (macro-length-mismatch-exception-arguments _%exn148346%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn148346%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn148340%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148340%_))
            (let ((_%e148343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148340%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148343%_)
                  (macro-length-mismatch-exception-procedure _%e148343%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e148343%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148340%_)
                (macro-length-mismatch-exception-procedure _%exn148340%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn148340%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn148336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148336%_))
            (let ((_%e148338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148336%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e148338%_))
            (macro-mailbox-receive-timeout-exception? _%exn148336%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn148332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148332%_))
            (let ((_%e148334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148332%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148334%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e148334%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e148334%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148332%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn148332%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn148332%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn148326%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148326%_))
            (let ((_%e148329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148326%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148329%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e148329%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e148329%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148326%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn148326%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn148326%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn148322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148322%_))
            (let ((_%e148324%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148322%_ 'exception))))
              (macro-module-not-found-exception? _%e148324%_))
            (macro-module-not-found-exception? _%exn148322%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn148318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148318%_))
            (let ((_%e148320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148318%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148320%_)
                  (macro-module-not-found-exception-arguments _%e148320%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e148320%_ '())))))
            (if (macro-module-not-found-exception? _%exn148318%_)
                (macro-module-not-found-exception-arguments _%exn148318%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn148318%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn148312%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148312%_))
            (let ((_%e148315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148312%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148315%_)
                  (macro-module-not-found-exception-procedure _%e148315%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e148315%_ '())))))
            (if (macro-module-not-found-exception? _%exn148312%_)
                (macro-module-not-found-exception-procedure _%exn148312%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn148312%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn148306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148306%_))
            (let ((_%e148309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148306%_ 'exception))))
              (macro-multiple-c-return-exception? _%e148309%_))
            (macro-multiple-c-return-exception? _%exn148306%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn148302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148302%_))
            (let ((_%e148304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148302%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e148304%_))
            (macro-no-such-file-or-directory-exception? _%exn148302%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn148298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148298%_))
            (let ((_%e148300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148298%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148300%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e148300%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e148300%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148298%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn148298%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn148298%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn148292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148292%_))
            (let ((_%e148295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148292%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148295%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e148295%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e148295%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148292%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn148292%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn148292%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn148288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148288%_))
            (let ((_%e148290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148288%_ 'exception))))
              (macro-noncontinuable-exception? _%e148290%_))
            (macro-noncontinuable-exception? _%exn148288%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn148282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148282%_))
            (let ((_%e148285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148282%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e148285%_)
                  (macro-noncontinuable-exception-reason _%e148285%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e148285%_ '())))))
            (if (macro-noncontinuable-exception? _%exn148282%_)
                (macro-noncontinuable-exception-reason _%exn148282%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn148282%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn148278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148278%_))
            (let ((_%e148280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148278%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e148280%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn148278%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn148274%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148274%_))
            (let ((_%e148276%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148274%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148276%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e148276%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e148276%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148274%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn148274%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn148274%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn148268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148268%_))
            (let ((_%e148271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148268%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148271%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e148271%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e148271%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148268%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn148268%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn148268%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn148264%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148264%_))
            (let ((_%e148266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148264%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e148266%_))
            (macro-nonprocedure-operator-exception? _%exn148264%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn148260%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148260%_))
            (let ((_%e148262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148260%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148262%_)
                  (macro-nonprocedure-operator-exception-arguments _%e148262%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e148262%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148260%_)
                (macro-nonprocedure-operator-exception-arguments _%exn148260%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn148260%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn148256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148256%_))
            (let ((_%e148258%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148256%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148258%_)
                  (macro-nonprocedure-operator-exception-code _%e148258%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e148258%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148256%_)
                (macro-nonprocedure-operator-exception-code _%exn148256%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn148256%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn148252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148252%_))
            (let ((_%e148254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148252%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148254%_)
                  (macro-nonprocedure-operator-exception-operator _%e148254%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e148254%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148252%_)
                (macro-nonprocedure-operator-exception-operator _%exn148252%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn148252%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn148246%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148246%_))
            (let ((_%e148249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148246%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148249%_)
                  (macro-nonprocedure-operator-exception-rte _%e148249%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e148249%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148246%_)
                (macro-nonprocedure-operator-exception-rte _%exn148246%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn148246%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn148242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148242%_))
            (let ((_%e148244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148242%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e148244%_))
            (macro-not-in-compilation-context-exception? _%exn148242%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn148238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148238%_))
            (let ((_%e148240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148238%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148240%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e148240%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e148240%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148238%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn148238%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn148238%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn148232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148232%_))
            (let ((_%e148235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148232%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148235%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e148235%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e148235%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148232%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn148232%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn148232%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn148228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148228%_))
            (let ((_%e148230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148228%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e148230%_))
            (macro-number-of-arguments-limit-exception? _%exn148228%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn148224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148224%_))
            (let ((_%e148226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148224%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148226%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e148226%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e148226%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148224%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn148224%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn148224%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn148218%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148218%_))
            (let ((_%e148221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148218%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148221%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e148221%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e148221%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148218%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn148218%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn148218%_ '())))))))
    (define os-exception?
      (lambda (_%exn148214%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148214%_))
            (let ((_%e148216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148214%_ 'exception))))
              (macro-os-exception? _%e148216%_))
            (macro-os-exception? _%exn148214%_))))
    (define os-exception-arguments
      (lambda (_%exn148210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148210%_))
            (let ((_%e148212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148210%_ 'exception))))
              (if (macro-os-exception? _%e148212%_)
                  (macro-os-exception-arguments _%e148212%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e148212%_ '())))))
            (if (macro-os-exception? _%exn148210%_)
                (macro-os-exception-arguments _%exn148210%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn148210%_ '())))))))
    (define os-exception-code
      (lambda (_%exn148206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148206%_))
            (let ((_%e148208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148206%_ 'exception))))
              (if (macro-os-exception? _%e148208%_)
                  (macro-os-exception-code _%e148208%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e148208%_ '())))))
            (if (macro-os-exception? _%exn148206%_)
                (macro-os-exception-code _%exn148206%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn148206%_ '())))))))
    (define os-exception-message
      (lambda (_%exn148202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148202%_))
            (let ((_%e148204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148202%_ 'exception))))
              (if (macro-os-exception? _%e148204%_)
                  (macro-os-exception-message _%e148204%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e148204%_ '())))))
            (if (macro-os-exception? _%exn148202%_)
                (macro-os-exception-message _%exn148202%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn148202%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn148196%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148196%_))
            (let ((_%e148199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148196%_ 'exception))))
              (if (macro-os-exception? _%e148199%_)
                  (macro-os-exception-procedure _%e148199%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e148199%_ '())))))
            (if (macro-os-exception? _%exn148196%_)
                (macro-os-exception-procedure _%exn148196%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn148196%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn148192%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148192%_))
            (let ((_%e148194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148192%_ 'exception))))
              (macro-permission-denied-exception? _%e148194%_))
            (macro-permission-denied-exception? _%exn148192%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn148188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148188%_))
            (let ((_%e148190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148188%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148190%_)
                  (macro-permission-denied-exception-arguments _%e148190%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e148190%_ '())))))
            (if (macro-permission-denied-exception? _%exn148188%_)
                (macro-permission-denied-exception-arguments _%exn148188%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn148188%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn148182%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148182%_))
            (let ((_%e148185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148182%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148185%_)
                  (macro-permission-denied-exception-procedure _%e148185%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e148185%_ '())))))
            (if (macro-permission-denied-exception? _%exn148182%_)
                (macro-permission-denied-exception-procedure _%exn148182%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn148182%_ '())))))))
    (define range-exception?
      (lambda (_%exn148178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148178%_))
            (let ((_%e148180%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148178%_ 'exception))))
              (macro-range-exception? _%e148180%_))
            (macro-range-exception? _%exn148178%_))))
    (define range-exception-arg-id
      (lambda (_%exn148174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148174%_))
            (let ((_%e148176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148174%_ 'exception))))
              (if (macro-range-exception? _%e148176%_)
                  (macro-range-exception-arg-id _%e148176%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e148176%_ '())))))
            (if (macro-range-exception? _%exn148174%_)
                (macro-range-exception-arg-id _%exn148174%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn148174%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn148170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148170%_))
            (let ((_%e148172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148170%_ 'exception))))
              (if (macro-range-exception? _%e148172%_)
                  (macro-range-exception-arguments _%e148172%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e148172%_ '())))))
            (if (macro-range-exception? _%exn148170%_)
                (macro-range-exception-arguments _%exn148170%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn148170%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn148164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148164%_))
            (let ((_%e148167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148164%_ 'exception))))
              (if (macro-range-exception? _%e148167%_)
                  (macro-range-exception-procedure _%e148167%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e148167%_ '())))))
            (if (macro-range-exception? _%exn148164%_)
                (macro-range-exception-procedure _%exn148164%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn148164%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn148160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148160%_))
            (let ((_%e148162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148160%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e148162%_))
            (macro-rpc-remote-error-exception? _%exn148160%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn148156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148156%_))
            (let ((_%e148158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148156%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148158%_)
                  (macro-rpc-remote-error-exception-arguments _%e148158%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e148158%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148156%_)
                (macro-rpc-remote-error-exception-arguments _%exn148156%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn148156%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn148152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148152%_))
            (let ((_%e148154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148152%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148154%_)
                  (macro-rpc-remote-error-exception-message _%e148154%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e148154%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148152%_)
                (macro-rpc-remote-error-exception-message _%exn148152%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn148152%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn148146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148146%_))
            (let ((_%e148149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148146%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148149%_)
                  (macro-rpc-remote-error-exception-procedure _%e148149%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e148149%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148146%_)
                (macro-rpc-remote-error-exception-procedure _%exn148146%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn148146%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn148142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148142%_))
            (let ((_%e148144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148142%_ 'exception))))
              (macro-scheduler-exception? _%e148144%_))
            (macro-scheduler-exception? _%exn148142%_))))
    (define scheduler-exception-reason
      (lambda (_%exn148136%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148136%_))
            (let ((_%e148139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148136%_ 'exception))))
              (if (macro-scheduler-exception? _%e148139%_)
                  (macro-scheduler-exception-reason _%e148139%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e148139%_ '())))))
            (if (macro-scheduler-exception? _%exn148136%_)
                (macro-scheduler-exception-reason _%exn148136%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn148136%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn148132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148132%_))
            (let ((_%e148134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148132%_ 'exception))))
              (macro-sfun-conversion-exception? _%e148134%_))
            (macro-sfun-conversion-exception? _%exn148132%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn148128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148128%_))
            (let ((_%e148130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148128%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148130%_)
                  (macro-sfun-conversion-exception-arguments _%e148130%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e148130%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148128%_)
                (macro-sfun-conversion-exception-arguments _%exn148128%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn148128%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn148124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148124%_))
            (let ((_%e148126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148124%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148126%_)
                  (macro-sfun-conversion-exception-code _%e148126%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e148126%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148124%_)
                (macro-sfun-conversion-exception-code _%exn148124%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn148124%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn148120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148120%_))
            (let ((_%e148122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148120%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148122%_)
                  (macro-sfun-conversion-exception-message _%e148122%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e148122%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148120%_)
                (macro-sfun-conversion-exception-message _%exn148120%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn148120%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn148114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148114%_))
            (let ((_%e148117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148114%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148117%_)
                  (macro-sfun-conversion-exception-procedure _%e148117%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e148117%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148114%_)
                (macro-sfun-conversion-exception-procedure _%exn148114%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn148114%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn148108%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148108%_))
            (let ((_%e148111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148108%_ 'exception))))
              (macro-stack-overflow-exception? _%e148111%_))
            (macro-stack-overflow-exception? _%exn148108%_))))
    (define started-thread-exception?
      (lambda (_%exn148104%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148104%_))
            (let ((_%e148106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148104%_ 'exception))))
              (macro-started-thread-exception? _%e148106%_))
            (macro-started-thread-exception? _%exn148104%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn148100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148100%_))
            (let ((_%e148102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148100%_ 'exception))))
              (if (macro-started-thread-exception? _%e148102%_)
                  (macro-started-thread-exception-arguments _%e148102%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e148102%_ '())))))
            (if (macro-started-thread-exception? _%exn148100%_)
                (macro-started-thread-exception-arguments _%exn148100%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn148100%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn148094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148094%_))
            (let ((_%e148097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148094%_ 'exception))))
              (if (macro-started-thread-exception? _%e148097%_)
                  (macro-started-thread-exception-procedure _%e148097%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e148097%_ '())))))
            (if (macro-started-thread-exception? _%exn148094%_)
                (macro-started-thread-exception-procedure _%exn148094%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn148094%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn148090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148090%_))
            (let ((_%e148092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148090%_ 'exception))))
              (macro-terminated-thread-exception? _%e148092%_))
            (macro-terminated-thread-exception? _%exn148090%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn148086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148086%_))
            (let ((_%e148088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148086%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148088%_)
                  (macro-terminated-thread-exception-arguments _%e148088%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e148088%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148086%_)
                (macro-terminated-thread-exception-arguments _%exn148086%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn148086%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn148080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148080%_))
            (let ((_%e148083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148080%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148083%_)
                  (macro-terminated-thread-exception-procedure _%e148083%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e148083%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148080%_)
                (macro-terminated-thread-exception-procedure _%exn148080%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn148080%_ '())))))))
    (define type-exception?
      (lambda (_%exn148076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148076%_))
            (let ((_%e148078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148076%_ 'exception))))
              (macro-type-exception? _%e148078%_))
            (macro-type-exception? _%exn148076%_))))
    (define type-exception-arg-id
      (lambda (_%exn148072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148072%_))
            (let ((_%e148074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148072%_ 'exception))))
              (if (macro-type-exception? _%e148074%_)
                  (macro-type-exception-arg-id _%e148074%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e148074%_ '())))))
            (if (macro-type-exception? _%exn148072%_)
                (macro-type-exception-arg-id _%exn148072%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn148072%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn148068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148068%_))
            (let ((_%e148070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148068%_ 'exception))))
              (if (macro-type-exception? _%e148070%_)
                  (macro-type-exception-arguments _%e148070%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e148070%_ '())))))
            (if (macro-type-exception? _%exn148068%_)
                (macro-type-exception-arguments _%exn148068%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn148068%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn148064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148064%_))
            (let ((_%e148066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148064%_ 'exception))))
              (if (macro-type-exception? _%e148066%_)
                  (macro-type-exception-procedure _%e148066%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e148066%_ '())))))
            (if (macro-type-exception? _%exn148064%_)
                (macro-type-exception-procedure _%exn148064%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn148064%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn148058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148058%_))
            (let ((_%e148061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148058%_ 'exception))))
              (if (macro-type-exception? _%e148061%_)
                  (macro-type-exception-type-id _%e148061%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e148061%_ '())))))
            (if (macro-type-exception? _%exn148058%_)
                (macro-type-exception-type-id _%exn148058%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn148058%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn148054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148054%_))
            (let ((_%e148056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148054%_ 'exception))))
              (macro-unbound-global-exception? _%e148056%_))
            (macro-unbound-global-exception? _%exn148054%_))))
    (define unbound-global-exception-code
      (lambda (_%exn148050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148050%_))
            (let ((_%e148052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148050%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148052%_)
                  (macro-unbound-global-exception-code _%e148052%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e148052%_ '())))))
            (if (macro-unbound-global-exception? _%exn148050%_)
                (macro-unbound-global-exception-code _%exn148050%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn148050%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn148046%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148046%_))
            (let ((_%e148048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148046%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148048%_)
                  (macro-unbound-global-exception-rte _%e148048%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e148048%_ '())))))
            (if (macro-unbound-global-exception? _%exn148046%_)
                (macro-unbound-global-exception-rte _%exn148046%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn148046%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn148040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148040%_))
            (let ((_%e148043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148040%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148043%_)
                  (macro-unbound-global-exception-variable _%e148043%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e148043%_ '())))))
            (if (macro-unbound-global-exception? _%exn148040%_)
                (macro-unbound-global-exception-variable _%exn148040%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn148040%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn148036%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148036%_))
            (let ((_%e148038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148036%_ 'exception))))
              (macro-unbound-key-exception? _%e148038%_))
            (macro-unbound-key-exception? _%exn148036%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn148032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148032%_))
            (let ((_%e148034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148032%_ 'exception))))
              (if (macro-unbound-key-exception? _%e148034%_)
                  (macro-unbound-key-exception-arguments _%e148034%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e148034%_ '())))))
            (if (macro-unbound-key-exception? _%exn148032%_)
                (macro-unbound-key-exception-arguments _%exn148032%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn148032%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn148026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148026%_))
            (let ((_%e148029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148026%_ 'exception))))
              (if (macro-unbound-key-exception? _%e148029%_)
                  (macro-unbound-key-exception-procedure _%e148029%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e148029%_ '())))))
            (if (macro-unbound-key-exception? _%exn148026%_)
                (macro-unbound-key-exception-procedure _%exn148026%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn148026%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn148022%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148022%_))
            (let ((_%e148024%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148022%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e148024%_))
            (macro-unbound-os-environment-variable-exception? _%exn148022%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn148018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148018%_))
            (let ((_%e148020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148018%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e148020%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e148020%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e148020%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn148018%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn148018%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn148018%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn148012%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148012%_))
            (let ((_%e148015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148012%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e148015%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e148015%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e148015%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn148012%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn148012%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn148012%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn148008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148008%_))
            (let ((_%e148010%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148008%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e148010%_))
            (macro-unbound-serial-number-exception? _%exn148008%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn148004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148004%_))
            (let ((_%e148006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148004%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e148006%_)
                  (macro-unbound-serial-number-exception-arguments _%e148006%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e148006%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn148004%_)
                (macro-unbound-serial-number-exception-arguments _%exn148004%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn148004%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn147998%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147998%_))
            (let ((_%e148001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147998%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e148001%_)
                  (macro-unbound-serial-number-exception-procedure _%e148001%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e148001%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147998%_)
                (macro-unbound-serial-number-exception-procedure _%exn147998%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn147998%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn147994%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147994%_))
            (let ((_%e147996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147994%_ 'exception))))
              (macro-uncaught-exception? _%e147996%_))
            (macro-uncaught-exception? _%exn147994%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn147990%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147990%_))
            (let ((_%e147992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147990%_ 'exception))))
              (if (macro-uncaught-exception? _%e147992%_)
                  (macro-uncaught-exception-arguments _%e147992%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e147992%_ '())))))
            (if (macro-uncaught-exception? _%exn147990%_)
                (macro-uncaught-exception-arguments _%exn147990%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn147990%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn147986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147986%_))
            (let ((_%e147988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147986%_ 'exception))))
              (if (macro-uncaught-exception? _%e147988%_)
                  (macro-uncaught-exception-procedure _%e147988%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e147988%_ '())))))
            (if (macro-uncaught-exception? _%exn147986%_)
                (macro-uncaught-exception-procedure _%exn147986%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn147986%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn147980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147980%_))
            (let ((_%e147983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147980%_ 'exception))))
              (if (macro-uncaught-exception? _%e147983%_)
                  (macro-uncaught-exception-reason _%e147983%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e147983%_ '())))))
            (if (macro-uncaught-exception? _%exn147980%_)
                (macro-uncaught-exception-reason _%exn147980%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn147980%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn147976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147976%_))
            (let ((_%e147978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147976%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e147978%_))
            (macro-uninitialized-thread-exception? _%exn147976%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn147972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147972%_))
            (let ((_%e147974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147972%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147974%_)
                  (macro-uninitialized-thread-exception-arguments _%e147974%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e147974%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147972%_)
                (macro-uninitialized-thread-exception-arguments _%exn147972%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn147972%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn147966%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147966%_))
            (let ((_%e147969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147966%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147969%_)
                  (macro-uninitialized-thread-exception-procedure _%e147969%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e147969%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147966%_)
                (macro-uninitialized-thread-exception-procedure _%exn147966%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn147966%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn147962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147962%_))
            (let ((_%e147964%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147962%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e147964%_))
            (macro-unknown-keyword-argument-exception? _%exn147962%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn147958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147958%_))
            (let ((_%e147960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147958%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147960%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e147960%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e147960%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147958%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn147958%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn147958%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn147952%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147952%_))
            (let ((_%e147955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147952%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147955%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e147955%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e147955%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147952%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn147952%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn147952%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn147948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147948%_))
            (let ((_%e147950%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147948%_ 'exception))))
              (macro-unterminated-process-exception? _%e147950%_))
            (macro-unterminated-process-exception? _%exn147948%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn147944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147944%_))
            (let ((_%e147946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147944%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147946%_)
                  (macro-unterminated-process-exception-arguments _%e147946%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e147946%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147944%_)
                (macro-unterminated-process-exception-arguments _%exn147944%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn147944%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn147938%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147938%_))
            (let ((_%e147941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147938%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147941%_)
                  (macro-unterminated-process-exception-procedure _%e147941%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e147941%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147938%_)
                (macro-unterminated-process-exception-procedure _%exn147938%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn147938%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn147934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147934%_))
            (let ((_%e147936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147934%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e147936%_))
            (macro-wrong-number-of-arguments-exception? _%exn147934%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn147930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147930%_))
            (let ((_%e147932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147930%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147932%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e147932%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e147932%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147930%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn147930%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn147930%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn147924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147924%_))
            (let ((_%e147927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147924%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147927%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e147927%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e147927%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147924%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn147924%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn147924%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn147920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147920%_))
            (let ((_%e147922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147920%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e147922%_))
            (macro-wrong-number-of-values-exception? _%exn147920%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn147916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147916%_))
            (let ((_%e147918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147916%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147918%_)
                  (macro-wrong-number-of-values-exception-code _%e147918%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e147918%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147916%_)
                (macro-wrong-number-of-values-exception-code _%exn147916%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn147916%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn147912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147912%_))
            (let ((_%e147914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147912%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147914%_)
                  (macro-wrong-number-of-values-exception-rte _%e147914%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e147914%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147912%_)
                (macro-wrong-number-of-values-exception-rte _%exn147912%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn147912%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn147906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147906%_))
            (let ((_%e147909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147906%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147909%_)
                  (macro-wrong-number-of-values-exception-vals _%e147909%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e147909%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147906%_)
                (macro-wrong-number-of-values-exception-vals _%exn147906%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn147906%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn147900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147900%_))
            (let ((_%e147903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147900%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e147903%_))
            (macro-wrong-processor-c-return-exception? _%exn147900%_))))))
