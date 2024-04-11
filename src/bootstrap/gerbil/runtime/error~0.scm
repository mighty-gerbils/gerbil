(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712823025)
  (begin
    (define Exception::t
      (let ((__tmp102067 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp102067
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args102037%_
        (apply make-instance Exception::t _%$args102037%_)))
    (define StackTrace::t
      (let ((__tmp102068 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp102068
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args102034%_
        (apply make-instance StackTrace::t _%$args102034%_)))
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
      (let ((__tmp102069 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp102069
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args102031%_ (apply make-instance Error::t _%$args102031%_)))
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
      (let ((__tmp102070 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp102070
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args102028%_
        (apply make-instance ContractViolation::t _%$args102028%_)))
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
      (let ((__tmp102071 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp102071
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args102025%_
        (apply make-instance RuntimeException::t _%$args102025%_)))
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
      (lambda (_%exn102020%_ _%continue102021%_)
        (let ((_%exn102023%_ (wrap-runtime-exception _%exn102020%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn102023%_ _%continue102021%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn102016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn102016%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn102016%_ 'continuation))
                '#!void
                (let ((__tmp102072
                       (lambda (_%cont102018%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn102016%_
                            'continuation
                            _%cont102018%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp102072)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn102016%_))))
    (define error
      (lambda (_%message102013%_ . _%irritants102014%_)
        (raise (let ((__obj102064
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj102064
                  _%message102013%_
                  'irritants:
                  _%irritants102014%_)
                 __obj102064))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords101985%_
               _%ctx101980101986%_
               _%contract-expr101981101988%_
               _%value101982101990%_
               _%message101992%_)
        (let* ((_%ctx101994%_
                (if (eq? _%ctx101980101986%_ absent-value)
                    '#f
                    _%ctx101980101986%_))
               (_%contract-expr101996%_
                (if (eq? _%contract-expr101981101988%_ absent-value)
                    '#f
                    _%contract-expr101981101988%_))
               (_%value101998%_
                (if (eq? _%value101982101990%_ absent-value)
                    '#f
                    _%value101982101990%_)))
          (raise (let ((__obj102065
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj102065
                    _%message101992%_
                    'where:
                    _%ctx101994%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr101996%_
                                (cons 'value: (cons _%value101998%_ '())))))
                   __obj102065)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords102003%_ . _%args102004%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords102003%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102003%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102003%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102003%_
                  'value:
                  absent-value))
               _%args102004%_)))
    (define __raise-contract-violation-error
      (lambda _%args101983102010%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args101983102010%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler101954%_ _%thunk101955%_)
        (if (procedure? _%handler101954%_)
            (let ((_%handler101959%_ _%handler101954%_))
              (if (procedure? _%thunk101955%_)
                  (let ((_%thunk101969%_ _%thunk101955%_))
                    (__with-exception-handler
                     _%handler101959%_
                     _%thunk101969%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk101955%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler101954%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler101929%_ _%thunk101930%_)
        (let* ((_%handler101933%_ _%handler101929%_)
               (_%thunk101941%_ _%thunk101930%_)
               (__tmp102073
                (lambda (_%exn101950%_)
                  (let ((_%exn101952%_ (wrap-runtime-exception _%exn101950%_)))
                    (declare (not safe))
                    (_%handler101933%_ _%exn101952%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp102073 _%thunk101941%_))))
    (define with-catch
      (lambda (_%handler101904%_ _%thunk101905%_)
        (if (procedure? _%handler101904%_)
            (let ((_%handler101909%_ _%handler101904%_))
              (if (procedure? _%thunk101905%_)
                  (let ((_%thunk101919%_ _%thunk101905%_))
                    (__with-catch _%handler101909%_ _%thunk101919%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk101905%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler101904%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler101879%_ _%thunk101880%_)
        (let* ((_%handler101883%_ _%handler101879%_)
               (_%thunk101891%_ _%thunk101880%_)
               (__tmp102074
                (lambda (_%cont101900%_)
                  (__with-exception-handler
                   (lambda (_%exn101902%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont101900%_
                        _%handler101883%_
                        _%exn101902%_)))
                   _%thunk101891%_))))
          (declare (not safe))
          (##continuation-capture __tmp102074))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn101866%_)
        (if (or (heap-overflow-exception? _%exn101866%_)
                (stack-overflow-exception? _%exn101866%_))
            _%exn101866%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn101866%_))
                _%exn101866%_
                (if (macro-exception? _%exn101866%_)
                    (let ((_%rte101874%_
                           (let ((__obj102066
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj102066
                                _%exn101866%_
                                '2
                                '#f
                                '#f))
                             __obj102066)))
                      (let ((__tmp102075
                             (lambda (_%cont101876%_)
                               (let ((__tmp102076
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont101876%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte101874%_
                                  'continuation
                                  __tmp102076)))))
                        (declare (not safe))
                        (##continuation-capture __tmp102075))
                      _%rte101874%_)
                    _%exn101866%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj101861%_)
        (let ((_%$e101863%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj101861%_))))
          (if _%$e101863%_ _%$e101863%_ (error-exception? _%obj101861%_)))))
    (define error-message
      (lambda (_%obj101854%_)
        (let ((_%$e101856%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj101854%_ 'message false))))
          (if _%$e101856%_
              _%$e101856%_
              (if (error-exception? _%obj101854%_)
                  (error-exception-message _%obj101854%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj101849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj101849%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj101849%_ 'irritants))
            (if (error-exception? _%obj101849%_)
                (error-exception-parameters _%obj101849%_)
                '#f))))
    (define error-trace
      (lambda (_%obj101847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj101847%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj101847%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e101828%_ _%port101829%_)
        (let ((_%$e101831%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e101828%_ 'display-exception))))
          (if _%$e101831%_
              ((lambda (_%f101834%_) (_%f101834%_ _%e101828%_ _%port101829%_))
               _%$e101831%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e101828%_ _%port101829%_))))))
    (define display-exception__0
      (lambda (_%e101840%_)
        (let ((_%port101842%_ (current-error-port)))
          (display-exception__% _%e101840%_ _%port101842%_))))
    (define display-exception
      (lambda _g102078_
        (let ((_g102077_ (let () (declare (not safe)) (##length _g102078_))))
          (cond ((let () (declare (not safe)) (##fx= _g102077_ 1))
                 (apply display-exception__0 _g102078_))
                ((let () (declare (not safe)) (##fx= _g102077_ 2))
                 (apply display-exception__% _g102078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g102078_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100197101804%_ _%message101806%_ . _%rest101807%_)
        (let* ((_%self101809%_ _%self100197101804%_)
               (_%self101811%_ _%self101809%_)
               (_%message101825%_
                (if (string? _%message101806%_)
                    _%message101806%_
                    (call-with-output-string
                     '""
                     (lambda (_%g101820101822%_)
                       (display _%message101806%_ _%g101820101822%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self101811%_ 'message _%message101825%_))
          (apply class-instance-init! _%self101811%_ _%rest101807%_))))
    (define Error:::init!::specialize
      (lambda (__klass102039 __method-table102040)
        (let ((__message102041
               (let ((__slot102042
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102039 'message))))
                 (if __slot102042
                     __slot102042
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self100197101804%_ _%message101806%_ . _%rest101807%_)
            (let* ((_%self101809%_ _%self100197101804%_)
                   (_%self101811%_ _%self101809%_)
                   (_%message101825%_
                    (if (string? _%message101806%_)
                        _%message101806%_
                        (call-with-output-string
                         '""
                         (lambda (_%g101820101822%_)
                           (display _%message101806%_ _%g101820101822%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self101811%_
                 _%message101825%_
                 __message102041
                 '#f
                 '#f))
              (apply class-instance-init! _%self101811%_ _%rest101807%_))))))
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
      (lambda (_%self100198101526%_ _%port101528%_)
        (let* ((_%self101530%_ _%self100198101526%_)
               (_%self101532%_ _%self101530%_))
          (let ((_%tmp-port101542%_ (open-output-string))
                (_%display-error-newline101543%_
                 (> (output-port-column _%port101528%_) '0)))
            (fix-port-width! _%tmp-port101542%_)
            (let ((__tmp102079
                   (lambda ()
                     (if _%display-error-newline101543%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e101546%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101532%_ 'where))))
                       (if _%$e101546%_ (display _%$e101546%_) (display '"?")))
                     (let ((__tmp102080
                            (let ((__tmp102081
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self101532%_))))
                              (declare (not safe))
                              (##type-name __tmp102081))))
                       (declare (not safe))
                       (display* '" [" __tmp102080 '"]: "))
                     (let ((__tmp102082
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101532%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp102082))
                     (let ((_%irritants101550%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self101532%_ 'irritants))))
                       (if (null? _%irritants101550%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj101552%_)
                                (if (u8vector? _%obj101552%_)
                                    (let ((__tmp102083
                                           (cons '<u8vector>
                                                 (cons (u8vector-length
                                                        _%obj101552%_)
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp102083))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj101552%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants101550%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont101553101555%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self101532%_
                                   'continuation))))
                           (if _%cont101553101555%_
                               (let ((_%cont101558%_ _%cont101553101555%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont101558%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp102079
               current-output-port
               _%tmp-port101542%_))
            (let ((__tmp102084 (get-output-string _%tmp-port101542%_)))
              (declare (not safe))
              (##write-string __tmp102084 _%port101528%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass102043 __method-table102044)
        (let ((__where102045
               (let ((__slot102049
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102043 'where))))
                 (if __slot102049
                     __slot102049
                     (error '"Unknown slot" 'where))))
              (__message102046
               (let ((__slot102050
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102043 'message))))
                 (if __slot102050
                     __slot102050
                     (error '"Unknown slot" 'message))))
              (__irritants102047
               (let ((__slot102051
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102043 'irritants))))
                 (if __slot102051
                     __slot102051
                     (error '"Unknown slot" 'irritants))))
              (__continuation102048
               (let ((__slot102052
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102043 'continuation))))
                 (if __slot102052
                     __slot102052
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100198101526%_ _%port101528%_)
            (let* ((_%self101530%_ _%self100198101526%_)
                   (_%self101532%_ _%self101530%_))
              (let ((_%tmp-port101542%_ (open-output-string))
                    (_%display-error-newline101543%_
                     (> (output-port-column _%port101528%_) '0)))
                (fix-port-width! _%tmp-port101542%_)
                (let ((__tmp102085
                       (lambda ()
                         (if _%display-error-newline101543%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e101546%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101532%_
                                   __where102045
                                   '#f
                                   '#f))))
                           (if _%$e101546%_
                               (display _%$e101546%_)
                               (display '"?")))
                         (let ((__tmp102086
                                (let ((__tmp102087
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self101532%_))))
                                  (declare (not safe))
                                  (##type-name __tmp102087))))
                           (declare (not safe))
                           (display* '" [" __tmp102086 '"]: "))
                         (let ((__tmp102088
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101532%_
                                   __message102046
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp102088))
                         (let ((_%irritants101550%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self101532%_
                                   __irritants102047
                                   '#f
                                   '#f))))
                           (if (null? _%irritants101550%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj101552%_)
                                    (if (u8vector? _%obj101552%_)
                                        (let ((__tmp102089
                                               (cons '<u8vector>
                                                     (cons (u8vector-length
                                                            _%obj101552%_)
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp102089))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj101552%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants101550%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont101553101555%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self101532%_
                                       __continuation102048
                                       '#f
                                       '#f))))
                               (if _%cont101553101555%_
                                   (let ((_%cont101558%_ _%cont101553101555%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont101558%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp102085
                   current-output-port
                   _%tmp-port101542%_))
                (let ((__tmp102090 (get-output-string _%tmp-port101542%_)))
                  (declare (not safe))
                  (##write-string __tmp102090 _%port101528%_))))))))
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
      (lambda (_%self100199101380%_ _%port101382%_)
        (let* ((_%self101384%_ _%self100199101380%_)
               (_%self101386%_ _%self101384%_)
               (_%tmp-port101396%_ (open-output-string)))
          (fix-port-width! _%tmp-port101396%_)
          (let ((__tmp102091
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self101386%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp102091 _%tmp-port101396%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont101397101399%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self101386%_ 'continuation))))
                (if _%cont101397101399%_
                    (let ((_%cont101402%_ _%cont101397101399%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port101396%_)
                      (newline _%tmp-port101396%_)
                      (display-continuation-backtrace
                       _%cont101402%_
                       _%tmp-port101396%_))
                    '#f))
              '#!void)
          (let ((__tmp102092 (get-output-string _%tmp-port101396%_)))
            (declare (not safe))
            (##write-string __tmp102092 _%port101382%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass102053 __method-table102054)
        (let ((__exception102055
               (let ((__slot102057
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102053 'exception))))
                 (if __slot102057
                     __slot102057
                     (error '"Unknown slot" 'exception))))
              (__continuation102056
               (let ((__slot102058
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102053 'continuation))))
                 (if __slot102058
                     __slot102058
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100199101380%_ _%port101382%_)
            (let* ((_%self101384%_ _%self100199101380%_)
                   (_%self101386%_ _%self101384%_)
                   (_%tmp-port101396%_ (open-output-string)))
              (fix-port-width! _%tmp-port101396%_)
              (let ((__tmp102093
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self101386%_
                        __exception102055
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp102093 _%tmp-port101396%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont101397101399%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self101386%_
                            __continuation102056
                            '#f
                            '#f))))
                    (if _%cont101397101399%_
                        (let ((_%cont101402%_ _%cont101397101399%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port101396%_)
                          (newline _%tmp-port101396%_)
                          (display-continuation-backtrace
                           _%cont101402%_
                           _%tmp-port101396%_))
                        '#f))
                  '#!void)
              (let ((__tmp102094 (get-output-string _%tmp-port101396%_)))
                (declare (not safe))
                (##write-string __tmp102094 _%port101382%_)))))))
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
      (lambda (_%port101252%_)
        (if (macro-character-port? _%port101252%_)
            (let ((_%old-width101254%_
                   (macro-character-port-output-width _%port101252%_)))
              (macro-character-port-output-width-set!
               _%port101252%_
               (lambda (_%port101256%_) '256))
              _%old-width101254%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port101249%_ _%old-width101250%_)
        (if (macro-character-port? _%port101249%_)
            (macro-character-port-output-width-set!
             _%port101249%_
             _%old-width101250%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e101247%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e101247%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn101241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101241%_))
            (let ((_%e101244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101241%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e101244%_))
            (macro-abandoned-mutex-exception? _%exn101241%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn101237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101237%_))
            (let ((_%e101239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101237%_ 'exception))))
              (macro-cfun-conversion-exception? _%e101239%_))
            (macro-cfun-conversion-exception? _%exn101237%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn101233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101233%_))
            (let ((_%e101235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101233%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101235%_)
                  (macro-cfun-conversion-exception-arguments _%e101235%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e101235%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101233%_)
                (macro-cfun-conversion-exception-arguments _%exn101233%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn101233%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn101229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101229%_))
            (let ((_%e101231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101229%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101231%_)
                  (macro-cfun-conversion-exception-code _%e101231%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e101231%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101229%_)
                (macro-cfun-conversion-exception-code _%exn101229%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn101229%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn101225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101225%_))
            (let ((_%e101227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101225%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101227%_)
                  (macro-cfun-conversion-exception-message _%e101227%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e101227%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101225%_)
                (macro-cfun-conversion-exception-message _%exn101225%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn101225%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn101219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101219%_))
            (let ((_%e101222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101219%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101222%_)
                  (macro-cfun-conversion-exception-procedure _%e101222%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e101222%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101219%_)
                (macro-cfun-conversion-exception-procedure _%exn101219%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn101219%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn101215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101215%_))
            (let ((_%e101217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101215%_ 'exception))))
              (macro-datum-parsing-exception? _%e101217%_))
            (macro-datum-parsing-exception? _%exn101215%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn101211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101211%_))
            (let ((_%e101213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101211%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101213%_)
                  (macro-datum-parsing-exception-kind _%e101213%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e101213%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101211%_)
                (macro-datum-parsing-exception-kind _%exn101211%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn101211%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn101207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101207%_))
            (let ((_%e101209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101207%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101209%_)
                  (macro-datum-parsing-exception-parameters _%e101209%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e101209%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101207%_)
                (macro-datum-parsing-exception-parameters _%exn101207%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn101207%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn101201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101201%_))
            (let ((_%e101204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101201%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101204%_)
                  (macro-datum-parsing-exception-readenv _%e101204%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e101204%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101201%_)
                (macro-datum-parsing-exception-readenv _%exn101201%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn101201%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn101195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101195%_))
            (let ((_%e101198%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101195%_ 'exception))))
              (macro-deadlock-exception? _%e101198%_))
            (macro-deadlock-exception? _%exn101195%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn101191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101191%_))
            (let ((_%e101193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101191%_ 'exception))))
              (macro-divide-by-zero-exception? _%e101193%_))
            (macro-divide-by-zero-exception? _%exn101191%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn101187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101187%_))
            (let ((_%e101189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101187%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101189%_)
                  (macro-divide-by-zero-exception-arguments _%e101189%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e101189%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101187%_)
                (macro-divide-by-zero-exception-arguments _%exn101187%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn101187%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn101181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101181%_))
            (let ((_%e101184%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101181%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101184%_)
                  (macro-divide-by-zero-exception-procedure _%e101184%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e101184%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101181%_)
                (macro-divide-by-zero-exception-procedure _%exn101181%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn101181%_ '())))))))
    (define error-exception?
      (lambda (_%exn101177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101177%_))
            (let ((_%e101179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101177%_ 'exception))))
              (macro-error-exception? _%e101179%_))
            (macro-error-exception? _%exn101177%_))))
    (define error-exception-message
      (lambda (_%exn101173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101173%_))
            (let ((_%e101175%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101173%_ 'exception))))
              (if (macro-error-exception? _%e101175%_)
                  (macro-error-exception-message _%e101175%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e101175%_ '())))))
            (if (macro-error-exception? _%exn101173%_)
                (macro-error-exception-message _%exn101173%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn101173%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn101167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101167%_))
            (let ((_%e101170%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101167%_ 'exception))))
              (if (macro-error-exception? _%e101170%_)
                  (macro-error-exception-parameters _%e101170%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e101170%_ '())))))
            (if (macro-error-exception? _%exn101167%_)
                (macro-error-exception-parameters _%exn101167%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn101167%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn101163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101163%_))
            (let ((_%e101165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101163%_ 'exception))))
              (macro-expression-parsing-exception? _%e101165%_))
            (macro-expression-parsing-exception? _%exn101163%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn101159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101159%_))
            (let ((_%e101161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101159%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101161%_)
                  (macro-expression-parsing-exception-kind _%e101161%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e101161%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101159%_)
                (macro-expression-parsing-exception-kind _%exn101159%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn101159%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn101155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101155%_))
            (let ((_%e101157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101155%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101157%_)
                  (macro-expression-parsing-exception-parameters _%e101157%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e101157%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101155%_)
                (macro-expression-parsing-exception-parameters _%exn101155%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn101155%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn101149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101149%_))
            (let ((_%e101152%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101149%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101152%_)
                  (macro-expression-parsing-exception-source _%e101152%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e101152%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101149%_)
                (macro-expression-parsing-exception-source _%exn101149%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn101149%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn101145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101145%_))
            (let ((_%e101147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101145%_ 'exception))))
              (macro-file-exists-exception? _%e101147%_))
            (macro-file-exists-exception? _%exn101145%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn101141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101141%_))
            (let ((_%e101143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101141%_ 'exception))))
              (if (macro-file-exists-exception? _%e101143%_)
                  (macro-file-exists-exception-arguments _%e101143%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e101143%_ '())))))
            (if (macro-file-exists-exception? _%exn101141%_)
                (macro-file-exists-exception-arguments _%exn101141%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn101141%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn101135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101135%_))
            (let ((_%e101138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101135%_ 'exception))))
              (if (macro-file-exists-exception? _%e101138%_)
                  (macro-file-exists-exception-procedure _%e101138%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e101138%_ '())))))
            (if (macro-file-exists-exception? _%exn101135%_)
                (macro-file-exists-exception-procedure _%exn101135%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn101135%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn101131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101131%_))
            (let ((_%e101133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101131%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e101133%_))
            (macro-fixnum-overflow-exception? _%exn101131%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn101127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101127%_))
            (let ((_%e101129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101127%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101129%_)
                  (macro-fixnum-overflow-exception-arguments _%e101129%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e101129%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101127%_)
                (macro-fixnum-overflow-exception-arguments _%exn101127%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn101127%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn101121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101121%_))
            (let ((_%e101124%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101121%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101124%_)
                  (macro-fixnum-overflow-exception-procedure _%e101124%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e101124%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101121%_)
                (macro-fixnum-overflow-exception-procedure _%exn101121%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn101121%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn101115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101115%_))
            (let ((_%e101118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101115%_ 'exception))))
              (macro-heap-overflow-exception? _%e101118%_))
            (macro-heap-overflow-exception? _%exn101115%_))))
    (define inactive-thread-exception?
      (lambda (_%exn101111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101111%_))
            (let ((_%e101113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101111%_ 'exception))))
              (macro-inactive-thread-exception? _%e101113%_))
            (macro-inactive-thread-exception? _%exn101111%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn101107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101107%_))
            (let ((_%e101109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101107%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101109%_)
                  (macro-inactive-thread-exception-arguments _%e101109%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e101109%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101107%_)
                (macro-inactive-thread-exception-arguments _%exn101107%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn101107%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn101101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101101%_))
            (let ((_%e101104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101101%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101104%_)
                  (macro-inactive-thread-exception-procedure _%e101104%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e101104%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101101%_)
                (macro-inactive-thread-exception-procedure _%exn101101%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn101101%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn101097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101097%_))
            (let ((_%e101099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101097%_ 'exception))))
              (macro-initialized-thread-exception? _%e101099%_))
            (macro-initialized-thread-exception? _%exn101097%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn101093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101093%_))
            (let ((_%e101095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101093%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101095%_)
                  (macro-initialized-thread-exception-arguments _%e101095%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e101095%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101093%_)
                (macro-initialized-thread-exception-arguments _%exn101093%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn101093%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn101087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101087%_))
            (let ((_%e101090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101087%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101090%_)
                  (macro-initialized-thread-exception-procedure _%e101090%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e101090%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101087%_)
                (macro-initialized-thread-exception-procedure _%exn101087%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn101087%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn101083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101083%_))
            (let ((_%e101085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101083%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e101085%_))
            (macro-invalid-hash-number-exception? _%exn101083%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn101079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101079%_))
            (let ((_%e101081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101079%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101081%_)
                  (macro-invalid-hash-number-exception-arguments _%e101081%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e101081%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101079%_)
                (macro-invalid-hash-number-exception-arguments _%exn101079%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn101079%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn101073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101073%_))
            (let ((_%e101076%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101073%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101076%_)
                  (macro-invalid-hash-number-exception-procedure _%e101076%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e101076%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101073%_)
                (macro-invalid-hash-number-exception-procedure _%exn101073%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn101073%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn101069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101069%_))
            (let ((_%e101071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101069%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e101071%_))
            (macro-invalid-utf8-encoding-exception? _%exn101069%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn101065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101065%_))
            (let ((_%e101067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101065%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101067%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e101067%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e101067%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101065%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn101065%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn101065%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn101059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101059%_))
            (let ((_%e101062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101059%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101062%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e101062%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e101062%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101059%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn101059%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn101059%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn101055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101055%_))
            (let ((_%e101057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101055%_ 'exception))))
              (macro-join-timeout-exception? _%e101057%_))
            (macro-join-timeout-exception? _%exn101055%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn101051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101051%_))
            (let ((_%e101053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101051%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101053%_)
                  (macro-join-timeout-exception-arguments _%e101053%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e101053%_ '())))))
            (if (macro-join-timeout-exception? _%exn101051%_)
                (macro-join-timeout-exception-arguments _%exn101051%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn101051%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn101045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101045%_))
            (let ((_%e101048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101045%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101048%_)
                  (macro-join-timeout-exception-procedure _%e101048%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e101048%_ '())))))
            (if (macro-join-timeout-exception? _%exn101045%_)
                (macro-join-timeout-exception-procedure _%exn101045%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn101045%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn101041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101041%_))
            (let ((_%e101043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101041%_ 'exception))))
              (macro-keyword-expected-exception? _%e101043%_))
            (macro-keyword-expected-exception? _%exn101041%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn101037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101037%_))
            (let ((_%e101039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101037%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101039%_)
                  (macro-keyword-expected-exception-arguments _%e101039%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e101039%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101037%_)
                (macro-keyword-expected-exception-arguments _%exn101037%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn101037%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn101031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101031%_))
            (let ((_%e101034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101031%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101034%_)
                  (macro-keyword-expected-exception-procedure _%e101034%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e101034%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101031%_)
                (macro-keyword-expected-exception-procedure _%exn101031%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn101031%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn101027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101027%_))
            (let ((_%e101029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101027%_ 'exception))))
              (macro-length-mismatch-exception? _%e101029%_))
            (macro-length-mismatch-exception? _%exn101027%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn101023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101023%_))
            (let ((_%e101025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101023%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101025%_)
                  (macro-length-mismatch-exception-arg-id _%e101025%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e101025%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101023%_)
                (macro-length-mismatch-exception-arg-id _%exn101023%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn101023%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn101019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101019%_))
            (let ((_%e101021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101019%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101021%_)
                  (macro-length-mismatch-exception-arguments _%e101021%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e101021%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101019%_)
                (macro-length-mismatch-exception-arguments _%exn101019%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn101019%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn101013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101013%_))
            (let ((_%e101016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101013%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101016%_)
                  (macro-length-mismatch-exception-procedure _%e101016%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e101016%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101013%_)
                (macro-length-mismatch-exception-procedure _%exn101013%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn101013%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn101009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101009%_))
            (let ((_%e101011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101009%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e101011%_))
            (macro-mailbox-receive-timeout-exception? _%exn101009%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn101005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101005%_))
            (let ((_%e101007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101005%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101007%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e101007%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e101007%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101005%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn101005%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn101005%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn100999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100999%_))
            (let ((_%e101002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100999%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101002%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e101002%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e101002%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn100999%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn100999%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn100999%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn100995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100995%_))
            (let ((_%e100997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100995%_ 'exception))))
              (macro-module-not-found-exception? _%e100997%_))
            (macro-module-not-found-exception? _%exn100995%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn100991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100991%_))
            (let ((_%e100993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100991%_ 'exception))))
              (if (macro-module-not-found-exception? _%e100993%_)
                  (macro-module-not-found-exception-arguments _%e100993%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e100993%_ '())))))
            (if (macro-module-not-found-exception? _%exn100991%_)
                (macro-module-not-found-exception-arguments _%exn100991%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn100991%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn100985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100985%_))
            (let ((_%e100988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100985%_ 'exception))))
              (if (macro-module-not-found-exception? _%e100988%_)
                  (macro-module-not-found-exception-procedure _%e100988%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e100988%_ '())))))
            (if (macro-module-not-found-exception? _%exn100985%_)
                (macro-module-not-found-exception-procedure _%exn100985%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn100985%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn100979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100979%_))
            (let ((_%e100982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100979%_ 'exception))))
              (macro-multiple-c-return-exception? _%e100982%_))
            (macro-multiple-c-return-exception? _%exn100979%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn100975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100975%_))
            (let ((_%e100977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100975%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e100977%_))
            (macro-no-such-file-or-directory-exception? _%exn100975%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn100971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100971%_))
            (let ((_%e100973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100971%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e100973%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e100973%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e100973%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn100971%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn100971%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn100971%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn100965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100965%_))
            (let ((_%e100968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100965%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e100968%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e100968%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e100968%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn100965%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn100965%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn100965%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn100961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100961%_))
            (let ((_%e100963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100961%_ 'exception))))
              (macro-noncontinuable-exception? _%e100963%_))
            (macro-noncontinuable-exception? _%exn100961%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn100955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100955%_))
            (let ((_%e100958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100955%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e100958%_)
                  (macro-noncontinuable-exception-reason _%e100958%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e100958%_ '())))))
            (if (macro-noncontinuable-exception? _%exn100955%_)
                (macro-noncontinuable-exception-reason _%exn100955%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn100955%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn100951%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100951%_))
            (let ((_%e100953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100951%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e100953%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn100951%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn100947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100947%_))
            (let ((_%e100949%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100947%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e100949%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e100949%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e100949%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn100947%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn100947%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn100947%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn100941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100941%_))
            (let ((_%e100944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100941%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e100944%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e100944%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e100944%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn100941%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn100941%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn100941%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn100937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100937%_))
            (let ((_%e100939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100937%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e100939%_))
            (macro-nonprocedure-operator-exception? _%exn100937%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn100933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100933%_))
            (let ((_%e100935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100933%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100935%_)
                  (macro-nonprocedure-operator-exception-arguments _%e100935%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e100935%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100933%_)
                (macro-nonprocedure-operator-exception-arguments _%exn100933%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn100933%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn100929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100929%_))
            (let ((_%e100931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100929%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100931%_)
                  (macro-nonprocedure-operator-exception-code _%e100931%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e100931%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100929%_)
                (macro-nonprocedure-operator-exception-code _%exn100929%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn100929%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn100925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100925%_))
            (let ((_%e100927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100925%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100927%_)
                  (macro-nonprocedure-operator-exception-operator _%e100927%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e100927%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100925%_)
                (macro-nonprocedure-operator-exception-operator _%exn100925%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn100925%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn100919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100919%_))
            (let ((_%e100922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100919%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100922%_)
                  (macro-nonprocedure-operator-exception-rte _%e100922%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e100922%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100919%_)
                (macro-nonprocedure-operator-exception-rte _%exn100919%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn100919%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn100915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100915%_))
            (let ((_%e100917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100915%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e100917%_))
            (macro-not-in-compilation-context-exception? _%exn100915%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn100911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100911%_))
            (let ((_%e100913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100911%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e100913%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e100913%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e100913%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn100911%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn100911%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn100911%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn100905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100905%_))
            (let ((_%e100908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100905%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e100908%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e100908%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e100908%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn100905%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn100905%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn100905%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn100901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100901%_))
            (let ((_%e100903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100901%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e100903%_))
            (macro-number-of-arguments-limit-exception? _%exn100901%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn100897%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100897%_))
            (let ((_%e100899%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100897%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e100899%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e100899%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e100899%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn100897%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn100897%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn100897%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn100891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100891%_))
            (let ((_%e100894%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100891%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e100894%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e100894%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e100894%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn100891%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn100891%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn100891%_ '())))))))
    (define os-exception?
      (lambda (_%exn100887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100887%_))
            (let ((_%e100889%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100887%_ 'exception))))
              (macro-os-exception? _%e100889%_))
            (macro-os-exception? _%exn100887%_))))
    (define os-exception-arguments
      (lambda (_%exn100883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100883%_))
            (let ((_%e100885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100883%_ 'exception))))
              (if (macro-os-exception? _%e100885%_)
                  (macro-os-exception-arguments _%e100885%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e100885%_ '())))))
            (if (macro-os-exception? _%exn100883%_)
                (macro-os-exception-arguments _%exn100883%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn100883%_ '())))))))
    (define os-exception-code
      (lambda (_%exn100879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100879%_))
            (let ((_%e100881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100879%_ 'exception))))
              (if (macro-os-exception? _%e100881%_)
                  (macro-os-exception-code _%e100881%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e100881%_ '())))))
            (if (macro-os-exception? _%exn100879%_)
                (macro-os-exception-code _%exn100879%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn100879%_ '())))))))
    (define os-exception-message
      (lambda (_%exn100875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100875%_))
            (let ((_%e100877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100875%_ 'exception))))
              (if (macro-os-exception? _%e100877%_)
                  (macro-os-exception-message _%e100877%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e100877%_ '())))))
            (if (macro-os-exception? _%exn100875%_)
                (macro-os-exception-message _%exn100875%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn100875%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn100869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100869%_))
            (let ((_%e100872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100869%_ 'exception))))
              (if (macro-os-exception? _%e100872%_)
                  (macro-os-exception-procedure _%e100872%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e100872%_ '())))))
            (if (macro-os-exception? _%exn100869%_)
                (macro-os-exception-procedure _%exn100869%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn100869%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn100865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100865%_))
            (let ((_%e100867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100865%_ 'exception))))
              (macro-permission-denied-exception? _%e100867%_))
            (macro-permission-denied-exception? _%exn100865%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn100861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100861%_))
            (let ((_%e100863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100861%_ 'exception))))
              (if (macro-permission-denied-exception? _%e100863%_)
                  (macro-permission-denied-exception-arguments _%e100863%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e100863%_ '())))))
            (if (macro-permission-denied-exception? _%exn100861%_)
                (macro-permission-denied-exception-arguments _%exn100861%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn100861%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn100855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100855%_))
            (let ((_%e100858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100855%_ 'exception))))
              (if (macro-permission-denied-exception? _%e100858%_)
                  (macro-permission-denied-exception-procedure _%e100858%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e100858%_ '())))))
            (if (macro-permission-denied-exception? _%exn100855%_)
                (macro-permission-denied-exception-procedure _%exn100855%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn100855%_ '())))))))
    (define range-exception?
      (lambda (_%exn100851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100851%_))
            (let ((_%e100853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100851%_ 'exception))))
              (macro-range-exception? _%e100853%_))
            (macro-range-exception? _%exn100851%_))))
    (define range-exception-arg-id
      (lambda (_%exn100847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100847%_))
            (let ((_%e100849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100847%_ 'exception))))
              (if (macro-range-exception? _%e100849%_)
                  (macro-range-exception-arg-id _%e100849%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e100849%_ '())))))
            (if (macro-range-exception? _%exn100847%_)
                (macro-range-exception-arg-id _%exn100847%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn100847%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn100843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100843%_))
            (let ((_%e100845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100843%_ 'exception))))
              (if (macro-range-exception? _%e100845%_)
                  (macro-range-exception-arguments _%e100845%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e100845%_ '())))))
            (if (macro-range-exception? _%exn100843%_)
                (macro-range-exception-arguments _%exn100843%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn100843%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn100837%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100837%_))
            (let ((_%e100840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100837%_ 'exception))))
              (if (macro-range-exception? _%e100840%_)
                  (macro-range-exception-procedure _%e100840%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e100840%_ '())))))
            (if (macro-range-exception? _%exn100837%_)
                (macro-range-exception-procedure _%exn100837%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn100837%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn100833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100833%_))
            (let ((_%e100835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100833%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e100835%_))
            (macro-rpc-remote-error-exception? _%exn100833%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn100829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100829%_))
            (let ((_%e100831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100829%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100831%_)
                  (macro-rpc-remote-error-exception-arguments _%e100831%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e100831%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100829%_)
                (macro-rpc-remote-error-exception-arguments _%exn100829%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn100829%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn100825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100825%_))
            (let ((_%e100827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100825%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100827%_)
                  (macro-rpc-remote-error-exception-message _%e100827%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e100827%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100825%_)
                (macro-rpc-remote-error-exception-message _%exn100825%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn100825%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn100819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100819%_))
            (let ((_%e100822%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100819%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100822%_)
                  (macro-rpc-remote-error-exception-procedure _%e100822%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e100822%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100819%_)
                (macro-rpc-remote-error-exception-procedure _%exn100819%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn100819%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn100815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100815%_))
            (let ((_%e100817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100815%_ 'exception))))
              (macro-scheduler-exception? _%e100817%_))
            (macro-scheduler-exception? _%exn100815%_))))
    (define scheduler-exception-reason
      (lambda (_%exn100809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100809%_))
            (let ((_%e100812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100809%_ 'exception))))
              (if (macro-scheduler-exception? _%e100812%_)
                  (macro-scheduler-exception-reason _%e100812%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e100812%_ '())))))
            (if (macro-scheduler-exception? _%exn100809%_)
                (macro-scheduler-exception-reason _%exn100809%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn100809%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn100805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100805%_))
            (let ((_%e100807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100805%_ 'exception))))
              (macro-sfun-conversion-exception? _%e100807%_))
            (macro-sfun-conversion-exception? _%exn100805%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn100801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100801%_))
            (let ((_%e100803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100801%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100803%_)
                  (macro-sfun-conversion-exception-arguments _%e100803%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e100803%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100801%_)
                (macro-sfun-conversion-exception-arguments _%exn100801%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn100801%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn100797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100797%_))
            (let ((_%e100799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100797%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100799%_)
                  (macro-sfun-conversion-exception-code _%e100799%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e100799%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100797%_)
                (macro-sfun-conversion-exception-code _%exn100797%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn100797%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn100793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100793%_))
            (let ((_%e100795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100793%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100795%_)
                  (macro-sfun-conversion-exception-message _%e100795%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e100795%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100793%_)
                (macro-sfun-conversion-exception-message _%exn100793%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn100793%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn100787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100787%_))
            (let ((_%e100790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100787%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100790%_)
                  (macro-sfun-conversion-exception-procedure _%e100790%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e100790%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100787%_)
                (macro-sfun-conversion-exception-procedure _%exn100787%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn100787%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn100781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100781%_))
            (let ((_%e100784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100781%_ 'exception))))
              (macro-stack-overflow-exception? _%e100784%_))
            (macro-stack-overflow-exception? _%exn100781%_))))
    (define started-thread-exception?
      (lambda (_%exn100777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100777%_))
            (let ((_%e100779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100777%_ 'exception))))
              (macro-started-thread-exception? _%e100779%_))
            (macro-started-thread-exception? _%exn100777%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn100773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100773%_))
            (let ((_%e100775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100773%_ 'exception))))
              (if (macro-started-thread-exception? _%e100775%_)
                  (macro-started-thread-exception-arguments _%e100775%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e100775%_ '())))))
            (if (macro-started-thread-exception? _%exn100773%_)
                (macro-started-thread-exception-arguments _%exn100773%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn100773%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn100767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100767%_))
            (let ((_%e100770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100767%_ 'exception))))
              (if (macro-started-thread-exception? _%e100770%_)
                  (macro-started-thread-exception-procedure _%e100770%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e100770%_ '())))))
            (if (macro-started-thread-exception? _%exn100767%_)
                (macro-started-thread-exception-procedure _%exn100767%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn100767%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn100763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100763%_))
            (let ((_%e100765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100763%_ 'exception))))
              (macro-terminated-thread-exception? _%e100765%_))
            (macro-terminated-thread-exception? _%exn100763%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn100759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100759%_))
            (let ((_%e100761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100759%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e100761%_)
                  (macro-terminated-thread-exception-arguments _%e100761%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e100761%_ '())))))
            (if (macro-terminated-thread-exception? _%exn100759%_)
                (macro-terminated-thread-exception-arguments _%exn100759%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn100759%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn100753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100753%_))
            (let ((_%e100756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100753%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e100756%_)
                  (macro-terminated-thread-exception-procedure _%e100756%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e100756%_ '())))))
            (if (macro-terminated-thread-exception? _%exn100753%_)
                (macro-terminated-thread-exception-procedure _%exn100753%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn100753%_ '())))))))
    (define type-exception?
      (lambda (_%exn100749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100749%_))
            (let ((_%e100751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100749%_ 'exception))))
              (macro-type-exception? _%e100751%_))
            (macro-type-exception? _%exn100749%_))))
    (define type-exception-arg-id
      (lambda (_%exn100745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100745%_))
            (let ((_%e100747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100745%_ 'exception))))
              (if (macro-type-exception? _%e100747%_)
                  (macro-type-exception-arg-id _%e100747%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e100747%_ '())))))
            (if (macro-type-exception? _%exn100745%_)
                (macro-type-exception-arg-id _%exn100745%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn100745%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn100741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100741%_))
            (let ((_%e100743%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100741%_ 'exception))))
              (if (macro-type-exception? _%e100743%_)
                  (macro-type-exception-arguments _%e100743%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e100743%_ '())))))
            (if (macro-type-exception? _%exn100741%_)
                (macro-type-exception-arguments _%exn100741%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn100741%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn100737%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100737%_))
            (let ((_%e100739%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100737%_ 'exception))))
              (if (macro-type-exception? _%e100739%_)
                  (macro-type-exception-procedure _%e100739%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e100739%_ '())))))
            (if (macro-type-exception? _%exn100737%_)
                (macro-type-exception-procedure _%exn100737%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn100737%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn100731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100731%_))
            (let ((_%e100734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100731%_ 'exception))))
              (if (macro-type-exception? _%e100734%_)
                  (macro-type-exception-type-id _%e100734%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e100734%_ '())))))
            (if (macro-type-exception? _%exn100731%_)
                (macro-type-exception-type-id _%exn100731%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn100731%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn100727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100727%_))
            (let ((_%e100729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100727%_ 'exception))))
              (macro-unbound-global-exception? _%e100729%_))
            (macro-unbound-global-exception? _%exn100727%_))))
    (define unbound-global-exception-code
      (lambda (_%exn100723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100723%_))
            (let ((_%e100725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100723%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100725%_)
                  (macro-unbound-global-exception-code _%e100725%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e100725%_ '())))))
            (if (macro-unbound-global-exception? _%exn100723%_)
                (macro-unbound-global-exception-code _%exn100723%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn100723%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn100719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100719%_))
            (let ((_%e100721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100719%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100721%_)
                  (macro-unbound-global-exception-rte _%e100721%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e100721%_ '())))))
            (if (macro-unbound-global-exception? _%exn100719%_)
                (macro-unbound-global-exception-rte _%exn100719%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn100719%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn100713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100713%_))
            (let ((_%e100716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100713%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100716%_)
                  (macro-unbound-global-exception-variable _%e100716%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e100716%_ '())))))
            (if (macro-unbound-global-exception? _%exn100713%_)
                (macro-unbound-global-exception-variable _%exn100713%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn100713%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn100709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100709%_))
            (let ((_%e100711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100709%_ 'exception))))
              (macro-unbound-key-exception? _%e100711%_))
            (macro-unbound-key-exception? _%exn100709%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn100705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100705%_))
            (let ((_%e100707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100705%_ 'exception))))
              (if (macro-unbound-key-exception? _%e100707%_)
                  (macro-unbound-key-exception-arguments _%e100707%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e100707%_ '())))))
            (if (macro-unbound-key-exception? _%exn100705%_)
                (macro-unbound-key-exception-arguments _%exn100705%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn100705%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn100699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100699%_))
            (let ((_%e100702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100699%_ 'exception))))
              (if (macro-unbound-key-exception? _%e100702%_)
                  (macro-unbound-key-exception-procedure _%e100702%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e100702%_ '())))))
            (if (macro-unbound-key-exception? _%exn100699%_)
                (macro-unbound-key-exception-procedure _%exn100699%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn100699%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn100695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100695%_))
            (let ((_%e100697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100695%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e100697%_))
            (macro-unbound-os-environment-variable-exception? _%exn100695%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn100691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100691%_))
            (let ((_%e100693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100691%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e100693%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e100693%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e100693%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn100691%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn100691%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn100691%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn100685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100685%_))
            (let ((_%e100688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100685%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e100688%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e100688%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e100688%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn100685%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn100685%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn100685%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn100681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100681%_))
            (let ((_%e100683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100681%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e100683%_))
            (macro-unbound-serial-number-exception? _%exn100681%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn100677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100677%_))
            (let ((_%e100679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100677%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e100679%_)
                  (macro-unbound-serial-number-exception-arguments _%e100679%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e100679%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn100677%_)
                (macro-unbound-serial-number-exception-arguments _%exn100677%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn100677%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn100671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100671%_))
            (let ((_%e100674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100671%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e100674%_)
                  (macro-unbound-serial-number-exception-procedure _%e100674%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e100674%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn100671%_)
                (macro-unbound-serial-number-exception-procedure _%exn100671%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn100671%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn100667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100667%_))
            (let ((_%e100669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100667%_ 'exception))))
              (macro-uncaught-exception? _%e100669%_))
            (macro-uncaught-exception? _%exn100667%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn100663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100663%_))
            (let ((_%e100665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100663%_ 'exception))))
              (if (macro-uncaught-exception? _%e100665%_)
                  (macro-uncaught-exception-arguments _%e100665%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e100665%_ '())))))
            (if (macro-uncaught-exception? _%exn100663%_)
                (macro-uncaught-exception-arguments _%exn100663%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn100663%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn100659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100659%_))
            (let ((_%e100661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100659%_ 'exception))))
              (if (macro-uncaught-exception? _%e100661%_)
                  (macro-uncaught-exception-procedure _%e100661%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e100661%_ '())))))
            (if (macro-uncaught-exception? _%exn100659%_)
                (macro-uncaught-exception-procedure _%exn100659%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn100659%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn100653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100653%_))
            (let ((_%e100656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100653%_ 'exception))))
              (if (macro-uncaught-exception? _%e100656%_)
                  (macro-uncaught-exception-reason _%e100656%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e100656%_ '())))))
            (if (macro-uncaught-exception? _%exn100653%_)
                (macro-uncaught-exception-reason _%exn100653%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn100653%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn100649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100649%_))
            (let ((_%e100651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100649%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e100651%_))
            (macro-uninitialized-thread-exception? _%exn100649%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn100645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100645%_))
            (let ((_%e100647%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100645%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e100647%_)
                  (macro-uninitialized-thread-exception-arguments _%e100647%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e100647%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn100645%_)
                (macro-uninitialized-thread-exception-arguments _%exn100645%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn100645%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn100639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100639%_))
            (let ((_%e100642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100639%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e100642%_)
                  (macro-uninitialized-thread-exception-procedure _%e100642%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e100642%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn100639%_)
                (macro-uninitialized-thread-exception-procedure _%exn100639%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn100639%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn100635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100635%_))
            (let ((_%e100637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100635%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e100637%_))
            (macro-unknown-keyword-argument-exception? _%exn100635%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn100631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100631%_))
            (let ((_%e100633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100631%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e100633%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e100633%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e100633%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn100631%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn100631%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn100631%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn100625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100625%_))
            (let ((_%e100628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100625%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e100628%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e100628%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e100628%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn100625%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn100625%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn100625%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn100621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100621%_))
            (let ((_%e100623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100621%_ 'exception))))
              (macro-unterminated-process-exception? _%e100623%_))
            (macro-unterminated-process-exception? _%exn100621%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn100617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100617%_))
            (let ((_%e100619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100617%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e100619%_)
                  (macro-unterminated-process-exception-arguments _%e100619%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e100619%_ '())))))
            (if (macro-unterminated-process-exception? _%exn100617%_)
                (macro-unterminated-process-exception-arguments _%exn100617%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn100617%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn100611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100611%_))
            (let ((_%e100614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100611%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e100614%_)
                  (macro-unterminated-process-exception-procedure _%e100614%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e100614%_ '())))))
            (if (macro-unterminated-process-exception? _%exn100611%_)
                (macro-unterminated-process-exception-procedure _%exn100611%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn100611%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn100607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100607%_))
            (let ((_%e100609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100607%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e100609%_))
            (macro-wrong-number-of-arguments-exception? _%exn100607%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn100603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100603%_))
            (let ((_%e100605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100603%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100605%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e100605%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e100605%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100603%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn100603%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn100603%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn100597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100597%_))
            (let ((_%e100600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100597%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e100600%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e100600%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e100600%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn100597%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn100597%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn100597%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn100593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100593%_))
            (let ((_%e100595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100593%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e100595%_))
            (macro-wrong-number-of-values-exception? _%exn100593%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn100589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100589%_))
            (let ((_%e100591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100589%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100591%_)
                  (macro-wrong-number-of-values-exception-code _%e100591%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e100591%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100589%_)
                (macro-wrong-number-of-values-exception-code _%exn100589%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn100589%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn100585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100585%_))
            (let ((_%e100587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100585%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100587%_)
                  (macro-wrong-number-of-values-exception-rte _%e100587%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e100587%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100585%_)
                (macro-wrong-number-of-values-exception-rte _%exn100585%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn100585%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn100579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100579%_))
            (let ((_%e100582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100579%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e100582%_)
                  (macro-wrong-number-of-values-exception-vals _%e100582%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e100582%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn100579%_)
                (macro-wrong-number-of-values-exception-vals _%exn100579%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn100579%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn100573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100573%_))
            (let ((_%e100576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100573%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e100576%_))
            (macro-wrong-processor-c-return-exception? _%exn100573%_))))))
