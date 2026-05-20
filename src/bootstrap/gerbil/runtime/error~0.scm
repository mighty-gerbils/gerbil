(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1779274768)
  (begin
    (define Exception::t
      (let ((__tmp143040 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp143040
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args142958%_
        (apply make-instance Exception::t _%$args142958%_)))
    (define StackTrace::t
      (let ((__tmp143041 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp143041
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args142955%_
        (apply make-instance StackTrace::t _%$args142955%_)))
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
      (let ((__tmp143042 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp143042
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args142952%_ (apply make-instance Error::t _%$args142952%_)))
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
      (let ((__tmp143043 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp143043
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args142949%_
        (apply make-instance ContractViolation::t _%$args142949%_)))
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
      (let ((__tmp143044 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp143044
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args142946%_
        (apply make-instance RuntimeException::t _%$args142946%_)))
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
      (lambda (_%exn142941%_ _%continue142942%_)
        (let ((_%exn142944%_ (wrap-runtime-exception _%exn142941%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn142944%_ _%continue142942%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn142937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn142937%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn142937%_ 'continuation))
                '#!void
                (let ((__tmp143045
                       (lambda (_%cont142939%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn142937%_
                            'continuation
                            _%cont142939%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp143045)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn142937%_))))
    (define error
      (lambda (_%message142934%_ . _%irritants142935%_)
        (raise (let ((__obj143037
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj143037
                  _%message142934%_
                  'irritants:
                  _%irritants142935%_)
                 __obj143037))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords142909%_
               _%ctx142904142910%_
               _%contract-expr142905142911%_
               _%value142906142912%_
               _%message142913%_)
        (let* ((_%ctx142915%_
                (if (eq? _%ctx142904142910%_ absent-value)
                    '#f
                    _%ctx142904142910%_))
               (_%contract-expr142917%_
                (if (eq? _%contract-expr142905142911%_ absent-value)
                    '#f
                    _%contract-expr142905142911%_))
               (_%value142919%_
                (if (eq? _%value142906142912%_ absent-value)
                    '#f
                    _%value142906142912%_)))
          (raise (let ((__obj143038
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj143038
                    _%message142913%_
                    'where:
                    _%ctx142915%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr142917%_
                                (cons 'value: (cons _%value142919%_ '())))))
                   __obj143038)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords142924%_ . _%args142925%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords142924%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142924%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142924%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142924%_
                  'value:
                  absent-value))
               _%args142925%_)))
    (define __raise-contract-violation-error
      (lambda _%args142907142931%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args142907142931%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler142878%_ _%thunk142879%_)
        (let* ((_%handler142882%_ _%handler142878%_)
               (_%thunk142890%_ _%thunk142879%_)
               (__tmp143046
                (lambda (_%exn142899%_)
                  (let ((_%exn142901%_ (wrap-runtime-exception _%exn142899%_)))
                    (declare (not safe))
                    (_%handler142882%_ _%exn142901%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp143046 _%thunk142890%_))))
    (define with-exception-handler
      (lambda (_%handler140913%_ _%thunk140914%_)
        (if (procedure? _%handler140913%_)
            (let ((_%handler140918%_ _%handler140913%_))
              (if (procedure? _%thunk140914%_)
                  (let ((_%thunk140928%_ _%thunk140914%_))
                    (__with-exception-handler
                     _%handler140918%_
                     _%thunk140928%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140914%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler140913%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler142820%_ _%thunk142821%_)
        (let* ((_%handler142824%_ _%handler142820%_)
               (_%thunk142832%_ _%thunk142821%_)
               (__tmp143047
                (lambda (_%cont142841%_)
                  (let* ((_%handler142845%_
                          (lambda (_%exn142843%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont142841%_
                               _%handler142824%_
                               _%exn142843%_))))
                         (_%thunk142848%_ _%thunk142832%_)
                         (_%handler142853%_ _%handler142845%_)
                         (_%thunk142868%_ _%thunk142848%_))
                    (__with-exception-handler
                     _%handler142853%_
                     _%thunk142868%_)))))
          (declare (not safe))
          (##continuation-capture __tmp143047))))
    (define with-catch
      (lambda (_%handler141058%_ _%thunk141059%_)
        (if (procedure? _%handler141058%_)
            (let ((_%handler141063%_ _%handler141058%_))
              (if (procedure? _%thunk141059%_)
                  (let ((_%thunk141073%_ _%thunk141059%_))
                    (__with-catch _%handler141063%_ _%thunk141073%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk141059%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler141058%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn142807%_)
        (if (or (heap-overflow-exception? _%exn142807%_)
                (stack-overflow-exception? _%exn142807%_))
            _%exn142807%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn142807%_))
                _%exn142807%_
                (if (macro-exception? _%exn142807%_)
                    (let ((_%rte142815%_
                           (let ((__obj143039
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj143039
                                _%exn142807%_
                                '2
                                '#f
                                '#f))
                             __obj143039)))
                      (let ((__tmp143048
                             (lambda (_%cont142817%_)
                               (let ((__tmp143049
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont142817%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte142815%_
                                  'continuation
                                  __tmp143049)))))
                        (declare (not safe))
                        (##continuation-capture __tmp143048))
                      _%rte142815%_)
                    _%exn142807%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj142802%_)
        (let ((_%$e142804%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj142802%_))))
          (if _%$e142804%_ _%$e142804%_ (error-exception? _%obj142802%_)))))
    (define error-message
      (lambda (_%obj142761%_)
        (let ((_%$e142797%_
               (let* ((_%obj142763%_ _%obj142761%_)
                      (_%slot142766%_ 'message)
                      (_%E142769%_ false)
                      (_%slot142774%_ _%slot142766%_)
                      (_%E142787%_ _%E142769%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj142763%_ _%slot142774%_ _%E142787%_))))
          (if _%$e142797%_
              _%$e142797%_
              (if (error-exception? _%obj142761%_)
                  (error-exception-message _%obj142761%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj142756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj142756%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj142756%_ 'irritants))
            (if (error-exception? _%obj142756%_)
                (error-exception-parameters _%obj142756%_)
                '#f))))
    (define error-trace
      (lambda (_%obj142754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj142754%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj142754%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e142715%_ _%port142716%_)
        (let ((_%$e142738%_
               (let* ((_%obj142718%_ _%e142715%_)
                      (_%id142721%_ 'display-exception)
                      (_%id142726%_ _%id142721%_))
                 (declare (not safe))
                 (__method-ref _%obj142718%_ _%id142726%_))))
          (if _%$e142738%_
              ((lambda (_%f142741%_) (_%f142741%_ _%e142715%_ _%port142716%_))
               _%$e142738%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e142715%_ _%port142716%_))))))
    (define display-exception__0
      (lambda (_%e142747%_)
        (let ((_%port142749%_ (current-error-port)))
          (display-exception__% _%e142747%_ _%port142749%_))))
    (define display-exception
      (lambda _g143050_
        (let ((_g143051_ (let () (declare (not safe)) (##length _g143050_))))
          (cond ((let () (declare (not safe)) (##fx= _g143051_ 1))
                 (apply display-exception__0 _g143050_))
                ((let () (declare (not safe)) (##fx= _g143051_ 2))
                 (apply display-exception__% _g143050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g143050_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self142693%_ _%message142694%_ . _%rest142695%_)
        (let* ((_%self142698%_ _%self142693%_)
               (_%message142712%_
                (if (string? _%message142694%_)
                    _%message142694%_
                    (call-with-output-string
                     '""
                     (lambda (_%g142707142709%_)
                       (display _%message142694%_ _%g142707142709%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self142698%_ 'message _%message142712%_))
          (apply class-instance-init! _%self142698%_ _%rest142695%_))))
    (define Error:::init!::specialize
      (lambda (__klass142960 __method-table142961)
        (let ((__message142962
               (let ((__slot142963
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142960 'message))))
                 (if __slot142963
                     __slot142963
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self142693%_ _%message142694%_ . _%rest142695%_)
            (let* ((_%self142698%_ _%self142693%_)
                   (_%message142712%_
                    (if (string? _%message142694%_)
                        _%message142694%_
                        (call-with-output-string
                         '""
                         (lambda (_%g142707142709%_)
                           (display _%message142694%_ _%g142707142709%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self142698%_
                 _%message142712%_
                 __message142962
                 '#f
                 '#f))
              (apply class-instance-init! _%self142698%_ _%rest142695%_))))))
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
      (lambda (_%self142398%_ _%port142399%_)
        (let ((_%self142402%_ _%self142398%_))
          (let ((_%tmp-port142412%_ (open-output-string))
                (_%display-error-newline142413%_
                 (> (output-port-column _%port142399%_) '0)))
            (fix-port-width! _%tmp-port142412%_)
            (let ((__tmp143052
                   (lambda ()
                     (if _%display-error-newline142413%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e142416%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142402%_ 'where))))
                       (if _%$e142416%_ (display _%$e142416%_) (display '"?")))
                     (let ((__tmp143053
                            (let ((__tmp143054
                                   (let ((_%obj142420%_ _%self142402%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj142420%_))
                                         (let ((_%obj142425%_ _%obj142420%_))
                                           (declare (not safe))
                                           (__object-class _%obj142425%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj142420%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp143054))))
                       (declare (not safe))
                       (display* '" [" __tmp143053 '"]: "))
                     (let ((__tmp143055
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142402%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp143055))
                     (let ((_%irritants142440%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self142402%_ 'irritants))))
                       (if (null? _%irritants142440%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj142442%_)
                                (if (u8vector? _%obj142442%_)
                                    (let ((__tmp143056
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj142442%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp143056))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj142442%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants142440%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont142443142445%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self142402%_
                                   'continuation))))
                           (if _%cont142443142445%_
                               (let ((_%cont142447%_ _%cont142443142445%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont142447%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp143052
               current-output-port
               _%tmp-port142412%_))
            (let ((__tmp143057 (get-output-string _%tmp-port142412%_)))
              (declare (not safe))
              (##write-string __tmp143057 _%port142399%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass142964 __method-table142965)
        (let ((__message142966
               (let ((__slot142970
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142964 'message))))
                 (if __slot142970
                     __slot142970
                     (error '"Unknown slot" 'message))))
              (__where142967
               (let ((__slot142971
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142964 'where))))
                 (if __slot142971
                     __slot142971
                     (error '"Unknown slot" 'where))))
              (__irritants142968
               (let ((__slot142972
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142964 'irritants))))
                 (if __slot142972
                     __slot142972
                     (error '"Unknown slot" 'irritants))))
              (__continuation142969
               (let ((__slot142973
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142964 'continuation))))
                 (if __slot142973
                     __slot142973
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self142398%_ _%port142399%_)
            (let ((_%self142402%_ _%self142398%_))
              (let ((_%tmp-port142412%_ (open-output-string))
                    (_%display-error-newline142413%_
                     (> (output-port-column _%port142399%_) '0)))
                (fix-port-width! _%tmp-port142412%_)
                (let ((__tmp143058
                       (lambda ()
                         (if _%display-error-newline142413%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e142416%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142402%_
                                   __where142967
                                   '#f
                                   '#f))))
                           (if _%$e142416%_
                               (display _%$e142416%_)
                               (display '"?")))
                         (let ((__tmp143059
                                (let ((__tmp143060
                                       (let ((_%obj142420%_ _%self142402%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj142420%_))
                                             (let ((_%obj142425%_
                                                    _%obj142420%_))
                                               (declare (not safe))
                                               (__object-class _%obj142425%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj142420%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp143060))))
                           (declare (not safe))
                           (display* '" [" __tmp143059 '"]: "))
                         (let ((__tmp143061
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142402%_
                                   __message142966
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp143061))
                         (let ((_%irritants142440%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self142402%_
                                   __irritants142968
                                   '#f
                                   '#f))))
                           (if (null? _%irritants142440%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj142442%_)
                                    (if (u8vector? _%obj142442%_)
                                        (let ((__tmp143062
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj142442%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp143062))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj142442%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants142440%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont142443142445%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self142402%_
                                       __continuation142969
                                       '#f
                                       '#f))))
                               (if _%cont142443142445%_
                                   (let ((_%cont142447%_ _%cont142443142445%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont142447%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp143058
                   current-output-port
                   _%tmp-port142412%_))
                (let ((__tmp143063 (get-output-string _%tmp-port142412%_)))
                  (declare (not safe))
                  (##write-string __tmp143063 _%port142399%_))))))))
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
      (lambda (_%self142255%_ _%port142256%_)
        (let* ((_%self142259%_ _%self142255%_)
               (_%tmp-port142269%_ (open-output-string)))
          (fix-port-width! _%tmp-port142269%_)
          (let ((__tmp143064
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self142259%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp143064 _%tmp-port142269%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont142270142272%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self142259%_ 'continuation))))
                (if _%cont142270142272%_
                    (let ((_%cont142274%_ _%cont142270142272%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port142269%_)
                      (newline _%tmp-port142269%_)
                      (display-continuation-backtrace
                       _%cont142274%_
                       _%tmp-port142269%_))
                    '#f))
              '#!void)
          (let ((__tmp143065 (get-output-string _%tmp-port142269%_)))
            (declare (not safe))
            (##write-string __tmp143065 _%port142256%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass142974 __method-table142975)
        (let ((__exception142976
               (let ((__slot142978
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142974 'exception))))
                 (if __slot142978
                     __slot142978
                     (error '"Unknown slot" 'exception))))
              (__continuation142977
               (let ((__slot142979
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142974 'continuation))))
                 (if __slot142979
                     __slot142979
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self142255%_ _%port142256%_)
            (let* ((_%self142259%_ _%self142255%_)
                   (_%tmp-port142269%_ (open-output-string)))
              (fix-port-width! _%tmp-port142269%_)
              (let ((__tmp143066
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self142259%_
                        __exception142976
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp143066 _%tmp-port142269%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont142270142272%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self142259%_
                            __continuation142977
                            '#f
                            '#f))))
                    (if _%cont142270142272%_
                        (let ((_%cont142274%_ _%cont142270142272%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port142269%_)
                          (newline _%tmp-port142269%_)
                          (display-continuation-backtrace
                           _%cont142274%_
                           _%tmp-port142269%_))
                        '#f))
                  '#!void)
              (let ((__tmp143067 (get-output-string _%tmp-port142269%_)))
                (declare (not safe))
                (##write-string __tmp143067 _%port142256%_)))))))
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
      (lambda (_%port142127%_)
        (if (macro-character-port? _%port142127%_)
            (let ((_%old-width142129%_
                   (macro-character-port-output-width _%port142127%_)))
              (macro-character-port-output-width-set!
               _%port142127%_
               (lambda (_%port142131%_) '512))
              _%old-width142129%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port142124%_ _%old-width142125%_)
        (if (macro-character-port? _%port142124%_)
            (macro-character-port-output-width-set!
             _%port142124%_
             _%old-width142125%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e142122%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e142122%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn142116%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142116%_))
            (let ((_%e142119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142116%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e142119%_))
            (macro-abandoned-mutex-exception? _%exn142116%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn142112%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142112%_))
            (let ((_%e142114%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142112%_ 'exception))))
              (macro-cfun-conversion-exception? _%e142114%_))
            (macro-cfun-conversion-exception? _%exn142112%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn142108%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142108%_))
            (let ((_%e142110%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142108%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142110%_)
                  (macro-cfun-conversion-exception-arguments _%e142110%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e142110%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142108%_)
                (macro-cfun-conversion-exception-arguments _%exn142108%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn142108%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn142104%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142104%_))
            (let ((_%e142106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142104%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142106%_)
                  (macro-cfun-conversion-exception-code _%e142106%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e142106%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142104%_)
                (macro-cfun-conversion-exception-code _%exn142104%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn142104%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn142100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142100%_))
            (let ((_%e142102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142100%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142102%_)
                  (macro-cfun-conversion-exception-message _%e142102%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e142102%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142100%_)
                (macro-cfun-conversion-exception-message _%exn142100%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn142100%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn142094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142094%_))
            (let ((_%e142097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142094%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142097%_)
                  (macro-cfun-conversion-exception-procedure _%e142097%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e142097%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142094%_)
                (macro-cfun-conversion-exception-procedure _%exn142094%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn142094%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn142090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142090%_))
            (let ((_%e142092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142090%_ 'exception))))
              (macro-datum-parsing-exception? _%e142092%_))
            (macro-datum-parsing-exception? _%exn142090%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn142086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142086%_))
            (let ((_%e142088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142086%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142088%_)
                  (macro-datum-parsing-exception-kind _%e142088%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e142088%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142086%_)
                (macro-datum-parsing-exception-kind _%exn142086%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn142086%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn142082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142082%_))
            (let ((_%e142084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142082%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142084%_)
                  (macro-datum-parsing-exception-parameters _%e142084%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e142084%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142082%_)
                (macro-datum-parsing-exception-parameters _%exn142082%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn142082%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn142076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142076%_))
            (let ((_%e142079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142076%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142079%_)
                  (macro-datum-parsing-exception-readenv _%e142079%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e142079%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142076%_)
                (macro-datum-parsing-exception-readenv _%exn142076%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn142076%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn142070%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142070%_))
            (let ((_%e142073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142070%_ 'exception))))
              (macro-deadlock-exception? _%e142073%_))
            (macro-deadlock-exception? _%exn142070%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn142066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142066%_))
            (let ((_%e142068%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142066%_ 'exception))))
              (macro-divide-by-zero-exception? _%e142068%_))
            (macro-divide-by-zero-exception? _%exn142066%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn142062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142062%_))
            (let ((_%e142064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142062%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142064%_)
                  (macro-divide-by-zero-exception-arguments _%e142064%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e142064%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142062%_)
                (macro-divide-by-zero-exception-arguments _%exn142062%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn142062%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn142056%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142056%_))
            (let ((_%e142059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142056%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142059%_)
                  (macro-divide-by-zero-exception-procedure _%e142059%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e142059%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142056%_)
                (macro-divide-by-zero-exception-procedure _%exn142056%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn142056%_ '())))))))
    (define error-exception?
      (lambda (_%exn142052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142052%_))
            (let ((_%e142054%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142052%_ 'exception))))
              (macro-error-exception? _%e142054%_))
            (macro-error-exception? _%exn142052%_))))
    (define error-exception-message
      (lambda (_%exn142048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142048%_))
            (let ((_%e142050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142048%_ 'exception))))
              (if (macro-error-exception? _%e142050%_)
                  (macro-error-exception-message _%e142050%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e142050%_ '())))))
            (if (macro-error-exception? _%exn142048%_)
                (macro-error-exception-message _%exn142048%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn142048%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn142042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142042%_))
            (let ((_%e142045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142042%_ 'exception))))
              (if (macro-error-exception? _%e142045%_)
                  (macro-error-exception-parameters _%e142045%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e142045%_ '())))))
            (if (macro-error-exception? _%exn142042%_)
                (macro-error-exception-parameters _%exn142042%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn142042%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn142038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142038%_))
            (let ((_%e142040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142038%_ 'exception))))
              (macro-expression-parsing-exception? _%e142040%_))
            (macro-expression-parsing-exception? _%exn142038%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn142034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142034%_))
            (let ((_%e142036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142034%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142036%_)
                  (macro-expression-parsing-exception-kind _%e142036%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e142036%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142034%_)
                (macro-expression-parsing-exception-kind _%exn142034%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn142034%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn142030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142030%_))
            (let ((_%e142032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142030%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142032%_)
                  (macro-expression-parsing-exception-parameters _%e142032%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e142032%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142030%_)
                (macro-expression-parsing-exception-parameters _%exn142030%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn142030%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn142024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142024%_))
            (let ((_%e142027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142024%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142027%_)
                  (macro-expression-parsing-exception-source _%e142027%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e142027%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142024%_)
                (macro-expression-parsing-exception-source _%exn142024%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn142024%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn142020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142020%_))
            (let ((_%e142022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142020%_ 'exception))))
              (macro-file-exists-exception? _%e142022%_))
            (macro-file-exists-exception? _%exn142020%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn142016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142016%_))
            (let ((_%e142018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142016%_ 'exception))))
              (if (macro-file-exists-exception? _%e142018%_)
                  (macro-file-exists-exception-arguments _%e142018%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e142018%_ '())))))
            (if (macro-file-exists-exception? _%exn142016%_)
                (macro-file-exists-exception-arguments _%exn142016%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn142016%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn142010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142010%_))
            (let ((_%e142013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142010%_ 'exception))))
              (if (macro-file-exists-exception? _%e142013%_)
                  (macro-file-exists-exception-procedure _%e142013%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e142013%_ '())))))
            (if (macro-file-exists-exception? _%exn142010%_)
                (macro-file-exists-exception-procedure _%exn142010%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn142010%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn142006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142006%_))
            (let ((_%e142008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142006%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e142008%_))
            (macro-fixnum-overflow-exception? _%exn142006%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn142002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142002%_))
            (let ((_%e142004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142002%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142004%_)
                  (macro-fixnum-overflow-exception-arguments _%e142004%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e142004%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142002%_)
                (macro-fixnum-overflow-exception-arguments _%exn142002%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn142002%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn141996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141996%_))
            (let ((_%e141999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141996%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141999%_)
                  (macro-fixnum-overflow-exception-procedure _%e141999%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e141999%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141996%_)
                (macro-fixnum-overflow-exception-procedure _%exn141996%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn141996%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn141990%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141990%_))
            (let ((_%e141993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141990%_ 'exception))))
              (macro-heap-overflow-exception? _%e141993%_))
            (macro-heap-overflow-exception? _%exn141990%_))))
    (define inactive-thread-exception?
      (lambda (_%exn141986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141986%_))
            (let ((_%e141988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141986%_ 'exception))))
              (macro-inactive-thread-exception? _%e141988%_))
            (macro-inactive-thread-exception? _%exn141986%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn141982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141982%_))
            (let ((_%e141984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141982%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141984%_)
                  (macro-inactive-thread-exception-arguments _%e141984%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e141984%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141982%_)
                (macro-inactive-thread-exception-arguments _%exn141982%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn141982%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn141976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141976%_))
            (let ((_%e141979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141976%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141979%_)
                  (macro-inactive-thread-exception-procedure _%e141979%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e141979%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141976%_)
                (macro-inactive-thread-exception-procedure _%exn141976%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn141976%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn141972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141972%_))
            (let ((_%e141974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141972%_ 'exception))))
              (macro-initialized-thread-exception? _%e141974%_))
            (macro-initialized-thread-exception? _%exn141972%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn141968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141968%_))
            (let ((_%e141970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141968%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141970%_)
                  (macro-initialized-thread-exception-arguments _%e141970%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e141970%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141968%_)
                (macro-initialized-thread-exception-arguments _%exn141968%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn141968%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn141962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141962%_))
            (let ((_%e141965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141962%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141965%_)
                  (macro-initialized-thread-exception-procedure _%e141965%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e141965%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141962%_)
                (macro-initialized-thread-exception-procedure _%exn141962%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn141962%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn141958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141958%_))
            (let ((_%e141960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141958%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e141960%_))
            (macro-invalid-hash-number-exception? _%exn141958%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn141954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141954%_))
            (let ((_%e141956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141954%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141956%_)
                  (macro-invalid-hash-number-exception-arguments _%e141956%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e141956%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141954%_)
                (macro-invalid-hash-number-exception-arguments _%exn141954%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn141954%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn141948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141948%_))
            (let ((_%e141951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141948%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141951%_)
                  (macro-invalid-hash-number-exception-procedure _%e141951%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e141951%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141948%_)
                (macro-invalid-hash-number-exception-procedure _%exn141948%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn141948%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn141944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141944%_))
            (let ((_%e141946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141944%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e141946%_))
            (macro-invalid-utf8-encoding-exception? _%exn141944%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn141940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141940%_))
            (let ((_%e141942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141940%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141942%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e141942%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e141942%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141940%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn141940%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn141940%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn141934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141934%_))
            (let ((_%e141937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141934%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141937%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e141937%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e141937%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141934%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn141934%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn141934%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn141930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141930%_))
            (let ((_%e141932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141930%_ 'exception))))
              (macro-join-timeout-exception? _%e141932%_))
            (macro-join-timeout-exception? _%exn141930%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn141926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141926%_))
            (let ((_%e141928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141926%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141928%_)
                  (macro-join-timeout-exception-arguments _%e141928%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e141928%_ '())))))
            (if (macro-join-timeout-exception? _%exn141926%_)
                (macro-join-timeout-exception-arguments _%exn141926%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn141926%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn141920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141920%_))
            (let ((_%e141923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141920%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141923%_)
                  (macro-join-timeout-exception-procedure _%e141923%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e141923%_ '())))))
            (if (macro-join-timeout-exception? _%exn141920%_)
                (macro-join-timeout-exception-procedure _%exn141920%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn141920%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn141916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141916%_))
            (let ((_%e141918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141916%_ 'exception))))
              (macro-keyword-expected-exception? _%e141918%_))
            (macro-keyword-expected-exception? _%exn141916%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn141912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141912%_))
            (let ((_%e141914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141912%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141914%_)
                  (macro-keyword-expected-exception-arguments _%e141914%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e141914%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141912%_)
                (macro-keyword-expected-exception-arguments _%exn141912%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn141912%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn141906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141906%_))
            (let ((_%e141909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141906%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141909%_)
                  (macro-keyword-expected-exception-procedure _%e141909%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e141909%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141906%_)
                (macro-keyword-expected-exception-procedure _%exn141906%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn141906%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn141902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141902%_))
            (let ((_%e141904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141902%_ 'exception))))
              (macro-length-mismatch-exception? _%e141904%_))
            (macro-length-mismatch-exception? _%exn141902%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn141898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141898%_))
            (let ((_%e141900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141898%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141900%_)
                  (macro-length-mismatch-exception-arg-id _%e141900%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e141900%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141898%_)
                (macro-length-mismatch-exception-arg-id _%exn141898%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn141898%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn141894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141894%_))
            (let ((_%e141896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141894%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141896%_)
                  (macro-length-mismatch-exception-arguments _%e141896%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e141896%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141894%_)
                (macro-length-mismatch-exception-arguments _%exn141894%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn141894%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn141888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141888%_))
            (let ((_%e141891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141888%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141891%_)
                  (macro-length-mismatch-exception-procedure _%e141891%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e141891%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141888%_)
                (macro-length-mismatch-exception-procedure _%exn141888%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn141888%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn141884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141884%_))
            (let ((_%e141886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141884%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e141886%_))
            (macro-mailbox-receive-timeout-exception? _%exn141884%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn141880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141880%_))
            (let ((_%e141882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141880%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141882%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e141882%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e141882%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141880%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn141880%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn141880%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn141874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141874%_))
            (let ((_%e141877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141874%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141877%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e141877%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e141877%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141874%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn141874%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn141874%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn141870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141870%_))
            (let ((_%e141872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141870%_ 'exception))))
              (macro-module-not-found-exception? _%e141872%_))
            (macro-module-not-found-exception? _%exn141870%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn141866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141866%_))
            (let ((_%e141868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141866%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141868%_)
                  (macro-module-not-found-exception-arguments _%e141868%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e141868%_ '())))))
            (if (macro-module-not-found-exception? _%exn141866%_)
                (macro-module-not-found-exception-arguments _%exn141866%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn141866%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn141860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141860%_))
            (let ((_%e141863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141860%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141863%_)
                  (macro-module-not-found-exception-procedure _%e141863%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e141863%_ '())))))
            (if (macro-module-not-found-exception? _%exn141860%_)
                (macro-module-not-found-exception-procedure _%exn141860%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn141860%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn141854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141854%_))
            (let ((_%e141857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141854%_ 'exception))))
              (macro-multiple-c-return-exception? _%e141857%_))
            (macro-multiple-c-return-exception? _%exn141854%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn141850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141850%_))
            (let ((_%e141852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141850%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e141852%_))
            (macro-no-such-file-or-directory-exception? _%exn141850%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn141846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141846%_))
            (let ((_%e141848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141846%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141848%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e141848%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e141848%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141846%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn141846%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn141846%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn141840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141840%_))
            (let ((_%e141843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141840%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141843%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e141843%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e141843%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141840%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn141840%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn141840%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn141836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141836%_))
            (let ((_%e141838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141836%_ 'exception))))
              (macro-noncontinuable-exception? _%e141838%_))
            (macro-noncontinuable-exception? _%exn141836%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn141830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141830%_))
            (let ((_%e141833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141830%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e141833%_)
                  (macro-noncontinuable-exception-reason _%e141833%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e141833%_ '())))))
            (if (macro-noncontinuable-exception? _%exn141830%_)
                (macro-noncontinuable-exception-reason _%exn141830%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn141830%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn141826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141826%_))
            (let ((_%e141828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141826%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e141828%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn141826%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn141822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141822%_))
            (let ((_%e141824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141822%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141824%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e141824%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e141824%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141822%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn141822%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn141822%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn141816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141816%_))
            (let ((_%e141819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141816%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141819%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e141819%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e141819%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141816%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn141816%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn141816%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn141812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141812%_))
            (let ((_%e141814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141812%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e141814%_))
            (macro-nonprocedure-operator-exception? _%exn141812%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn141808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141808%_))
            (let ((_%e141810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141808%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141810%_)
                  (macro-nonprocedure-operator-exception-arguments _%e141810%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e141810%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141808%_)
                (macro-nonprocedure-operator-exception-arguments _%exn141808%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn141808%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn141804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141804%_))
            (let ((_%e141806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141804%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141806%_)
                  (macro-nonprocedure-operator-exception-code _%e141806%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e141806%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141804%_)
                (macro-nonprocedure-operator-exception-code _%exn141804%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn141804%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn141800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141800%_))
            (let ((_%e141802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141800%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141802%_)
                  (macro-nonprocedure-operator-exception-operator _%e141802%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e141802%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141800%_)
                (macro-nonprocedure-operator-exception-operator _%exn141800%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn141800%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn141794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141794%_))
            (let ((_%e141797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141794%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e141797%_)
                  (macro-nonprocedure-operator-exception-rte _%e141797%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e141797%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn141794%_)
                (macro-nonprocedure-operator-exception-rte _%exn141794%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn141794%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn141790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141790%_))
            (let ((_%e141792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141790%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e141792%_))
            (macro-not-in-compilation-context-exception? _%exn141790%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn141786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141786%_))
            (let ((_%e141788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141786%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e141788%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e141788%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e141788%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn141786%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn141786%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn141786%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn141780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141780%_))
            (let ((_%e141783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141780%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e141783%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e141783%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e141783%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn141780%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn141780%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn141780%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn141776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141776%_))
            (let ((_%e141778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141776%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e141778%_))
            (macro-number-of-arguments-limit-exception? _%exn141776%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn141772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141772%_))
            (let ((_%e141774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141772%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e141774%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e141774%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e141774%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn141772%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn141772%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn141772%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn141766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141766%_))
            (let ((_%e141769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141766%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e141769%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e141769%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e141769%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn141766%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn141766%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn141766%_ '())))))))
    (define os-exception?
      (lambda (_%exn141762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141762%_))
            (let ((_%e141764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141762%_ 'exception))))
              (macro-os-exception? _%e141764%_))
            (macro-os-exception? _%exn141762%_))))
    (define os-exception-arguments
      (lambda (_%exn141758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141758%_))
            (let ((_%e141760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141758%_ 'exception))))
              (if (macro-os-exception? _%e141760%_)
                  (macro-os-exception-arguments _%e141760%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e141760%_ '())))))
            (if (macro-os-exception? _%exn141758%_)
                (macro-os-exception-arguments _%exn141758%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn141758%_ '())))))))
    (define os-exception-code
      (lambda (_%exn141754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141754%_))
            (let ((_%e141756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141754%_ 'exception))))
              (if (macro-os-exception? _%e141756%_)
                  (macro-os-exception-code _%e141756%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e141756%_ '())))))
            (if (macro-os-exception? _%exn141754%_)
                (macro-os-exception-code _%exn141754%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn141754%_ '())))))))
    (define os-exception-message
      (lambda (_%exn141750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141750%_))
            (let ((_%e141752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141750%_ 'exception))))
              (if (macro-os-exception? _%e141752%_)
                  (macro-os-exception-message _%e141752%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e141752%_ '())))))
            (if (macro-os-exception? _%exn141750%_)
                (macro-os-exception-message _%exn141750%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn141750%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn141744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141744%_))
            (let ((_%e141747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141744%_ 'exception))))
              (if (macro-os-exception? _%e141747%_)
                  (macro-os-exception-procedure _%e141747%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e141747%_ '())))))
            (if (macro-os-exception? _%exn141744%_)
                (macro-os-exception-procedure _%exn141744%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn141744%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn141740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141740%_))
            (let ((_%e141742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141740%_ 'exception))))
              (macro-permission-denied-exception? _%e141742%_))
            (macro-permission-denied-exception? _%exn141740%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn141736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141736%_))
            (let ((_%e141738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141736%_ 'exception))))
              (if (macro-permission-denied-exception? _%e141738%_)
                  (macro-permission-denied-exception-arguments _%e141738%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e141738%_ '())))))
            (if (macro-permission-denied-exception? _%exn141736%_)
                (macro-permission-denied-exception-arguments _%exn141736%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn141736%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn141730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141730%_))
            (let ((_%e141733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141730%_ 'exception))))
              (if (macro-permission-denied-exception? _%e141733%_)
                  (macro-permission-denied-exception-procedure _%e141733%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e141733%_ '())))))
            (if (macro-permission-denied-exception? _%exn141730%_)
                (macro-permission-denied-exception-procedure _%exn141730%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn141730%_ '())))))))
    (define range-exception?
      (lambda (_%exn141726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141726%_))
            (let ((_%e141728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141726%_ 'exception))))
              (macro-range-exception? _%e141728%_))
            (macro-range-exception? _%exn141726%_))))
    (define range-exception-arg-id
      (lambda (_%exn141722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141722%_))
            (let ((_%e141724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141722%_ 'exception))))
              (if (macro-range-exception? _%e141724%_)
                  (macro-range-exception-arg-id _%e141724%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e141724%_ '())))))
            (if (macro-range-exception? _%exn141722%_)
                (macro-range-exception-arg-id _%exn141722%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn141722%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn141718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141718%_))
            (let ((_%e141720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141718%_ 'exception))))
              (if (macro-range-exception? _%e141720%_)
                  (macro-range-exception-arguments _%e141720%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e141720%_ '())))))
            (if (macro-range-exception? _%exn141718%_)
                (macro-range-exception-arguments _%exn141718%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn141718%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn141712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141712%_))
            (let ((_%e141715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141712%_ 'exception))))
              (if (macro-range-exception? _%e141715%_)
                  (macro-range-exception-procedure _%e141715%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e141715%_ '())))))
            (if (macro-range-exception? _%exn141712%_)
                (macro-range-exception-procedure _%exn141712%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn141712%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn141708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141708%_))
            (let ((_%e141710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141708%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e141710%_))
            (macro-rpc-remote-error-exception? _%exn141708%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn141704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141704%_))
            (let ((_%e141706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141704%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141706%_)
                  (macro-rpc-remote-error-exception-arguments _%e141706%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e141706%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141704%_)
                (macro-rpc-remote-error-exception-arguments _%exn141704%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn141704%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn141700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141700%_))
            (let ((_%e141702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141700%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141702%_)
                  (macro-rpc-remote-error-exception-message _%e141702%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e141702%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141700%_)
                (macro-rpc-remote-error-exception-message _%exn141700%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn141700%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn141694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141694%_))
            (let ((_%e141697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141694%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e141697%_)
                  (macro-rpc-remote-error-exception-procedure _%e141697%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e141697%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn141694%_)
                (macro-rpc-remote-error-exception-procedure _%exn141694%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn141694%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn141690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141690%_))
            (let ((_%e141692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141690%_ 'exception))))
              (macro-scheduler-exception? _%e141692%_))
            (macro-scheduler-exception? _%exn141690%_))))
    (define scheduler-exception-reason
      (lambda (_%exn141684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141684%_))
            (let ((_%e141687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141684%_ 'exception))))
              (if (macro-scheduler-exception? _%e141687%_)
                  (macro-scheduler-exception-reason _%e141687%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e141687%_ '())))))
            (if (macro-scheduler-exception? _%exn141684%_)
                (macro-scheduler-exception-reason _%exn141684%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn141684%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn141680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141680%_))
            (let ((_%e141682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141680%_ 'exception))))
              (macro-sfun-conversion-exception? _%e141682%_))
            (macro-sfun-conversion-exception? _%exn141680%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn141676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141676%_))
            (let ((_%e141678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141676%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141678%_)
                  (macro-sfun-conversion-exception-arguments _%e141678%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e141678%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141676%_)
                (macro-sfun-conversion-exception-arguments _%exn141676%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn141676%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn141672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141672%_))
            (let ((_%e141674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141672%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141674%_)
                  (macro-sfun-conversion-exception-code _%e141674%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e141674%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141672%_)
                (macro-sfun-conversion-exception-code _%exn141672%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn141672%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn141668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141668%_))
            (let ((_%e141670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141668%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141670%_)
                  (macro-sfun-conversion-exception-message _%e141670%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e141670%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141668%_)
                (macro-sfun-conversion-exception-message _%exn141668%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn141668%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn141662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141662%_))
            (let ((_%e141665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141662%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e141665%_)
                  (macro-sfun-conversion-exception-procedure _%e141665%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e141665%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn141662%_)
                (macro-sfun-conversion-exception-procedure _%exn141662%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn141662%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn141656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141656%_))
            (let ((_%e141659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141656%_ 'exception))))
              (macro-stack-overflow-exception? _%e141659%_))
            (macro-stack-overflow-exception? _%exn141656%_))))
    (define started-thread-exception?
      (lambda (_%exn141652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141652%_))
            (let ((_%e141654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141652%_ 'exception))))
              (macro-started-thread-exception? _%e141654%_))
            (macro-started-thread-exception? _%exn141652%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn141648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141648%_))
            (let ((_%e141650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141648%_ 'exception))))
              (if (macro-started-thread-exception? _%e141650%_)
                  (macro-started-thread-exception-arguments _%e141650%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e141650%_ '())))))
            (if (macro-started-thread-exception? _%exn141648%_)
                (macro-started-thread-exception-arguments _%exn141648%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn141648%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn141642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141642%_))
            (let ((_%e141645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141642%_ 'exception))))
              (if (macro-started-thread-exception? _%e141645%_)
                  (macro-started-thread-exception-procedure _%e141645%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e141645%_ '())))))
            (if (macro-started-thread-exception? _%exn141642%_)
                (macro-started-thread-exception-procedure _%exn141642%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn141642%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn141638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141638%_))
            (let ((_%e141640%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141638%_ 'exception))))
              (macro-terminated-thread-exception? _%e141640%_))
            (macro-terminated-thread-exception? _%exn141638%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn141634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141634%_))
            (let ((_%e141636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141634%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e141636%_)
                  (macro-terminated-thread-exception-arguments _%e141636%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e141636%_ '())))))
            (if (macro-terminated-thread-exception? _%exn141634%_)
                (macro-terminated-thread-exception-arguments _%exn141634%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn141634%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn141628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141628%_))
            (let ((_%e141631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141628%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e141631%_)
                  (macro-terminated-thread-exception-procedure _%e141631%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e141631%_ '())))))
            (if (macro-terminated-thread-exception? _%exn141628%_)
                (macro-terminated-thread-exception-procedure _%exn141628%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn141628%_ '())))))))
    (define type-exception?
      (lambda (_%exn141624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141624%_))
            (let ((_%e141626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141624%_ 'exception))))
              (macro-type-exception? _%e141626%_))
            (macro-type-exception? _%exn141624%_))))
    (define type-exception-arg-id
      (lambda (_%exn141620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141620%_))
            (let ((_%e141622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141620%_ 'exception))))
              (if (macro-type-exception? _%e141622%_)
                  (macro-type-exception-arg-id _%e141622%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e141622%_ '())))))
            (if (macro-type-exception? _%exn141620%_)
                (macro-type-exception-arg-id _%exn141620%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn141620%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn141616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141616%_))
            (let ((_%e141618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141616%_ 'exception))))
              (if (macro-type-exception? _%e141618%_)
                  (macro-type-exception-arguments _%e141618%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e141618%_ '())))))
            (if (macro-type-exception? _%exn141616%_)
                (macro-type-exception-arguments _%exn141616%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn141616%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn141612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141612%_))
            (let ((_%e141614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141612%_ 'exception))))
              (if (macro-type-exception? _%e141614%_)
                  (macro-type-exception-procedure _%e141614%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e141614%_ '())))))
            (if (macro-type-exception? _%exn141612%_)
                (macro-type-exception-procedure _%exn141612%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn141612%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn141606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141606%_))
            (let ((_%e141609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141606%_ 'exception))))
              (if (macro-type-exception? _%e141609%_)
                  (macro-type-exception-type-id _%e141609%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e141609%_ '())))))
            (if (macro-type-exception? _%exn141606%_)
                (macro-type-exception-type-id _%exn141606%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn141606%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn141602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141602%_))
            (let ((_%e141604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141602%_ 'exception))))
              (macro-unbound-global-exception? _%e141604%_))
            (macro-unbound-global-exception? _%exn141602%_))))
    (define unbound-global-exception-code
      (lambda (_%exn141598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141598%_))
            (let ((_%e141600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141598%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141600%_)
                  (macro-unbound-global-exception-code _%e141600%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e141600%_ '())))))
            (if (macro-unbound-global-exception? _%exn141598%_)
                (macro-unbound-global-exception-code _%exn141598%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn141598%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn141594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141594%_))
            (let ((_%e141596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141594%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141596%_)
                  (macro-unbound-global-exception-rte _%e141596%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e141596%_ '())))))
            (if (macro-unbound-global-exception? _%exn141594%_)
                (macro-unbound-global-exception-rte _%exn141594%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn141594%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn141588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141588%_))
            (let ((_%e141591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141588%_ 'exception))))
              (if (macro-unbound-global-exception? _%e141591%_)
                  (macro-unbound-global-exception-variable _%e141591%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e141591%_ '())))))
            (if (macro-unbound-global-exception? _%exn141588%_)
                (macro-unbound-global-exception-variable _%exn141588%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn141588%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn141584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141584%_))
            (let ((_%e141586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141584%_ 'exception))))
              (macro-unbound-key-exception? _%e141586%_))
            (macro-unbound-key-exception? _%exn141584%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn141580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141580%_))
            (let ((_%e141582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141580%_ 'exception))))
              (if (macro-unbound-key-exception? _%e141582%_)
                  (macro-unbound-key-exception-arguments _%e141582%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e141582%_ '())))))
            (if (macro-unbound-key-exception? _%exn141580%_)
                (macro-unbound-key-exception-arguments _%exn141580%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn141580%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn141574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141574%_))
            (let ((_%e141577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141574%_ 'exception))))
              (if (macro-unbound-key-exception? _%e141577%_)
                  (macro-unbound-key-exception-procedure _%e141577%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e141577%_ '())))))
            (if (macro-unbound-key-exception? _%exn141574%_)
                (macro-unbound-key-exception-procedure _%exn141574%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn141574%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn141570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141570%_))
            (let ((_%e141572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141570%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e141572%_))
            (macro-unbound-os-environment-variable-exception? _%exn141570%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn141566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141566%_))
            (let ((_%e141568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141566%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e141568%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e141568%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e141568%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn141566%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn141566%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn141566%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn141560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141560%_))
            (let ((_%e141563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141560%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e141563%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e141563%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e141563%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn141560%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn141560%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn141560%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn141556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141556%_))
            (let ((_%e141558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141556%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e141558%_))
            (macro-unbound-serial-number-exception? _%exn141556%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn141552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141552%_))
            (let ((_%e141554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141552%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141554%_)
                  (macro-unbound-serial-number-exception-arguments _%e141554%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e141554%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141552%_)
                (macro-unbound-serial-number-exception-arguments _%exn141552%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn141552%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn141546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141546%_))
            (let ((_%e141549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141546%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e141549%_)
                  (macro-unbound-serial-number-exception-procedure _%e141549%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e141549%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn141546%_)
                (macro-unbound-serial-number-exception-procedure _%exn141546%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn141546%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn141542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141542%_))
            (let ((_%e141544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141542%_ 'exception))))
              (macro-uncaught-exception? _%e141544%_))
            (macro-uncaught-exception? _%exn141542%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn141538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141538%_))
            (let ((_%e141540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141538%_ 'exception))))
              (if (macro-uncaught-exception? _%e141540%_)
                  (macro-uncaught-exception-arguments _%e141540%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e141540%_ '())))))
            (if (macro-uncaught-exception? _%exn141538%_)
                (macro-uncaught-exception-arguments _%exn141538%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn141538%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn141534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141534%_))
            (let ((_%e141536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141534%_ 'exception))))
              (if (macro-uncaught-exception? _%e141536%_)
                  (macro-uncaught-exception-procedure _%e141536%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e141536%_ '())))))
            (if (macro-uncaught-exception? _%exn141534%_)
                (macro-uncaught-exception-procedure _%exn141534%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn141534%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn141528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141528%_))
            (let ((_%e141531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141528%_ 'exception))))
              (if (macro-uncaught-exception? _%e141531%_)
                  (macro-uncaught-exception-reason _%e141531%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e141531%_ '())))))
            (if (macro-uncaught-exception? _%exn141528%_)
                (macro-uncaught-exception-reason _%exn141528%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn141528%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn141524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141524%_))
            (let ((_%e141526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141524%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e141526%_))
            (macro-uninitialized-thread-exception? _%exn141524%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn141520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141520%_))
            (let ((_%e141522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141520%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141522%_)
                  (macro-uninitialized-thread-exception-arguments _%e141522%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e141522%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141520%_)
                (macro-uninitialized-thread-exception-arguments _%exn141520%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn141520%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn141514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141514%_))
            (let ((_%e141517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141514%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e141517%_)
                  (macro-uninitialized-thread-exception-procedure _%e141517%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e141517%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn141514%_)
                (macro-uninitialized-thread-exception-procedure _%exn141514%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn141514%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn141510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141510%_))
            (let ((_%e141512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141510%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e141512%_))
            (macro-unknown-keyword-argument-exception? _%exn141510%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn141506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141506%_))
            (let ((_%e141508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141506%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141508%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e141508%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e141508%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141506%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn141506%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn141506%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn141500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141500%_))
            (let ((_%e141503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141500%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e141503%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e141503%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e141503%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn141500%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn141500%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn141500%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn141496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141496%_))
            (let ((_%e141498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141496%_ 'exception))))
              (macro-unterminated-process-exception? _%e141498%_))
            (macro-unterminated-process-exception? _%exn141496%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn141492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141492%_))
            (let ((_%e141494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141492%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141494%_)
                  (macro-unterminated-process-exception-arguments _%e141494%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e141494%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141492%_)
                (macro-unterminated-process-exception-arguments _%exn141492%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn141492%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn141486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141486%_))
            (let ((_%e141489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141486%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e141489%_)
                  (macro-unterminated-process-exception-procedure _%e141489%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e141489%_ '())))))
            (if (macro-unterminated-process-exception? _%exn141486%_)
                (macro-unterminated-process-exception-procedure _%exn141486%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn141486%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn141482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141482%_))
            (let ((_%e141484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141482%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e141484%_))
            (macro-wrong-number-of-arguments-exception? _%exn141482%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn141478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141478%_))
            (let ((_%e141480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141478%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141480%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e141480%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e141480%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141478%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn141478%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn141478%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn141472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141472%_))
            (let ((_%e141475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141472%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e141475%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e141475%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e141475%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn141472%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn141472%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn141472%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn141468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141468%_))
            (let ((_%e141470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141468%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e141470%_))
            (macro-wrong-number-of-values-exception? _%exn141468%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn141464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141464%_))
            (let ((_%e141466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141464%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141466%_)
                  (macro-wrong-number-of-values-exception-code _%e141466%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e141466%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141464%_)
                (macro-wrong-number-of-values-exception-code _%exn141464%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn141464%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn141460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141460%_))
            (let ((_%e141462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141460%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141462%_)
                  (macro-wrong-number-of-values-exception-rte _%e141462%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e141462%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141460%_)
                (macro-wrong-number-of-values-exception-rte _%exn141460%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn141460%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn141454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141454%_))
            (let ((_%e141457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141454%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e141457%_)
                  (macro-wrong-number-of-values-exception-vals _%e141457%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e141457%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn141454%_)
                (macro-wrong-number-of-values-exception-vals _%exn141454%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn141454%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn141448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141448%_))
            (let ((_%e141451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141448%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e141451%_))
            (macro-wrong-processor-c-return-exception? _%exn141448%_))))))
