(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1773012983)
  (begin
    (define Exception::t
      (let ((__tmp142793 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp142793
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args142711%_
        (apply make-instance Exception::t _%$args142711%_)))
    (define StackTrace::t
      (let ((__tmp142794 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp142794
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args142708%_
        (apply make-instance StackTrace::t _%$args142708%_)))
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
      (let ((__tmp142795 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp142795
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args142705%_ (apply make-instance Error::t _%$args142705%_)))
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
      (let ((__tmp142796 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp142796
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args142702%_
        (apply make-instance ContractViolation::t _%$args142702%_)))
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
      (let ((__tmp142797 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp142797
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args142699%_
        (apply make-instance RuntimeException::t _%$args142699%_)))
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
      (lambda (_%exn142694%_ _%continue142695%_)
        (let ((_%exn142697%_ (wrap-runtime-exception _%exn142694%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn142697%_ _%continue142695%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn142690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn142690%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn142690%_ 'continuation))
                '#!void
                (let ((__tmp142798
                       (lambda (_%cont142692%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn142690%_
                            'continuation
                            _%cont142692%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp142798)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn142690%_))))
    (define error
      (lambda (_%message142687%_ . _%irritants142688%_)
        (raise (let ((__obj142790
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj142790
                  _%message142687%_
                  'irritants:
                  _%irritants142688%_)
                 __obj142790))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords142662%_
               _%ctx142657142663%_
               _%contract-expr142658142664%_
               _%value142659142665%_
               _%message142666%_)
        (let* ((_%ctx142668%_
                (if (eq? _%ctx142657142663%_ absent-value)
                    '#f
                    _%ctx142657142663%_))
               (_%contract-expr142670%_
                (if (eq? _%contract-expr142658142664%_ absent-value)
                    '#f
                    _%contract-expr142658142664%_))
               (_%value142672%_
                (if (eq? _%value142659142665%_ absent-value)
                    '#f
                    _%value142659142665%_)))
          (raise (let ((__obj142791
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj142791
                    _%message142666%_
                    'where:
                    _%ctx142668%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr142670%_
                                (cons 'value: (cons _%value142672%_ '())))))
                   __obj142791)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords142677%_ . _%args142678%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords142677%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142677%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142677%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142677%_
                  'value:
                  absent-value))
               _%args142678%_)))
    (define __raise-contract-violation-error
      (lambda _%args142660142684%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args142660142684%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler142631%_ _%thunk142632%_)
        (let* ((_%handler142635%_ _%handler142631%_)
               (_%thunk142643%_ _%thunk142632%_)
               (__tmp142799
                (lambda (_%exn142652%_)
                  (let ((_%exn142654%_ (wrap-runtime-exception _%exn142652%_)))
                    (declare (not safe))
                    (_%handler142635%_ _%exn142654%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp142799 _%thunk142643%_))))
    (define with-exception-handler
      (lambda (_%handler140666%_ _%thunk140667%_)
        (if (procedure? _%handler140666%_)
            (let ((_%handler140671%_ _%handler140666%_))
              (if (procedure? _%thunk140667%_)
                  (let ((_%thunk140681%_ _%thunk140667%_))
                    (__with-exception-handler
                     _%handler140671%_
                     _%thunk140681%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140667%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler140666%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler142573%_ _%thunk142574%_)
        (let* ((_%handler142577%_ _%handler142573%_)
               (_%thunk142585%_ _%thunk142574%_)
               (__tmp142800
                (lambda (_%cont142594%_)
                  (let* ((_%handler142598%_
                          (lambda (_%exn142596%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont142594%_
                               _%handler142577%_
                               _%exn142596%_))))
                         (_%thunk142601%_ _%thunk142585%_)
                         (_%handler142606%_ _%handler142598%_)
                         (_%thunk142621%_ _%thunk142601%_))
                    (__with-exception-handler
                     _%handler142606%_
                     _%thunk142621%_)))))
          (declare (not safe))
          (##continuation-capture __tmp142800))))
    (define with-catch
      (lambda (_%handler140811%_ _%thunk140812%_)
        (if (procedure? _%handler140811%_)
            (let ((_%handler140816%_ _%handler140811%_))
              (if (procedure? _%thunk140812%_)
                  (let ((_%thunk140826%_ _%thunk140812%_))
                    (__with-catch _%handler140816%_ _%thunk140826%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140812%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler140811%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn142560%_)
        (if (or (heap-overflow-exception? _%exn142560%_)
                (stack-overflow-exception? _%exn142560%_))
            _%exn142560%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn142560%_))
                _%exn142560%_
                (if (macro-exception? _%exn142560%_)
                    (let ((_%rte142568%_
                           (let ((__obj142792
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj142792
                                _%exn142560%_
                                '2
                                '#f
                                '#f))
                             __obj142792)))
                      (let ((__tmp142801
                             (lambda (_%cont142570%_)
                               (let ((__tmp142802
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont142570%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte142568%_
                                  'continuation
                                  __tmp142802)))))
                        (declare (not safe))
                        (##continuation-capture __tmp142801))
                      _%rte142568%_)
                    _%exn142560%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj142555%_)
        (let ((_%$e142557%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj142555%_))))
          (if _%$e142557%_ _%$e142557%_ (error-exception? _%obj142555%_)))))
    (define error-message
      (lambda (_%obj142514%_)
        (let ((_%$e142550%_
               (let* ((_%obj142516%_ _%obj142514%_)
                      (_%slot142519%_ 'message)
                      (_%E142522%_ false)
                      (_%slot142527%_ _%slot142519%_)
                      (_%E142540%_ _%E142522%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj142516%_ _%slot142527%_ _%E142540%_))))
          (if _%$e142550%_
              _%$e142550%_
              (if (error-exception? _%obj142514%_)
                  (error-exception-message _%obj142514%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj142509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj142509%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj142509%_ 'irritants))
            (if (error-exception? _%obj142509%_)
                (error-exception-parameters _%obj142509%_)
                '#f))))
    (define error-trace
      (lambda (_%obj142507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj142507%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj142507%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e142468%_ _%port142469%_)
        (let ((_%$e142491%_
               (let* ((_%obj142471%_ _%e142468%_)
                      (_%id142474%_ 'display-exception)
                      (_%id142479%_ _%id142474%_))
                 (declare (not safe))
                 (__method-ref _%obj142471%_ _%id142479%_))))
          (if _%$e142491%_
              ((lambda (_%f142494%_) (_%f142494%_ _%e142468%_ _%port142469%_))
               _%$e142491%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e142468%_ _%port142469%_))))))
    (define display-exception__0
      (lambda (_%e142500%_)
        (let ((_%port142502%_ (current-error-port)))
          (display-exception__% _%e142500%_ _%port142502%_))))
    (define display-exception
      (lambda _g142803_
        (let ((_g142804_ (let () (declare (not safe)) (##length _g142803_))))
          (cond ((let () (declare (not safe)) (##fx= _g142804_ 1))
                 (apply display-exception__0 _g142803_))
                ((let () (declare (not safe)) (##fx= _g142804_ 2))
                 (apply display-exception__% _g142803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g142803_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self142446%_ _%message142447%_ . _%rest142448%_)
        (let* ((_%self142451%_ _%self142446%_)
               (_%message142465%_
                (if (string? _%message142447%_)
                    _%message142447%_
                    (call-with-output-string
                     '""
                     (lambda (_%g142460142462%_)
                       (display _%message142447%_ _%g142460142462%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self142451%_ 'message _%message142465%_))
          (apply class-instance-init! _%self142451%_ _%rest142448%_))))
    (define Error:::init!::specialize
      (lambda (__klass142713 __method-table142714)
        (let ((__message142715
               (let ((__slot142716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142713 'message))))
                 (if __slot142716
                     __slot142716
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self142446%_ _%message142447%_ . _%rest142448%_)
            (let* ((_%self142451%_ _%self142446%_)
                   (_%message142465%_
                    (if (string? _%message142447%_)
                        _%message142447%_
                        (call-with-output-string
                         '""
                         (lambda (_%g142460142462%_)
                           (display _%message142447%_ _%g142460142462%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self142451%_
                 _%message142465%_
                 __message142715
                 '#f
                 '#f))
              (apply class-instance-init! _%self142451%_ _%rest142448%_))))))
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
      (lambda (_%self142151%_ _%port142152%_)
        (let ((_%self142155%_ _%self142151%_))
          (let ((_%tmp-port142165%_ (open-output-string))
                (_%display-error-newline142166%_
                 (> (output-port-column _%port142152%_) '0)))
            (fix-port-width! _%tmp-port142165%_)
            (let ((__tmp142805
                   (lambda ()
                     (if _%display-error-newline142166%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e142169%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142155%_ 'where))))
                       (if _%$e142169%_ (display _%$e142169%_) (display '"?")))
                     (let ((__tmp142806
                            (let ((__tmp142807
                                   (let ((_%obj142173%_ _%self142155%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj142173%_))
                                         (let ((_%obj142178%_ _%obj142173%_))
                                           (declare (not safe))
                                           (__object-class _%obj142178%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj142173%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp142807))))
                       (declare (not safe))
                       (display* '" [" __tmp142806 '"]: "))
                     (let ((__tmp142808
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142155%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp142808))
                     (let ((_%irritants142193%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142155%_ 'irritants))))
                       (if (null? _%irritants142193%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj142195%_)
                                (if (u8vector? _%obj142195%_)
                                    (let ((__tmp142809
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj142195%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp142809))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj142195%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants142193%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont142196142198%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self142155%_
                                   'continuation))))
                           (if _%cont142196142198%_
                               (let ((_%cont142200%_ _%cont142196142198%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont142200%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp142805
               current-output-port
               _%tmp-port142165%_))
            (let ((__tmp142810 (get-output-string _%tmp-port142165%_)))
              (declare (not safe))
              (##write-string __tmp142810 _%port142152%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass142717 __method-table142718)
        (let ((__irritants142719
               (let ((__slot142723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142717 'irritants))))
                 (if __slot142723
                     __slot142723
                     (error '"Unknown slot" 'irritants))))
              (__message142720
               (let ((__slot142724
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142717 'message))))
                 (if __slot142724
                     __slot142724
                     (error '"Unknown slot" 'message))))
              (__where142721
               (let ((__slot142725
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142717 'where))))
                 (if __slot142725
                     __slot142725
                     (error '"Unknown slot" 'where))))
              (__continuation142722
               (let ((__slot142726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142717 'continuation))))
                 (if __slot142726
                     __slot142726
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self142151%_ _%port142152%_)
            (let ((_%self142155%_ _%self142151%_))
              (let ((_%tmp-port142165%_ (open-output-string))
                    (_%display-error-newline142166%_
                     (> (output-port-column _%port142152%_) '0)))
                (fix-port-width! _%tmp-port142165%_)
                (let ((__tmp142811
                       (lambda ()
                         (if _%display-error-newline142166%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e142169%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142155%_
                                   __where142721
                                   '#f
                                   '#f))))
                           (if _%$e142169%_
                               (display _%$e142169%_)
                               (display '"?")))
                         (let ((__tmp142812
                                (let ((__tmp142813
                                       (let ((_%obj142173%_ _%self142155%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj142173%_))
                                             (let ((_%obj142178%_
                                                    _%obj142173%_))
                                               (declare (not safe))
                                               (__object-class _%obj142178%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj142173%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp142813))))
                           (declare (not safe))
                           (display* '" [" __tmp142812 '"]: "))
                         (let ((__tmp142814
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142155%_
                                   __message142720
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp142814))
                         (let ((_%irritants142193%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142155%_
                                   __irritants142719
                                   '#f
                                   '#f))))
                           (if (null? _%irritants142193%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj142195%_)
                                    (if (u8vector? _%obj142195%_)
                                        (let ((__tmp142815
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj142195%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp142815))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj142195%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants142193%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont142196142198%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self142155%_
                                       __continuation142722
                                       '#f
                                       '#f))))
                               (if _%cont142196142198%_
                                   (let ((_%cont142200%_ _%cont142196142198%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont142200%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp142811
                   current-output-port
                   _%tmp-port142165%_))
                (let ((__tmp142816 (get-output-string _%tmp-port142165%_)))
                  (declare (not safe))
                  (##write-string __tmp142816 _%port142152%_))))))))
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
      (lambda (_%self142008%_ _%port142009%_)
        (let* ((_%self142012%_ _%self142008%_)
               (_%tmp-port142022%_ (open-output-string)))
          (fix-port-width! _%tmp-port142022%_)
          (let ((__tmp142817
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self142012%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp142817 _%tmp-port142022%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont142023142025%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self142012%_ 'continuation))))
                (if _%cont142023142025%_
                    (let ((_%cont142027%_ _%cont142023142025%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port142022%_)
                      (newline _%tmp-port142022%_)
                      (display-continuation-backtrace
                       _%cont142027%_
                       _%tmp-port142022%_))
                    '#f))
              '#!void)
          (let ((__tmp142818 (get-output-string _%tmp-port142022%_)))
            (declare (not safe))
            (##write-string __tmp142818 _%port142009%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass142727 __method-table142728)
        (let ((__continuation142729
               (let ((__slot142731
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142727 'continuation))))
                 (if __slot142731
                     __slot142731
                     (error '"Unknown slot" 'continuation))))
              (__exception142730
               (let ((__slot142732
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142727 'exception))))
                 (if __slot142732
                     __slot142732
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self142008%_ _%port142009%_)
            (let* ((_%self142012%_ _%self142008%_)
                   (_%tmp-port142022%_ (open-output-string)))
              (fix-port-width! _%tmp-port142022%_)
              (let ((__tmp142819
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self142012%_
                        __exception142730
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp142819 _%tmp-port142022%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont142023142025%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self142012%_
                            __continuation142729
                            '#f
                            '#f))))
                    (if _%cont142023142025%_
                        (let ((_%cont142027%_ _%cont142023142025%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port142022%_)
                          (newline _%tmp-port142022%_)
                          (display-continuation-backtrace
                           _%cont142027%_
                           _%tmp-port142022%_))
                        '#f))
                  '#!void)
              (let ((__tmp142820 (get-output-string _%tmp-port142022%_)))
                (declare (not safe))
                (##write-string __tmp142820 _%port142009%_)))))))
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
      (lambda (_%port141880%_)
        (if (macro-character-port? _%port141880%_)
            (let ((_%old-width141882%_
                   (macro-character-port-output-width _%port141880%_)))
              (macro-character-port-output-width-set!
               _%port141880%_
               (lambda (_%port141884%_) '256))
              _%old-width141882%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port141877%_ _%old-width141878%_)
        (if (macro-character-port? _%port141877%_)
            (macro-character-port-output-width-set!
             _%port141877%_
             _%old-width141878%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e141875%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e141875%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn141869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141869%_))
            (let ((_%e141872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141869%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e141872%_))
            (macro-abandoned-mutex-exception? _%exn141869%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn141865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141865%_))
            (let ((_%e141867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141865%_ 'exception))))
              (macro-cfun-conversion-exception? _%e141867%_))
            (macro-cfun-conversion-exception? _%exn141865%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn141861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141861%_))
            (let ((_%e141863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141861%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141863%_)
                  (macro-cfun-conversion-exception-arguments _%e141863%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e141863%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141861%_)
                (macro-cfun-conversion-exception-arguments _%exn141861%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn141861%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn141857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141857%_))
            (let ((_%e141859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141857%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141859%_)
                  (macro-cfun-conversion-exception-code _%e141859%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e141859%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141857%_)
                (macro-cfun-conversion-exception-code _%exn141857%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn141857%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn141853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141853%_))
            (let ((_%e141855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141853%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141855%_)
                  (macro-cfun-conversion-exception-message _%e141855%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e141855%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141853%_)
                (macro-cfun-conversion-exception-message _%exn141853%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn141853%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn141847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141847%_))
            (let ((_%e141850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141847%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141850%_)
                  (macro-cfun-conversion-exception-procedure _%e141850%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e141850%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141847%_)
                (macro-cfun-conversion-exception-procedure _%exn141847%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn141847%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn141843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141843%_))
            (let ((_%e141845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141843%_ 'exception))))
              (macro-datum-parsing-exception? _%e141845%_))
            (macro-datum-parsing-exception? _%exn141843%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn141839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141839%_))
            (let ((_%e141841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141839%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141841%_)
                  (macro-datum-parsing-exception-kind _%e141841%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e141841%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141839%_)
                (macro-datum-parsing-exception-kind _%exn141839%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn141839%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn141835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141835%_))
            (let ((_%e141837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141835%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141837%_)
                  (macro-datum-parsing-exception-parameters _%e141837%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e141837%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141835%_)
                (macro-datum-parsing-exception-parameters _%exn141835%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn141835%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn141829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141829%_))
            (let ((_%e141832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141829%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141832%_)
                  (macro-datum-parsing-exception-readenv _%e141832%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e141832%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141829%_)
                (macro-datum-parsing-exception-readenv _%exn141829%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn141829%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn141823%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141823%_))
            (let ((_%e141826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141823%_ 'exception))))
              (macro-deadlock-exception? _%e141826%_))
            (macro-deadlock-exception? _%exn141823%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn141819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141819%_))
            (let ((_%e141821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141819%_ 'exception))))
              (macro-divide-by-zero-exception? _%e141821%_))
            (macro-divide-by-zero-exception? _%exn141819%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn141815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141815%_))
            (let ((_%e141817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141815%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141817%_)
                  (macro-divide-by-zero-exception-arguments _%e141817%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e141817%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141815%_)
                (macro-divide-by-zero-exception-arguments _%exn141815%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn141815%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn141809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141809%_))
            (let ((_%e141812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141809%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141812%_)
                  (macro-divide-by-zero-exception-procedure _%e141812%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e141812%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141809%_)
                (macro-divide-by-zero-exception-procedure _%exn141809%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn141809%_ '())))))))
    (define error-exception?
      (lambda (_%exn141805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141805%_))
            (let ((_%e141807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141805%_ 'exception))))
              (macro-error-exception? _%e141807%_))
            (macro-error-exception? _%exn141805%_))))
    (define error-exception-message
      (lambda (_%exn141801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141801%_))
            (let ((_%e141803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141801%_ 'exception))))
              (if (macro-error-exception? _%e141803%_)
                  (macro-error-exception-message _%e141803%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e141803%_ '())))))
            (if (macro-error-exception? _%exn141801%_)
                (macro-error-exception-message _%exn141801%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn141801%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn141795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141795%_))
            (let ((_%e141798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141795%_ 'exception))))
              (if (macro-error-exception? _%e141798%_)
                  (macro-error-exception-parameters _%e141798%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e141798%_ '())))))
            (if (macro-error-exception? _%exn141795%_)
                (macro-error-exception-parameters _%exn141795%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn141795%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn141791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141791%_))
            (let ((_%e141793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141791%_ 'exception))))
              (macro-expression-parsing-exception? _%e141793%_))
            (macro-expression-parsing-exception? _%exn141791%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn141787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141787%_))
            (let ((_%e141789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141787%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141789%_)
                  (macro-expression-parsing-exception-kind _%e141789%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e141789%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141787%_)
                (macro-expression-parsing-exception-kind _%exn141787%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn141787%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn141783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141783%_))
            (let ((_%e141785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141783%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141785%_)
                  (macro-expression-parsing-exception-parameters _%e141785%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e141785%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141783%_)
                (macro-expression-parsing-exception-parameters _%exn141783%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn141783%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn141777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141777%_))
            (let ((_%e141780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141777%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141780%_)
                  (macro-expression-parsing-exception-source _%e141780%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e141780%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141777%_)
                (macro-expression-parsing-exception-source _%exn141777%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn141777%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn141773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141773%_))
            (let ((_%e141775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141773%_ 'exception))))
              (macro-file-exists-exception? _%e141775%_))
            (macro-file-exists-exception? _%exn141773%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn141769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141769%_))
            (let ((_%e141771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141769%_ 'exception))))
              (if (macro-file-exists-exception? _%e141771%_)
                  (macro-file-exists-exception-arguments _%e141771%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e141771%_ '())))))
            (if (macro-file-exists-exception? _%exn141769%_)
                (macro-file-exists-exception-arguments _%exn141769%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn141769%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn141763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141763%_))
            (let ((_%e141766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141763%_ 'exception))))
              (if (macro-file-exists-exception? _%e141766%_)
                  (macro-file-exists-exception-procedure _%e141766%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e141766%_ '())))))
            (if (macro-file-exists-exception? _%exn141763%_)
                (macro-file-exists-exception-procedure _%exn141763%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn141763%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn141759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141759%_))
            (let ((_%e141761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141759%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e141761%_))
            (macro-fixnum-overflow-exception? _%exn141759%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn141755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141755%_))
            (let ((_%e141757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141755%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141757%_)
                  (macro-fixnum-overflow-exception-arguments _%e141757%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e141757%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141755%_)
                (macro-fixnum-overflow-exception-arguments _%exn141755%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn141755%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn141749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141749%_))
            (let ((_%e141752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141749%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141752%_)
                  (macro-fixnum-overflow-exception-procedure _%e141752%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e141752%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141749%_)
                (macro-fixnum-overflow-exception-procedure _%exn141749%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn141749%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn141743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141743%_))
            (let ((_%e141746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141743%_ 'exception))))
              (macro-heap-overflow-exception? _%e141746%_))
            (macro-heap-overflow-exception? _%exn141743%_))))
    (define inactive-thread-exception?
      (lambda (_%exn141739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141739%_))
            (let ((_%e141741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141739%_ 'exception))))
              (macro-inactive-thread-exception? _%e141741%_))
            (macro-inactive-thread-exception? _%exn141739%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn141735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141735%_))
            (let ((_%e141737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141735%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141737%_)
                  (macro-inactive-thread-exception-arguments _%e141737%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e141737%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141735%_)
                (macro-inactive-thread-exception-arguments _%exn141735%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn141735%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn141729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141729%_))
            (let ((_%e141732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141729%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141732%_)
                  (macro-inactive-thread-exception-procedure _%e141732%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e141732%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141729%_)
                (macro-inactive-thread-exception-procedure _%exn141729%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn141729%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn141725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141725%_))
            (let ((_%e141727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141725%_ 'exception))))
              (macro-initialized-thread-exception? _%e141727%_))
            (macro-initialized-thread-exception? _%exn141725%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn141721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141721%_))
            (let ((_%e141723%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141721%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141723%_)
                  (macro-initialized-thread-exception-arguments _%e141723%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e141723%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141721%_)
                (macro-initialized-thread-exception-arguments _%exn141721%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn141721%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn141715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141715%_))
            (let ((_%e141718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141715%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141718%_)
                  (macro-initialized-thread-exception-procedure _%e141718%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e141718%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141715%_)
                (macro-initialized-thread-exception-procedure _%exn141715%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn141715%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn141711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141711%_))
            (let ((_%e141713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141711%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e141713%_))
            (macro-invalid-hash-number-exception? _%exn141711%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn141707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141707%_))
            (let ((_%e141709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141707%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141709%_)
                  (macro-invalid-hash-number-exception-arguments _%e141709%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e141709%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141707%_)
                (macro-invalid-hash-number-exception-arguments _%exn141707%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn141707%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn141701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141701%_))
            (let ((_%e141704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141701%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141704%_)
                  (macro-invalid-hash-number-exception-procedure _%e141704%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e141704%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141701%_)
                (macro-invalid-hash-number-exception-procedure _%exn141701%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn141701%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn141697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141697%_))
            (let ((_%e141699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141697%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e141699%_))
            (macro-invalid-utf8-encoding-exception? _%exn141697%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn141693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141693%_))
            (let ((_%e141695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141693%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141695%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e141695%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e141695%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141693%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn141693%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn141693%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn141687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141687%_))
            (let ((_%e141690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141687%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141690%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e141690%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e141690%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141687%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn141687%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn141687%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn141683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141683%_))
            (let ((_%e141685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141683%_ 'exception))))
              (macro-join-timeout-exception? _%e141685%_))
            (macro-join-timeout-exception? _%exn141683%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn141679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141679%_))
            (let ((_%e141681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141679%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141681%_)
                  (macro-join-timeout-exception-arguments _%e141681%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e141681%_ '())))))
            (if (macro-join-timeout-exception? _%exn141679%_)
                (macro-join-timeout-exception-arguments _%exn141679%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn141679%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn141673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141673%_))
            (let ((_%e141676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141673%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141676%_)
                  (macro-join-timeout-exception-procedure _%e141676%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e141676%_ '())))))
            (if (macro-join-timeout-exception? _%exn141673%_)
                (macro-join-timeout-exception-procedure _%exn141673%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn141673%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn141669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141669%_))
            (let ((_%e141671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141669%_ 'exception))))
              (macro-keyword-expected-exception? _%e141671%_))
            (macro-keyword-expected-exception? _%exn141669%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn141665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141665%_))
            (let ((_%e141667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141665%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141667%_)
                  (macro-keyword-expected-exception-arguments _%e141667%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e141667%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141665%_)
                (macro-keyword-expected-exception-arguments _%exn141665%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn141665%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn141659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141659%_))
            (let ((_%e141662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141659%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141662%_)
                  (macro-keyword-expected-exception-procedure _%e141662%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e141662%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141659%_)
                (macro-keyword-expected-exception-procedure _%exn141659%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn141659%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn141655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141655%_))
            (let ((_%e141657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141655%_ 'exception))))
              (macro-length-mismatch-exception? _%e141657%_))
            (macro-length-mismatch-exception? _%exn141655%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn141651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141651%_))
            (let ((_%e141653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141651%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141653%_)
                  (macro-length-mismatch-exception-arg-id _%e141653%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e141653%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141651%_)
                (macro-length-mismatch-exception-arg-id _%exn141651%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn141651%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn141647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141647%_))
            (let ((_%e141649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141647%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141649%_)
                  (macro-length-mismatch-exception-arguments _%e141649%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e141649%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141647%_)
                (macro-length-mismatch-exception-arguments _%exn141647%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn141647%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn141641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141641%_))
            (let ((_%e141644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141641%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141644%_)
                  (macro-length-mismatch-exception-procedure _%e141644%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e141644%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141641%_)
                (macro-length-mismatch-exception-procedure _%exn141641%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn141641%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn141637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141637%_))
            (let ((_%e141639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141637%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e141639%_))
            (macro-mailbox-receive-timeout-exception? _%exn141637%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn141633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141633%_))
            (let ((_%e141635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141633%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141635%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e141635%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e141635%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141633%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn141633%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn141633%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn141627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141627%_))
            (let ((_%e141630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141627%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141630%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e141630%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e141630%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141627%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn141627%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn141627%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn141623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141623%_))
            (let ((_%e141625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141623%_ 'exception))))
              (macro-module-not-found-exception? _%e141625%_))
            (macro-module-not-found-exception? _%exn141623%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn141619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141619%_))
            (let ((_%e141621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141619%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141621%_)
                  (macro-module-not-found-exception-arguments _%e141621%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e141621%_ '())))))
            (if (macro-module-not-found-exception? _%exn141619%_)
                (macro-module-not-found-exception-arguments _%exn141619%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn141619%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn141613%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141613%_))
            (let ((_%e141616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141613%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141616%_)
                  (macro-module-not-found-exception-procedure _%e141616%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e141616%_ '())))))
            (if (macro-module-not-found-exception? _%exn141613%_)
                (macro-module-not-found-exception-procedure _%exn141613%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn141613%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn141607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141607%_))
            (let ((_%e141610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141607%_ 'exception))))
              (macro-multiple-c-return-exception? _%e141610%_))
            (macro-multiple-c-return-exception? _%exn141607%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn141603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141603%_))
            (let ((_%e141605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141603%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e141605%_))
            (macro-no-such-file-or-directory-exception? _%exn141603%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn141599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141599%_))
            (let ((_%e141601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141599%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141601%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e141601%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e141601%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141599%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn141599%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn141599%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn141593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141593%_))
            (let ((_%e141596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141593%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141596%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e141596%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e141596%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141593%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn141593%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn141593%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn141589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141589%_))
            (let ((_%e141591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141589%_ 'exception))))
              (macro-noncontinuable-exception? _%e141591%_))
            (macro-noncontinuable-exception? _%exn141589%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn141583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141583%_))
            (let ((_%e141586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141583%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e141586%_)
                  (macro-noncontinuable-exception-reason _%e141586%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e141586%_ '())))))
            (if (macro-noncontinuable-exception? _%exn141583%_)
                (macro-noncontinuable-exception-reason _%exn141583%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn141583%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn141579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141579%_))
            (let ((_%e141581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141579%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e141581%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn141579%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn141575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141575%_))
            (let ((_%e141577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141575%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141577%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e141577%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e141577%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141575%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn141575%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn141575%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn141569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141569%_))
            (let ((_%e141572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141569%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141572%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e141572%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e141572%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141569%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn141569%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn141569%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn141565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141565%_))
            (let ((_%e141567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141565%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e141567%_))
            (macro-nonprocedure-operator-exception? _%exn141565%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn141561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141561%_))
            (let ((_%e141563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141561%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141563%_)
                  (macro-nonprocedure-operator-exception-arguments _%e141563%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e141563%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141561%_)
                (macro-nonprocedure-operator-exception-arguments _%exn141561%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn141561%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn141557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141557%_))
            (let ((_%e141559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141557%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141559%_)
                  (macro-nonprocedure-operator-exception-code _%e141559%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e141559%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141557%_)
                (macro-nonprocedure-operator-exception-code _%exn141557%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn141557%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn141553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141553%_))
            (let ((_%e141555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141553%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141555%_)
                  (macro-nonprocedure-operator-exception-operator _%e141555%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e141555%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141553%_)
                (macro-nonprocedure-operator-exception-operator _%exn141553%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn141553%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn141547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141547%_))
            (let ((_%e141550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141547%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141550%_)
                  (macro-nonprocedure-operator-exception-rte _%e141550%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e141550%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141547%_)
                (macro-nonprocedure-operator-exception-rte _%exn141547%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn141547%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn141543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141543%_))
            (let ((_%e141545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141543%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e141545%_))
            (macro-not-in-compilation-context-exception? _%exn141543%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn141539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141539%_))
            (let ((_%e141541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141539%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e141541%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e141541%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e141541%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn141539%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn141539%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn141539%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn141533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141533%_))
            (let ((_%e141536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141533%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e141536%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e141536%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e141536%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn141533%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn141533%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn141533%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn141529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141529%_))
            (let ((_%e141531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141529%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e141531%_))
            (macro-number-of-arguments-limit-exception? _%exn141529%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn141525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141525%_))
            (let ((_%e141527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141525%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e141527%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e141527%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e141527%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn141525%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn141525%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn141525%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn141519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141519%_))
            (let ((_%e141522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141519%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e141522%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e141522%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e141522%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn141519%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn141519%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn141519%_ '())))))))
    (define os-exception?
      (lambda (_%exn141515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141515%_))
            (let ((_%e141517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141515%_ 'exception))))
              (macro-os-exception? _%e141517%_))
            (macro-os-exception? _%exn141515%_))))
    (define os-exception-arguments
      (lambda (_%exn141511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141511%_))
            (let ((_%e141513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141511%_ 'exception))))
              (if (macro-os-exception? _%e141513%_)
                  (macro-os-exception-arguments _%e141513%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e141513%_ '())))))
            (if (macro-os-exception? _%exn141511%_)
                (macro-os-exception-arguments _%exn141511%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn141511%_ '())))))))
    (define os-exception-code
      (lambda (_%exn141507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141507%_))
            (let ((_%e141509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141507%_ 'exception))))
              (if (macro-os-exception? _%e141509%_)
                  (macro-os-exception-code _%e141509%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e141509%_ '())))))
            (if (macro-os-exception? _%exn141507%_)
                (macro-os-exception-code _%exn141507%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn141507%_ '())))))))
    (define os-exception-message
      (lambda (_%exn141503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141503%_))
            (let ((_%e141505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141503%_ 'exception))))
              (if (macro-os-exception? _%e141505%_)
                  (macro-os-exception-message _%e141505%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e141505%_ '())))))
            (if (macro-os-exception? _%exn141503%_)
                (macro-os-exception-message _%exn141503%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn141503%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn141497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141497%_))
            (let ((_%e141500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141497%_ 'exception))))
              (if (macro-os-exception? _%e141500%_)
                  (macro-os-exception-procedure _%e141500%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e141500%_ '())))))
            (if (macro-os-exception? _%exn141497%_)
                (macro-os-exception-procedure _%exn141497%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn141497%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn141493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141493%_))
            (let ((_%e141495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141493%_ 'exception))))
              (macro-permission-denied-exception? _%e141495%_))
            (macro-permission-denied-exception? _%exn141493%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn141489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141489%_))
            (let ((_%e141491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141489%_ 'exception))))
              (if (macro-permission-denied-exception? _%e141491%_)
                  (macro-permission-denied-exception-arguments _%e141491%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e141491%_ '())))))
            (if (macro-permission-denied-exception? _%exn141489%_)
                (macro-permission-denied-exception-arguments _%exn141489%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn141489%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn141483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141483%_))
            (let ((_%e141486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141483%_ 'exception))))
              (if (macro-permission-denied-exception? _%e141486%_)
                  (macro-permission-denied-exception-procedure _%e141486%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e141486%_ '())))))
            (if (macro-permission-denied-exception? _%exn141483%_)
                (macro-permission-denied-exception-procedure _%exn141483%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn141483%_ '())))))))
    (define range-exception?
      (lambda (_%exn141479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141479%_))
            (let ((_%e141481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141479%_ 'exception))))
              (macro-range-exception? _%e141481%_))
            (macro-range-exception? _%exn141479%_))))
    (define range-exception-arg-id
      (lambda (_%exn141475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141475%_))
            (let ((_%e141477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141475%_ 'exception))))
              (if (macro-range-exception? _%e141477%_)
                  (macro-range-exception-arg-id _%e141477%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e141477%_ '())))))
            (if (macro-range-exception? _%exn141475%_)
                (macro-range-exception-arg-id _%exn141475%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn141475%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn141471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141471%_))
            (let ((_%e141473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141471%_ 'exception))))
              (if (macro-range-exception? _%e141473%_)
                  (macro-range-exception-arguments _%e141473%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e141473%_ '())))))
            (if (macro-range-exception? _%exn141471%_)
                (macro-range-exception-arguments _%exn141471%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn141471%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn141465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141465%_))
            (let ((_%e141468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141465%_ 'exception))))
              (if (macro-range-exception? _%e141468%_)
                  (macro-range-exception-procedure _%e141468%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e141468%_ '())))))
            (if (macro-range-exception? _%exn141465%_)
                (macro-range-exception-procedure _%exn141465%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn141465%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn141461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141461%_))
            (let ((_%e141463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141461%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e141463%_))
            (macro-rpc-remote-error-exception? _%exn141461%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn141457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141457%_))
            (let ((_%e141459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141457%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141459%_)
                  (macro-rpc-remote-error-exception-arguments _%e141459%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e141459%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141457%_)
                (macro-rpc-remote-error-exception-arguments _%exn141457%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn141457%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn141453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141453%_))
            (let ((_%e141455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141453%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141455%_)
                  (macro-rpc-remote-error-exception-message _%e141455%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e141455%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141453%_)
                (macro-rpc-remote-error-exception-message _%exn141453%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn141453%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn141447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141447%_))
            (let ((_%e141450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141447%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141450%_)
                  (macro-rpc-remote-error-exception-procedure _%e141450%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e141450%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141447%_)
                (macro-rpc-remote-error-exception-procedure _%exn141447%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn141447%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn141443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141443%_))
            (let ((_%e141445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141443%_ 'exception))))
              (macro-scheduler-exception? _%e141445%_))
            (macro-scheduler-exception? _%exn141443%_))))
    (define scheduler-exception-reason
      (lambda (_%exn141437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141437%_))
            (let ((_%e141440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141437%_ 'exception))))
              (if (macro-scheduler-exception? _%e141440%_)
                  (macro-scheduler-exception-reason _%e141440%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e141440%_ '())))))
            (if (macro-scheduler-exception? _%exn141437%_)
                (macro-scheduler-exception-reason _%exn141437%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn141437%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn141433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141433%_))
            (let ((_%e141435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141433%_ 'exception))))
              (macro-sfun-conversion-exception? _%e141435%_))
            (macro-sfun-conversion-exception? _%exn141433%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn141429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141429%_))
            (let ((_%e141431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141429%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141431%_)
                  (macro-sfun-conversion-exception-arguments _%e141431%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e141431%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141429%_)
                (macro-sfun-conversion-exception-arguments _%exn141429%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn141429%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn141425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141425%_))
            (let ((_%e141427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141425%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141427%_)
                  (macro-sfun-conversion-exception-code _%e141427%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e141427%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141425%_)
                (macro-sfun-conversion-exception-code _%exn141425%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn141425%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn141421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141421%_))
            (let ((_%e141423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141421%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141423%_)
                  (macro-sfun-conversion-exception-message _%e141423%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e141423%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141421%_)
                (macro-sfun-conversion-exception-message _%exn141421%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn141421%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn141415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141415%_))
            (let ((_%e141418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141415%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141418%_)
                  (macro-sfun-conversion-exception-procedure _%e141418%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e141418%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141415%_)
                (macro-sfun-conversion-exception-procedure _%exn141415%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn141415%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn141409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141409%_))
            (let ((_%e141412%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141409%_ 'exception))))
              (macro-stack-overflow-exception? _%e141412%_))
            (macro-stack-overflow-exception? _%exn141409%_))))
    (define started-thread-exception?
      (lambda (_%exn141405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141405%_))
            (let ((_%e141407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141405%_ 'exception))))
              (macro-started-thread-exception? _%e141407%_))
            (macro-started-thread-exception? _%exn141405%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn141401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141401%_))
            (let ((_%e141403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141401%_ 'exception))))
              (if (macro-started-thread-exception? _%e141403%_)
                  (macro-started-thread-exception-arguments _%e141403%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e141403%_ '())))))
            (if (macro-started-thread-exception? _%exn141401%_)
                (macro-started-thread-exception-arguments _%exn141401%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn141401%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn141395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141395%_))
            (let ((_%e141398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141395%_ 'exception))))
              (if (macro-started-thread-exception? _%e141398%_)
                  (macro-started-thread-exception-procedure _%e141398%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e141398%_ '())))))
            (if (macro-started-thread-exception? _%exn141395%_)
                (macro-started-thread-exception-procedure _%exn141395%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn141395%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn141391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141391%_))
            (let ((_%e141393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141391%_ 'exception))))
              (macro-terminated-thread-exception? _%e141393%_))
            (macro-terminated-thread-exception? _%exn141391%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn141387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141387%_))
            (let ((_%e141389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141387%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e141389%_)
                  (macro-terminated-thread-exception-arguments _%e141389%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e141389%_ '())))))
            (if (macro-terminated-thread-exception? _%exn141387%_)
                (macro-terminated-thread-exception-arguments _%exn141387%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn141387%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn141381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141381%_))
            (let ((_%e141384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141381%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e141384%_)
                  (macro-terminated-thread-exception-procedure _%e141384%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e141384%_ '())))))
            (if (macro-terminated-thread-exception? _%exn141381%_)
                (macro-terminated-thread-exception-procedure _%exn141381%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn141381%_ '())))))))
    (define type-exception?
      (lambda (_%exn141377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141377%_))
            (let ((_%e141379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141377%_ 'exception))))
              (macro-type-exception? _%e141379%_))
            (macro-type-exception? _%exn141377%_))))
    (define type-exception-arg-id
      (lambda (_%exn141373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141373%_))
            (let ((_%e141375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141373%_ 'exception))))
              (if (macro-type-exception? _%e141375%_)
                  (macro-type-exception-arg-id _%e141375%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e141375%_ '())))))
            (if (macro-type-exception? _%exn141373%_)
                (macro-type-exception-arg-id _%exn141373%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn141373%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn141369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141369%_))
            (let ((_%e141371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141369%_ 'exception))))
              (if (macro-type-exception? _%e141371%_)
                  (macro-type-exception-arguments _%e141371%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e141371%_ '())))))
            (if (macro-type-exception? _%exn141369%_)
                (macro-type-exception-arguments _%exn141369%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn141369%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn141365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141365%_))
            (let ((_%e141367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141365%_ 'exception))))
              (if (macro-type-exception? _%e141367%_)
                  (macro-type-exception-procedure _%e141367%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e141367%_ '())))))
            (if (macro-type-exception? _%exn141365%_)
                (macro-type-exception-procedure _%exn141365%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn141365%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn141359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141359%_))
            (let ((_%e141362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141359%_ 'exception))))
              (if (macro-type-exception? _%e141362%_)
                  (macro-type-exception-type-id _%e141362%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e141362%_ '())))))
            (if (macro-type-exception? _%exn141359%_)
                (macro-type-exception-type-id _%exn141359%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn141359%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn141355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141355%_))
            (let ((_%e141357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141355%_ 'exception))))
              (macro-unbound-global-exception? _%e141357%_))
            (macro-unbound-global-exception? _%exn141355%_))))
    (define unbound-global-exception-code
      (lambda (_%exn141351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141351%_))
            (let ((_%e141353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141351%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141353%_)
                  (macro-unbound-global-exception-code _%e141353%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e141353%_ '())))))
            (if (macro-unbound-global-exception? _%exn141351%_)
                (macro-unbound-global-exception-code _%exn141351%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn141351%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn141347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141347%_))
            (let ((_%e141349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141347%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141349%_)
                  (macro-unbound-global-exception-rte _%e141349%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e141349%_ '())))))
            (if (macro-unbound-global-exception? _%exn141347%_)
                (macro-unbound-global-exception-rte _%exn141347%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn141347%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn141341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141341%_))
            (let ((_%e141344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141341%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141344%_)
                  (macro-unbound-global-exception-variable _%e141344%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e141344%_ '())))))
            (if (macro-unbound-global-exception? _%exn141341%_)
                (macro-unbound-global-exception-variable _%exn141341%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn141341%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn141337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141337%_))
            (let ((_%e141339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141337%_ 'exception))))
              (macro-unbound-key-exception? _%e141339%_))
            (macro-unbound-key-exception? _%exn141337%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn141333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141333%_))
            (let ((_%e141335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141333%_ 'exception))))
              (if (macro-unbound-key-exception? _%e141335%_)
                  (macro-unbound-key-exception-arguments _%e141335%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e141335%_ '())))))
            (if (macro-unbound-key-exception? _%exn141333%_)
                (macro-unbound-key-exception-arguments _%exn141333%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn141333%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn141327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141327%_))
            (let ((_%e141330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141327%_ 'exception))))
              (if (macro-unbound-key-exception? _%e141330%_)
                  (macro-unbound-key-exception-procedure _%e141330%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e141330%_ '())))))
            (if (macro-unbound-key-exception? _%exn141327%_)
                (macro-unbound-key-exception-procedure _%exn141327%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn141327%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn141323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141323%_))
            (let ((_%e141325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141323%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e141325%_))
            (macro-unbound-os-environment-variable-exception? _%exn141323%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn141319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141319%_))
            (let ((_%e141321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141319%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e141321%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e141321%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e141321%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn141319%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn141319%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn141319%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn141313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141313%_))
            (let ((_%e141316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141313%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e141316%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e141316%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e141316%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn141313%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn141313%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn141313%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn141309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141309%_))
            (let ((_%e141311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141309%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e141311%_))
            (macro-unbound-serial-number-exception? _%exn141309%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn141305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141305%_))
            (let ((_%e141307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141305%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141307%_)
                  (macro-unbound-serial-number-exception-arguments _%e141307%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e141307%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141305%_)
                (macro-unbound-serial-number-exception-arguments _%exn141305%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn141305%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn141299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141299%_))
            (let ((_%e141302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141299%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141302%_)
                  (macro-unbound-serial-number-exception-procedure _%e141302%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e141302%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141299%_)
                (macro-unbound-serial-number-exception-procedure _%exn141299%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn141299%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn141295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141295%_))
            (let ((_%e141297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141295%_ 'exception))))
              (macro-uncaught-exception? _%e141297%_))
            (macro-uncaught-exception? _%exn141295%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn141291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141291%_))
            (let ((_%e141293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141291%_ 'exception))))
              (if (macro-uncaught-exception? _%e141293%_)
                  (macro-uncaught-exception-arguments _%e141293%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e141293%_ '())))))
            (if (macro-uncaught-exception? _%exn141291%_)
                (macro-uncaught-exception-arguments _%exn141291%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn141291%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn141287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141287%_))
            (let ((_%e141289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141287%_ 'exception))))
              (if (macro-uncaught-exception? _%e141289%_)
                  (macro-uncaught-exception-procedure _%e141289%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e141289%_ '())))))
            (if (macro-uncaught-exception? _%exn141287%_)
                (macro-uncaught-exception-procedure _%exn141287%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn141287%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn141281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141281%_))
            (let ((_%e141284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141281%_ 'exception))))
              (if (macro-uncaught-exception? _%e141284%_)
                  (macro-uncaught-exception-reason _%e141284%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e141284%_ '())))))
            (if (macro-uncaught-exception? _%exn141281%_)
                (macro-uncaught-exception-reason _%exn141281%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn141281%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn141277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141277%_))
            (let ((_%e141279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141277%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e141279%_))
            (macro-uninitialized-thread-exception? _%exn141277%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn141273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141273%_))
            (let ((_%e141275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141273%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141275%_)
                  (macro-uninitialized-thread-exception-arguments _%e141275%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e141275%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141273%_)
                (macro-uninitialized-thread-exception-arguments _%exn141273%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn141273%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn141267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141267%_))
            (let ((_%e141270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141267%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141270%_)
                  (macro-uninitialized-thread-exception-procedure _%e141270%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e141270%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141267%_)
                (macro-uninitialized-thread-exception-procedure _%exn141267%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn141267%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn141263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141263%_))
            (let ((_%e141265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141263%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e141265%_))
            (macro-unknown-keyword-argument-exception? _%exn141263%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn141259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141259%_))
            (let ((_%e141261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141259%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141261%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e141261%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e141261%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141259%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn141259%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn141259%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn141253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141253%_))
            (let ((_%e141256%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141253%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141256%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e141256%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e141256%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141253%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn141253%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn141253%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn141249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141249%_))
            (let ((_%e141251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141249%_ 'exception))))
              (macro-unterminated-process-exception? _%e141251%_))
            (macro-unterminated-process-exception? _%exn141249%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn141245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141245%_))
            (let ((_%e141247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141245%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141247%_)
                  (macro-unterminated-process-exception-arguments _%e141247%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e141247%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141245%_)
                (macro-unterminated-process-exception-arguments _%exn141245%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn141245%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn141239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141239%_))
            (let ((_%e141242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141239%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141242%_)
                  (macro-unterminated-process-exception-procedure _%e141242%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e141242%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141239%_)
                (macro-unterminated-process-exception-procedure _%exn141239%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn141239%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn141235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141235%_))
            (let ((_%e141237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141235%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e141237%_))
            (macro-wrong-number-of-arguments-exception? _%exn141235%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn141231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141231%_))
            (let ((_%e141233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141231%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141233%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e141233%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e141233%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141231%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn141231%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn141231%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn141225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141225%_))
            (let ((_%e141228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141225%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141228%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e141228%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e141228%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141225%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn141225%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn141225%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn141221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141221%_))
            (let ((_%e141223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141221%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e141223%_))
            (macro-wrong-number-of-values-exception? _%exn141221%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn141217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141217%_))
            (let ((_%e141219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141217%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141219%_)
                  (macro-wrong-number-of-values-exception-code _%e141219%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e141219%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141217%_)
                (macro-wrong-number-of-values-exception-code _%exn141217%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn141217%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn141213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141213%_))
            (let ((_%e141215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141213%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141215%_)
                  (macro-wrong-number-of-values-exception-rte _%e141215%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e141215%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141213%_)
                (macro-wrong-number-of-values-exception-rte _%exn141213%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn141213%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn141207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141207%_))
            (let ((_%e141210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141207%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141210%_)
                  (macro-wrong-number-of-values-exception-vals _%e141210%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e141210%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141207%_)
                (macro-wrong-number-of-values-exception-vals _%exn141207%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn141207%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn141201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141201%_))
            (let ((_%e141204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141201%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e141204%_))
            (macro-wrong-processor-c-return-exception? _%exn141201%_))))))
