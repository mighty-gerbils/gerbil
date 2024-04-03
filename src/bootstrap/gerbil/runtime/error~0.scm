(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712146026)
  (begin
    (define Exception::t
      (let ((__tmp100072 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100072
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100062%_
        (apply make-instance Exception::t _%$args100062%_)))
    (define StackTrace::t
      (let ((__tmp100073 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100073
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100059%_
        (apply make-instance StackTrace::t _%$args100059%_)))
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
      (let ((__tmp100074 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100074
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100056%_ (apply make-instance Error::t _%$args100056%_)))
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
      (let ((__tmp100075 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100075
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100053%_
        (apply make-instance ContractViolation::t _%$args100053%_)))
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
      (let ((__tmp100076 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100076
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100050%_
        (apply make-instance RuntimeException::t _%$args100050%_)))
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
      (lambda (_%exn100045%_ _%continue100046%_)
        (let ((_%exn100048%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100045%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100048%_ _%continue100046%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100041%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100041%_ 'continuation))
                '#!void
                (let ((__tmp100077
                       (lambda (_%cont100043%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100041%_
                            'continuation
                            _%cont100043%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100077)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100041%_))))
    (define error
      (lambda (_%message100038%_ . _%irritants100039%_)
        (let ((__tmp100078
               (let ((__obj100069
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100069
                  _%message100038%_
                  'irritants:
                  _%irritants100039%_)
                 __obj100069)))
          (declare (not safe))
          (raise __tmp100078))))
    (define __raise-contract-violation-error__%
      (lambda (_%_100009%_
               _%ctx100004100011%_
               _%contract-expr100005100013%_
               _%value100006100015%_
               _%message100017%_)
        (let* ((_%ctx100019%_
                (if (eq? _%ctx100004100011%_ absent-value)
                    '#f
                    _%ctx100004100011%_))
               (_%contract-expr100021%_
                (if (eq? _%contract-expr100005100013%_ absent-value)
                    '#f
                    _%contract-expr100005100013%_))
               (_%value100023%_
                (if (eq? _%value100006100015%_ absent-value)
                    '#f
                    _%value100006100015%_))
               (__tmp100079
                (let ((__obj100070
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100070
                   _%message100017%_
                   'where:
                   _%ctx100019%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100021%_
                               (cons 'value: (cons _%value100023%_ '())))))
                  __obj100070)))
          (declare (not safe))
          (raise __tmp100079))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100028%_ . _%args100029%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100028%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100028%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100028%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100028%_
                  'value:
                  absent-value))
               _%args100029%_)))
    (define __raise-contract-violation-error
      (lambda _%args100007100035%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100007100035%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler99978%_ _%thunk99979%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99978%_))
              (let ((_%handler99983%_ _%handler99978%_))
                (if (let () (declare (not safe)) (procedure? _%thunk99979%_))
                    (let ((_%thunk99993%_ _%thunk99979%_))
                      (declare (not safe))
                      (__with-exception-handler
                       _%handler99983%_
                       _%thunk99993%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99979%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@59.31-59.38"
                 'contract:
                 'procedure?
                 'value:
                 _%handler99978%_)
                '#!void)))))
    (define __with-exception-handler
      (lambda (_%handler99953%_ _%thunk99954%_)
        (let ((_%handler99957%_ _%handler99953%_))
          (let* ((_%thunk99965%_ _%thunk99954%_)
                 (__tmp100080
                  (lambda (_%exn99974%_)
                    (let ((_%exn99976%_
                           (let ()
                             (declare (not safe))
                             (wrap-runtime-exception _%exn99974%_))))
                      (declare (not safe))
                      (_%handler99957%_ _%exn99976%_)))))
            (declare (not safe))
            (##with-exception-handler __tmp100080 _%thunk99965%_)))))
    (define with-catch
      (lambda (_%handler99928%_ _%thunk99929%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99928%_))
              (let ((_%handler99933%_ _%handler99928%_))
                (if (let () (declare (not safe)) (procedure? _%thunk99929%_))
                    (let ((_%thunk99943%_ _%thunk99929%_))
                      (declare (not safe))
                      (__with-catch _%handler99933%_ _%thunk99943%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99929%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/error.ss\"@66.19-66.26"
                 'contract:
                 'procedure?
                 'value:
                 _%handler99928%_)
                '#!void)))))
    (define __with-catch
      (lambda (_%handler99903%_ _%thunk99904%_)
        (let ((_%handler99907%_ _%handler99903%_))
          (let* ((_%thunk99915%_ _%thunk99904%_)
                 (__tmp100081
                  (lambda (_%cont99924%_)
                    (let ((__tmp100082
                           (lambda (_%exn99926%_)
                             (let ()
                               (declare (not safe))
                               (##continuation-graft
                                _%cont99924%_
                                _%handler99907%_
                                _%exn99926%_)))))
                      (declare (not safe))
                      (__with-exception-handler __tmp100082 _%thunk99915%_)))))
            (declare (not safe))
            (##continuation-capture __tmp100081)))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn99890%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn99890%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn99890%_)))
            (let () _%exn99890%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn99890%_))
                (let () _%exn99890%_)
                (if (macro-exception? _%exn99890%_)
                    (let ((_%rte99898%_
                           (let ((__obj100071
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100071
                                _%exn99890%_
                                '2
                                '#f
                                '#f))
                             __obj100071)))
                      (let ((__tmp100083
                             (lambda (_%cont99900%_)
                               (let ((__tmp100084
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont99900%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte99898%_
                                  'continuation
                                  __tmp100084)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100083))
                      _%rte99898%_)
                    (let () _%exn99890%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj99885%_)
        (let ((_%$e99887%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj99885%_))))
          (if _%$e99887%_
              _%$e99887%_
              (let () (declare (not safe)) (error-exception? _%obj99885%_))))))
    (define error-message
      (lambda (_%obj99878%_)
        (let ((_%$e99880%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj99878%_ 'message false))))
          (if _%$e99880%_
              _%$e99880%_
              (if (let () (declare (not safe)) (error-exception? _%obj99878%_))
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj99878%_))
                  (let () '#f))))))
    (define error-irritants
      (lambda (_%obj99873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99873%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99873%_ 'irritants))
            (if (let () (declare (not safe)) (error-exception? _%obj99873%_))
                (let ()
                  (declare (not safe))
                  (error-exception-parameters _%obj99873%_))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj99871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99871%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99871%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e99852%_ _%port99853%_)
        (let ((_%$e99855%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e99852%_ 'display-exception))))
          (if _%$e99855%_
              ((lambda (_%f99858%_) (_%f99858%_ _%e99852%_ _%port99853%_))
               _%$e99855%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e99852%_ _%port99853%_))))))
    (define display-exception__0
      (lambda (_%e99864%_)
        (let ((_%port99866%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e99864%_ _%port99866%_))))
    (define display-exception
      (lambda _g100086_
        (let ((_g100085_ (let () (declare (not safe)) (##length _g100086_))))
          (cond ((let () (declare (not safe)) (##fx= _g100085_ 1))
                 (apply (lambda (_%e99864%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e99864%_)))
                        _g100086_))
                ((let () (declare (not safe)) (##fx= _g100085_ 2))
                 (apply (lambda (_%e99868%_ _%port99869%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e99868%_ _%port99869%_)))
                        _g100086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100086_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99830%_ _%message99831%_ . _%rest99832%_)
        (let ()
          (let* ((_%self99835%_ _%self99830%_)
                 (_%message99849%_
                  (if (let () (declare (not safe)) (string? _%message99831%_))
                      _%message99831%_
                      (call-with-output-string
                       '""
                       (lambda (_%g9984499846%_)
                         (display _%message99831%_ _%g9984499846%_))))))
            (let ()
              (declare (not safe))
              (unchecked-slot-set! _%self99835%_ 'message _%message99849%_))
            (apply class-instance-init! _%self99835%_ _%rest99832%_)))))
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
      (lambda (_%self99554%_ _%port99555%_)
        (let ((_%self99558%_ _%self99554%_))
          (let ((_%tmp-port99568%_ (open-output-string))
                (_%display-error-newline99569%_
                 (> (output-port-column _%port99555%_) '0)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port99568%_))
            (let ((__tmp100087
                   (lambda ()
                     (if _%display-error-newline99569%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e99572%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self99558%_ 'where))))
                       (if _%$e99572%_
                           (display _%$e99572%_)
                           (let () (display '"?"))))
                     (let ((__tmp100088
                            (let ((__tmp100089
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self99558%_))))
                              (declare (not safe))
                              (##type-name __tmp100089))))
                       (declare (not safe))
                       (display* '" [" __tmp100088 '"]: "))
                     (let ((__tmp100090
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self99558%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100090))
                     (let ((_%irritants99576%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self99558%_ 'irritants))))
                       (if (let ()
                             (declare (not safe))
                             (null? _%irritants99576%_))
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj99578%_)
                                (let ()
                                  (declare (not safe))
                                  (##write _%obj99578%_))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants99576%_)
                             (newline))))
                     (if (and '#t
                              (let ()
                                (declare (not safe))
                                (dump-stack-trace?)))
                         (let ((_%cont9957999581%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99558%_
                                   'continuation))))
                           (if _%cont9957999581%_
                               (let ((_%cont99584%_ _%cont9957999581%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont99584%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100087
               current-output-port
               _%tmp-port99568%_))
            (let ((__tmp100091 (get-output-string _%tmp-port99568%_)))
              (declare (not safe))
              (##write-string __tmp100091 _%port99555%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99410%_ _%port99411%_)
        (let ()
          (let* ((_%self99414%_ _%self99410%_)
                 (_%tmp-port99424%_ (open-output-string)))
            (let () (declare (not safe)) (fix-port-width! _%tmp-port99424%_))
            (let ((__tmp100092
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%self99414%_ 'exception))))
              (declare (not safe))
              (##default-display-exception __tmp100092 _%tmp-port99424%_))
            (if (let () (declare (not safe)) (dump-stack-trace?))
                (let ((_%cont9942599427%_
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99414%_ 'continuation))))
                  (if _%cont9942599427%_
                      (let ((_%cont99430%_ _%cont9942599427%_))
                        (display '"--- continuation backtrace:"
                                 _%tmp-port99424%_)
                        (newline _%tmp-port99424%_)
                        (display-continuation-backtrace
                         _%cont99430%_
                         _%tmp-port99424%_))
                      '#f))
                '#!void)
            (let ((__tmp100093 (get-output-string _%tmp-port99424%_)))
              (declare (not safe))
              (##write-string __tmp100093 _%port99411%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99282%_)
        (if (macro-character-port? _%port99282%_)
            (let ((_%old-width99284%_
                   (macro-character-port-output-width _%port99282%_)))
              (macro-character-port-output-width-set!
               _%port99282%_
               (lambda (_%port99286%_) '256))
              _%old-width99284%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99279%_ _%old-width99280%_)
        (if (macro-character-port? _%port99279%_)
            (macro-character-port-output-width-set!
             _%port99279%_
             _%old-width99280%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99277%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99277%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99271%_))
            (let ((_%e99274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99271%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99274%_))
            (macro-abandoned-mutex-exception? _%exn99271%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99267%_))
            (let ((_%e99269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99267%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99269%_))
            (macro-cfun-conversion-exception? _%exn99267%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99263%_))
            (let ((_%e99265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99263%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99265%_)
                  (macro-cfun-conversion-exception-arguments _%e99265%_)
                  (let ((__tmp100094
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99265%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100094))))
            (if (macro-cfun-conversion-exception? _%exn99263%_)
                (macro-cfun-conversion-exception-arguments _%exn99263%_)
                (let ((__tmp100095
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99263%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100095))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99259%_))
            (let ((_%e99261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99259%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99261%_)
                  (macro-cfun-conversion-exception-code _%e99261%_)
                  (let ((__tmp100096
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99261%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100096))))
            (if (macro-cfun-conversion-exception? _%exn99259%_)
                (macro-cfun-conversion-exception-code _%exn99259%_)
                (let ((__tmp100097
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99259%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100097))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99255%_))
            (let ((_%e99257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99255%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99257%_)
                  (macro-cfun-conversion-exception-message _%e99257%_)
                  (let ((__tmp100098
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99257%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100098))))
            (if (macro-cfun-conversion-exception? _%exn99255%_)
                (macro-cfun-conversion-exception-message _%exn99255%_)
                (let ((__tmp100099
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99255%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100099))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99249%_))
            (let ((_%e99252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99249%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99252%_)
                  (macro-cfun-conversion-exception-procedure _%e99252%_)
                  (let ((__tmp100100
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99252%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100100))))
            (if (macro-cfun-conversion-exception? _%exn99249%_)
                (macro-cfun-conversion-exception-procedure _%exn99249%_)
                (let ((__tmp100101
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99249%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100101))))))
    (define datum-parsing-exception?
      (lambda (_%exn99245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99245%_))
            (let ((_%e99247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99245%_ 'exception))))
              (macro-datum-parsing-exception? _%e99247%_))
            (macro-datum-parsing-exception? _%exn99245%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99241%_))
            (let ((_%e99243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99241%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99243%_)
                  (macro-datum-parsing-exception-kind _%e99243%_)
                  (let ((__tmp100102
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99243%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100102))))
            (if (macro-datum-parsing-exception? _%exn99241%_)
                (macro-datum-parsing-exception-kind _%exn99241%_)
                (let ((__tmp100103
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99241%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100103))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99237%_))
            (let ((_%e99239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99237%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99239%_)
                  (macro-datum-parsing-exception-parameters _%e99239%_)
                  (let ((__tmp100104
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99239%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100104))))
            (if (macro-datum-parsing-exception? _%exn99237%_)
                (macro-datum-parsing-exception-parameters _%exn99237%_)
                (let ((__tmp100105
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99237%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100105))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99231%_))
            (let ((_%e99234%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99231%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99234%_)
                  (macro-datum-parsing-exception-readenv _%e99234%_)
                  (let ((__tmp100106
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99234%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100106))))
            (if (macro-datum-parsing-exception? _%exn99231%_)
                (macro-datum-parsing-exception-readenv _%exn99231%_)
                (let ((__tmp100107
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99231%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100107))))))
    (define deadlock-exception?
      (lambda (_%exn99225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99225%_))
            (let ((_%e99228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99225%_ 'exception))))
              (macro-deadlock-exception? _%e99228%_))
            (macro-deadlock-exception? _%exn99225%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99221%_))
            (let ((_%e99223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99221%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99223%_))
            (macro-divide-by-zero-exception? _%exn99221%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99217%_))
            (let ((_%e99219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99217%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99219%_)
                  (macro-divide-by-zero-exception-arguments _%e99219%_)
                  (let ((__tmp100108
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99219%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100108))))
            (if (macro-divide-by-zero-exception? _%exn99217%_)
                (macro-divide-by-zero-exception-arguments _%exn99217%_)
                (let ((__tmp100109
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99217%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100109))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99211%_))
            (let ((_%e99214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99211%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99214%_)
                  (macro-divide-by-zero-exception-procedure _%e99214%_)
                  (let ((__tmp100110
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99214%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100110))))
            (if (macro-divide-by-zero-exception? _%exn99211%_)
                (macro-divide-by-zero-exception-procedure _%exn99211%_)
                (let ((__tmp100111
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99211%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100111))))))
    (define error-exception?
      (lambda (_%exn99207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99207%_))
            (let ((_%e99209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99207%_ 'exception))))
              (macro-error-exception? _%e99209%_))
            (macro-error-exception? _%exn99207%_))))
    (define error-exception-message
      (lambda (_%exn99203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99203%_))
            (let ((_%e99205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99203%_ 'exception))))
              (if (macro-error-exception? _%e99205%_)
                  (macro-error-exception-message _%e99205%_)
                  (let ((__tmp100112
                         (cons 'error-exception-message
                               (cons _%e99205%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100112))))
            (if (macro-error-exception? _%exn99203%_)
                (macro-error-exception-message _%exn99203%_)
                (let ((__tmp100113
                       (cons 'error-exception-message
                             (cons _%exn99203%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100113))))))
    (define error-exception-parameters
      (lambda (_%exn99197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99197%_))
            (let ((_%e99200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99197%_ 'exception))))
              (if (macro-error-exception? _%e99200%_)
                  (macro-error-exception-parameters _%e99200%_)
                  (let ((__tmp100114
                         (cons 'error-exception-parameters
                               (cons _%e99200%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100114))))
            (if (macro-error-exception? _%exn99197%_)
                (macro-error-exception-parameters _%exn99197%_)
                (let ((__tmp100115
                       (cons 'error-exception-parameters
                             (cons _%exn99197%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100115))))))
    (define expression-parsing-exception?
      (lambda (_%exn99193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99193%_))
            (let ((_%e99195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99193%_ 'exception))))
              (macro-expression-parsing-exception? _%e99195%_))
            (macro-expression-parsing-exception? _%exn99193%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99189%_))
            (let ((_%e99191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99189%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99191%_)
                  (macro-expression-parsing-exception-kind _%e99191%_)
                  (let ((__tmp100116
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99191%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100116))))
            (if (macro-expression-parsing-exception? _%exn99189%_)
                (macro-expression-parsing-exception-kind _%exn99189%_)
                (let ((__tmp100117
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99189%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100117))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99185%_))
            (let ((_%e99187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99185%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99187%_)
                  (macro-expression-parsing-exception-parameters _%e99187%_)
                  (let ((__tmp100118
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99187%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100118))))
            (if (macro-expression-parsing-exception? _%exn99185%_)
                (macro-expression-parsing-exception-parameters _%exn99185%_)
                (let ((__tmp100119
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99185%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100119))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99179%_))
            (let ((_%e99182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99179%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99182%_)
                  (macro-expression-parsing-exception-source _%e99182%_)
                  (let ((__tmp100120
                         (cons 'expression-parsing-exception-source
                               (cons _%e99182%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100120))))
            (if (macro-expression-parsing-exception? _%exn99179%_)
                (macro-expression-parsing-exception-source _%exn99179%_)
                (let ((__tmp100121
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99179%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100121))))))
    (define file-exists-exception?
      (lambda (_%exn99175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99175%_))
            (let ((_%e99177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99175%_ 'exception))))
              (macro-file-exists-exception? _%e99177%_))
            (macro-file-exists-exception? _%exn99175%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99171%_))
            (let ((_%e99173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99171%_ 'exception))))
              (if (macro-file-exists-exception? _%e99173%_)
                  (macro-file-exists-exception-arguments _%e99173%_)
                  (let ((__tmp100122
                         (cons 'file-exists-exception-arguments
                               (cons _%e99173%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100122))))
            (if (macro-file-exists-exception? _%exn99171%_)
                (macro-file-exists-exception-arguments _%exn99171%_)
                (let ((__tmp100123
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99171%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100123))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99165%_))
            (let ((_%e99168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99165%_ 'exception))))
              (if (macro-file-exists-exception? _%e99168%_)
                  (macro-file-exists-exception-procedure _%e99168%_)
                  (let ((__tmp100124
                         (cons 'file-exists-exception-procedure
                               (cons _%e99168%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100124))))
            (if (macro-file-exists-exception? _%exn99165%_)
                (macro-file-exists-exception-procedure _%exn99165%_)
                (let ((__tmp100125
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99165%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100125))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99161%_))
            (let ((_%e99163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99161%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99163%_))
            (macro-fixnum-overflow-exception? _%exn99161%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99157%_))
            (let ((_%e99159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99157%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99159%_)
                  (macro-fixnum-overflow-exception-arguments _%e99159%_)
                  (let ((__tmp100126
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99159%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100126))))
            (if (macro-fixnum-overflow-exception? _%exn99157%_)
                (macro-fixnum-overflow-exception-arguments _%exn99157%_)
                (let ((__tmp100127
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99157%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100127))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99151%_))
            (let ((_%e99154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99151%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99154%_)
                  (macro-fixnum-overflow-exception-procedure _%e99154%_)
                  (let ((__tmp100128
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99154%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100128))))
            (if (macro-fixnum-overflow-exception? _%exn99151%_)
                (macro-fixnum-overflow-exception-procedure _%exn99151%_)
                (let ((__tmp100129
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99151%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100129))))))
    (define heap-overflow-exception?
      (lambda (_%exn99145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99145%_))
            (let ((_%e99148%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99145%_ 'exception))))
              (macro-heap-overflow-exception? _%e99148%_))
            (macro-heap-overflow-exception? _%exn99145%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99141%_))
            (let ((_%e99143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99141%_ 'exception))))
              (macro-inactive-thread-exception? _%e99143%_))
            (macro-inactive-thread-exception? _%exn99141%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99137%_))
            (let ((_%e99139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99137%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99139%_)
                  (macro-inactive-thread-exception-arguments _%e99139%_)
                  (let ((__tmp100130
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99139%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100130))))
            (if (macro-inactive-thread-exception? _%exn99137%_)
                (macro-inactive-thread-exception-arguments _%exn99137%_)
                (let ((__tmp100131
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99137%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100131))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99131%_))
            (let ((_%e99134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99131%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99134%_)
                  (macro-inactive-thread-exception-procedure _%e99134%_)
                  (let ((__tmp100132
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99134%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100132))))
            (if (macro-inactive-thread-exception? _%exn99131%_)
                (macro-inactive-thread-exception-procedure _%exn99131%_)
                (let ((__tmp100133
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99131%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100133))))))
    (define initialized-thread-exception?
      (lambda (_%exn99127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99127%_))
            (let ((_%e99129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99127%_ 'exception))))
              (macro-initialized-thread-exception? _%e99129%_))
            (macro-initialized-thread-exception? _%exn99127%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99123%_))
            (let ((_%e99125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99123%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99125%_)
                  (macro-initialized-thread-exception-arguments _%e99125%_)
                  (let ((__tmp100134
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99125%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100134))))
            (if (macro-initialized-thread-exception? _%exn99123%_)
                (macro-initialized-thread-exception-arguments _%exn99123%_)
                (let ((__tmp100135
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99123%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100135))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99117%_))
            (let ((_%e99120%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99117%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99120%_)
                  (macro-initialized-thread-exception-procedure _%e99120%_)
                  (let ((__tmp100136
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99120%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100136))))
            (if (macro-initialized-thread-exception? _%exn99117%_)
                (macro-initialized-thread-exception-procedure _%exn99117%_)
                (let ((__tmp100137
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99117%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100137))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99113%_))
            (let ((_%e99115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99113%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99115%_))
            (macro-invalid-hash-number-exception? _%exn99113%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99109%_))
            (let ((_%e99111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99109%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99111%_)
                  (macro-invalid-hash-number-exception-arguments _%e99111%_)
                  (let ((__tmp100138
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99111%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100138))))
            (if (macro-invalid-hash-number-exception? _%exn99109%_)
                (macro-invalid-hash-number-exception-arguments _%exn99109%_)
                (let ((__tmp100139
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99109%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100139))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99103%_))
            (let ((_%e99106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99103%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99106%_)
                  (macro-invalid-hash-number-exception-procedure _%e99106%_)
                  (let ((__tmp100140
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99106%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100140))))
            (if (macro-invalid-hash-number-exception? _%exn99103%_)
                (macro-invalid-hash-number-exception-procedure _%exn99103%_)
                (let ((__tmp100141
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99103%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100141))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99099%_))
            (let ((_%e99101%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99099%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99101%_))
            (macro-invalid-utf8-encoding-exception? _%exn99099%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99095%_))
            (let ((_%e99097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99095%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99097%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99097%_)
                  (let ((__tmp100142
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99097%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100142))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99095%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99095%_)
                (let ((__tmp100143
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99095%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100143))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99089%_))
            (let ((_%e99092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99089%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99092%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99092%_)
                  (let ((__tmp100144
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99092%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100144))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99089%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99089%_)
                (let ((__tmp100145
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99089%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100145))))))
    (define join-timeout-exception?
      (lambda (_%exn99085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99085%_))
            (let ((_%e99087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99085%_ 'exception))))
              (macro-join-timeout-exception? _%e99087%_))
            (macro-join-timeout-exception? _%exn99085%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99081%_))
            (let ((_%e99083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99081%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99083%_)
                  (macro-join-timeout-exception-arguments _%e99083%_)
                  (let ((__tmp100146
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99083%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100146))))
            (if (macro-join-timeout-exception? _%exn99081%_)
                (macro-join-timeout-exception-arguments _%exn99081%_)
                (let ((__tmp100147
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99081%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100147))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99075%_))
            (let ((_%e99078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99075%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99078%_)
                  (macro-join-timeout-exception-procedure _%e99078%_)
                  (let ((__tmp100148
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99078%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100148))))
            (if (macro-join-timeout-exception? _%exn99075%_)
                (macro-join-timeout-exception-procedure _%exn99075%_)
                (let ((__tmp100149
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99075%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100149))))))
    (define keyword-expected-exception?
      (lambda (_%exn99071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99071%_))
            (let ((_%e99073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99071%_ 'exception))))
              (macro-keyword-expected-exception? _%e99073%_))
            (macro-keyword-expected-exception? _%exn99071%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99067%_))
            (let ((_%e99069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99067%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99069%_)
                  (macro-keyword-expected-exception-arguments _%e99069%_)
                  (let ((__tmp100150
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99069%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100150))))
            (if (macro-keyword-expected-exception? _%exn99067%_)
                (macro-keyword-expected-exception-arguments _%exn99067%_)
                (let ((__tmp100151
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99067%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100151))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99061%_))
            (let ((_%e99064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99061%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99064%_)
                  (macro-keyword-expected-exception-procedure _%e99064%_)
                  (let ((__tmp100152
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99064%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100152))))
            (if (macro-keyword-expected-exception? _%exn99061%_)
                (macro-keyword-expected-exception-procedure _%exn99061%_)
                (let ((__tmp100153
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99061%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100153))))))
    (define length-mismatch-exception?
      (lambda (_%exn99057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99057%_))
            (let ((_%e99059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99057%_ 'exception))))
              (macro-length-mismatch-exception? _%e99059%_))
            (macro-length-mismatch-exception? _%exn99057%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99053%_))
            (let ((_%e99055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99053%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99055%_)
                  (macro-length-mismatch-exception-arg-id _%e99055%_)
                  (let ((__tmp100154
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99055%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100154))))
            (if (macro-length-mismatch-exception? _%exn99053%_)
                (macro-length-mismatch-exception-arg-id _%exn99053%_)
                (let ((__tmp100155
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99053%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100155))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99049%_))
            (let ((_%e99051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99049%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99051%_)
                  (macro-length-mismatch-exception-arguments _%e99051%_)
                  (let ((__tmp100156
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99051%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100156))))
            (if (macro-length-mismatch-exception? _%exn99049%_)
                (macro-length-mismatch-exception-arguments _%exn99049%_)
                (let ((__tmp100157
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99049%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100157))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99043%_))
            (let ((_%e99046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99043%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99046%_)
                  (macro-length-mismatch-exception-procedure _%e99046%_)
                  (let ((__tmp100158
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99046%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100158))))
            (if (macro-length-mismatch-exception? _%exn99043%_)
                (macro-length-mismatch-exception-procedure _%exn99043%_)
                (let ((__tmp100159
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99043%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100159))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99039%_))
            (let ((_%e99041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99039%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99041%_))
            (macro-mailbox-receive-timeout-exception? _%exn99039%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99035%_))
            (let ((_%e99037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99035%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99037%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99037%_)
                  (let ((__tmp100160
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99037%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100160))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99035%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99035%_)
                (let ((__tmp100161
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99035%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100161))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99029%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99029%_))
            (let ((_%e99032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99029%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99032%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99032%_)
                  (let ((__tmp100162
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99032%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100162))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99029%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99029%_)
                (let ((__tmp100163
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99029%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100163))))))
    (define module-not-found-exception?
      (lambda (_%exn99025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99025%_))
            (let ((_%e99027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99025%_ 'exception))))
              (macro-module-not-found-exception? _%e99027%_))
            (macro-module-not-found-exception? _%exn99025%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99021%_))
            (let ((_%e99023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99021%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99023%_)
                  (macro-module-not-found-exception-arguments _%e99023%_)
                  (let ((__tmp100164
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99023%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100164))))
            (if (macro-module-not-found-exception? _%exn99021%_)
                (macro-module-not-found-exception-arguments _%exn99021%_)
                (let ((__tmp100165
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99021%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100165))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99015%_))
            (let ((_%e99018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99015%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99018%_)
                  (macro-module-not-found-exception-procedure _%e99018%_)
                  (let ((__tmp100166
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99018%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100166))))
            (if (macro-module-not-found-exception? _%exn99015%_)
                (macro-module-not-found-exception-procedure _%exn99015%_)
                (let ((__tmp100167
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99015%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100167))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99009%_))
            (let ((_%e99012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99009%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99012%_))
            (macro-multiple-c-return-exception? _%exn99009%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99005%_))
            (let ((_%e99007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99005%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99007%_))
            (macro-no-such-file-or-directory-exception? _%exn99005%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99001%_))
            (let ((_%e99003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99001%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99003%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99003%_)
                  (let ((__tmp100168
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99003%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100168))))
            (if (macro-no-such-file-or-directory-exception? _%exn99001%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99001%_)
                (let ((__tmp100169
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99001%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100169))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn98995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98995%_))
            (let ((_%e98998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98995%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e98998%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e98998%_)
                  (let ((__tmp100170
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e98998%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100170))))
            (if (macro-no-such-file-or-directory-exception? _%exn98995%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn98995%_)
                (let ((__tmp100171
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn98995%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100171))))))
    (define noncontinuable-exception?
      (lambda (_%exn98991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98991%_))
            (let ((_%e98993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98991%_ 'exception))))
              (macro-noncontinuable-exception? _%e98993%_))
            (macro-noncontinuable-exception? _%exn98991%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn98985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98985%_))
            (let ((_%e98988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98985%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e98988%_)
                  (macro-noncontinuable-exception-reason _%e98988%_)
                  (let ((__tmp100172
                         (cons 'noncontinuable-exception-reason
                               (cons _%e98988%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100172))))
            (if (macro-noncontinuable-exception? _%exn98985%_)
                (macro-noncontinuable-exception-reason _%exn98985%_)
                (let ((__tmp100173
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn98985%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100173))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn98981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98981%_))
            (let ((_%e98983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98981%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e98983%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn98981%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn98977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98977%_))
            (let ((_%e98979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98977%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98979%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e98979%_)
                  (let ((__tmp100174
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e98979%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100174))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98977%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn98977%_)
                (let ((__tmp100175
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn98977%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100175))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn98971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98971%_))
            (let ((_%e98974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98971%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98974%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e98974%_)
                  (let ((__tmp100176
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e98974%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100176))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98971%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn98971%_)
                (let ((__tmp100177
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn98971%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100177))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn98967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98967%_))
            (let ((_%e98969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98967%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e98969%_))
            (macro-nonprocedure-operator-exception? _%exn98967%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn98963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98963%_))
            (let ((_%e98965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98963%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98965%_)
                  (macro-nonprocedure-operator-exception-arguments _%e98965%_)
                  (let ((__tmp100178
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e98965%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100178))))
            (if (macro-nonprocedure-operator-exception? _%exn98963%_)
                (macro-nonprocedure-operator-exception-arguments _%exn98963%_)
                (let ((__tmp100179
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn98963%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100179))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn98959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98959%_))
            (let ((_%e98961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98959%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98961%_)
                  (macro-nonprocedure-operator-exception-code _%e98961%_)
                  (let ((__tmp100180
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e98961%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100180))))
            (if (macro-nonprocedure-operator-exception? _%exn98959%_)
                (macro-nonprocedure-operator-exception-code _%exn98959%_)
                (let ((__tmp100181
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn98959%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100181))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn98955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98955%_))
            (let ((_%e98957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98955%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98957%_)
                  (macro-nonprocedure-operator-exception-operator _%e98957%_)
                  (let ((__tmp100182
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e98957%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100182))))
            (if (macro-nonprocedure-operator-exception? _%exn98955%_)
                (macro-nonprocedure-operator-exception-operator _%exn98955%_)
                (let ((__tmp100183
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn98955%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100183))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn98949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98949%_))
            (let ((_%e98952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98949%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98952%_)
                  (macro-nonprocedure-operator-exception-rte _%e98952%_)
                  (let ((__tmp100184
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e98952%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100184))))
            (if (macro-nonprocedure-operator-exception? _%exn98949%_)
                (macro-nonprocedure-operator-exception-rte _%exn98949%_)
                (let ((__tmp100185
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn98949%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100185))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn98945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98945%_))
            (let ((_%e98947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98945%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e98947%_))
            (macro-not-in-compilation-context-exception? _%exn98945%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn98941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98941%_))
            (let ((_%e98943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98941%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98943%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e98943%_)
                  (let ((__tmp100186
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e98943%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100186))))
            (if (macro-not-in-compilation-context-exception? _%exn98941%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn98941%_)
                (let ((__tmp100187
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn98941%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100187))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn98935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98935%_))
            (let ((_%e98938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98935%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98938%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e98938%_)
                  (let ((__tmp100188
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e98938%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100188))))
            (if (macro-not-in-compilation-context-exception? _%exn98935%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn98935%_)
                (let ((__tmp100189
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn98935%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100189))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn98931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98931%_))
            (let ((_%e98933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98931%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e98933%_))
            (macro-number-of-arguments-limit-exception? _%exn98931%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn98927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98927%_))
            (let ((_%e98929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98927%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98929%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e98929%_)
                  (let ((__tmp100190
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e98929%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100190))))
            (if (macro-number-of-arguments-limit-exception? _%exn98927%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn98927%_)
                (let ((__tmp100191
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn98927%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100191))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn98921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98921%_))
            (let ((_%e98924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98921%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98924%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e98924%_)
                  (let ((__tmp100192
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e98924%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100192))))
            (if (macro-number-of-arguments-limit-exception? _%exn98921%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn98921%_)
                (let ((__tmp100193
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn98921%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100193))))))
    (define os-exception?
      (lambda (_%exn98917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98917%_))
            (let ((_%e98919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98917%_ 'exception))))
              (macro-os-exception? _%e98919%_))
            (macro-os-exception? _%exn98917%_))))
    (define os-exception-arguments
      (lambda (_%exn98913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98913%_))
            (let ((_%e98915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98913%_ 'exception))))
              (if (macro-os-exception? _%e98915%_)
                  (macro-os-exception-arguments _%e98915%_)
                  (let ((__tmp100194
                         (cons 'os-exception-arguments (cons _%e98915%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100194))))
            (if (macro-os-exception? _%exn98913%_)
                (macro-os-exception-arguments _%exn98913%_)
                (let ((__tmp100195
                       (cons 'os-exception-arguments (cons _%exn98913%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100195))))))
    (define os-exception-code
      (lambda (_%exn98909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98909%_))
            (let ((_%e98911%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98909%_ 'exception))))
              (if (macro-os-exception? _%e98911%_)
                  (macro-os-exception-code _%e98911%_)
                  (let ((__tmp100196
                         (cons 'os-exception-code (cons _%e98911%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100196))))
            (if (macro-os-exception? _%exn98909%_)
                (macro-os-exception-code _%exn98909%_)
                (let ((__tmp100197
                       (cons 'os-exception-code (cons _%exn98909%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100197))))))
    (define os-exception-message
      (lambda (_%exn98905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98905%_))
            (let ((_%e98907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98905%_ 'exception))))
              (if (macro-os-exception? _%e98907%_)
                  (macro-os-exception-message _%e98907%_)
                  (let ((__tmp100198
                         (cons 'os-exception-message (cons _%e98907%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100198))))
            (if (macro-os-exception? _%exn98905%_)
                (macro-os-exception-message _%exn98905%_)
                (let ((__tmp100199
                       (cons 'os-exception-message (cons _%exn98905%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100199))))))
    (define os-exception-procedure
      (lambda (_%exn98899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98899%_))
            (let ((_%e98902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98899%_ 'exception))))
              (if (macro-os-exception? _%e98902%_)
                  (macro-os-exception-procedure _%e98902%_)
                  (let ((__tmp100200
                         (cons 'os-exception-procedure (cons _%e98902%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100200))))
            (if (macro-os-exception? _%exn98899%_)
                (macro-os-exception-procedure _%exn98899%_)
                (let ((__tmp100201
                       (cons 'os-exception-procedure (cons _%exn98899%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100201))))))
    (define permission-denied-exception?
      (lambda (_%exn98895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98895%_))
            (let ((_%e98897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98895%_ 'exception))))
              (macro-permission-denied-exception? _%e98897%_))
            (macro-permission-denied-exception? _%exn98895%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn98891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98891%_))
            (let ((_%e98893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98891%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98893%_)
                  (macro-permission-denied-exception-arguments _%e98893%_)
                  (let ((__tmp100202
                         (cons 'permission-denied-exception-arguments
                               (cons _%e98893%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100202))))
            (if (macro-permission-denied-exception? _%exn98891%_)
                (macro-permission-denied-exception-arguments _%exn98891%_)
                (let ((__tmp100203
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn98891%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100203))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn98885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98885%_))
            (let ((_%e98888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98885%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98888%_)
                  (macro-permission-denied-exception-procedure _%e98888%_)
                  (let ((__tmp100204
                         (cons 'permission-denied-exception-procedure
                               (cons _%e98888%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100204))))
            (if (macro-permission-denied-exception? _%exn98885%_)
                (macro-permission-denied-exception-procedure _%exn98885%_)
                (let ((__tmp100205
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn98885%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100205))))))
    (define range-exception?
      (lambda (_%exn98881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98881%_))
            (let ((_%e98883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98881%_ 'exception))))
              (macro-range-exception? _%e98883%_))
            (macro-range-exception? _%exn98881%_))))
    (define range-exception-arg-id
      (lambda (_%exn98877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98877%_))
            (let ((_%e98879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98877%_ 'exception))))
              (if (macro-range-exception? _%e98879%_)
                  (macro-range-exception-arg-id _%e98879%_)
                  (let ((__tmp100206
                         (cons 'range-exception-arg-id (cons _%e98879%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100206))))
            (if (macro-range-exception? _%exn98877%_)
                (macro-range-exception-arg-id _%exn98877%_)
                (let ((__tmp100207
                       (cons 'range-exception-arg-id (cons _%exn98877%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100207))))))
    (define range-exception-arguments
      (lambda (_%exn98873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98873%_))
            (let ((_%e98875%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98873%_ 'exception))))
              (if (macro-range-exception? _%e98875%_)
                  (macro-range-exception-arguments _%e98875%_)
                  (let ((__tmp100208
                         (cons 'range-exception-arguments
                               (cons _%e98875%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100208))))
            (if (macro-range-exception? _%exn98873%_)
                (macro-range-exception-arguments _%exn98873%_)
                (let ((__tmp100209
                       (cons 'range-exception-arguments
                             (cons _%exn98873%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100209))))))
    (define range-exception-procedure
      (lambda (_%exn98867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98867%_))
            (let ((_%e98870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98867%_ 'exception))))
              (if (macro-range-exception? _%e98870%_)
                  (macro-range-exception-procedure _%e98870%_)
                  (let ((__tmp100210
                         (cons 'range-exception-procedure
                               (cons _%e98870%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100210))))
            (if (macro-range-exception? _%exn98867%_)
                (macro-range-exception-procedure _%exn98867%_)
                (let ((__tmp100211
                       (cons 'range-exception-procedure
                             (cons _%exn98867%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100211))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn98863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98863%_))
            (let ((_%e98865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98863%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e98865%_))
            (macro-rpc-remote-error-exception? _%exn98863%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn98859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98859%_))
            (let ((_%e98861%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98859%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98861%_)
                  (macro-rpc-remote-error-exception-arguments _%e98861%_)
                  (let ((__tmp100212
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e98861%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100212))))
            (if (macro-rpc-remote-error-exception? _%exn98859%_)
                (macro-rpc-remote-error-exception-arguments _%exn98859%_)
                (let ((__tmp100213
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn98859%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100213))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn98855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98855%_))
            (let ((_%e98857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98855%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98857%_)
                  (macro-rpc-remote-error-exception-message _%e98857%_)
                  (let ((__tmp100214
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e98857%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100214))))
            (if (macro-rpc-remote-error-exception? _%exn98855%_)
                (macro-rpc-remote-error-exception-message _%exn98855%_)
                (let ((__tmp100215
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn98855%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100215))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn98849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98849%_))
            (let ((_%e98852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98849%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98852%_)
                  (macro-rpc-remote-error-exception-procedure _%e98852%_)
                  (let ((__tmp100216
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e98852%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100216))))
            (if (macro-rpc-remote-error-exception? _%exn98849%_)
                (macro-rpc-remote-error-exception-procedure _%exn98849%_)
                (let ((__tmp100217
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn98849%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100217))))))
    (define scheduler-exception?
      (lambda (_%exn98845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98845%_))
            (let ((_%e98847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98845%_ 'exception))))
              (macro-scheduler-exception? _%e98847%_))
            (macro-scheduler-exception? _%exn98845%_))))
    (define scheduler-exception-reason
      (lambda (_%exn98839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98839%_))
            (let ((_%e98842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98839%_ 'exception))))
              (if (macro-scheduler-exception? _%e98842%_)
                  (macro-scheduler-exception-reason _%e98842%_)
                  (let ((__tmp100218
                         (cons 'scheduler-exception-reason
                               (cons _%e98842%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100218))))
            (if (macro-scheduler-exception? _%exn98839%_)
                (macro-scheduler-exception-reason _%exn98839%_)
                (let ((__tmp100219
                       (cons 'scheduler-exception-reason
                             (cons _%exn98839%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100219))))))
    (define sfun-conversion-exception?
      (lambda (_%exn98835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98835%_))
            (let ((_%e98837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98835%_ 'exception))))
              (macro-sfun-conversion-exception? _%e98837%_))
            (macro-sfun-conversion-exception? _%exn98835%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn98831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98831%_))
            (let ((_%e98833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98831%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98833%_)
                  (macro-sfun-conversion-exception-arguments _%e98833%_)
                  (let ((__tmp100220
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e98833%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100220))))
            (if (macro-sfun-conversion-exception? _%exn98831%_)
                (macro-sfun-conversion-exception-arguments _%exn98831%_)
                (let ((__tmp100221
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn98831%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100221))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn98827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98827%_))
            (let ((_%e98829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98827%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98829%_)
                  (macro-sfun-conversion-exception-code _%e98829%_)
                  (let ((__tmp100222
                         (cons 'sfun-conversion-exception-code
                               (cons _%e98829%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100222))))
            (if (macro-sfun-conversion-exception? _%exn98827%_)
                (macro-sfun-conversion-exception-code _%exn98827%_)
                (let ((__tmp100223
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn98827%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100223))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn98823%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98823%_))
            (let ((_%e98825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98823%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98825%_)
                  (macro-sfun-conversion-exception-message _%e98825%_)
                  (let ((__tmp100224
                         (cons 'sfun-conversion-exception-message
                               (cons _%e98825%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100224))))
            (if (macro-sfun-conversion-exception? _%exn98823%_)
                (macro-sfun-conversion-exception-message _%exn98823%_)
                (let ((__tmp100225
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn98823%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100225))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn98817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98817%_))
            (let ((_%e98820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98817%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98820%_)
                  (macro-sfun-conversion-exception-procedure _%e98820%_)
                  (let ((__tmp100226
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e98820%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100226))))
            (if (macro-sfun-conversion-exception? _%exn98817%_)
                (macro-sfun-conversion-exception-procedure _%exn98817%_)
                (let ((__tmp100227
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn98817%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100227))))))
    (define stack-overflow-exception?
      (lambda (_%exn98811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98811%_))
            (let ((_%e98814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98811%_ 'exception))))
              (macro-stack-overflow-exception? _%e98814%_))
            (macro-stack-overflow-exception? _%exn98811%_))))
    (define started-thread-exception?
      (lambda (_%exn98807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98807%_))
            (let ((_%e98809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98807%_ 'exception))))
              (macro-started-thread-exception? _%e98809%_))
            (macro-started-thread-exception? _%exn98807%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn98803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98803%_))
            (let ((_%e98805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98803%_ 'exception))))
              (if (macro-started-thread-exception? _%e98805%_)
                  (macro-started-thread-exception-arguments _%e98805%_)
                  (let ((__tmp100228
                         (cons 'started-thread-exception-arguments
                               (cons _%e98805%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100228))))
            (if (macro-started-thread-exception? _%exn98803%_)
                (macro-started-thread-exception-arguments _%exn98803%_)
                (let ((__tmp100229
                       (cons 'started-thread-exception-arguments
                             (cons _%exn98803%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100229))))))
    (define started-thread-exception-procedure
      (lambda (_%exn98797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98797%_))
            (let ((_%e98800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98797%_ 'exception))))
              (if (macro-started-thread-exception? _%e98800%_)
                  (macro-started-thread-exception-procedure _%e98800%_)
                  (let ((__tmp100230
                         (cons 'started-thread-exception-procedure
                               (cons _%e98800%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100230))))
            (if (macro-started-thread-exception? _%exn98797%_)
                (macro-started-thread-exception-procedure _%exn98797%_)
                (let ((__tmp100231
                       (cons 'started-thread-exception-procedure
                             (cons _%exn98797%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100231))))))
    (define terminated-thread-exception?
      (lambda (_%exn98793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98793%_))
            (let ((_%e98795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98793%_ 'exception))))
              (macro-terminated-thread-exception? _%e98795%_))
            (macro-terminated-thread-exception? _%exn98793%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn98789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98789%_))
            (let ((_%e98791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98789%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98791%_)
                  (macro-terminated-thread-exception-arguments _%e98791%_)
                  (let ((__tmp100232
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e98791%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100232))))
            (if (macro-terminated-thread-exception? _%exn98789%_)
                (macro-terminated-thread-exception-arguments _%exn98789%_)
                (let ((__tmp100233
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn98789%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100233))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn98783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98783%_))
            (let ((_%e98786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98783%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98786%_)
                  (macro-terminated-thread-exception-procedure _%e98786%_)
                  (let ((__tmp100234
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e98786%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100234))))
            (if (macro-terminated-thread-exception? _%exn98783%_)
                (macro-terminated-thread-exception-procedure _%exn98783%_)
                (let ((__tmp100235
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn98783%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100235))))))
    (define type-exception?
      (lambda (_%exn98779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98779%_))
            (let ((_%e98781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98779%_ 'exception))))
              (macro-type-exception? _%e98781%_))
            (macro-type-exception? _%exn98779%_))))
    (define type-exception-arg-id
      (lambda (_%exn98775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98775%_))
            (let ((_%e98777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98775%_ 'exception))))
              (if (macro-type-exception? _%e98777%_)
                  (macro-type-exception-arg-id _%e98777%_)
                  (let ((__tmp100236
                         (cons 'type-exception-arg-id (cons _%e98777%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100236))))
            (if (macro-type-exception? _%exn98775%_)
                (macro-type-exception-arg-id _%exn98775%_)
                (let ((__tmp100237
                       (cons 'type-exception-arg-id (cons _%exn98775%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100237))))))
    (define type-exception-arguments
      (lambda (_%exn98771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98771%_))
            (let ((_%e98773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98771%_ 'exception))))
              (if (macro-type-exception? _%e98773%_)
                  (macro-type-exception-arguments _%e98773%_)
                  (let ((__tmp100238
                         (cons 'type-exception-arguments
                               (cons _%e98773%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100238))))
            (if (macro-type-exception? _%exn98771%_)
                (macro-type-exception-arguments _%exn98771%_)
                (let ((__tmp100239
                       (cons 'type-exception-arguments
                             (cons _%exn98771%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100239))))))
    (define type-exception-procedure
      (lambda (_%exn98767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98767%_))
            (let ((_%e98769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98767%_ 'exception))))
              (if (macro-type-exception? _%e98769%_)
                  (macro-type-exception-procedure _%e98769%_)
                  (let ((__tmp100240
                         (cons 'type-exception-procedure
                               (cons _%e98769%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100240))))
            (if (macro-type-exception? _%exn98767%_)
                (macro-type-exception-procedure _%exn98767%_)
                (let ((__tmp100241
                       (cons 'type-exception-procedure
                             (cons _%exn98767%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100241))))))
    (define type-exception-type-id
      (lambda (_%exn98761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98761%_))
            (let ((_%e98764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98761%_ 'exception))))
              (if (macro-type-exception? _%e98764%_)
                  (macro-type-exception-type-id _%e98764%_)
                  (let ((__tmp100242
                         (cons 'type-exception-type-id (cons _%e98764%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100242))))
            (if (macro-type-exception? _%exn98761%_)
                (macro-type-exception-type-id _%exn98761%_)
                (let ((__tmp100243
                       (cons 'type-exception-type-id (cons _%exn98761%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100243))))))
    (define unbound-global-exception?
      (lambda (_%exn98757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98757%_))
            (let ((_%e98759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98757%_ 'exception))))
              (macro-unbound-global-exception? _%e98759%_))
            (macro-unbound-global-exception? _%exn98757%_))))
    (define unbound-global-exception-code
      (lambda (_%exn98753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98753%_))
            (let ((_%e98755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98753%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98755%_)
                  (macro-unbound-global-exception-code _%e98755%_)
                  (let ((__tmp100244
                         (cons 'unbound-global-exception-code
                               (cons _%e98755%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100244))))
            (if (macro-unbound-global-exception? _%exn98753%_)
                (macro-unbound-global-exception-code _%exn98753%_)
                (let ((__tmp100245
                       (cons 'unbound-global-exception-code
                             (cons _%exn98753%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100245))))))
    (define unbound-global-exception-rte
      (lambda (_%exn98749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98749%_))
            (let ((_%e98751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98749%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98751%_)
                  (macro-unbound-global-exception-rte _%e98751%_)
                  (let ((__tmp100246
                         (cons 'unbound-global-exception-rte
                               (cons _%e98751%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100246))))
            (if (macro-unbound-global-exception? _%exn98749%_)
                (macro-unbound-global-exception-rte _%exn98749%_)
                (let ((__tmp100247
                       (cons 'unbound-global-exception-rte
                             (cons _%exn98749%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100247))))))
    (define unbound-global-exception-variable
      (lambda (_%exn98743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98743%_))
            (let ((_%e98746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98743%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98746%_)
                  (macro-unbound-global-exception-variable _%e98746%_)
                  (let ((__tmp100248
                         (cons 'unbound-global-exception-variable
                               (cons _%e98746%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100248))))
            (if (macro-unbound-global-exception? _%exn98743%_)
                (macro-unbound-global-exception-variable _%exn98743%_)
                (let ((__tmp100249
                       (cons 'unbound-global-exception-variable
                             (cons _%exn98743%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100249))))))
    (define unbound-key-exception?
      (lambda (_%exn98739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98739%_))
            (let ((_%e98741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98739%_ 'exception))))
              (macro-unbound-key-exception? _%e98741%_))
            (macro-unbound-key-exception? _%exn98739%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn98735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98735%_))
            (let ((_%e98737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98735%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98737%_)
                  (macro-unbound-key-exception-arguments _%e98737%_)
                  (let ((__tmp100250
                         (cons 'unbound-key-exception-arguments
                               (cons _%e98737%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100250))))
            (if (macro-unbound-key-exception? _%exn98735%_)
                (macro-unbound-key-exception-arguments _%exn98735%_)
                (let ((__tmp100251
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn98735%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100251))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn98729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98729%_))
            (let ((_%e98732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98729%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98732%_)
                  (macro-unbound-key-exception-procedure _%e98732%_)
                  (let ((__tmp100252
                         (cons 'unbound-key-exception-procedure
                               (cons _%e98732%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100252))))
            (if (macro-unbound-key-exception? _%exn98729%_)
                (macro-unbound-key-exception-procedure _%exn98729%_)
                (let ((__tmp100253
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn98729%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100253))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn98725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98725%_))
            (let ((_%e98727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98725%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e98727%_))
            (macro-unbound-os-environment-variable-exception? _%exn98725%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn98721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98721%_))
            (let ((_%e98723%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98721%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98723%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e98723%_)
                  (let ((__tmp100254
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e98723%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100254))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98721%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn98721%_)
                (let ((__tmp100255
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn98721%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100255))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn98715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98715%_))
            (let ((_%e98718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98715%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98718%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e98718%_)
                  (let ((__tmp100256
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e98718%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100256))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98715%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn98715%_)
                (let ((__tmp100257
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn98715%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100257))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn98711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98711%_))
            (let ((_%e98713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98711%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e98713%_))
            (macro-unbound-serial-number-exception? _%exn98711%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn98707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98707%_))
            (let ((_%e98709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98707%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98709%_)
                  (macro-unbound-serial-number-exception-arguments _%e98709%_)
                  (let ((__tmp100258
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e98709%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100258))))
            (if (macro-unbound-serial-number-exception? _%exn98707%_)
                (macro-unbound-serial-number-exception-arguments _%exn98707%_)
                (let ((__tmp100259
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn98707%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100259))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn98701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98701%_))
            (let ((_%e98704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98701%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98704%_)
                  (macro-unbound-serial-number-exception-procedure _%e98704%_)
                  (let ((__tmp100260
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e98704%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100260))))
            (if (macro-unbound-serial-number-exception? _%exn98701%_)
                (macro-unbound-serial-number-exception-procedure _%exn98701%_)
                (let ((__tmp100261
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn98701%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100261))))))
    (define uncaught-exception?
      (lambda (_%exn98697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98697%_))
            (let ((_%e98699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98697%_ 'exception))))
              (macro-uncaught-exception? _%e98699%_))
            (macro-uncaught-exception? _%exn98697%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn98693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98693%_))
            (let ((_%e98695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98693%_ 'exception))))
              (if (macro-uncaught-exception? _%e98695%_)
                  (macro-uncaught-exception-arguments _%e98695%_)
                  (let ((__tmp100262
                         (cons 'uncaught-exception-arguments
                               (cons _%e98695%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100262))))
            (if (macro-uncaught-exception? _%exn98693%_)
                (macro-uncaught-exception-arguments _%exn98693%_)
                (let ((__tmp100263
                       (cons 'uncaught-exception-arguments
                             (cons _%exn98693%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100263))))))
    (define uncaught-exception-procedure
      (lambda (_%exn98689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98689%_))
            (let ((_%e98691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98689%_ 'exception))))
              (if (macro-uncaught-exception? _%e98691%_)
                  (macro-uncaught-exception-procedure _%e98691%_)
                  (let ((__tmp100264
                         (cons 'uncaught-exception-procedure
                               (cons _%e98691%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100264))))
            (if (macro-uncaught-exception? _%exn98689%_)
                (macro-uncaught-exception-procedure _%exn98689%_)
                (let ((__tmp100265
                       (cons 'uncaught-exception-procedure
                             (cons _%exn98689%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100265))))))
    (define uncaught-exception-reason
      (lambda (_%exn98683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98683%_))
            (let ((_%e98686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98683%_ 'exception))))
              (if (macro-uncaught-exception? _%e98686%_)
                  (macro-uncaught-exception-reason _%e98686%_)
                  (let ((__tmp100266
                         (cons 'uncaught-exception-reason
                               (cons _%e98686%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100266))))
            (if (macro-uncaught-exception? _%exn98683%_)
                (macro-uncaught-exception-reason _%exn98683%_)
                (let ((__tmp100267
                       (cons 'uncaught-exception-reason
                             (cons _%exn98683%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100267))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn98679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98679%_))
            (let ((_%e98681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98679%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e98681%_))
            (macro-uninitialized-thread-exception? _%exn98679%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn98675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98675%_))
            (let ((_%e98677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98675%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98677%_)
                  (macro-uninitialized-thread-exception-arguments _%e98677%_)
                  (let ((__tmp100268
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e98677%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100268))))
            (if (macro-uninitialized-thread-exception? _%exn98675%_)
                (macro-uninitialized-thread-exception-arguments _%exn98675%_)
                (let ((__tmp100269
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn98675%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100269))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn98669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98669%_))
            (let ((_%e98672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98669%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98672%_)
                  (macro-uninitialized-thread-exception-procedure _%e98672%_)
                  (let ((__tmp100270
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e98672%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100270))))
            (if (macro-uninitialized-thread-exception? _%exn98669%_)
                (macro-uninitialized-thread-exception-procedure _%exn98669%_)
                (let ((__tmp100271
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn98669%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100271))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn98665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98665%_))
            (let ((_%e98667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98665%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e98667%_))
            (macro-unknown-keyword-argument-exception? _%exn98665%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn98661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98661%_))
            (let ((_%e98663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98661%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98663%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e98663%_)
                  (let ((__tmp100272
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e98663%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100272))))
            (if (macro-unknown-keyword-argument-exception? _%exn98661%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn98661%_)
                (let ((__tmp100273
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn98661%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100273))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn98655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98655%_))
            (let ((_%e98658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98655%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98658%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e98658%_)
                  (let ((__tmp100274
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e98658%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100274))))
            (if (macro-unknown-keyword-argument-exception? _%exn98655%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn98655%_)
                (let ((__tmp100275
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn98655%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100275))))))
    (define unterminated-process-exception?
      (lambda (_%exn98651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98651%_))
            (let ((_%e98653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98651%_ 'exception))))
              (macro-unterminated-process-exception? _%e98653%_))
            (macro-unterminated-process-exception? _%exn98651%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn98647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98647%_))
            (let ((_%e98649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98647%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98649%_)
                  (macro-unterminated-process-exception-arguments _%e98649%_)
                  (let ((__tmp100276
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e98649%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100276))))
            (if (macro-unterminated-process-exception? _%exn98647%_)
                (macro-unterminated-process-exception-arguments _%exn98647%_)
                (let ((__tmp100277
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn98647%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100277))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn98641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98641%_))
            (let ((_%e98644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98641%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98644%_)
                  (macro-unterminated-process-exception-procedure _%e98644%_)
                  (let ((__tmp100278
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e98644%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100278))))
            (if (macro-unterminated-process-exception? _%exn98641%_)
                (macro-unterminated-process-exception-procedure _%exn98641%_)
                (let ((__tmp100279
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn98641%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100279))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn98637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98637%_))
            (let ((_%e98639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98637%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e98639%_))
            (macro-wrong-number-of-arguments-exception? _%exn98637%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn98633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98633%_))
            (let ((_%e98635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98633%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98635%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e98635%_)
                  (let ((__tmp100280
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e98635%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100280))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98633%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn98633%_)
                (let ((__tmp100281
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn98633%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100281))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn98627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98627%_))
            (let ((_%e98630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98627%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98630%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e98630%_)
                  (let ((__tmp100282
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e98630%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100282))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98627%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn98627%_)
                (let ((__tmp100283
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn98627%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100283))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn98623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98623%_))
            (let ((_%e98625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98623%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e98625%_))
            (macro-wrong-number-of-values-exception? _%exn98623%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn98619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98619%_))
            (let ((_%e98621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98619%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98621%_)
                  (macro-wrong-number-of-values-exception-code _%e98621%_)
                  (let ((__tmp100284
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e98621%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100284))))
            (if (macro-wrong-number-of-values-exception? _%exn98619%_)
                (macro-wrong-number-of-values-exception-code _%exn98619%_)
                (let ((__tmp100285
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn98619%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100285))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn98615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98615%_))
            (let ((_%e98617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98615%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98617%_)
                  (macro-wrong-number-of-values-exception-rte _%e98617%_)
                  (let ((__tmp100286
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e98617%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100286))))
            (if (macro-wrong-number-of-values-exception? _%exn98615%_)
                (macro-wrong-number-of-values-exception-rte _%exn98615%_)
                (let ((__tmp100287
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn98615%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100287))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn98609%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98609%_))
            (let ((_%e98612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98609%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98612%_)
                  (macro-wrong-number-of-values-exception-vals _%e98612%_)
                  (let ((__tmp100288
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e98612%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100288))))
            (if (macro-wrong-number-of-values-exception? _%exn98609%_)
                (macro-wrong-number-of-values-exception-vals _%exn98609%_)
                (let ((__tmp100289
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn98609%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100289))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn98603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98603%_))
            (let ((_%e98606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98603%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e98606%_))
            (macro-wrong-processor-c-return-exception? _%exn98603%_))))))
