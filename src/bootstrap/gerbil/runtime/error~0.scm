(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1769382893)
  (begin
    (define Exception::t
      (let ((__tmp114760 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp114760
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args114730%_
        (apply make-instance Exception::t _%$args114730%_)))
    (define StackTrace::t
      (let ((__tmp114761 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp114761
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args114727%_
        (apply make-instance StackTrace::t _%$args114727%_)))
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
      (let ((__tmp114762 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp114762
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args114724%_ (apply make-instance Error::t _%$args114724%_)))
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
      (let ((__tmp114763 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp114763
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args114721%_
        (apply make-instance ContractViolation::t _%$args114721%_)))
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
      (let ((__tmp114764 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp114764
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args114718%_
        (apply make-instance RuntimeException::t _%$args114718%_)))
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
      (lambda (_%exn114713%_ _%continue114714%_)
        (let ((_%exn114716%_ (wrap-runtime-exception _%exn114713%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn114716%_ _%continue114714%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn114709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn114709%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn114709%_ 'continuation))
                '#!void
                (let ((__tmp114765
                       (lambda (_%cont114711%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn114709%_
                            'continuation
                            _%cont114711%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp114765)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn114709%_))))
    (define error
      (lambda (_%message114706%_ . _%irritants114707%_)
        (raise (let ((__obj114757
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj114757
                  _%message114706%_
                  'irritants:
                  _%irritants114707%_)
                 __obj114757))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords114681%_
               _%ctx114676114682%_
               _%contract-expr114677114683%_
               _%value114678114684%_
               _%message114685%_)
        (let* ((_%ctx114687%_
                (if (eq? _%ctx114676114682%_ absent-value)
                    '#f
                    _%ctx114676114682%_))
               (_%contract-expr114689%_
                (if (eq? _%contract-expr114677114683%_ absent-value)
                    '#f
                    _%contract-expr114677114683%_))
               (_%value114691%_
                (if (eq? _%value114678114684%_ absent-value)
                    '#f
                    _%value114678114684%_)))
          (raise (let ((__obj114758
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj114758
                    _%message114685%_
                    'where:
                    _%ctx114687%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr114689%_
                                (cons 'value: (cons _%value114691%_ '())))))
                   __obj114758)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords114696%_ . _%args114697%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords114696%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114696%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114696%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114696%_
                  'value:
                  absent-value))
               _%args114697%_)))
    (define __raise-contract-violation-error
      (lambda _%args114679114703%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args114679114703%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler114650%_ _%thunk114651%_)
        (if (procedure? _%handler114650%_)
            (let ((_%handler114655%_ _%handler114650%_))
              (if (procedure? _%thunk114651%_)
                  (let ((_%thunk114665%_ _%thunk114651%_))
                    (__with-exception-handler
                     _%handler114655%_
                     _%thunk114665%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114651%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler114650%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler114625%_ _%thunk114626%_)
        (let* ((_%handler114629%_ _%handler114625%_)
               (_%thunk114637%_ _%thunk114626%_)
               (__tmp114766
                (lambda (_%exn114646%_)
                  (let ((_%exn114648%_ (wrap-runtime-exception _%exn114646%_)))
                    (declare (not safe))
                    (_%handler114629%_ _%exn114648%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp114766 _%thunk114637%_))))
    (define with-catch
      (lambda (_%handler114600%_ _%thunk114601%_)
        (if (procedure? _%handler114600%_)
            (let ((_%handler114605%_ _%handler114600%_))
              (if (procedure? _%thunk114601%_)
                  (let ((_%thunk114615%_ _%thunk114601%_))
                    (__with-catch _%handler114605%_ _%thunk114615%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114601%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler114600%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler114575%_ _%thunk114576%_)
        (let* ((_%handler114579%_ _%handler114575%_)
               (_%thunk114587%_ _%thunk114576%_)
               (__tmp114767
                (lambda (_%cont114596%_)
                  (__with-exception-handler
                   (lambda (_%exn114598%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont114596%_
                        _%handler114579%_
                        _%exn114598%_)))
                   _%thunk114587%_))))
          (declare (not safe))
          (##continuation-capture __tmp114767))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn114562%_)
        (if (or (heap-overflow-exception? _%exn114562%_)
                (stack-overflow-exception? _%exn114562%_))
            _%exn114562%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn114562%_))
                _%exn114562%_
                (if (macro-exception? _%exn114562%_)
                    (let ((_%rte114570%_
                           (let ((__obj114759
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj114759
                                _%exn114562%_
                                '2
                                '#f
                                '#f))
                             __obj114759)))
                      (let ((__tmp114768
                             (lambda (_%cont114572%_)
                               (let ((__tmp114769
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont114572%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte114570%_
                                  'continuation
                                  __tmp114769)))))
                        (declare (not safe))
                        (##continuation-capture __tmp114768))
                      _%rte114570%_)
                    _%exn114562%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj114557%_)
        (let ((_%$e114559%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj114557%_))))
          (if _%$e114559%_ _%$e114559%_ (error-exception? _%obj114557%_)))))
    (define error-message
      (lambda (_%obj114550%_)
        (let ((_%$e114552%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj114550%_ 'message false))))
          (if _%$e114552%_
              _%$e114552%_
              (if (error-exception? _%obj114550%_)
                  (error-exception-message _%obj114550%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj114545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114545%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114545%_ 'irritants))
            (if (error-exception? _%obj114545%_)
                (error-exception-parameters _%obj114545%_)
                '#f))))
    (define error-trace
      (lambda (_%obj114543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114543%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114543%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e114524%_ _%port114525%_)
        (let ((_%$e114527%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e114524%_ 'display-exception))))
          (if _%$e114527%_
              ((lambda (_%f114530%_) (_%f114530%_ _%e114524%_ _%port114525%_))
               _%$e114527%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e114524%_ _%port114525%_))))))
    (define display-exception__0
      (lambda (_%e114536%_)
        (let ((_%port114538%_ (current-error-port)))
          (display-exception__% _%e114536%_ _%port114538%_))))
    (define display-exception
      (lambda _g114770_
        (let ((_g114771_ (let () (declare (not safe)) (##length _g114770_))))
          (cond ((let () (declare (not safe)) (##fx= _g114771_ 1))
                 (apply display-exception__0 _g114770_))
                ((let () (declare (not safe)) (##fx= _g114771_ 2))
                 (apply display-exception__% _g114770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g114770_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self114502%_ _%message114503%_ . _%rest114504%_)
        (let* ((_%self114507%_ _%self114502%_)
               (_%message114521%_
                (if (string? _%message114503%_)
                    _%message114503%_
                    (call-with-output-string
                     '""
                     (lambda (_%g114516114518%_)
                       (display _%message114503%_ _%g114516114518%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self114507%_ 'message _%message114521%_))
          (apply class-instance-init! _%self114507%_ _%rest114504%_))))
    (define Error:::init!::specialize
      (lambda (__klass114732 __method-table114733)
        (let ((__message114734
               (let ((__slot114735
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114732 'message))))
                 (if __slot114735
                     __slot114735
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self114502%_ _%message114503%_ . _%rest114504%_)
            (let* ((_%self114507%_ _%self114502%_)
                   (_%message114521%_
                    (if (string? _%message114503%_)
                        _%message114503%_
                        (call-with-output-string
                         '""
                         (lambda (_%g114516114518%_)
                           (display _%message114503%_ _%g114516114518%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self114507%_
                 _%message114521%_
                 __message114734
                 '#f
                 '#f))
              (apply class-instance-init! _%self114507%_ _%rest114504%_))))))
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
      (lambda (_%self114227%_ _%port114228%_)
        (let ((_%self114231%_ _%self114227%_))
          (let ((_%tmp-port114241%_ (open-output-string))
                (_%display-error-newline114242%_
                 (> (output-port-column _%port114228%_) '0)))
            (fix-port-width! _%tmp-port114241%_)
            (let ((__tmp114772
                   (lambda ()
                     (if _%display-error-newline114242%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e114245%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self114231%_ 'where))))
                       (if _%$e114245%_ (display _%$e114245%_) (display '"?")))
                     (let ((__tmp114773
                            (let ((__tmp114774
                                   (let ()
                                     (declare (not safe))
                                     (__object-class _%self114231%_))))
                              (declare (not safe))
                              (##type-name __tmp114774))))
                       (declare (not safe))
                       (display* '" [" __tmp114773 '"]: "))
                     (let ((__tmp114775
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self114231%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp114775))
                     (let ((_%irritants114249%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self114231%_ 'irritants))))
                       (if (null? _%irritants114249%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj114251%_)
                                (if (u8vector? _%obj114251%_)
                                    (let ((__tmp114776
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj114251%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp114776))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj114251%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants114249%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont114252114254%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self114231%_
                                   'continuation))))
                           (if _%cont114252114254%_
                               (let ((_%cont114256%_ _%cont114252114254%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont114256%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp114772
               current-output-port
               _%tmp-port114241%_))
            (let ((__tmp114777 (get-output-string _%tmp-port114241%_)))
              (declare (not safe))
              (##write-string __tmp114777 _%port114228%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass114736 __method-table114737)
        (let ((__message114738
               (let ((__slot114742
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114736 'message))))
                 (if __slot114742
                     __slot114742
                     (error '"Unknown slot" 'message))))
              (__continuation114739
               (let ((__slot114743
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114736 'continuation))))
                 (if __slot114743
                     __slot114743
                     (error '"Unknown slot" 'continuation))))
              (__where114740
               (let ((__slot114744
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114736 'where))))
                 (if __slot114744
                     __slot114744
                     (error '"Unknown slot" 'where))))
              (__irritants114741
               (let ((__slot114745
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114736 'irritants))))
                 (if __slot114745
                     __slot114745
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self114227%_ _%port114228%_)
            (let ((_%self114231%_ _%self114227%_))
              (let ((_%tmp-port114241%_ (open-output-string))
                    (_%display-error-newline114242%_
                     (> (output-port-column _%port114228%_) '0)))
                (fix-port-width! _%tmp-port114241%_)
                (let ((__tmp114778
                       (lambda ()
                         (if _%display-error-newline114242%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e114245%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self114231%_
                                   __where114740
                                   '#f
                                   '#f))))
                           (if _%$e114245%_
                               (display _%$e114245%_)
                               (display '"?")))
                         (let ((__tmp114779
                                (let ((__tmp114780
                                       (let ()
                                         (declare (not safe))
                                         (__object-class _%self114231%_))))
                                  (declare (not safe))
                                  (##type-name __tmp114780))))
                           (declare (not safe))
                           (display* '" [" __tmp114779 '"]: "))
                         (let ((__tmp114781
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self114231%_
                                   __message114738
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp114781))
                         (let ((_%irritants114249%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self114231%_
                                   __irritants114741
                                   '#f
                                   '#f))))
                           (if (null? _%irritants114249%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj114251%_)
                                    (if (u8vector? _%obj114251%_)
                                        (let ((__tmp114782
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj114251%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp114782))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj114251%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants114249%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont114252114254%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self114231%_
                                       __continuation114739
                                       '#f
                                       '#f))))
                               (if _%cont114252114254%_
                                   (let ((_%cont114256%_ _%cont114252114254%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont114256%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp114778
                   current-output-port
                   _%tmp-port114241%_))
                (let ((__tmp114783 (get-output-string _%tmp-port114241%_)))
                  (declare (not safe))
                  (##write-string __tmp114783 _%port114228%_))))))))
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
      (lambda (_%self114084%_ _%port114085%_)
        (let* ((_%self114088%_ _%self114084%_)
               (_%tmp-port114098%_ (open-output-string)))
          (fix-port-width! _%tmp-port114098%_)
          (let ((__tmp114784
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self114088%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp114784 _%tmp-port114098%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont114099114101%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self114088%_ 'continuation))))
                (if _%cont114099114101%_
                    (let ((_%cont114103%_ _%cont114099114101%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port114098%_)
                      (newline _%tmp-port114098%_)
                      (display-continuation-backtrace
                       _%cont114103%_
                       _%tmp-port114098%_))
                    '#f))
              '#!void)
          (let ((__tmp114785 (get-output-string _%tmp-port114098%_)))
            (declare (not safe))
            (##write-string __tmp114785 _%port114085%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass114746 __method-table114747)
        (let ((__continuation114748
               (let ((__slot114750
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114746 'continuation))))
                 (if __slot114750
                     __slot114750
                     (error '"Unknown slot" 'continuation))))
              (__exception114749
               (let ((__slot114751
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114746 'exception))))
                 (if __slot114751
                     __slot114751
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self114084%_ _%port114085%_)
            (let* ((_%self114088%_ _%self114084%_)
                   (_%tmp-port114098%_ (open-output-string)))
              (fix-port-width! _%tmp-port114098%_)
              (let ((__tmp114786
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self114088%_
                        __exception114749
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp114786 _%tmp-port114098%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont114099114101%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self114088%_
                            __continuation114748
                            '#f
                            '#f))))
                    (if _%cont114099114101%_
                        (let ((_%cont114103%_ _%cont114099114101%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port114098%_)
                          (newline _%tmp-port114098%_)
                          (display-continuation-backtrace
                           _%cont114103%_
                           _%tmp-port114098%_))
                        '#f))
                  '#!void)
              (let ((__tmp114787 (get-output-string _%tmp-port114098%_)))
                (declare (not safe))
                (##write-string __tmp114787 _%port114085%_)))))))
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
      (lambda (_%port113956%_)
        (if (macro-character-port? _%port113956%_)
            (let ((_%old-width113958%_
                   (macro-character-port-output-width _%port113956%_)))
              (macro-character-port-output-width-set!
               _%port113956%_
               (lambda (_%port113960%_) '256))
              _%old-width113958%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port113953%_ _%old-width113954%_)
        (if (macro-character-port? _%port113953%_)
            (macro-character-port-output-width-set!
             _%port113953%_
             _%old-width113954%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e113951%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e113951%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn113945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113945%_))
            (let ((_%e113948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113945%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e113948%_))
            (macro-abandoned-mutex-exception? _%exn113945%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn113941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113941%_))
            (let ((_%e113943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113941%_ 'exception))))
              (macro-cfun-conversion-exception? _%e113943%_))
            (macro-cfun-conversion-exception? _%exn113941%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn113937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113937%_))
            (let ((_%e113939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113937%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113939%_)
                  (macro-cfun-conversion-exception-arguments _%e113939%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e113939%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113937%_)
                (macro-cfun-conversion-exception-arguments _%exn113937%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn113937%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn113933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113933%_))
            (let ((_%e113935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113933%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113935%_)
                  (macro-cfun-conversion-exception-code _%e113935%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e113935%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113933%_)
                (macro-cfun-conversion-exception-code _%exn113933%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn113933%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn113929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113929%_))
            (let ((_%e113931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113929%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113931%_)
                  (macro-cfun-conversion-exception-message _%e113931%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e113931%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113929%_)
                (macro-cfun-conversion-exception-message _%exn113929%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn113929%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn113923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113923%_))
            (let ((_%e113926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113923%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113926%_)
                  (macro-cfun-conversion-exception-procedure _%e113926%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e113926%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113923%_)
                (macro-cfun-conversion-exception-procedure _%exn113923%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn113923%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn113919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113919%_))
            (let ((_%e113921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113919%_ 'exception))))
              (macro-datum-parsing-exception? _%e113921%_))
            (macro-datum-parsing-exception? _%exn113919%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn113915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113915%_))
            (let ((_%e113917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113915%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113917%_)
                  (macro-datum-parsing-exception-kind _%e113917%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e113917%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113915%_)
                (macro-datum-parsing-exception-kind _%exn113915%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn113915%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn113911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113911%_))
            (let ((_%e113913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113911%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113913%_)
                  (macro-datum-parsing-exception-parameters _%e113913%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e113913%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113911%_)
                (macro-datum-parsing-exception-parameters _%exn113911%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn113911%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn113905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113905%_))
            (let ((_%e113908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113905%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113908%_)
                  (macro-datum-parsing-exception-readenv _%e113908%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e113908%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113905%_)
                (macro-datum-parsing-exception-readenv _%exn113905%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn113905%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn113899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113899%_))
            (let ((_%e113902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113899%_ 'exception))))
              (macro-deadlock-exception? _%e113902%_))
            (macro-deadlock-exception? _%exn113899%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn113895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113895%_))
            (let ((_%e113897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113895%_ 'exception))))
              (macro-divide-by-zero-exception? _%e113897%_))
            (macro-divide-by-zero-exception? _%exn113895%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn113891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113891%_))
            (let ((_%e113893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113891%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113893%_)
                  (macro-divide-by-zero-exception-arguments _%e113893%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e113893%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113891%_)
                (macro-divide-by-zero-exception-arguments _%exn113891%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn113891%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn113885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113885%_))
            (let ((_%e113888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113885%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113888%_)
                  (macro-divide-by-zero-exception-procedure _%e113888%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e113888%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113885%_)
                (macro-divide-by-zero-exception-procedure _%exn113885%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn113885%_ '())))))))
    (define error-exception?
      (lambda (_%exn113881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113881%_))
            (let ((_%e113883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113881%_ 'exception))))
              (macro-error-exception? _%e113883%_))
            (macro-error-exception? _%exn113881%_))))
    (define error-exception-message
      (lambda (_%exn113877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113877%_))
            (let ((_%e113879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113877%_ 'exception))))
              (if (macro-error-exception? _%e113879%_)
                  (macro-error-exception-message _%e113879%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e113879%_ '())))))
            (if (macro-error-exception? _%exn113877%_)
                (macro-error-exception-message _%exn113877%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn113877%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn113871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113871%_))
            (let ((_%e113874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113871%_ 'exception))))
              (if (macro-error-exception? _%e113874%_)
                  (macro-error-exception-parameters _%e113874%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e113874%_ '())))))
            (if (macro-error-exception? _%exn113871%_)
                (macro-error-exception-parameters _%exn113871%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn113871%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn113867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113867%_))
            (let ((_%e113869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113867%_ 'exception))))
              (macro-expression-parsing-exception? _%e113869%_))
            (macro-expression-parsing-exception? _%exn113867%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn113863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113863%_))
            (let ((_%e113865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113863%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113865%_)
                  (macro-expression-parsing-exception-kind _%e113865%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e113865%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113863%_)
                (macro-expression-parsing-exception-kind _%exn113863%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn113863%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn113859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113859%_))
            (let ((_%e113861%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113859%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113861%_)
                  (macro-expression-parsing-exception-parameters _%e113861%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e113861%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113859%_)
                (macro-expression-parsing-exception-parameters _%exn113859%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn113859%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn113853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113853%_))
            (let ((_%e113856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113853%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113856%_)
                  (macro-expression-parsing-exception-source _%e113856%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e113856%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113853%_)
                (macro-expression-parsing-exception-source _%exn113853%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn113853%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn113849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113849%_))
            (let ((_%e113851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113849%_ 'exception))))
              (macro-file-exists-exception? _%e113851%_))
            (macro-file-exists-exception? _%exn113849%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn113845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113845%_))
            (let ((_%e113847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113845%_ 'exception))))
              (if (macro-file-exists-exception? _%e113847%_)
                  (macro-file-exists-exception-arguments _%e113847%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e113847%_ '())))))
            (if (macro-file-exists-exception? _%exn113845%_)
                (macro-file-exists-exception-arguments _%exn113845%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn113845%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn113839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113839%_))
            (let ((_%e113842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113839%_ 'exception))))
              (if (macro-file-exists-exception? _%e113842%_)
                  (macro-file-exists-exception-procedure _%e113842%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e113842%_ '())))))
            (if (macro-file-exists-exception? _%exn113839%_)
                (macro-file-exists-exception-procedure _%exn113839%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn113839%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn113835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113835%_))
            (let ((_%e113837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113835%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e113837%_))
            (macro-fixnum-overflow-exception? _%exn113835%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn113831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113831%_))
            (let ((_%e113833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113831%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113833%_)
                  (macro-fixnum-overflow-exception-arguments _%e113833%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e113833%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113831%_)
                (macro-fixnum-overflow-exception-arguments _%exn113831%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn113831%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn113825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113825%_))
            (let ((_%e113828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113825%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113828%_)
                  (macro-fixnum-overflow-exception-procedure _%e113828%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e113828%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113825%_)
                (macro-fixnum-overflow-exception-procedure _%exn113825%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn113825%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn113819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113819%_))
            (let ((_%e113822%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113819%_ 'exception))))
              (macro-heap-overflow-exception? _%e113822%_))
            (macro-heap-overflow-exception? _%exn113819%_))))
    (define inactive-thread-exception?
      (lambda (_%exn113815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113815%_))
            (let ((_%e113817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113815%_ 'exception))))
              (macro-inactive-thread-exception? _%e113817%_))
            (macro-inactive-thread-exception? _%exn113815%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn113811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113811%_))
            (let ((_%e113813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113811%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113813%_)
                  (macro-inactive-thread-exception-arguments _%e113813%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e113813%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113811%_)
                (macro-inactive-thread-exception-arguments _%exn113811%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn113811%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn113805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113805%_))
            (let ((_%e113808%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113805%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113808%_)
                  (macro-inactive-thread-exception-procedure _%e113808%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e113808%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113805%_)
                (macro-inactive-thread-exception-procedure _%exn113805%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn113805%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn113801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113801%_))
            (let ((_%e113803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113801%_ 'exception))))
              (macro-initialized-thread-exception? _%e113803%_))
            (macro-initialized-thread-exception? _%exn113801%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn113797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113797%_))
            (let ((_%e113799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113797%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113799%_)
                  (macro-initialized-thread-exception-arguments _%e113799%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e113799%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113797%_)
                (macro-initialized-thread-exception-arguments _%exn113797%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn113797%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn113791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113791%_))
            (let ((_%e113794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113791%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113794%_)
                  (macro-initialized-thread-exception-procedure _%e113794%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e113794%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113791%_)
                (macro-initialized-thread-exception-procedure _%exn113791%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn113791%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn113787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113787%_))
            (let ((_%e113789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113787%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e113789%_))
            (macro-invalid-hash-number-exception? _%exn113787%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn113783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113783%_))
            (let ((_%e113785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113783%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113785%_)
                  (macro-invalid-hash-number-exception-arguments _%e113785%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e113785%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113783%_)
                (macro-invalid-hash-number-exception-arguments _%exn113783%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn113783%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn113777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113777%_))
            (let ((_%e113780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113777%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113780%_)
                  (macro-invalid-hash-number-exception-procedure _%e113780%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e113780%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113777%_)
                (macro-invalid-hash-number-exception-procedure _%exn113777%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn113777%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn113773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113773%_))
            (let ((_%e113775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113773%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e113775%_))
            (macro-invalid-utf8-encoding-exception? _%exn113773%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn113769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113769%_))
            (let ((_%e113771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113769%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113771%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e113771%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e113771%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113769%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn113769%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn113769%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn113763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113763%_))
            (let ((_%e113766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113763%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113766%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e113766%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e113766%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113763%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn113763%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn113763%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn113759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113759%_))
            (let ((_%e113761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113759%_ 'exception))))
              (macro-join-timeout-exception? _%e113761%_))
            (macro-join-timeout-exception? _%exn113759%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn113755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113755%_))
            (let ((_%e113757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113755%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113757%_)
                  (macro-join-timeout-exception-arguments _%e113757%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e113757%_ '())))))
            (if (macro-join-timeout-exception? _%exn113755%_)
                (macro-join-timeout-exception-arguments _%exn113755%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn113755%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn113749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113749%_))
            (let ((_%e113752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113749%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113752%_)
                  (macro-join-timeout-exception-procedure _%e113752%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e113752%_ '())))))
            (if (macro-join-timeout-exception? _%exn113749%_)
                (macro-join-timeout-exception-procedure _%exn113749%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn113749%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn113745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113745%_))
            (let ((_%e113747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113745%_ 'exception))))
              (macro-keyword-expected-exception? _%e113747%_))
            (macro-keyword-expected-exception? _%exn113745%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn113741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113741%_))
            (let ((_%e113743%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113741%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113743%_)
                  (macro-keyword-expected-exception-arguments _%e113743%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e113743%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113741%_)
                (macro-keyword-expected-exception-arguments _%exn113741%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn113741%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn113735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113735%_))
            (let ((_%e113738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113735%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113738%_)
                  (macro-keyword-expected-exception-procedure _%e113738%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e113738%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113735%_)
                (macro-keyword-expected-exception-procedure _%exn113735%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn113735%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn113731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113731%_))
            (let ((_%e113733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113731%_ 'exception))))
              (macro-length-mismatch-exception? _%e113733%_))
            (macro-length-mismatch-exception? _%exn113731%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn113727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113727%_))
            (let ((_%e113729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113727%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113729%_)
                  (macro-length-mismatch-exception-arg-id _%e113729%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e113729%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113727%_)
                (macro-length-mismatch-exception-arg-id _%exn113727%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn113727%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn113723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113723%_))
            (let ((_%e113725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113723%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113725%_)
                  (macro-length-mismatch-exception-arguments _%e113725%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e113725%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113723%_)
                (macro-length-mismatch-exception-arguments _%exn113723%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn113723%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn113717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113717%_))
            (let ((_%e113720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113717%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113720%_)
                  (macro-length-mismatch-exception-procedure _%e113720%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e113720%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113717%_)
                (macro-length-mismatch-exception-procedure _%exn113717%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn113717%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn113713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113713%_))
            (let ((_%e113715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113713%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e113715%_))
            (macro-mailbox-receive-timeout-exception? _%exn113713%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn113709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113709%_))
            (let ((_%e113711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113709%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113711%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e113711%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e113711%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113709%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn113709%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn113709%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn113703%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113703%_))
            (let ((_%e113706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113703%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113706%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e113706%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e113706%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113703%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn113703%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn113703%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn113699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113699%_))
            (let ((_%e113701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113699%_ 'exception))))
              (macro-module-not-found-exception? _%e113701%_))
            (macro-module-not-found-exception? _%exn113699%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn113695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113695%_))
            (let ((_%e113697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113695%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113697%_)
                  (macro-module-not-found-exception-arguments _%e113697%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e113697%_ '())))))
            (if (macro-module-not-found-exception? _%exn113695%_)
                (macro-module-not-found-exception-arguments _%exn113695%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn113695%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn113689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113689%_))
            (let ((_%e113692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113689%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113692%_)
                  (macro-module-not-found-exception-procedure _%e113692%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e113692%_ '())))))
            (if (macro-module-not-found-exception? _%exn113689%_)
                (macro-module-not-found-exception-procedure _%exn113689%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn113689%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn113683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113683%_))
            (let ((_%e113686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113683%_ 'exception))))
              (macro-multiple-c-return-exception? _%e113686%_))
            (macro-multiple-c-return-exception? _%exn113683%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn113679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113679%_))
            (let ((_%e113681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113679%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e113681%_))
            (macro-no-such-file-or-directory-exception? _%exn113679%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn113675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113675%_))
            (let ((_%e113677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113675%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113677%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e113677%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e113677%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113675%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn113675%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn113675%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn113669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113669%_))
            (let ((_%e113672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113669%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113672%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e113672%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e113672%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113669%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn113669%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn113669%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn113665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113665%_))
            (let ((_%e113667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113665%_ 'exception))))
              (macro-noncontinuable-exception? _%e113667%_))
            (macro-noncontinuable-exception? _%exn113665%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn113659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113659%_))
            (let ((_%e113662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113659%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e113662%_)
                  (macro-noncontinuable-exception-reason _%e113662%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e113662%_ '())))))
            (if (macro-noncontinuable-exception? _%exn113659%_)
                (macro-noncontinuable-exception-reason _%exn113659%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn113659%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn113655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113655%_))
            (let ((_%e113657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113655%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e113657%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn113655%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn113651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113651%_))
            (let ((_%e113653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113651%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113653%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e113653%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e113653%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113651%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn113651%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn113651%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn113645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113645%_))
            (let ((_%e113648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113645%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113648%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e113648%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e113648%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113645%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn113645%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn113645%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn113641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113641%_))
            (let ((_%e113643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113641%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e113643%_))
            (macro-nonprocedure-operator-exception? _%exn113641%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn113637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113637%_))
            (let ((_%e113639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113637%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113639%_)
                  (macro-nonprocedure-operator-exception-arguments _%e113639%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e113639%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113637%_)
                (macro-nonprocedure-operator-exception-arguments _%exn113637%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn113637%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn113633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113633%_))
            (let ((_%e113635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113633%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113635%_)
                  (macro-nonprocedure-operator-exception-code _%e113635%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e113635%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113633%_)
                (macro-nonprocedure-operator-exception-code _%exn113633%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn113633%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn113629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113629%_))
            (let ((_%e113631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113629%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113631%_)
                  (macro-nonprocedure-operator-exception-operator _%e113631%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e113631%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113629%_)
                (macro-nonprocedure-operator-exception-operator _%exn113629%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn113629%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn113623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113623%_))
            (let ((_%e113626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113623%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113626%_)
                  (macro-nonprocedure-operator-exception-rte _%e113626%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e113626%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113623%_)
                (macro-nonprocedure-operator-exception-rte _%exn113623%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn113623%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn113619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113619%_))
            (let ((_%e113621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113619%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e113621%_))
            (macro-not-in-compilation-context-exception? _%exn113619%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn113615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113615%_))
            (let ((_%e113617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113615%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113617%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e113617%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e113617%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113615%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn113615%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn113615%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn113609%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113609%_))
            (let ((_%e113612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113609%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113612%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e113612%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e113612%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113609%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn113609%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn113609%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn113605%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113605%_))
            (let ((_%e113607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113605%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e113607%_))
            (macro-number-of-arguments-limit-exception? _%exn113605%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn113601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113601%_))
            (let ((_%e113603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113601%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113603%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e113603%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e113603%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113601%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn113601%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn113601%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn113595%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113595%_))
            (let ((_%e113598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113595%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113598%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e113598%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e113598%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113595%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn113595%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn113595%_ '())))))))
    (define os-exception?
      (lambda (_%exn113591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113591%_))
            (let ((_%e113593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113591%_ 'exception))))
              (macro-os-exception? _%e113593%_))
            (macro-os-exception? _%exn113591%_))))
    (define os-exception-arguments
      (lambda (_%exn113587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113587%_))
            (let ((_%e113589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113587%_ 'exception))))
              (if (macro-os-exception? _%e113589%_)
                  (macro-os-exception-arguments _%e113589%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e113589%_ '())))))
            (if (macro-os-exception? _%exn113587%_)
                (macro-os-exception-arguments _%exn113587%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn113587%_ '())))))))
    (define os-exception-code
      (lambda (_%exn113583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113583%_))
            (let ((_%e113585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113583%_ 'exception))))
              (if (macro-os-exception? _%e113585%_)
                  (macro-os-exception-code _%e113585%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e113585%_ '())))))
            (if (macro-os-exception? _%exn113583%_)
                (macro-os-exception-code _%exn113583%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn113583%_ '())))))))
    (define os-exception-message
      (lambda (_%exn113579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113579%_))
            (let ((_%e113581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113579%_ 'exception))))
              (if (macro-os-exception? _%e113581%_)
                  (macro-os-exception-message _%e113581%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e113581%_ '())))))
            (if (macro-os-exception? _%exn113579%_)
                (macro-os-exception-message _%exn113579%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn113579%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn113573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113573%_))
            (let ((_%e113576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113573%_ 'exception))))
              (if (macro-os-exception? _%e113576%_)
                  (macro-os-exception-procedure _%e113576%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e113576%_ '())))))
            (if (macro-os-exception? _%exn113573%_)
                (macro-os-exception-procedure _%exn113573%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn113573%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn113569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113569%_))
            (let ((_%e113571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113569%_ 'exception))))
              (macro-permission-denied-exception? _%e113571%_))
            (macro-permission-denied-exception? _%exn113569%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn113565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113565%_))
            (let ((_%e113567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113565%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113567%_)
                  (macro-permission-denied-exception-arguments _%e113567%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e113567%_ '())))))
            (if (macro-permission-denied-exception? _%exn113565%_)
                (macro-permission-denied-exception-arguments _%exn113565%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn113565%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn113559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113559%_))
            (let ((_%e113562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113559%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113562%_)
                  (macro-permission-denied-exception-procedure _%e113562%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e113562%_ '())))))
            (if (macro-permission-denied-exception? _%exn113559%_)
                (macro-permission-denied-exception-procedure _%exn113559%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn113559%_ '())))))))
    (define range-exception?
      (lambda (_%exn113555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113555%_))
            (let ((_%e113557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113555%_ 'exception))))
              (macro-range-exception? _%e113557%_))
            (macro-range-exception? _%exn113555%_))))
    (define range-exception-arg-id
      (lambda (_%exn113551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113551%_))
            (let ((_%e113553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113551%_ 'exception))))
              (if (macro-range-exception? _%e113553%_)
                  (macro-range-exception-arg-id _%e113553%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e113553%_ '())))))
            (if (macro-range-exception? _%exn113551%_)
                (macro-range-exception-arg-id _%exn113551%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn113551%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn113547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113547%_))
            (let ((_%e113549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113547%_ 'exception))))
              (if (macro-range-exception? _%e113549%_)
                  (macro-range-exception-arguments _%e113549%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e113549%_ '())))))
            (if (macro-range-exception? _%exn113547%_)
                (macro-range-exception-arguments _%exn113547%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn113547%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn113541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113541%_))
            (let ((_%e113544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113541%_ 'exception))))
              (if (macro-range-exception? _%e113544%_)
                  (macro-range-exception-procedure _%e113544%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e113544%_ '())))))
            (if (macro-range-exception? _%exn113541%_)
                (macro-range-exception-procedure _%exn113541%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn113541%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn113537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113537%_))
            (let ((_%e113539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113537%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e113539%_))
            (macro-rpc-remote-error-exception? _%exn113537%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn113533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113533%_))
            (let ((_%e113535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113533%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113535%_)
                  (macro-rpc-remote-error-exception-arguments _%e113535%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e113535%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113533%_)
                (macro-rpc-remote-error-exception-arguments _%exn113533%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn113533%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn113529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113529%_))
            (let ((_%e113531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113529%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113531%_)
                  (macro-rpc-remote-error-exception-message _%e113531%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e113531%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113529%_)
                (macro-rpc-remote-error-exception-message _%exn113529%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn113529%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn113523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113523%_))
            (let ((_%e113526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113523%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113526%_)
                  (macro-rpc-remote-error-exception-procedure _%e113526%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e113526%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113523%_)
                (macro-rpc-remote-error-exception-procedure _%exn113523%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn113523%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn113519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113519%_))
            (let ((_%e113521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113519%_ 'exception))))
              (macro-scheduler-exception? _%e113521%_))
            (macro-scheduler-exception? _%exn113519%_))))
    (define scheduler-exception-reason
      (lambda (_%exn113513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113513%_))
            (let ((_%e113516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113513%_ 'exception))))
              (if (macro-scheduler-exception? _%e113516%_)
                  (macro-scheduler-exception-reason _%e113516%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e113516%_ '())))))
            (if (macro-scheduler-exception? _%exn113513%_)
                (macro-scheduler-exception-reason _%exn113513%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn113513%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn113509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113509%_))
            (let ((_%e113511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113509%_ 'exception))))
              (macro-sfun-conversion-exception? _%e113511%_))
            (macro-sfun-conversion-exception? _%exn113509%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn113505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113505%_))
            (let ((_%e113507%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113505%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113507%_)
                  (macro-sfun-conversion-exception-arguments _%e113507%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e113507%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113505%_)
                (macro-sfun-conversion-exception-arguments _%exn113505%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn113505%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn113501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113501%_))
            (let ((_%e113503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113501%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113503%_)
                  (macro-sfun-conversion-exception-code _%e113503%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e113503%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113501%_)
                (macro-sfun-conversion-exception-code _%exn113501%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn113501%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn113497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113497%_))
            (let ((_%e113499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113497%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113499%_)
                  (macro-sfun-conversion-exception-message _%e113499%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e113499%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113497%_)
                (macro-sfun-conversion-exception-message _%exn113497%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn113497%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn113491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113491%_))
            (let ((_%e113494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113491%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113494%_)
                  (macro-sfun-conversion-exception-procedure _%e113494%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e113494%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113491%_)
                (macro-sfun-conversion-exception-procedure _%exn113491%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn113491%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn113485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113485%_))
            (let ((_%e113488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113485%_ 'exception))))
              (macro-stack-overflow-exception? _%e113488%_))
            (macro-stack-overflow-exception? _%exn113485%_))))
    (define started-thread-exception?
      (lambda (_%exn113481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113481%_))
            (let ((_%e113483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113481%_ 'exception))))
              (macro-started-thread-exception? _%e113483%_))
            (macro-started-thread-exception? _%exn113481%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn113477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113477%_))
            (let ((_%e113479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113477%_ 'exception))))
              (if (macro-started-thread-exception? _%e113479%_)
                  (macro-started-thread-exception-arguments _%e113479%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e113479%_ '())))))
            (if (macro-started-thread-exception? _%exn113477%_)
                (macro-started-thread-exception-arguments _%exn113477%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn113477%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn113471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113471%_))
            (let ((_%e113474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113471%_ 'exception))))
              (if (macro-started-thread-exception? _%e113474%_)
                  (macro-started-thread-exception-procedure _%e113474%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e113474%_ '())))))
            (if (macro-started-thread-exception? _%exn113471%_)
                (macro-started-thread-exception-procedure _%exn113471%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn113471%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn113467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113467%_))
            (let ((_%e113469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113467%_ 'exception))))
              (macro-terminated-thread-exception? _%e113469%_))
            (macro-terminated-thread-exception? _%exn113467%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn113463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113463%_))
            (let ((_%e113465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113463%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113465%_)
                  (macro-terminated-thread-exception-arguments _%e113465%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e113465%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113463%_)
                (macro-terminated-thread-exception-arguments _%exn113463%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn113463%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn113457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113457%_))
            (let ((_%e113460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113457%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113460%_)
                  (macro-terminated-thread-exception-procedure _%e113460%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e113460%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113457%_)
                (macro-terminated-thread-exception-procedure _%exn113457%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn113457%_ '())))))))
    (define type-exception?
      (lambda (_%exn113453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113453%_))
            (let ((_%e113455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113453%_ 'exception))))
              (macro-type-exception? _%e113455%_))
            (macro-type-exception? _%exn113453%_))))
    (define type-exception-arg-id
      (lambda (_%exn113449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113449%_))
            (let ((_%e113451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113449%_ 'exception))))
              (if (macro-type-exception? _%e113451%_)
                  (macro-type-exception-arg-id _%e113451%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e113451%_ '())))))
            (if (macro-type-exception? _%exn113449%_)
                (macro-type-exception-arg-id _%exn113449%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn113449%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn113445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113445%_))
            (let ((_%e113447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113445%_ 'exception))))
              (if (macro-type-exception? _%e113447%_)
                  (macro-type-exception-arguments _%e113447%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e113447%_ '())))))
            (if (macro-type-exception? _%exn113445%_)
                (macro-type-exception-arguments _%exn113445%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn113445%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn113441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113441%_))
            (let ((_%e113443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113441%_ 'exception))))
              (if (macro-type-exception? _%e113443%_)
                  (macro-type-exception-procedure _%e113443%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e113443%_ '())))))
            (if (macro-type-exception? _%exn113441%_)
                (macro-type-exception-procedure _%exn113441%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn113441%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn113435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113435%_))
            (let ((_%e113438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113435%_ 'exception))))
              (if (macro-type-exception? _%e113438%_)
                  (macro-type-exception-type-id _%e113438%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e113438%_ '())))))
            (if (macro-type-exception? _%exn113435%_)
                (macro-type-exception-type-id _%exn113435%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn113435%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn113431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113431%_))
            (let ((_%e113433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113431%_ 'exception))))
              (macro-unbound-global-exception? _%e113433%_))
            (macro-unbound-global-exception? _%exn113431%_))))
    (define unbound-global-exception-code
      (lambda (_%exn113427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113427%_))
            (let ((_%e113429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113427%_ 'exception))))
              (if (macro-unbound-global-exception? _%e113429%_)
                  (macro-unbound-global-exception-code _%e113429%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e113429%_ '())))))
            (if (macro-unbound-global-exception? _%exn113427%_)
                (macro-unbound-global-exception-code _%exn113427%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn113427%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn113423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113423%_))
            (let ((_%e113425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113423%_ 'exception))))
              (if (macro-unbound-global-exception? _%e113425%_)
                  (macro-unbound-global-exception-rte _%e113425%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e113425%_ '())))))
            (if (macro-unbound-global-exception? _%exn113423%_)
                (macro-unbound-global-exception-rte _%exn113423%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn113423%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn113417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113417%_))
            (let ((_%e113420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113417%_ 'exception))))
              (if (macro-unbound-global-exception? _%e113420%_)
                  (macro-unbound-global-exception-variable _%e113420%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e113420%_ '())))))
            (if (macro-unbound-global-exception? _%exn113417%_)
                (macro-unbound-global-exception-variable _%exn113417%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn113417%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn113413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113413%_))
            (let ((_%e113415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113413%_ 'exception))))
              (macro-unbound-key-exception? _%e113415%_))
            (macro-unbound-key-exception? _%exn113413%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn113409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113409%_))
            (let ((_%e113411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113409%_ 'exception))))
              (if (macro-unbound-key-exception? _%e113411%_)
                  (macro-unbound-key-exception-arguments _%e113411%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e113411%_ '())))))
            (if (macro-unbound-key-exception? _%exn113409%_)
                (macro-unbound-key-exception-arguments _%exn113409%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn113409%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn113403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113403%_))
            (let ((_%e113406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113403%_ 'exception))))
              (if (macro-unbound-key-exception? _%e113406%_)
                  (macro-unbound-key-exception-procedure _%e113406%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e113406%_ '())))))
            (if (macro-unbound-key-exception? _%exn113403%_)
                (macro-unbound-key-exception-procedure _%exn113403%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn113403%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn113399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113399%_))
            (let ((_%e113401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113399%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e113401%_))
            (macro-unbound-os-environment-variable-exception? _%exn113399%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn113395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113395%_))
            (let ((_%e113397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113395%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e113397%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e113397%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e113397%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn113395%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn113395%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn113395%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn113389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113389%_))
            (let ((_%e113392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113389%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e113392%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e113392%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e113392%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn113389%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn113389%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn113389%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn113385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113385%_))
            (let ((_%e113387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113385%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e113387%_))
            (macro-unbound-serial-number-exception? _%exn113385%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn113381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113381%_))
            (let ((_%e113383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113381%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e113383%_)
                  (macro-unbound-serial-number-exception-arguments _%e113383%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e113383%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn113381%_)
                (macro-unbound-serial-number-exception-arguments _%exn113381%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn113381%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn113375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113375%_))
            (let ((_%e113378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113375%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e113378%_)
                  (macro-unbound-serial-number-exception-procedure _%e113378%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e113378%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn113375%_)
                (macro-unbound-serial-number-exception-procedure _%exn113375%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn113375%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn113371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113371%_))
            (let ((_%e113373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113371%_ 'exception))))
              (macro-uncaught-exception? _%e113373%_))
            (macro-uncaught-exception? _%exn113371%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn113367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113367%_))
            (let ((_%e113369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113367%_ 'exception))))
              (if (macro-uncaught-exception? _%e113369%_)
                  (macro-uncaught-exception-arguments _%e113369%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e113369%_ '())))))
            (if (macro-uncaught-exception? _%exn113367%_)
                (macro-uncaught-exception-arguments _%exn113367%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn113367%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn113363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113363%_))
            (let ((_%e113365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113363%_ 'exception))))
              (if (macro-uncaught-exception? _%e113365%_)
                  (macro-uncaught-exception-procedure _%e113365%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e113365%_ '())))))
            (if (macro-uncaught-exception? _%exn113363%_)
                (macro-uncaught-exception-procedure _%exn113363%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn113363%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn113357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113357%_))
            (let ((_%e113360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113357%_ 'exception))))
              (if (macro-uncaught-exception? _%e113360%_)
                  (macro-uncaught-exception-reason _%e113360%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e113360%_ '())))))
            (if (macro-uncaught-exception? _%exn113357%_)
                (macro-uncaught-exception-reason _%exn113357%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn113357%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn113353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113353%_))
            (let ((_%e113355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113353%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e113355%_))
            (macro-uninitialized-thread-exception? _%exn113353%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn113349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113349%_))
            (let ((_%e113351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113349%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e113351%_)
                  (macro-uninitialized-thread-exception-arguments _%e113351%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e113351%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn113349%_)
                (macro-uninitialized-thread-exception-arguments _%exn113349%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn113349%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn113343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113343%_))
            (let ((_%e113346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113343%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e113346%_)
                  (macro-uninitialized-thread-exception-procedure _%e113346%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e113346%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn113343%_)
                (macro-uninitialized-thread-exception-procedure _%exn113343%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn113343%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn113339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113339%_))
            (let ((_%e113341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113339%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e113341%_))
            (macro-unknown-keyword-argument-exception? _%exn113339%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn113335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113335%_))
            (let ((_%e113337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113335%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e113337%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e113337%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e113337%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn113335%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn113335%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn113335%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn113329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113329%_))
            (let ((_%e113332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113329%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e113332%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e113332%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e113332%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn113329%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn113329%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn113329%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn113325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113325%_))
            (let ((_%e113327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113325%_ 'exception))))
              (macro-unterminated-process-exception? _%e113327%_))
            (macro-unterminated-process-exception? _%exn113325%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn113321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113321%_))
            (let ((_%e113323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113321%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e113323%_)
                  (macro-unterminated-process-exception-arguments _%e113323%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e113323%_ '())))))
            (if (macro-unterminated-process-exception? _%exn113321%_)
                (macro-unterminated-process-exception-arguments _%exn113321%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn113321%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn113315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113315%_))
            (let ((_%e113318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113315%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e113318%_)
                  (macro-unterminated-process-exception-procedure _%e113318%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e113318%_ '())))))
            (if (macro-unterminated-process-exception? _%exn113315%_)
                (macro-unterminated-process-exception-procedure _%exn113315%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn113315%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn113311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113311%_))
            (let ((_%e113313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113311%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e113313%_))
            (macro-wrong-number-of-arguments-exception? _%exn113311%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn113307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113307%_))
            (let ((_%e113309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113307%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e113309%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e113309%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e113309%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn113307%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn113307%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn113307%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn113301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113301%_))
            (let ((_%e113304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113301%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e113304%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e113304%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e113304%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn113301%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn113301%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn113301%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn113297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113297%_))
            (let ((_%e113299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113297%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e113299%_))
            (macro-wrong-number-of-values-exception? _%exn113297%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn113293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113293%_))
            (let ((_%e113295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113293%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e113295%_)
                  (macro-wrong-number-of-values-exception-code _%e113295%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e113295%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn113293%_)
                (macro-wrong-number-of-values-exception-code _%exn113293%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn113293%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn113289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113289%_))
            (let ((_%e113291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113289%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e113291%_)
                  (macro-wrong-number-of-values-exception-rte _%e113291%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e113291%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn113289%_)
                (macro-wrong-number-of-values-exception-rte _%exn113289%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn113289%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn113283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113283%_))
            (let ((_%e113286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113283%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e113286%_)
                  (macro-wrong-number-of-values-exception-vals _%e113286%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e113286%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn113283%_)
                (macro-wrong-number-of-values-exception-vals _%exn113283%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn113283%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn113277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113277%_))
            (let ((_%e113280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113277%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e113280%_))
            (macro-wrong-processor-c-return-exception? _%exn113277%_))))))
