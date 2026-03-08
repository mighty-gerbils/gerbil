(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1773009263)
  (begin
    (define Exception::t
      (let ((__tmp142783 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp142783
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args142701%_
        (apply make-instance Exception::t _%$args142701%_)))
    (define StackTrace::t
      (let ((__tmp142784 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp142784
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args142698%_
        (apply make-instance StackTrace::t _%$args142698%_)))
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
      (let ((__tmp142785 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp142785
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args142695%_ (apply make-instance Error::t _%$args142695%_)))
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
      (let ((__tmp142786 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp142786
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args142692%_
        (apply make-instance ContractViolation::t _%$args142692%_)))
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
      (let ((__tmp142787 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp142787
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args142689%_
        (apply make-instance RuntimeException::t _%$args142689%_)))
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
      (lambda (_%exn142684%_ _%continue142685%_)
        (let ((_%exn142687%_ (wrap-runtime-exception _%exn142684%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn142687%_ _%continue142685%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn142680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn142680%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn142680%_ 'continuation))
                '#!void
                (let ((__tmp142788
                       (lambda (_%cont142682%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn142680%_
                            'continuation
                            _%cont142682%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp142788)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn142680%_))))
    (define error
      (lambda (_%message142677%_ . _%irritants142678%_)
        (raise (let ((__obj142780
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj142780
                  _%message142677%_
                  'irritants:
                  _%irritants142678%_)
                 __obj142780))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords142652%_
               _%ctx142647142653%_
               _%contract-expr142648142654%_
               _%value142649142655%_
               _%message142656%_)
        (let* ((_%ctx142658%_
                (if (eq? _%ctx142647142653%_ absent-value)
                    '#f
                    _%ctx142647142653%_))
               (_%contract-expr142660%_
                (if (eq? _%contract-expr142648142654%_ absent-value)
                    '#f
                    _%contract-expr142648142654%_))
               (_%value142662%_
                (if (eq? _%value142649142655%_ absent-value)
                    '#f
                    _%value142649142655%_)))
          (raise (let ((__obj142781
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj142781
                    _%message142656%_
                    'where:
                    _%ctx142658%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr142660%_
                                (cons 'value: (cons _%value142662%_ '())))))
                   __obj142781)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords142667%_ . _%args142668%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords142667%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142667%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142667%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142667%_
                  'value:
                  absent-value))
               _%args142668%_)))
    (define __raise-contract-violation-error
      (lambda _%args142650142674%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args142650142674%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler142621%_ _%thunk142622%_)
        (let* ((_%handler142625%_ _%handler142621%_)
               (_%thunk142633%_ _%thunk142622%_)
               (__tmp142789
                (lambda (_%exn142642%_)
                  (let ((_%exn142644%_ (wrap-runtime-exception _%exn142642%_)))
                    (declare (not safe))
                    (_%handler142625%_ _%exn142644%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp142789 _%thunk142633%_))))
    (define with-exception-handler
      (lambda (_%handler140656%_ _%thunk140657%_)
        (if (procedure? _%handler140656%_)
            (let ((_%handler140661%_ _%handler140656%_))
              (if (procedure? _%thunk140657%_)
                  (let ((_%thunk140671%_ _%thunk140657%_))
                    (__with-exception-handler
                     _%handler140661%_
                     _%thunk140671%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140657%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler140656%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler142563%_ _%thunk142564%_)
        (let* ((_%handler142567%_ _%handler142563%_)
               (_%thunk142575%_ _%thunk142564%_)
               (__tmp142790
                (lambda (_%cont142584%_)
                  (let* ((_%handler142588%_
                          (lambda (_%exn142586%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont142584%_
                               _%handler142567%_
                               _%exn142586%_))))
                         (_%thunk142591%_ _%thunk142575%_)
                         (_%handler142596%_ _%handler142588%_)
                         (_%thunk142611%_ _%thunk142591%_))
                    (__with-exception-handler
                     _%handler142596%_
                     _%thunk142611%_)))))
          (declare (not safe))
          (##continuation-capture __tmp142790))))
    (define with-catch
      (lambda (_%handler140801%_ _%thunk140802%_)
        (if (procedure? _%handler140801%_)
            (let ((_%handler140806%_ _%handler140801%_))
              (if (procedure? _%thunk140802%_)
                  (let ((_%thunk140816%_ _%thunk140802%_))
                    (__with-catch _%handler140806%_ _%thunk140816%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140802%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler140801%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn142550%_)
        (if (or (heap-overflow-exception? _%exn142550%_)
                (stack-overflow-exception? _%exn142550%_))
            _%exn142550%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn142550%_))
                _%exn142550%_
                (if (macro-exception? _%exn142550%_)
                    (let ((_%rte142558%_
                           (let ((__obj142782
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj142782
                                _%exn142550%_
                                '2
                                '#f
                                '#f))
                             __obj142782)))
                      (let ((__tmp142791
                             (lambda (_%cont142560%_)
                               (let ((__tmp142792
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont142560%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte142558%_
                                  'continuation
                                  __tmp142792)))))
                        (declare (not safe))
                        (##continuation-capture __tmp142791))
                      _%rte142558%_)
                    _%exn142550%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj142545%_)
        (let ((_%$e142547%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj142545%_))))
          (if _%$e142547%_ _%$e142547%_ (error-exception? _%obj142545%_)))))
    (define error-message
      (lambda (_%obj142504%_)
        (let ((_%$e142540%_
               (let* ((_%obj142506%_ _%obj142504%_)
                      (_%slot142509%_ 'message)
                      (_%E142512%_ false)
                      (_%slot142517%_ _%slot142509%_)
                      (_%E142530%_ _%E142512%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj142506%_ _%slot142517%_ _%E142530%_))))
          (if _%$e142540%_
              _%$e142540%_
              (if (error-exception? _%obj142504%_)
                  (error-exception-message _%obj142504%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj142499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj142499%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj142499%_ 'irritants))
            (if (error-exception? _%obj142499%_)
                (error-exception-parameters _%obj142499%_)
                '#f))))
    (define error-trace
      (lambda (_%obj142497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj142497%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj142497%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e142458%_ _%port142459%_)
        (let ((_%$e142481%_
               (let* ((_%obj142461%_ _%e142458%_)
                      (_%id142464%_ 'display-exception)
                      (_%id142469%_ _%id142464%_))
                 (declare (not safe))
                 (__method-ref _%obj142461%_ _%id142469%_))))
          (if _%$e142481%_
              ((lambda (_%f142484%_) (_%f142484%_ _%e142458%_ _%port142459%_))
               _%$e142481%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e142458%_ _%port142459%_))))))
    (define display-exception__0
      (lambda (_%e142490%_)
        (let ((_%port142492%_ (current-error-port)))
          (display-exception__% _%e142490%_ _%port142492%_))))
    (define display-exception
      (lambda _g142793_
        (let ((_g142794_ (let () (declare (not safe)) (##length _g142793_))))
          (cond ((let () (declare (not safe)) (##fx= _g142794_ 1))
                 (apply display-exception__0 _g142793_))
                ((let () (declare (not safe)) (##fx= _g142794_ 2))
                 (apply display-exception__% _g142793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g142793_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self142436%_ _%message142437%_ . _%rest142438%_)
        (let* ((_%self142441%_ _%self142436%_)
               (_%message142455%_
                (if (string? _%message142437%_)
                    _%message142437%_
                    (call-with-output-string
                     '""
                     (lambda (_%g142450142452%_)
                       (display _%message142437%_ _%g142450142452%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self142441%_ 'message _%message142455%_))
          (apply class-instance-init! _%self142441%_ _%rest142438%_))))
    (define Error:::init!::specialize
      (lambda (__klass142703 __method-table142704)
        (let ((__message142705
               (let ((__slot142706
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142703 'message))))
                 (if __slot142706
                     __slot142706
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self142436%_ _%message142437%_ . _%rest142438%_)
            (let* ((_%self142441%_ _%self142436%_)
                   (_%message142455%_
                    (if (string? _%message142437%_)
                        _%message142437%_
                        (call-with-output-string
                         '""
                         (lambda (_%g142450142452%_)
                           (display _%message142437%_ _%g142450142452%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self142441%_
                 _%message142455%_
                 __message142705
                 '#f
                 '#f))
              (apply class-instance-init! _%self142441%_ _%rest142438%_))))))
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
      (lambda (_%self142141%_ _%port142142%_)
        (let ((_%self142145%_ _%self142141%_))
          (let ((_%tmp-port142155%_ (open-output-string))
                (_%display-error-newline142156%_
                 (> (output-port-column _%port142142%_) '0)))
            (fix-port-width! _%tmp-port142155%_)
            (let ((__tmp142795
                   (lambda ()
                     (if _%display-error-newline142156%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e142159%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142145%_ 'where))))
                       (if _%$e142159%_ (display _%$e142159%_) (display '"?")))
                     (let ((__tmp142796
                            (let ((__tmp142797
                                   (let ((_%obj142163%_ _%self142145%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj142163%_))
                                         (let ((_%obj142168%_ _%obj142163%_))
                                           (declare (not safe))
                                           (__object-class _%obj142168%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj142163%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp142797))))
                       (declare (not safe))
                       (display* '" [" __tmp142796 '"]: "))
                     (let ((__tmp142798
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142145%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp142798))
                     (let ((_%irritants142183%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142145%_ 'irritants))))
                       (if (null? _%irritants142183%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj142185%_)
                                (if (u8vector? _%obj142185%_)
                                    (let ((__tmp142799
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj142185%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp142799))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj142185%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants142183%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont142186142188%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self142145%_
                                   'continuation))))
                           (if _%cont142186142188%_
                               (let ((_%cont142190%_ _%cont142186142188%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont142190%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp142795
               current-output-port
               _%tmp-port142155%_))
            (let ((__tmp142800 (get-output-string _%tmp-port142155%_)))
              (declare (not safe))
              (##write-string __tmp142800 _%port142142%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass142707 __method-table142708)
        (let ((__where142709
               (let ((__slot142713
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142707 'where))))
                 (if __slot142713
                     __slot142713
                     (error '"Unknown slot" 'where))))
              (__message142710
               (let ((__slot142714
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142707 'message))))
                 (if __slot142714
                     __slot142714
                     (error '"Unknown slot" 'message))))
              (__irritants142711
               (let ((__slot142715
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142707 'irritants))))
                 (if __slot142715
                     __slot142715
                     (error '"Unknown slot" 'irritants))))
              (__continuation142712
               (let ((__slot142716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142707 'continuation))))
                 (if __slot142716
                     __slot142716
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self142141%_ _%port142142%_)
            (let ((_%self142145%_ _%self142141%_))
              (let ((_%tmp-port142155%_ (open-output-string))
                    (_%display-error-newline142156%_
                     (> (output-port-column _%port142142%_) '0)))
                (fix-port-width! _%tmp-port142155%_)
                (let ((__tmp142801
                       (lambda ()
                         (if _%display-error-newline142156%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e142159%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142145%_
                                   __where142709
                                   '#f
                                   '#f))))
                           (if _%$e142159%_
                               (display _%$e142159%_)
                               (display '"?")))
                         (let ((__tmp142802
                                (let ((__tmp142803
                                       (let ((_%obj142163%_ _%self142145%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj142163%_))
                                             (let ((_%obj142168%_
                                                    _%obj142163%_))
                                               (declare (not safe))
                                               (__object-class _%obj142168%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj142163%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp142803))))
                           (declare (not safe))
                           (display* '" [" __tmp142802 '"]: "))
                         (let ((__tmp142804
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142145%_
                                   __message142710
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp142804))
                         (let ((_%irritants142183%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142145%_
                                   __irritants142711
                                   '#f
                                   '#f))))
                           (if (null? _%irritants142183%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj142185%_)
                                    (if (u8vector? _%obj142185%_)
                                        (let ((__tmp142805
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj142185%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp142805))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj142185%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants142183%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont142186142188%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self142145%_
                                       __continuation142712
                                       '#f
                                       '#f))))
                               (if _%cont142186142188%_
                                   (let ((_%cont142190%_ _%cont142186142188%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont142190%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp142801
                   current-output-port
                   _%tmp-port142155%_))
                (let ((__tmp142806 (get-output-string _%tmp-port142155%_)))
                  (declare (not safe))
                  (##write-string __tmp142806 _%port142142%_))))))))
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
      (lambda (_%self141998%_ _%port141999%_)
        (let* ((_%self142002%_ _%self141998%_)
               (_%tmp-port142012%_ (open-output-string)))
          (fix-port-width! _%tmp-port142012%_)
          (let ((__tmp142807
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self142002%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp142807 _%tmp-port142012%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont142013142015%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self142002%_ 'continuation))))
                (if _%cont142013142015%_
                    (let ((_%cont142017%_ _%cont142013142015%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port142012%_)
                      (newline _%tmp-port142012%_)
                      (display-continuation-backtrace
                       _%cont142017%_
                       _%tmp-port142012%_))
                    '#f))
              '#!void)
          (let ((__tmp142808 (get-output-string _%tmp-port142012%_)))
            (declare (not safe))
            (##write-string __tmp142808 _%port141999%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass142717 __method-table142718)
        (let ((__exception142719
               (let ((__slot142721
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142717 'exception))))
                 (if __slot142721
                     __slot142721
                     (error '"Unknown slot" 'exception))))
              (__continuation142720
               (let ((__slot142722
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142717 'continuation))))
                 (if __slot142722
                     __slot142722
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self141998%_ _%port141999%_)
            (let* ((_%self142002%_ _%self141998%_)
                   (_%tmp-port142012%_ (open-output-string)))
              (fix-port-width! _%tmp-port142012%_)
              (let ((__tmp142809
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self142002%_
                        __exception142719
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp142809 _%tmp-port142012%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont142013142015%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self142002%_
                            __continuation142720
                            '#f
                            '#f))))
                    (if _%cont142013142015%_
                        (let ((_%cont142017%_ _%cont142013142015%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port142012%_)
                          (newline _%tmp-port142012%_)
                          (display-continuation-backtrace
                           _%cont142017%_
                           _%tmp-port142012%_))
                        '#f))
                  '#!void)
              (let ((__tmp142810 (get-output-string _%tmp-port142012%_)))
                (declare (not safe))
                (##write-string __tmp142810 _%port141999%_)))))))
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
      (lambda (_%port141870%_)
        (if (macro-character-port? _%port141870%_)
            (let ((_%old-width141872%_
                   (macro-character-port-output-width _%port141870%_)))
              (macro-character-port-output-width-set!
               _%port141870%_
               (lambda (_%port141874%_) '256))
              _%old-width141872%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port141867%_ _%old-width141868%_)
        (if (macro-character-port? _%port141867%_)
            (macro-character-port-output-width-set!
             _%port141867%_
             _%old-width141868%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e141865%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e141865%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn141859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141859%_))
            (let ((_%e141862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141859%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e141862%_))
            (macro-abandoned-mutex-exception? _%exn141859%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn141855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141855%_))
            (let ((_%e141857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141855%_ 'exception))))
              (macro-cfun-conversion-exception? _%e141857%_))
            (macro-cfun-conversion-exception? _%exn141855%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn141851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141851%_))
            (let ((_%e141853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141851%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141853%_)
                  (macro-cfun-conversion-exception-arguments _%e141853%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e141853%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141851%_)
                (macro-cfun-conversion-exception-arguments _%exn141851%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn141851%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn141847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141847%_))
            (let ((_%e141849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141847%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141849%_)
                  (macro-cfun-conversion-exception-code _%e141849%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e141849%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141847%_)
                (macro-cfun-conversion-exception-code _%exn141847%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn141847%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn141843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141843%_))
            (let ((_%e141845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141843%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141845%_)
                  (macro-cfun-conversion-exception-message _%e141845%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e141845%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141843%_)
                (macro-cfun-conversion-exception-message _%exn141843%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn141843%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn141837%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141837%_))
            (let ((_%e141840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141837%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141840%_)
                  (macro-cfun-conversion-exception-procedure _%e141840%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e141840%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141837%_)
                (macro-cfun-conversion-exception-procedure _%exn141837%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn141837%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn141833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141833%_))
            (let ((_%e141835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141833%_ 'exception))))
              (macro-datum-parsing-exception? _%e141835%_))
            (macro-datum-parsing-exception? _%exn141833%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn141829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141829%_))
            (let ((_%e141831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141829%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141831%_)
                  (macro-datum-parsing-exception-kind _%e141831%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e141831%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141829%_)
                (macro-datum-parsing-exception-kind _%exn141829%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn141829%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn141825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141825%_))
            (let ((_%e141827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141825%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141827%_)
                  (macro-datum-parsing-exception-parameters _%e141827%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e141827%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141825%_)
                (macro-datum-parsing-exception-parameters _%exn141825%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn141825%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn141819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141819%_))
            (let ((_%e141822%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141819%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141822%_)
                  (macro-datum-parsing-exception-readenv _%e141822%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e141822%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141819%_)
                (macro-datum-parsing-exception-readenv _%exn141819%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn141819%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn141813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141813%_))
            (let ((_%e141816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141813%_ 'exception))))
              (macro-deadlock-exception? _%e141816%_))
            (macro-deadlock-exception? _%exn141813%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn141809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141809%_))
            (let ((_%e141811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141809%_ 'exception))))
              (macro-divide-by-zero-exception? _%e141811%_))
            (macro-divide-by-zero-exception? _%exn141809%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn141805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141805%_))
            (let ((_%e141807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141805%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141807%_)
                  (macro-divide-by-zero-exception-arguments _%e141807%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e141807%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141805%_)
                (macro-divide-by-zero-exception-arguments _%exn141805%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn141805%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn141799%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141799%_))
            (let ((_%e141802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141799%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141802%_)
                  (macro-divide-by-zero-exception-procedure _%e141802%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e141802%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141799%_)
                (macro-divide-by-zero-exception-procedure _%exn141799%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn141799%_ '())))))))
    (define error-exception?
      (lambda (_%exn141795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141795%_))
            (let ((_%e141797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141795%_ 'exception))))
              (macro-error-exception? _%e141797%_))
            (macro-error-exception? _%exn141795%_))))
    (define error-exception-message
      (lambda (_%exn141791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141791%_))
            (let ((_%e141793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141791%_ 'exception))))
              (if (macro-error-exception? _%e141793%_)
                  (macro-error-exception-message _%e141793%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e141793%_ '())))))
            (if (macro-error-exception? _%exn141791%_)
                (macro-error-exception-message _%exn141791%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn141791%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn141785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141785%_))
            (let ((_%e141788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141785%_ 'exception))))
              (if (macro-error-exception? _%e141788%_)
                  (macro-error-exception-parameters _%e141788%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e141788%_ '())))))
            (if (macro-error-exception? _%exn141785%_)
                (macro-error-exception-parameters _%exn141785%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn141785%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn141781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141781%_))
            (let ((_%e141783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141781%_ 'exception))))
              (macro-expression-parsing-exception? _%e141783%_))
            (macro-expression-parsing-exception? _%exn141781%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn141777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141777%_))
            (let ((_%e141779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141777%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141779%_)
                  (macro-expression-parsing-exception-kind _%e141779%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e141779%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141777%_)
                (macro-expression-parsing-exception-kind _%exn141777%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn141777%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn141773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141773%_))
            (let ((_%e141775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141773%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141775%_)
                  (macro-expression-parsing-exception-parameters _%e141775%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e141775%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141773%_)
                (macro-expression-parsing-exception-parameters _%exn141773%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn141773%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn141767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141767%_))
            (let ((_%e141770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141767%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141770%_)
                  (macro-expression-parsing-exception-source _%e141770%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e141770%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141767%_)
                (macro-expression-parsing-exception-source _%exn141767%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn141767%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn141763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141763%_))
            (let ((_%e141765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141763%_ 'exception))))
              (macro-file-exists-exception? _%e141765%_))
            (macro-file-exists-exception? _%exn141763%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn141759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141759%_))
            (let ((_%e141761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141759%_ 'exception))))
              (if (macro-file-exists-exception? _%e141761%_)
                  (macro-file-exists-exception-arguments _%e141761%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e141761%_ '())))))
            (if (macro-file-exists-exception? _%exn141759%_)
                (macro-file-exists-exception-arguments _%exn141759%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn141759%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn141753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141753%_))
            (let ((_%e141756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141753%_ 'exception))))
              (if (macro-file-exists-exception? _%e141756%_)
                  (macro-file-exists-exception-procedure _%e141756%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e141756%_ '())))))
            (if (macro-file-exists-exception? _%exn141753%_)
                (macro-file-exists-exception-procedure _%exn141753%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn141753%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn141749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141749%_))
            (let ((_%e141751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141749%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e141751%_))
            (macro-fixnum-overflow-exception? _%exn141749%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn141745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141745%_))
            (let ((_%e141747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141745%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141747%_)
                  (macro-fixnum-overflow-exception-arguments _%e141747%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e141747%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141745%_)
                (macro-fixnum-overflow-exception-arguments _%exn141745%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn141745%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn141739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141739%_))
            (let ((_%e141742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141739%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141742%_)
                  (macro-fixnum-overflow-exception-procedure _%e141742%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e141742%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141739%_)
                (macro-fixnum-overflow-exception-procedure _%exn141739%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn141739%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn141733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141733%_))
            (let ((_%e141736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141733%_ 'exception))))
              (macro-heap-overflow-exception? _%e141736%_))
            (macro-heap-overflow-exception? _%exn141733%_))))
    (define inactive-thread-exception?
      (lambda (_%exn141729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141729%_))
            (let ((_%e141731%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141729%_ 'exception))))
              (macro-inactive-thread-exception? _%e141731%_))
            (macro-inactive-thread-exception? _%exn141729%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn141725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141725%_))
            (let ((_%e141727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141725%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141727%_)
                  (macro-inactive-thread-exception-arguments _%e141727%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e141727%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141725%_)
                (macro-inactive-thread-exception-arguments _%exn141725%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn141725%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn141719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141719%_))
            (let ((_%e141722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141719%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141722%_)
                  (macro-inactive-thread-exception-procedure _%e141722%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e141722%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141719%_)
                (macro-inactive-thread-exception-procedure _%exn141719%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn141719%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn141715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141715%_))
            (let ((_%e141717%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141715%_ 'exception))))
              (macro-initialized-thread-exception? _%e141717%_))
            (macro-initialized-thread-exception? _%exn141715%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn141711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141711%_))
            (let ((_%e141713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141711%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141713%_)
                  (macro-initialized-thread-exception-arguments _%e141713%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e141713%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141711%_)
                (macro-initialized-thread-exception-arguments _%exn141711%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn141711%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn141705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141705%_))
            (let ((_%e141708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141705%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141708%_)
                  (macro-initialized-thread-exception-procedure _%e141708%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e141708%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141705%_)
                (macro-initialized-thread-exception-procedure _%exn141705%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn141705%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn141701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141701%_))
            (let ((_%e141703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141701%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e141703%_))
            (macro-invalid-hash-number-exception? _%exn141701%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn141697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141697%_))
            (let ((_%e141699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141697%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141699%_)
                  (macro-invalid-hash-number-exception-arguments _%e141699%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e141699%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141697%_)
                (macro-invalid-hash-number-exception-arguments _%exn141697%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn141697%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn141691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141691%_))
            (let ((_%e141694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141691%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141694%_)
                  (macro-invalid-hash-number-exception-procedure _%e141694%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e141694%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141691%_)
                (macro-invalid-hash-number-exception-procedure _%exn141691%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn141691%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn141687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141687%_))
            (let ((_%e141689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141687%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e141689%_))
            (macro-invalid-utf8-encoding-exception? _%exn141687%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn141683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141683%_))
            (let ((_%e141685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141683%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141685%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e141685%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e141685%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141683%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn141683%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn141683%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn141677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141677%_))
            (let ((_%e141680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141677%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141680%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e141680%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e141680%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141677%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn141677%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn141677%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn141673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141673%_))
            (let ((_%e141675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141673%_ 'exception))))
              (macro-join-timeout-exception? _%e141675%_))
            (macro-join-timeout-exception? _%exn141673%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn141669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141669%_))
            (let ((_%e141671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141669%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141671%_)
                  (macro-join-timeout-exception-arguments _%e141671%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e141671%_ '())))))
            (if (macro-join-timeout-exception? _%exn141669%_)
                (macro-join-timeout-exception-arguments _%exn141669%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn141669%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn141663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141663%_))
            (let ((_%e141666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141663%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141666%_)
                  (macro-join-timeout-exception-procedure _%e141666%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e141666%_ '())))))
            (if (macro-join-timeout-exception? _%exn141663%_)
                (macro-join-timeout-exception-procedure _%exn141663%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn141663%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn141659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141659%_))
            (let ((_%e141661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141659%_ 'exception))))
              (macro-keyword-expected-exception? _%e141661%_))
            (macro-keyword-expected-exception? _%exn141659%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn141655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141655%_))
            (let ((_%e141657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141655%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141657%_)
                  (macro-keyword-expected-exception-arguments _%e141657%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e141657%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141655%_)
                (macro-keyword-expected-exception-arguments _%exn141655%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn141655%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn141649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141649%_))
            (let ((_%e141652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141649%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141652%_)
                  (macro-keyword-expected-exception-procedure _%e141652%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e141652%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141649%_)
                (macro-keyword-expected-exception-procedure _%exn141649%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn141649%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn141645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141645%_))
            (let ((_%e141647%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141645%_ 'exception))))
              (macro-length-mismatch-exception? _%e141647%_))
            (macro-length-mismatch-exception? _%exn141645%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn141641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141641%_))
            (let ((_%e141643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141641%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141643%_)
                  (macro-length-mismatch-exception-arg-id _%e141643%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e141643%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141641%_)
                (macro-length-mismatch-exception-arg-id _%exn141641%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn141641%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn141637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141637%_))
            (let ((_%e141639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141637%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141639%_)
                  (macro-length-mismatch-exception-arguments _%e141639%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e141639%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141637%_)
                (macro-length-mismatch-exception-arguments _%exn141637%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn141637%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn141631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141631%_))
            (let ((_%e141634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141631%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141634%_)
                  (macro-length-mismatch-exception-procedure _%e141634%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e141634%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141631%_)
                (macro-length-mismatch-exception-procedure _%exn141631%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn141631%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn141627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141627%_))
            (let ((_%e141629%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141627%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e141629%_))
            (macro-mailbox-receive-timeout-exception? _%exn141627%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn141623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141623%_))
            (let ((_%e141625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141623%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141625%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e141625%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e141625%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141623%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn141623%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn141623%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn141617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141617%_))
            (let ((_%e141620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141617%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141620%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e141620%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e141620%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141617%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn141617%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn141617%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn141613%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141613%_))
            (let ((_%e141615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141613%_ 'exception))))
              (macro-module-not-found-exception? _%e141615%_))
            (macro-module-not-found-exception? _%exn141613%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn141609%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141609%_))
            (let ((_%e141611%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141609%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141611%_)
                  (macro-module-not-found-exception-arguments _%e141611%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e141611%_ '())))))
            (if (macro-module-not-found-exception? _%exn141609%_)
                (macro-module-not-found-exception-arguments _%exn141609%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn141609%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn141603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141603%_))
            (let ((_%e141606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141603%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141606%_)
                  (macro-module-not-found-exception-procedure _%e141606%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e141606%_ '())))))
            (if (macro-module-not-found-exception? _%exn141603%_)
                (macro-module-not-found-exception-procedure _%exn141603%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn141603%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn141597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141597%_))
            (let ((_%e141600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141597%_ 'exception))))
              (macro-multiple-c-return-exception? _%e141600%_))
            (macro-multiple-c-return-exception? _%exn141597%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn141593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141593%_))
            (let ((_%e141595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141593%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e141595%_))
            (macro-no-such-file-or-directory-exception? _%exn141593%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn141589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141589%_))
            (let ((_%e141591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141589%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141591%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e141591%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e141591%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141589%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn141589%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn141589%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn141583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141583%_))
            (let ((_%e141586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141583%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141586%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e141586%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e141586%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141583%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn141583%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn141583%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn141579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141579%_))
            (let ((_%e141581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141579%_ 'exception))))
              (macro-noncontinuable-exception? _%e141581%_))
            (macro-noncontinuable-exception? _%exn141579%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn141573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141573%_))
            (let ((_%e141576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141573%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e141576%_)
                  (macro-noncontinuable-exception-reason _%e141576%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e141576%_ '())))))
            (if (macro-noncontinuable-exception? _%exn141573%_)
                (macro-noncontinuable-exception-reason _%exn141573%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn141573%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn141569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141569%_))
            (let ((_%e141571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141569%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e141571%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn141569%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn141565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141565%_))
            (let ((_%e141567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141565%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141567%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e141567%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e141567%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141565%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn141565%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn141565%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn141559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141559%_))
            (let ((_%e141562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141559%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141562%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e141562%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e141562%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141559%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn141559%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn141559%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn141555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141555%_))
            (let ((_%e141557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141555%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e141557%_))
            (macro-nonprocedure-operator-exception? _%exn141555%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn141551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141551%_))
            (let ((_%e141553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141551%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141553%_)
                  (macro-nonprocedure-operator-exception-arguments _%e141553%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e141553%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141551%_)
                (macro-nonprocedure-operator-exception-arguments _%exn141551%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn141551%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn141547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141547%_))
            (let ((_%e141549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141547%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141549%_)
                  (macro-nonprocedure-operator-exception-code _%e141549%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e141549%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141547%_)
                (macro-nonprocedure-operator-exception-code _%exn141547%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn141547%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn141543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141543%_))
            (let ((_%e141545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141543%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141545%_)
                  (macro-nonprocedure-operator-exception-operator _%e141545%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e141545%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141543%_)
                (macro-nonprocedure-operator-exception-operator _%exn141543%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn141543%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn141537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141537%_))
            (let ((_%e141540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141537%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141540%_)
                  (macro-nonprocedure-operator-exception-rte _%e141540%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e141540%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141537%_)
                (macro-nonprocedure-operator-exception-rte _%exn141537%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn141537%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn141533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141533%_))
            (let ((_%e141535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141533%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e141535%_))
            (macro-not-in-compilation-context-exception? _%exn141533%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn141529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141529%_))
            (let ((_%e141531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141529%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e141531%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e141531%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e141531%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn141529%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn141529%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn141529%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn141523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141523%_))
            (let ((_%e141526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141523%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e141526%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e141526%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e141526%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn141523%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn141523%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn141523%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn141519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141519%_))
            (let ((_%e141521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141519%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e141521%_))
            (macro-number-of-arguments-limit-exception? _%exn141519%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn141515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141515%_))
            (let ((_%e141517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141515%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e141517%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e141517%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e141517%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn141515%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn141515%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn141515%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn141509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141509%_))
            (let ((_%e141512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141509%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e141512%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e141512%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e141512%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn141509%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn141509%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn141509%_ '())))))))
    (define os-exception?
      (lambda (_%exn141505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141505%_))
            (let ((_%e141507%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141505%_ 'exception))))
              (macro-os-exception? _%e141507%_))
            (macro-os-exception? _%exn141505%_))))
    (define os-exception-arguments
      (lambda (_%exn141501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141501%_))
            (let ((_%e141503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141501%_ 'exception))))
              (if (macro-os-exception? _%e141503%_)
                  (macro-os-exception-arguments _%e141503%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e141503%_ '())))))
            (if (macro-os-exception? _%exn141501%_)
                (macro-os-exception-arguments _%exn141501%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn141501%_ '())))))))
    (define os-exception-code
      (lambda (_%exn141497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141497%_))
            (let ((_%e141499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141497%_ 'exception))))
              (if (macro-os-exception? _%e141499%_)
                  (macro-os-exception-code _%e141499%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e141499%_ '())))))
            (if (macro-os-exception? _%exn141497%_)
                (macro-os-exception-code _%exn141497%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn141497%_ '())))))))
    (define os-exception-message
      (lambda (_%exn141493%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141493%_))
            (let ((_%e141495%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141493%_ 'exception))))
              (if (macro-os-exception? _%e141495%_)
                  (macro-os-exception-message _%e141495%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e141495%_ '())))))
            (if (macro-os-exception? _%exn141493%_)
                (macro-os-exception-message _%exn141493%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn141493%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn141487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141487%_))
            (let ((_%e141490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141487%_ 'exception))))
              (if (macro-os-exception? _%e141490%_)
                  (macro-os-exception-procedure _%e141490%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e141490%_ '())))))
            (if (macro-os-exception? _%exn141487%_)
                (macro-os-exception-procedure _%exn141487%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn141487%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn141483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141483%_))
            (let ((_%e141485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141483%_ 'exception))))
              (macro-permission-denied-exception? _%e141485%_))
            (macro-permission-denied-exception? _%exn141483%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn141479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141479%_))
            (let ((_%e141481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141479%_ 'exception))))
              (if (macro-permission-denied-exception? _%e141481%_)
                  (macro-permission-denied-exception-arguments _%e141481%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e141481%_ '())))))
            (if (macro-permission-denied-exception? _%exn141479%_)
                (macro-permission-denied-exception-arguments _%exn141479%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn141479%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn141473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141473%_))
            (let ((_%e141476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141473%_ 'exception))))
              (if (macro-permission-denied-exception? _%e141476%_)
                  (macro-permission-denied-exception-procedure _%e141476%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e141476%_ '())))))
            (if (macro-permission-denied-exception? _%exn141473%_)
                (macro-permission-denied-exception-procedure _%exn141473%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn141473%_ '())))))))
    (define range-exception?
      (lambda (_%exn141469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141469%_))
            (let ((_%e141471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141469%_ 'exception))))
              (macro-range-exception? _%e141471%_))
            (macro-range-exception? _%exn141469%_))))
    (define range-exception-arg-id
      (lambda (_%exn141465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141465%_))
            (let ((_%e141467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141465%_ 'exception))))
              (if (macro-range-exception? _%e141467%_)
                  (macro-range-exception-arg-id _%e141467%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e141467%_ '())))))
            (if (macro-range-exception? _%exn141465%_)
                (macro-range-exception-arg-id _%exn141465%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn141465%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn141461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141461%_))
            (let ((_%e141463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141461%_ 'exception))))
              (if (macro-range-exception? _%e141463%_)
                  (macro-range-exception-arguments _%e141463%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e141463%_ '())))))
            (if (macro-range-exception? _%exn141461%_)
                (macro-range-exception-arguments _%exn141461%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn141461%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn141455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141455%_))
            (let ((_%e141458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141455%_ 'exception))))
              (if (macro-range-exception? _%e141458%_)
                  (macro-range-exception-procedure _%e141458%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e141458%_ '())))))
            (if (macro-range-exception? _%exn141455%_)
                (macro-range-exception-procedure _%exn141455%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn141455%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn141451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141451%_))
            (let ((_%e141453%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141451%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e141453%_))
            (macro-rpc-remote-error-exception? _%exn141451%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn141447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141447%_))
            (let ((_%e141449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141447%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141449%_)
                  (macro-rpc-remote-error-exception-arguments _%e141449%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e141449%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141447%_)
                (macro-rpc-remote-error-exception-arguments _%exn141447%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn141447%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn141443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141443%_))
            (let ((_%e141445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141443%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141445%_)
                  (macro-rpc-remote-error-exception-message _%e141445%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e141445%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141443%_)
                (macro-rpc-remote-error-exception-message _%exn141443%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn141443%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn141437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141437%_))
            (let ((_%e141440%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141437%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141440%_)
                  (macro-rpc-remote-error-exception-procedure _%e141440%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e141440%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141437%_)
                (macro-rpc-remote-error-exception-procedure _%exn141437%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn141437%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn141433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141433%_))
            (let ((_%e141435%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141433%_ 'exception))))
              (macro-scheduler-exception? _%e141435%_))
            (macro-scheduler-exception? _%exn141433%_))))
    (define scheduler-exception-reason
      (lambda (_%exn141427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141427%_))
            (let ((_%e141430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141427%_ 'exception))))
              (if (macro-scheduler-exception? _%e141430%_)
                  (macro-scheduler-exception-reason _%e141430%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e141430%_ '())))))
            (if (macro-scheduler-exception? _%exn141427%_)
                (macro-scheduler-exception-reason _%exn141427%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn141427%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn141423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141423%_))
            (let ((_%e141425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141423%_ 'exception))))
              (macro-sfun-conversion-exception? _%e141425%_))
            (macro-sfun-conversion-exception? _%exn141423%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn141419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141419%_))
            (let ((_%e141421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141419%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141421%_)
                  (macro-sfun-conversion-exception-arguments _%e141421%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e141421%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141419%_)
                (macro-sfun-conversion-exception-arguments _%exn141419%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn141419%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn141415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141415%_))
            (let ((_%e141417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141415%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141417%_)
                  (macro-sfun-conversion-exception-code _%e141417%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e141417%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141415%_)
                (macro-sfun-conversion-exception-code _%exn141415%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn141415%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn141411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141411%_))
            (let ((_%e141413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141411%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141413%_)
                  (macro-sfun-conversion-exception-message _%e141413%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e141413%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141411%_)
                (macro-sfun-conversion-exception-message _%exn141411%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn141411%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn141405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141405%_))
            (let ((_%e141408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141405%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141408%_)
                  (macro-sfun-conversion-exception-procedure _%e141408%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e141408%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141405%_)
                (macro-sfun-conversion-exception-procedure _%exn141405%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn141405%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn141399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141399%_))
            (let ((_%e141402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141399%_ 'exception))))
              (macro-stack-overflow-exception? _%e141402%_))
            (macro-stack-overflow-exception? _%exn141399%_))))
    (define started-thread-exception?
      (lambda (_%exn141395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141395%_))
            (let ((_%e141397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141395%_ 'exception))))
              (macro-started-thread-exception? _%e141397%_))
            (macro-started-thread-exception? _%exn141395%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn141391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141391%_))
            (let ((_%e141393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141391%_ 'exception))))
              (if (macro-started-thread-exception? _%e141393%_)
                  (macro-started-thread-exception-arguments _%e141393%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e141393%_ '())))))
            (if (macro-started-thread-exception? _%exn141391%_)
                (macro-started-thread-exception-arguments _%exn141391%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn141391%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn141385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141385%_))
            (let ((_%e141388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141385%_ 'exception))))
              (if (macro-started-thread-exception? _%e141388%_)
                  (macro-started-thread-exception-procedure _%e141388%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e141388%_ '())))))
            (if (macro-started-thread-exception? _%exn141385%_)
                (macro-started-thread-exception-procedure _%exn141385%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn141385%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn141381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141381%_))
            (let ((_%e141383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141381%_ 'exception))))
              (macro-terminated-thread-exception? _%e141383%_))
            (macro-terminated-thread-exception? _%exn141381%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn141377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141377%_))
            (let ((_%e141379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141377%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e141379%_)
                  (macro-terminated-thread-exception-arguments _%e141379%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e141379%_ '())))))
            (if (macro-terminated-thread-exception? _%exn141377%_)
                (macro-terminated-thread-exception-arguments _%exn141377%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn141377%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn141371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141371%_))
            (let ((_%e141374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141371%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e141374%_)
                  (macro-terminated-thread-exception-procedure _%e141374%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e141374%_ '())))))
            (if (macro-terminated-thread-exception? _%exn141371%_)
                (macro-terminated-thread-exception-procedure _%exn141371%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn141371%_ '())))))))
    (define type-exception?
      (lambda (_%exn141367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141367%_))
            (let ((_%e141369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141367%_ 'exception))))
              (macro-type-exception? _%e141369%_))
            (macro-type-exception? _%exn141367%_))))
    (define type-exception-arg-id
      (lambda (_%exn141363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141363%_))
            (let ((_%e141365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141363%_ 'exception))))
              (if (macro-type-exception? _%e141365%_)
                  (macro-type-exception-arg-id _%e141365%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e141365%_ '())))))
            (if (macro-type-exception? _%exn141363%_)
                (macro-type-exception-arg-id _%exn141363%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn141363%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn141359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141359%_))
            (let ((_%e141361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141359%_ 'exception))))
              (if (macro-type-exception? _%e141361%_)
                  (macro-type-exception-arguments _%e141361%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e141361%_ '())))))
            (if (macro-type-exception? _%exn141359%_)
                (macro-type-exception-arguments _%exn141359%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn141359%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn141355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141355%_))
            (let ((_%e141357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141355%_ 'exception))))
              (if (macro-type-exception? _%e141357%_)
                  (macro-type-exception-procedure _%e141357%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e141357%_ '())))))
            (if (macro-type-exception? _%exn141355%_)
                (macro-type-exception-procedure _%exn141355%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn141355%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn141349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141349%_))
            (let ((_%e141352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141349%_ 'exception))))
              (if (macro-type-exception? _%e141352%_)
                  (macro-type-exception-type-id _%e141352%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e141352%_ '())))))
            (if (macro-type-exception? _%exn141349%_)
                (macro-type-exception-type-id _%exn141349%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn141349%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn141345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141345%_))
            (let ((_%e141347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141345%_ 'exception))))
              (macro-unbound-global-exception? _%e141347%_))
            (macro-unbound-global-exception? _%exn141345%_))))
    (define unbound-global-exception-code
      (lambda (_%exn141341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141341%_))
            (let ((_%e141343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141341%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141343%_)
                  (macro-unbound-global-exception-code _%e141343%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e141343%_ '())))))
            (if (macro-unbound-global-exception? _%exn141341%_)
                (macro-unbound-global-exception-code _%exn141341%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn141341%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn141337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141337%_))
            (let ((_%e141339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141337%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141339%_)
                  (macro-unbound-global-exception-rte _%e141339%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e141339%_ '())))))
            (if (macro-unbound-global-exception? _%exn141337%_)
                (macro-unbound-global-exception-rte _%exn141337%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn141337%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn141331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141331%_))
            (let ((_%e141334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141331%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141334%_)
                  (macro-unbound-global-exception-variable _%e141334%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e141334%_ '())))))
            (if (macro-unbound-global-exception? _%exn141331%_)
                (macro-unbound-global-exception-variable _%exn141331%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn141331%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn141327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141327%_))
            (let ((_%e141329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141327%_ 'exception))))
              (macro-unbound-key-exception? _%e141329%_))
            (macro-unbound-key-exception? _%exn141327%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn141323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141323%_))
            (let ((_%e141325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141323%_ 'exception))))
              (if (macro-unbound-key-exception? _%e141325%_)
                  (macro-unbound-key-exception-arguments _%e141325%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e141325%_ '())))))
            (if (macro-unbound-key-exception? _%exn141323%_)
                (macro-unbound-key-exception-arguments _%exn141323%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn141323%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn141317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141317%_))
            (let ((_%e141320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141317%_ 'exception))))
              (if (macro-unbound-key-exception? _%e141320%_)
                  (macro-unbound-key-exception-procedure _%e141320%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e141320%_ '())))))
            (if (macro-unbound-key-exception? _%exn141317%_)
                (macro-unbound-key-exception-procedure _%exn141317%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn141317%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn141313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141313%_))
            (let ((_%e141315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141313%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e141315%_))
            (macro-unbound-os-environment-variable-exception? _%exn141313%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn141309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141309%_))
            (let ((_%e141311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141309%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e141311%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e141311%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e141311%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn141309%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn141309%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn141309%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn141303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141303%_))
            (let ((_%e141306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141303%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e141306%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e141306%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e141306%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn141303%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn141303%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn141303%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn141299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141299%_))
            (let ((_%e141301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141299%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e141301%_))
            (macro-unbound-serial-number-exception? _%exn141299%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn141295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141295%_))
            (let ((_%e141297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141295%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141297%_)
                  (macro-unbound-serial-number-exception-arguments _%e141297%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e141297%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141295%_)
                (macro-unbound-serial-number-exception-arguments _%exn141295%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn141295%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn141289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141289%_))
            (let ((_%e141292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141289%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141292%_)
                  (macro-unbound-serial-number-exception-procedure _%e141292%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e141292%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141289%_)
                (macro-unbound-serial-number-exception-procedure _%exn141289%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn141289%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn141285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141285%_))
            (let ((_%e141287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141285%_ 'exception))))
              (macro-uncaught-exception? _%e141287%_))
            (macro-uncaught-exception? _%exn141285%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn141281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141281%_))
            (let ((_%e141283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141281%_ 'exception))))
              (if (macro-uncaught-exception? _%e141283%_)
                  (macro-uncaught-exception-arguments _%e141283%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e141283%_ '())))))
            (if (macro-uncaught-exception? _%exn141281%_)
                (macro-uncaught-exception-arguments _%exn141281%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn141281%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn141277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141277%_))
            (let ((_%e141279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141277%_ 'exception))))
              (if (macro-uncaught-exception? _%e141279%_)
                  (macro-uncaught-exception-procedure _%e141279%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e141279%_ '())))))
            (if (macro-uncaught-exception? _%exn141277%_)
                (macro-uncaught-exception-procedure _%exn141277%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn141277%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn141271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141271%_))
            (let ((_%e141274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141271%_ 'exception))))
              (if (macro-uncaught-exception? _%e141274%_)
                  (macro-uncaught-exception-reason _%e141274%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e141274%_ '())))))
            (if (macro-uncaught-exception? _%exn141271%_)
                (macro-uncaught-exception-reason _%exn141271%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn141271%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn141267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141267%_))
            (let ((_%e141269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141267%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e141269%_))
            (macro-uninitialized-thread-exception? _%exn141267%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn141263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141263%_))
            (let ((_%e141265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141263%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141265%_)
                  (macro-uninitialized-thread-exception-arguments _%e141265%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e141265%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141263%_)
                (macro-uninitialized-thread-exception-arguments _%exn141263%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn141263%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn141257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141257%_))
            (let ((_%e141260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141257%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141260%_)
                  (macro-uninitialized-thread-exception-procedure _%e141260%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e141260%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141257%_)
                (macro-uninitialized-thread-exception-procedure _%exn141257%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn141257%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn141253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141253%_))
            (let ((_%e141255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141253%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e141255%_))
            (macro-unknown-keyword-argument-exception? _%exn141253%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn141249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141249%_))
            (let ((_%e141251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141249%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141251%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e141251%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e141251%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141249%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn141249%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn141249%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn141243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141243%_))
            (let ((_%e141246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141243%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141246%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e141246%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e141246%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141243%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn141243%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn141243%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn141239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141239%_))
            (let ((_%e141241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141239%_ 'exception))))
              (macro-unterminated-process-exception? _%e141241%_))
            (macro-unterminated-process-exception? _%exn141239%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn141235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141235%_))
            (let ((_%e141237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141235%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141237%_)
                  (macro-unterminated-process-exception-arguments _%e141237%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e141237%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141235%_)
                (macro-unterminated-process-exception-arguments _%exn141235%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn141235%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn141229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141229%_))
            (let ((_%e141232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141229%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141232%_)
                  (macro-unterminated-process-exception-procedure _%e141232%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e141232%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141229%_)
                (macro-unterminated-process-exception-procedure _%exn141229%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn141229%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn141225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141225%_))
            (let ((_%e141227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141225%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e141227%_))
            (macro-wrong-number-of-arguments-exception? _%exn141225%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn141221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141221%_))
            (let ((_%e141223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141221%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141223%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e141223%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e141223%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141221%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn141221%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn141221%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn141215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141215%_))
            (let ((_%e141218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141215%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141218%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e141218%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e141218%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141215%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn141215%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn141215%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn141211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141211%_))
            (let ((_%e141213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141211%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e141213%_))
            (macro-wrong-number-of-values-exception? _%exn141211%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn141207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141207%_))
            (let ((_%e141209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141207%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141209%_)
                  (macro-wrong-number-of-values-exception-code _%e141209%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e141209%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141207%_)
                (macro-wrong-number-of-values-exception-code _%exn141207%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn141207%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn141203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141203%_))
            (let ((_%e141205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141203%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141205%_)
                  (macro-wrong-number-of-values-exception-rte _%e141205%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e141205%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141203%_)
                (macro-wrong-number-of-values-exception-rte _%exn141203%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn141203%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn141197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141197%_))
            (let ((_%e141200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141197%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141200%_)
                  (macro-wrong-number-of-values-exception-vals _%e141200%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e141200%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141197%_)
                (macro-wrong-number-of-values-exception-vals _%exn141197%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn141197%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn141191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141191%_))
            (let ((_%e141194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141191%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e141194%_))
            (macro-wrong-processor-c-return-exception? _%exn141191%_))))))
