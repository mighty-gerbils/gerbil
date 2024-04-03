(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712124233)
  (begin
    (define Exception::t
      (let ((__tmp100088 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100088
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100078%_
        (apply make-instance Exception::t _%$args100078%_)))
    (define StackTrace::t
      (let ((__tmp100089 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100089
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100075%_
        (apply make-instance StackTrace::t _%$args100075%_)))
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
      (let ((__tmp100090 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100090
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100072%_ (apply make-instance Error::t _%$args100072%_)))
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
      (let ((__tmp100091 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100091
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100069%_
        (apply make-instance ContractViolation::t _%$args100069%_)))
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
      (let ((__tmp100092 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100092
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100066%_
        (apply make-instance RuntimeException::t _%$args100066%_)))
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
      (lambda (_%exn100061%_ _%continue100062%_)
        (let ((_%exn100064%_
               (let ()
                 (declare (not safe))
                 (wrap-runtime-exception _%exn100061%_))))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100064%_ _%continue100062%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100057%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100057%_ 'continuation))
                '#!void
                (let ((__tmp100093
                       (lambda (_%cont100059%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100057%_
                            'continuation
                            _%cont100059%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100093)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100057%_))))
    (define error
      (lambda (_%message100054%_ . _%irritants100055%_)
        (let ((__tmp100094
               (let ((__obj100085
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100085
                  _%message100054%_
                  'irritants:
                  _%irritants100055%_)
                 __obj100085)))
          (declare (not safe))
          (raise __tmp100094))))
    (define __raise-contract-violation-error__%
      (lambda (_%_100025%_
               _%ctx100020100027%_
               _%contract-expr100021100029%_
               _%value100022100031%_
               _%message100033%_)
        (let* ((_%ctx100035%_
                (if (eq? _%ctx100020100027%_ absent-value)
                    '#f
                    _%ctx100020100027%_))
               (_%contract-expr100037%_
                (if (eq? _%contract-expr100021100029%_ absent-value)
                    '#f
                    _%contract-expr100021100029%_))
               (_%value100039%_
                (if (eq? _%value100022100031%_ absent-value)
                    '#f
                    _%value100022100031%_))
               (__tmp100095
                (let ((__obj100086
                       (let ()
                         (declare (not safe))
                         (##structure ContractViolation::t '#f '#f '#f '#f))))
                  (ContractViolation:::init!
                   __obj100086
                   _%message100033%_
                   'where:
                   _%ctx100035%_
                   'irritants:
                   (cons 'contract:
                         (cons _%contract-expr100037%_
                               (cons 'value: (cons _%value100039%_ '())))))
                  __obj100086)))
          (declare (not safe))
          (raise __tmp100095))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100044%_ . _%args100045%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100044%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100044%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100044%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100044%_
                  'value:
                  absent-value))
               _%args100045%_)))
    (define __raise-contract-violation-error
      (lambda _%args100023100051%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100023100051%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler99994%_ _%thunk99995%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99994%_))
              (let ()
                (let ((_%handler99999%_ _%handler99994%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99995%_))
                      (let ()
                        (let ((_%thunk100009%_ _%thunk99995%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-handler
                               _%handler99999%_
                               _%thunk100009%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99995%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler99994%_)))))
    (define __with-exception-handler
      (lambda (_%handler99969%_ _%thunk99970%_)
        (let ()
          (let ((_%handler99973%_ _%handler99969%_))
            (let ((_%thunk99981%_ _%thunk99970%_))
              (let ()
                (let ((__tmp100096
                       (lambda (_%exn99990%_)
                         (let ((_%exn99992%_
                                (let ()
                                  (declare (not safe))
                                  (wrap-runtime-exception _%exn99990%_))))
                           (declare (not safe))
                           (_%handler99973%_ _%exn99992%_)))))
                  (declare (not safe))
                  (##with-exception-handler __tmp100096 _%thunk99981%_))))))))
    (define with-catch
      (lambda (_%handler99944%_ _%thunk99945%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%handler99944%_))
              (let ()
                (let ((_%handler99949%_ _%handler99944%_))
                  (if (let () (declare (not safe)) (procedure? _%thunk99945%_))
                      (let ()
                        (let ((_%thunk99959%_ _%thunk99945%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-catch
                               _%handler99949%_
                               _%thunk99959%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                       'contract:
                       'procedure?
                       'value:
                       _%thunk99945%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler99944%_)))))
    (define __with-catch
      (lambda (_%handler99919%_ _%thunk99920%_)
        (let ()
          (let ((_%handler99923%_ _%handler99919%_))
            (let ((_%thunk99931%_ _%thunk99920%_))
              (let ()
                (let ((__tmp100097
                       (lambda (_%cont99940%_)
                         (let ((__tmp100098
                                (lambda (_%exn99942%_)
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-graft
                                     _%cont99940%_
                                     _%handler99923%_
                                     _%exn99942%_)))))
                           (declare (not safe))
                           (__with-exception-handler
                            __tmp100098
                            _%thunk99931%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100097))))))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn99906%_)
        (if (or (let ()
                  (declare (not safe))
                  (heap-overflow-exception? _%exn99906%_))
                (let ()
                  (declare (not safe))
                  (stack-overflow-exception? _%exn99906%_)))
            (let () _%exn99906%_)
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn99906%_))
                (let () _%exn99906%_)
                (if (macro-exception? _%exn99906%_)
                    (let ()
                      (let ((_%rte99914%_
                             (let ((__obj100087
                                    (let ()
                                      (declare (not safe))
                                      (##structure
                                       RuntimeException::t
                                       '#f
                                       '#f))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  __obj100087
                                  _%exn99906%_
                                  '2
                                  '#f
                                  '#f))
                               __obj100087)))
                        (let ((__tmp100099
                               (lambda (_%cont99916%_)
                                 (let ((__tmp100100
                                        (let ()
                                          (declare (not safe))
                                          (##continuation-next
                                           _%cont99916%_))))
                                   (declare (not safe))
                                   (unchecked-slot-set!
                                    _%rte99914%_
                                    'continuation
                                    __tmp100100)))))
                          (declare (not safe))
                          (##continuation-capture __tmp100099))
                        _%rte99914%_))
                    (let () _%exn99906%_))))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj99901%_)
        (let ((_%$e99903%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj99901%_))))
          (if _%$e99903%_
              _%$e99903%_
              (let () (declare (not safe)) (error-exception? _%obj99901%_))))))
    (define error-message
      (lambda (_%obj99896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99896%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99896%_ 'message)))
            (if (let () (declare (not safe)) (error-exception? _%obj99896%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-message _%obj99896%_)))
                (let () '#f)))))
    (define error-irritants
      (lambda (_%obj99891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99891%_))
            (let ()
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj99891%_ 'irritants)))
            (if (let () (declare (not safe)) (error-exception? _%obj99891%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error-exception-parameters _%obj99891%_)))
                (let () '#f)))))
    (define error-trace
      (lambda (_%obj99889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj99889%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj99889%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e99870%_ _%port99871%_)
        (let ((_%$e99873%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e99870%_ 'display-exception))))
          (if _%$e99873%_
              ((lambda (_%f99876%_) (_%f99876%_ _%e99870%_ _%port99871%_))
               _%$e99873%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-display-exception _%e99870%_ _%port99871%_)))))))
    (define display-exception__0
      (lambda (_%e99882%_)
        (let ((_%port99884%_ (current-error-port)))
          (declare (not safe))
          (display-exception__% _%e99882%_ _%port99884%_))))
    (define display-exception
      (lambda _g100102_
        (let ((_g100101_ (let () (declare (not safe)) (##length _g100102_))))
          (cond ((let () (declare (not safe)) (##fx= _g100101_ 1))
                 (apply (lambda (_%e99882%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%e99882%_)))
                        _g100102_))
                ((let () (declare (not safe)) (##fx= _g100101_ 2))
                 (apply (lambda (_%e99886%_ _%port99887%_)
                          (let ()
                            (declare (not safe))
                            (display-exception__% _%e99886%_ _%port99887%_)))
                        _g100102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100102_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99848%_ _%message99849%_ . _%rest99850%_)
        (let ()
          (let ((_%self99853%_ _%self99848%_))
            (let ()
              (let ((_%message99867%_
                     (if (let ()
                           (declare (not safe))
                           (string? _%message99849%_))
                         _%message99849%_
                         (call-with-output-string
                          '""
                          (lambda (_%g9986299864%_)
                            (display _%message99849%_ _%g9986299864%_))))))
                (let ()
                  (declare (not safe))
                  (unchecked-slot-set!
                   _%self99853%_
                   'message
                   _%message99867%_))
                (apply class-instance-init! _%self99853%_ _%rest99850%_)))))))
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
      (lambda (_%self99572%_ _%port99573%_)
        (let ()
          (let ((_%self99576%_ _%self99572%_))
            (let ()
              (let ((_%tmp-port99586%_ (open-output-string))
                    (_%display-error-newline99587%_
                     (> (output-port-column _%port99573%_) '0)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99586%_))
                (let ((__tmp100103
                       (lambda ()
                         (if _%display-error-newline99587%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e99590%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref _%self99576%_ 'where))))
                           (if _%$e99590%_
                               (display _%$e99590%_)
                               (let () (display '"?"))))
                         (let ((__tmp100104
                                (let ((__tmp100105
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self99576%_))))
                                  (declare (not safe))
                                  (##type-name __tmp100105))))
                           (declare (not safe))
                           (display* '" [" __tmp100104 '"]: "))
                         (let ((__tmp100106
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99576%_
                                   'message))))
                           (declare (not safe))
                           (displayln __tmp100106))
                         (let ((_%irritants99594%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self99576%_
                                   'irritants))))
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%irritants99594%_))
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj99596%_)
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj99596%_))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants99594%_)
                                 (newline))))
                         (if (and '#t
                                  (let ()
                                    (declare (not safe))
                                    (dump-stack-trace?)))
                             (let ((_%cont9959799599%_
                                    (let ()
                                      (declare (not safe))
                                      (unchecked-slot-ref
                                       _%self99576%_
                                       'continuation))))
                               (if _%cont9959799599%_
                                   (let ((_%cont99602%_ _%cont9959799599%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont99602%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp100103
                   current-output-port
                   _%tmp-port99586%_))
                (let ((__tmp100107 (get-output-string _%tmp-port99586%_)))
                  (declare (not safe))
                  (##write-string __tmp100107 _%port99573%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99428%_ _%port99429%_)
        (let ()
          (let ((_%self99432%_ _%self99428%_))
            (let ()
              (let ((_%tmp-port99442%_ (open-output-string)))
                (let ()
                  (declare (not safe))
                  (fix-port-width! _%tmp-port99442%_))
                (let ((__tmp100108
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _%self99432%_ 'exception))))
                  (declare (not safe))
                  (##default-display-exception __tmp100108 _%tmp-port99442%_))
                (if (let () (declare (not safe)) (dump-stack-trace?))
                    (let ((_%cont9944399445%_
                           (let ()
                             (declare (not safe))
                             (unchecked-slot-ref
                              _%self99432%_
                              'continuation))))
                      (if _%cont9944399445%_
                          (let ((_%cont99448%_ _%cont9944399445%_))
                            (display '"--- continuation backtrace:"
                                     _%tmp-port99442%_)
                            (newline _%tmp-port99442%_)
                            (display-continuation-backtrace
                             _%cont99448%_
                             _%tmp-port99442%_))
                          '#f))
                    '#!void)
                (let ((__tmp100109 (get-output-string _%tmp-port99442%_)))
                  (declare (not safe))
                  (##write-string __tmp100109 _%port99429%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port99300%_)
        (if (macro-character-port? _%port99300%_)
            (let ((_%old-width99302%_
                   (macro-character-port-output-width _%port99300%_)))
              (macro-character-port-output-width-set!
               _%port99300%_
               (lambda (_%port99304%_) '256))
              _%old-width99302%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port99297%_ _%old-width99298%_)
        (if (macro-character-port? _%port99297%_)
            (macro-character-port-output-width-set!
             _%port99297%_
             _%old-width99298%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e99295%_)
        (macro-readenv-filepos
         (let ()
           (declare (not safe))
           (datum-parsing-exception-readenv _%e99295%_)))))
    (define abandoned-mutex-exception?
      (lambda (_%exn99289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99289%_))
            (let ((_%e99292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99289%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e99292%_))
            (macro-abandoned-mutex-exception? _%exn99289%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn99285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99285%_))
            (let ((_%e99287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99285%_ 'exception))))
              (macro-cfun-conversion-exception? _%e99287%_))
            (macro-cfun-conversion-exception? _%exn99285%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn99281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99281%_))
            (let ((_%e99283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99281%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99283%_)
                  (macro-cfun-conversion-exception-arguments _%e99283%_)
                  (let ((__tmp100110
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e99283%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100110))))
            (if (macro-cfun-conversion-exception? _%exn99281%_)
                (macro-cfun-conversion-exception-arguments _%exn99281%_)
                (let ((__tmp100111
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn99281%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100111))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn99277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99277%_))
            (let ((_%e99279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99277%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99279%_)
                  (macro-cfun-conversion-exception-code _%e99279%_)
                  (let ((__tmp100112
                         (cons 'cfun-conversion-exception-code
                               (cons _%e99279%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100112))))
            (if (macro-cfun-conversion-exception? _%exn99277%_)
                (macro-cfun-conversion-exception-code _%exn99277%_)
                (let ((__tmp100113
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn99277%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100113))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn99273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99273%_))
            (let ((_%e99275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99273%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99275%_)
                  (macro-cfun-conversion-exception-message _%e99275%_)
                  (let ((__tmp100114
                         (cons 'cfun-conversion-exception-message
                               (cons _%e99275%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100114))))
            (if (macro-cfun-conversion-exception? _%exn99273%_)
                (macro-cfun-conversion-exception-message _%exn99273%_)
                (let ((__tmp100115
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn99273%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100115))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn99267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99267%_))
            (let ((_%e99270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99267%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e99270%_)
                  (macro-cfun-conversion-exception-procedure _%e99270%_)
                  (let ((__tmp100116
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e99270%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'cfun-conversion-exception?
                           __tmp100116))))
            (if (macro-cfun-conversion-exception? _%exn99267%_)
                (macro-cfun-conversion-exception-procedure _%exn99267%_)
                (let ((__tmp100117
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn99267%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         __tmp100117))))))
    (define datum-parsing-exception?
      (lambda (_%exn99263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99263%_))
            (let ((_%e99265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99263%_ 'exception))))
              (macro-datum-parsing-exception? _%e99265%_))
            (macro-datum-parsing-exception? _%exn99263%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn99259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99259%_))
            (let ((_%e99261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99259%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99261%_)
                  (macro-datum-parsing-exception-kind _%e99261%_)
                  (let ((__tmp100118
                         (cons 'datum-parsing-exception-kind
                               (cons _%e99261%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100118))))
            (if (macro-datum-parsing-exception? _%exn99259%_)
                (macro-datum-parsing-exception-kind _%exn99259%_)
                (let ((__tmp100119
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn99259%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100119))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn99255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99255%_))
            (let ((_%e99257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99255%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99257%_)
                  (macro-datum-parsing-exception-parameters _%e99257%_)
                  (let ((__tmp100120
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e99257%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100120))))
            (if (macro-datum-parsing-exception? _%exn99255%_)
                (macro-datum-parsing-exception-parameters _%exn99255%_)
                (let ((__tmp100121
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn99255%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100121))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn99249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99249%_))
            (let ((_%e99252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99249%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e99252%_)
                  (macro-datum-parsing-exception-readenv _%e99252%_)
                  (let ((__tmp100122
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e99252%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'datum-parsing-exception?
                           __tmp100122))))
            (if (macro-datum-parsing-exception? _%exn99249%_)
                (macro-datum-parsing-exception-readenv _%exn99249%_)
                (let ((__tmp100123
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn99249%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'datum-parsing-exception?
                         __tmp100123))))))
    (define deadlock-exception?
      (lambda (_%exn99243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99243%_))
            (let ((_%e99246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99243%_ 'exception))))
              (macro-deadlock-exception? _%e99246%_))
            (macro-deadlock-exception? _%exn99243%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn99239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99239%_))
            (let ((_%e99241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99239%_ 'exception))))
              (macro-divide-by-zero-exception? _%e99241%_))
            (macro-divide-by-zero-exception? _%exn99239%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn99235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99235%_))
            (let ((_%e99237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99235%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99237%_)
                  (macro-divide-by-zero-exception-arguments _%e99237%_)
                  (let ((__tmp100124
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e99237%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100124))))
            (if (macro-divide-by-zero-exception? _%exn99235%_)
                (macro-divide-by-zero-exception-arguments _%exn99235%_)
                (let ((__tmp100125
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn99235%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100125))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn99229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99229%_))
            (let ((_%e99232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99229%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e99232%_)
                  (macro-divide-by-zero-exception-procedure _%e99232%_)
                  (let ((__tmp100126
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e99232%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'divide-by-zero-exception?
                           __tmp100126))))
            (if (macro-divide-by-zero-exception? _%exn99229%_)
                (macro-divide-by-zero-exception-procedure _%exn99229%_)
                (let ((__tmp100127
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn99229%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         __tmp100127))))))
    (define error-exception?
      (lambda (_%exn99225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99225%_))
            (let ((_%e99227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99225%_ 'exception))))
              (macro-error-exception? _%e99227%_))
            (macro-error-exception? _%exn99225%_))))
    (define error-exception-message
      (lambda (_%exn99221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99221%_))
            (let ((_%e99223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99221%_ 'exception))))
              (if (macro-error-exception? _%e99223%_)
                  (macro-error-exception-message _%e99223%_)
                  (let ((__tmp100128
                         (cons 'error-exception-message
                               (cons _%e99223%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100128))))
            (if (macro-error-exception? _%exn99221%_)
                (macro-error-exception-message _%exn99221%_)
                (let ((__tmp100129
                       (cons 'error-exception-message
                             (cons _%exn99221%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100129))))))
    (define error-exception-parameters
      (lambda (_%exn99215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99215%_))
            (let ((_%e99218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99215%_ 'exception))))
              (if (macro-error-exception? _%e99218%_)
                  (macro-error-exception-parameters _%e99218%_)
                  (let ((__tmp100130
                         (cons 'error-exception-parameters
                               (cons _%e99218%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'error-exception? __tmp100130))))
            (if (macro-error-exception? _%exn99215%_)
                (macro-error-exception-parameters _%exn99215%_)
                (let ((__tmp100131
                       (cons 'error-exception-parameters
                             (cons _%exn99215%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'error-exception? __tmp100131))))))
    (define expression-parsing-exception?
      (lambda (_%exn99211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99211%_))
            (let ((_%e99213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99211%_ 'exception))))
              (macro-expression-parsing-exception? _%e99213%_))
            (macro-expression-parsing-exception? _%exn99211%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn99207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99207%_))
            (let ((_%e99209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99207%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99209%_)
                  (macro-expression-parsing-exception-kind _%e99209%_)
                  (let ((__tmp100132
                         (cons 'expression-parsing-exception-kind
                               (cons _%e99209%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100132))))
            (if (macro-expression-parsing-exception? _%exn99207%_)
                (macro-expression-parsing-exception-kind _%exn99207%_)
                (let ((__tmp100133
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn99207%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100133))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn99203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99203%_))
            (let ((_%e99205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99203%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99205%_)
                  (macro-expression-parsing-exception-parameters _%e99205%_)
                  (let ((__tmp100134
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e99205%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100134))))
            (if (macro-expression-parsing-exception? _%exn99203%_)
                (macro-expression-parsing-exception-parameters _%exn99203%_)
                (let ((__tmp100135
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn99203%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100135))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99197%_))
            (let ((_%e99200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99197%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99200%_)
                  (macro-expression-parsing-exception-source _%e99200%_)
                  (let ((__tmp100136
                         (cons 'expression-parsing-exception-source
                               (cons _%e99200%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'expression-parsing-exception?
                           __tmp100136))))
            (if (macro-expression-parsing-exception? _%exn99197%_)
                (macro-expression-parsing-exception-source _%exn99197%_)
                (let ((__tmp100137
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99197%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'expression-parsing-exception?
                         __tmp100137))))))
    (define file-exists-exception?
      (lambda (_%exn99193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99193%_))
            (let ((_%e99195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99193%_ 'exception))))
              (macro-file-exists-exception? _%e99195%_))
            (macro-file-exists-exception? _%exn99193%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99189%_))
            (let ((_%e99191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99189%_ 'exception))))
              (if (macro-file-exists-exception? _%e99191%_)
                  (macro-file-exists-exception-arguments _%e99191%_)
                  (let ((__tmp100138
                         (cons 'file-exists-exception-arguments
                               (cons _%e99191%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100138))))
            (if (macro-file-exists-exception? _%exn99189%_)
                (macro-file-exists-exception-arguments _%exn99189%_)
                (let ((__tmp100139
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99189%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100139))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99183%_))
            (let ((_%e99186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99183%_ 'exception))))
              (if (macro-file-exists-exception? _%e99186%_)
                  (macro-file-exists-exception-procedure _%e99186%_)
                  (let ((__tmp100140
                         (cons 'file-exists-exception-procedure
                               (cons _%e99186%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'file-exists-exception?
                           __tmp100140))))
            (if (macro-file-exists-exception? _%exn99183%_)
                (macro-file-exists-exception-procedure _%exn99183%_)
                (let ((__tmp100141
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99183%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'file-exists-exception?
                         __tmp100141))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99179%_))
            (let ((_%e99181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99179%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99181%_))
            (macro-fixnum-overflow-exception? _%exn99179%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99175%_))
            (let ((_%e99177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99175%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99177%_)
                  (macro-fixnum-overflow-exception-arguments _%e99177%_)
                  (let ((__tmp100142
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99177%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100142))))
            (if (macro-fixnum-overflow-exception? _%exn99175%_)
                (macro-fixnum-overflow-exception-arguments _%exn99175%_)
                (let ((__tmp100143
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99175%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100143))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99169%_))
            (let ((_%e99172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99169%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99172%_)
                  (macro-fixnum-overflow-exception-procedure _%e99172%_)
                  (let ((__tmp100144
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99172%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'fixnum-overflow-exception?
                           __tmp100144))))
            (if (macro-fixnum-overflow-exception? _%exn99169%_)
                (macro-fixnum-overflow-exception-procedure _%exn99169%_)
                (let ((__tmp100145
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99169%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         __tmp100145))))))
    (define heap-overflow-exception?
      (lambda (_%exn99163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99163%_))
            (let ((_%e99166%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99163%_ 'exception))))
              (macro-heap-overflow-exception? _%e99166%_))
            (macro-heap-overflow-exception? _%exn99163%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99159%_))
            (let ((_%e99161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99159%_ 'exception))))
              (macro-inactive-thread-exception? _%e99161%_))
            (macro-inactive-thread-exception? _%exn99159%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99155%_))
            (let ((_%e99157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99155%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99157%_)
                  (macro-inactive-thread-exception-arguments _%e99157%_)
                  (let ((__tmp100146
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99157%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100146))))
            (if (macro-inactive-thread-exception? _%exn99155%_)
                (macro-inactive-thread-exception-arguments _%exn99155%_)
                (let ((__tmp100147
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99155%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100147))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99149%_))
            (let ((_%e99152%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99149%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99152%_)
                  (macro-inactive-thread-exception-procedure _%e99152%_)
                  (let ((__tmp100148
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99152%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'inactive-thread-exception?
                           __tmp100148))))
            (if (macro-inactive-thread-exception? _%exn99149%_)
                (macro-inactive-thread-exception-procedure _%exn99149%_)
                (let ((__tmp100149
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99149%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'inactive-thread-exception?
                         __tmp100149))))))
    (define initialized-thread-exception?
      (lambda (_%exn99145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99145%_))
            (let ((_%e99147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99145%_ 'exception))))
              (macro-initialized-thread-exception? _%e99147%_))
            (macro-initialized-thread-exception? _%exn99145%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99141%_))
            (let ((_%e99143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99141%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99143%_)
                  (macro-initialized-thread-exception-arguments _%e99143%_)
                  (let ((__tmp100150
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99143%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100150))))
            (if (macro-initialized-thread-exception? _%exn99141%_)
                (macro-initialized-thread-exception-arguments _%exn99141%_)
                (let ((__tmp100151
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99141%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100151))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99135%_))
            (let ((_%e99138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99135%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99138%_)
                  (macro-initialized-thread-exception-procedure _%e99138%_)
                  (let ((__tmp100152
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99138%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'initialized-thread-exception?
                           __tmp100152))))
            (if (macro-initialized-thread-exception? _%exn99135%_)
                (macro-initialized-thread-exception-procedure _%exn99135%_)
                (let ((__tmp100153
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99135%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'initialized-thread-exception?
                         __tmp100153))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99131%_))
            (let ((_%e99133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99131%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99133%_))
            (macro-invalid-hash-number-exception? _%exn99131%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99127%_))
            (let ((_%e99129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99127%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99129%_)
                  (macro-invalid-hash-number-exception-arguments _%e99129%_)
                  (let ((__tmp100154
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99129%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100154))))
            (if (macro-invalid-hash-number-exception? _%exn99127%_)
                (macro-invalid-hash-number-exception-arguments _%exn99127%_)
                (let ((__tmp100155
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99127%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100155))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99121%_))
            (let ((_%e99124%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99121%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99124%_)
                  (macro-invalid-hash-number-exception-procedure _%e99124%_)
                  (let ((__tmp100156
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99124%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-hash-number-exception?
                           __tmp100156))))
            (if (macro-invalid-hash-number-exception? _%exn99121%_)
                (macro-invalid-hash-number-exception-procedure _%exn99121%_)
                (let ((__tmp100157
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99121%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         __tmp100157))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99117%_))
            (let ((_%e99119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99117%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99119%_))
            (macro-invalid-utf8-encoding-exception? _%exn99117%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99113%_))
            (let ((_%e99115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99113%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99115%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99115%_)
                  (let ((__tmp100158
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99115%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100158))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99113%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99113%_)
                (let ((__tmp100159
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99113%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100159))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99107%_))
            (let ((_%e99110%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99107%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99110%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99110%_)
                  (let ((__tmp100160
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99110%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'invalid-utf8-encoding-exception?
                           __tmp100160))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99107%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99107%_)
                (let ((__tmp100161
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99107%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         __tmp100161))))))
    (define join-timeout-exception?
      (lambda (_%exn99103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99103%_))
            (let ((_%e99105%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99103%_ 'exception))))
              (macro-join-timeout-exception? _%e99105%_))
            (macro-join-timeout-exception? _%exn99103%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99099%_))
            (let ((_%e99101%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99099%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99101%_)
                  (macro-join-timeout-exception-arguments _%e99101%_)
                  (let ((__tmp100162
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99101%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100162))))
            (if (macro-join-timeout-exception? _%exn99099%_)
                (macro-join-timeout-exception-arguments _%exn99099%_)
                (let ((__tmp100163
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99099%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100163))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99093%_))
            (let ((_%e99096%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99093%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99096%_)
                  (macro-join-timeout-exception-procedure _%e99096%_)
                  (let ((__tmp100164
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99096%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'join-timeout-exception?
                           __tmp100164))))
            (if (macro-join-timeout-exception? _%exn99093%_)
                (macro-join-timeout-exception-procedure _%exn99093%_)
                (let ((__tmp100165
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99093%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'join-timeout-exception?
                         __tmp100165))))))
    (define keyword-expected-exception?
      (lambda (_%exn99089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99089%_))
            (let ((_%e99091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99089%_ 'exception))))
              (macro-keyword-expected-exception? _%e99091%_))
            (macro-keyword-expected-exception? _%exn99089%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99085%_))
            (let ((_%e99087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99085%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99087%_)
                  (macro-keyword-expected-exception-arguments _%e99087%_)
                  (let ((__tmp100166
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99087%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100166))))
            (if (macro-keyword-expected-exception? _%exn99085%_)
                (macro-keyword-expected-exception-arguments _%exn99085%_)
                (let ((__tmp100167
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99085%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100167))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99079%_))
            (let ((_%e99082%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99079%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99082%_)
                  (macro-keyword-expected-exception-procedure _%e99082%_)
                  (let ((__tmp100168
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99082%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'keyword-expected-exception?
                           __tmp100168))))
            (if (macro-keyword-expected-exception? _%exn99079%_)
                (macro-keyword-expected-exception-procedure _%exn99079%_)
                (let ((__tmp100169
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99079%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'keyword-expected-exception?
                         __tmp100169))))))
    (define length-mismatch-exception?
      (lambda (_%exn99075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99075%_))
            (let ((_%e99077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99075%_ 'exception))))
              (macro-length-mismatch-exception? _%e99077%_))
            (macro-length-mismatch-exception? _%exn99075%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99071%_))
            (let ((_%e99073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99071%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99073%_)
                  (macro-length-mismatch-exception-arg-id _%e99073%_)
                  (let ((__tmp100170
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99073%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100170))))
            (if (macro-length-mismatch-exception? _%exn99071%_)
                (macro-length-mismatch-exception-arg-id _%exn99071%_)
                (let ((__tmp100171
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99071%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100171))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99067%_))
            (let ((_%e99069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99067%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99069%_)
                  (macro-length-mismatch-exception-arguments _%e99069%_)
                  (let ((__tmp100172
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99069%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100172))))
            (if (macro-length-mismatch-exception? _%exn99067%_)
                (macro-length-mismatch-exception-arguments _%exn99067%_)
                (let ((__tmp100173
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99067%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100173))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99061%_))
            (let ((_%e99064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99061%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99064%_)
                  (macro-length-mismatch-exception-procedure _%e99064%_)
                  (let ((__tmp100174
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99064%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'length-mismatch-exception?
                           __tmp100174))))
            (if (macro-length-mismatch-exception? _%exn99061%_)
                (macro-length-mismatch-exception-procedure _%exn99061%_)
                (let ((__tmp100175
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99061%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'length-mismatch-exception?
                         __tmp100175))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99057%_))
            (let ((_%e99059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99057%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99059%_))
            (macro-mailbox-receive-timeout-exception? _%exn99057%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99053%_))
            (let ((_%e99055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99053%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99055%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99055%_)
                  (let ((__tmp100176
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99055%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100176))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99053%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99053%_)
                (let ((__tmp100177
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99053%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100177))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99047%_))
            (let ((_%e99050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99047%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99050%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99050%_)
                  (let ((__tmp100178
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99050%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'mailbox-receive-timeout-exception?
                           __tmp100178))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99047%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99047%_)
                (let ((__tmp100179
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99047%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         __tmp100179))))))
    (define module-not-found-exception?
      (lambda (_%exn99043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99043%_))
            (let ((_%e99045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99043%_ 'exception))))
              (macro-module-not-found-exception? _%e99045%_))
            (macro-module-not-found-exception? _%exn99043%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99039%_))
            (let ((_%e99041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99039%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99041%_)
                  (macro-module-not-found-exception-arguments _%e99041%_)
                  (let ((__tmp100180
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99041%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100180))))
            (if (macro-module-not-found-exception? _%exn99039%_)
                (macro-module-not-found-exception-arguments _%exn99039%_)
                (let ((__tmp100181
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99039%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100181))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99033%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99033%_))
            (let ((_%e99036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99033%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99036%_)
                  (macro-module-not-found-exception-procedure _%e99036%_)
                  (let ((__tmp100182
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99036%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'module-not-found-exception?
                           __tmp100182))))
            (if (macro-module-not-found-exception? _%exn99033%_)
                (macro-module-not-found-exception-procedure _%exn99033%_)
                (let ((__tmp100183
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99033%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'module-not-found-exception?
                         __tmp100183))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99027%_))
            (let ((_%e99030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99027%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99030%_))
            (macro-multiple-c-return-exception? _%exn99027%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99023%_))
            (let ((_%e99025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99023%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99025%_))
            (macro-no-such-file-or-directory-exception? _%exn99023%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99019%_))
            (let ((_%e99021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99019%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99021%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99021%_)
                  (let ((__tmp100184
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99021%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100184))))
            (if (macro-no-such-file-or-directory-exception? _%exn99019%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99019%_)
                (let ((__tmp100185
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99019%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100185))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99013%_))
            (let ((_%e99016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99013%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99016%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99016%_)
                  (let ((__tmp100186
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99016%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'no-such-file-or-directory-exception?
                           __tmp100186))))
            (if (macro-no-such-file-or-directory-exception? _%exn99013%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99013%_)
                (let ((__tmp100187
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99013%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         __tmp100187))))))
    (define noncontinuable-exception?
      (lambda (_%exn99009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99009%_))
            (let ((_%e99011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99009%_ 'exception))))
              (macro-noncontinuable-exception? _%e99011%_))
            (macro-noncontinuable-exception? _%exn99009%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99003%_))
            (let ((_%e99006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99003%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99006%_)
                  (macro-noncontinuable-exception-reason _%e99006%_)
                  (let ((__tmp100188
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99006%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'noncontinuable-exception?
                           __tmp100188))))
            (if (macro-noncontinuable-exception? _%exn99003%_)
                (macro-noncontinuable-exception-reason _%exn99003%_)
                (let ((__tmp100189
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99003%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'noncontinuable-exception?
                         __tmp100189))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn98999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98999%_))
            (let ((_%e99001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98999%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99001%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn98999%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn98995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98995%_))
            (let ((_%e98997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98995%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98997%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e98997%_)
                  (let ((__tmp100190
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e98997%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100190))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98995%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn98995%_)
                (let ((__tmp100191
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn98995%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100191))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn98989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98989%_))
            (let ((_%e98992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98989%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e98992%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e98992%_)
                  (let ((__tmp100192
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e98992%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonempty-input-port-character-buffer-exception?
                           __tmp100192))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn98989%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn98989%_)
                (let ((__tmp100193
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn98989%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         __tmp100193))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn98985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98985%_))
            (let ((_%e98987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98985%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e98987%_))
            (macro-nonprocedure-operator-exception? _%exn98985%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn98981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98981%_))
            (let ((_%e98983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98981%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98983%_)
                  (macro-nonprocedure-operator-exception-arguments _%e98983%_)
                  (let ((__tmp100194
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e98983%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100194))))
            (if (macro-nonprocedure-operator-exception? _%exn98981%_)
                (macro-nonprocedure-operator-exception-arguments _%exn98981%_)
                (let ((__tmp100195
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn98981%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100195))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn98977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98977%_))
            (let ((_%e98979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98977%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98979%_)
                  (macro-nonprocedure-operator-exception-code _%e98979%_)
                  (let ((__tmp100196
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e98979%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100196))))
            (if (macro-nonprocedure-operator-exception? _%exn98977%_)
                (macro-nonprocedure-operator-exception-code _%exn98977%_)
                (let ((__tmp100197
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn98977%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100197))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn98973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98973%_))
            (let ((_%e98975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98973%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98975%_)
                  (macro-nonprocedure-operator-exception-operator _%e98975%_)
                  (let ((__tmp100198
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e98975%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100198))))
            (if (macro-nonprocedure-operator-exception? _%exn98973%_)
                (macro-nonprocedure-operator-exception-operator _%exn98973%_)
                (let ((__tmp100199
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn98973%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100199))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn98967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98967%_))
            (let ((_%e98970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98967%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e98970%_)
                  (macro-nonprocedure-operator-exception-rte _%e98970%_)
                  (let ((__tmp100200
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e98970%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'nonprocedure-operator-exception?
                           __tmp100200))))
            (if (macro-nonprocedure-operator-exception? _%exn98967%_)
                (macro-nonprocedure-operator-exception-rte _%exn98967%_)
                (let ((__tmp100201
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn98967%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         __tmp100201))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn98963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98963%_))
            (let ((_%e98965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98963%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e98965%_))
            (macro-not-in-compilation-context-exception? _%exn98963%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn98959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98959%_))
            (let ((_%e98961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98959%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98961%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e98961%_)
                  (let ((__tmp100202
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e98961%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100202))))
            (if (macro-not-in-compilation-context-exception? _%exn98959%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn98959%_)
                (let ((__tmp100203
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn98959%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100203))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn98953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98953%_))
            (let ((_%e98956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98953%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e98956%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e98956%_)
                  (let ((__tmp100204
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e98956%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'not-in-compilation-context-exception?
                           __tmp100204))))
            (if (macro-not-in-compilation-context-exception? _%exn98953%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn98953%_)
                (let ((__tmp100205
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn98953%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         __tmp100205))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn98949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98949%_))
            (let ((_%e98951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98949%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e98951%_))
            (macro-number-of-arguments-limit-exception? _%exn98949%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn98945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98945%_))
            (let ((_%e98947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98945%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98947%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e98947%_)
                  (let ((__tmp100206
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e98947%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100206))))
            (if (macro-number-of-arguments-limit-exception? _%exn98945%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn98945%_)
                (let ((__tmp100207
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn98945%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100207))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn98939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98939%_))
            (let ((_%e98942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98939%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e98942%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e98942%_)
                  (let ((__tmp100208
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e98942%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'number-of-arguments-limit-exception?
                           __tmp100208))))
            (if (macro-number-of-arguments-limit-exception? _%exn98939%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn98939%_)
                (let ((__tmp100209
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn98939%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         __tmp100209))))))
    (define os-exception?
      (lambda (_%exn98935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98935%_))
            (let ((_%e98937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98935%_ 'exception))))
              (macro-os-exception? _%e98937%_))
            (macro-os-exception? _%exn98935%_))))
    (define os-exception-arguments
      (lambda (_%exn98931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98931%_))
            (let ((_%e98933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98931%_ 'exception))))
              (if (macro-os-exception? _%e98933%_)
                  (macro-os-exception-arguments _%e98933%_)
                  (let ((__tmp100210
                         (cons 'os-exception-arguments (cons _%e98933%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100210))))
            (if (macro-os-exception? _%exn98931%_)
                (macro-os-exception-arguments _%exn98931%_)
                (let ((__tmp100211
                       (cons 'os-exception-arguments (cons _%exn98931%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100211))))))
    (define os-exception-code
      (lambda (_%exn98927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98927%_))
            (let ((_%e98929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98927%_ 'exception))))
              (if (macro-os-exception? _%e98929%_)
                  (macro-os-exception-code _%e98929%_)
                  (let ((__tmp100212
                         (cons 'os-exception-code (cons _%e98929%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100212))))
            (if (macro-os-exception? _%exn98927%_)
                (macro-os-exception-code _%exn98927%_)
                (let ((__tmp100213
                       (cons 'os-exception-code (cons _%exn98927%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100213))))))
    (define os-exception-message
      (lambda (_%exn98923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98923%_))
            (let ((_%e98925%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98923%_ 'exception))))
              (if (macro-os-exception? _%e98925%_)
                  (macro-os-exception-message _%e98925%_)
                  (let ((__tmp100214
                         (cons 'os-exception-message (cons _%e98925%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100214))))
            (if (macro-os-exception? _%exn98923%_)
                (macro-os-exception-message _%exn98923%_)
                (let ((__tmp100215
                       (cons 'os-exception-message (cons _%exn98923%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100215))))))
    (define os-exception-procedure
      (lambda (_%exn98917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98917%_))
            (let ((_%e98920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98917%_ 'exception))))
              (if (macro-os-exception? _%e98920%_)
                  (macro-os-exception-procedure _%e98920%_)
                  (let ((__tmp100216
                         (cons 'os-exception-procedure (cons _%e98920%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'os-exception? __tmp100216))))
            (if (macro-os-exception? _%exn98917%_)
                (macro-os-exception-procedure _%exn98917%_)
                (let ((__tmp100217
                       (cons 'os-exception-procedure (cons _%exn98917%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'os-exception? __tmp100217))))))
    (define permission-denied-exception?
      (lambda (_%exn98913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98913%_))
            (let ((_%e98915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98913%_ 'exception))))
              (macro-permission-denied-exception? _%e98915%_))
            (macro-permission-denied-exception? _%exn98913%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn98909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98909%_))
            (let ((_%e98911%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98909%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98911%_)
                  (macro-permission-denied-exception-arguments _%e98911%_)
                  (let ((__tmp100218
                         (cons 'permission-denied-exception-arguments
                               (cons _%e98911%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100218))))
            (if (macro-permission-denied-exception? _%exn98909%_)
                (macro-permission-denied-exception-arguments _%exn98909%_)
                (let ((__tmp100219
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn98909%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100219))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn98903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98903%_))
            (let ((_%e98906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98903%_ 'exception))))
              (if (macro-permission-denied-exception? _%e98906%_)
                  (macro-permission-denied-exception-procedure _%e98906%_)
                  (let ((__tmp100220
                         (cons 'permission-denied-exception-procedure
                               (cons _%e98906%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'permission-denied-exception?
                           __tmp100220))))
            (if (macro-permission-denied-exception? _%exn98903%_)
                (macro-permission-denied-exception-procedure _%exn98903%_)
                (let ((__tmp100221
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn98903%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'permission-denied-exception?
                         __tmp100221))))))
    (define range-exception?
      (lambda (_%exn98899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98899%_))
            (let ((_%e98901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98899%_ 'exception))))
              (macro-range-exception? _%e98901%_))
            (macro-range-exception? _%exn98899%_))))
    (define range-exception-arg-id
      (lambda (_%exn98895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98895%_))
            (let ((_%e98897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98895%_ 'exception))))
              (if (macro-range-exception? _%e98897%_)
                  (macro-range-exception-arg-id _%e98897%_)
                  (let ((__tmp100222
                         (cons 'range-exception-arg-id (cons _%e98897%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100222))))
            (if (macro-range-exception? _%exn98895%_)
                (macro-range-exception-arg-id _%exn98895%_)
                (let ((__tmp100223
                       (cons 'range-exception-arg-id (cons _%exn98895%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100223))))))
    (define range-exception-arguments
      (lambda (_%exn98891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98891%_))
            (let ((_%e98893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98891%_ 'exception))))
              (if (macro-range-exception? _%e98893%_)
                  (macro-range-exception-arguments _%e98893%_)
                  (let ((__tmp100224
                         (cons 'range-exception-arguments
                               (cons _%e98893%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100224))))
            (if (macro-range-exception? _%exn98891%_)
                (macro-range-exception-arguments _%exn98891%_)
                (let ((__tmp100225
                       (cons 'range-exception-arguments
                             (cons _%exn98891%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100225))))))
    (define range-exception-procedure
      (lambda (_%exn98885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98885%_))
            (let ((_%e98888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98885%_ 'exception))))
              (if (macro-range-exception? _%e98888%_)
                  (macro-range-exception-procedure _%e98888%_)
                  (let ((__tmp100226
                         (cons 'range-exception-procedure
                               (cons _%e98888%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'range-exception? __tmp100226))))
            (if (macro-range-exception? _%exn98885%_)
                (macro-range-exception-procedure _%exn98885%_)
                (let ((__tmp100227
                       (cons 'range-exception-procedure
                             (cons _%exn98885%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'range-exception? __tmp100227))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn98881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98881%_))
            (let ((_%e98883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98881%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e98883%_))
            (macro-rpc-remote-error-exception? _%exn98881%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn98877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98877%_))
            (let ((_%e98879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98877%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98879%_)
                  (macro-rpc-remote-error-exception-arguments _%e98879%_)
                  (let ((__tmp100228
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e98879%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100228))))
            (if (macro-rpc-remote-error-exception? _%exn98877%_)
                (macro-rpc-remote-error-exception-arguments _%exn98877%_)
                (let ((__tmp100229
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn98877%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100229))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn98873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98873%_))
            (let ((_%e98875%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98873%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98875%_)
                  (macro-rpc-remote-error-exception-message _%e98875%_)
                  (let ((__tmp100230
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e98875%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100230))))
            (if (macro-rpc-remote-error-exception? _%exn98873%_)
                (macro-rpc-remote-error-exception-message _%exn98873%_)
                (let ((__tmp100231
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn98873%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100231))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn98867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98867%_))
            (let ((_%e98870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98867%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e98870%_)
                  (macro-rpc-remote-error-exception-procedure _%e98870%_)
                  (let ((__tmp100232
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e98870%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'rpc-remote-error-exception?
                           __tmp100232))))
            (if (macro-rpc-remote-error-exception? _%exn98867%_)
                (macro-rpc-remote-error-exception-procedure _%exn98867%_)
                (let ((__tmp100233
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn98867%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         __tmp100233))))))
    (define scheduler-exception?
      (lambda (_%exn98863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98863%_))
            (let ((_%e98865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98863%_ 'exception))))
              (macro-scheduler-exception? _%e98865%_))
            (macro-scheduler-exception? _%exn98863%_))))
    (define scheduler-exception-reason
      (lambda (_%exn98857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98857%_))
            (let ((_%e98860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98857%_ 'exception))))
              (if (macro-scheduler-exception? _%e98860%_)
                  (macro-scheduler-exception-reason _%e98860%_)
                  (let ((__tmp100234
                         (cons 'scheduler-exception-reason
                               (cons _%e98860%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'scheduler-exception?
                           __tmp100234))))
            (if (macro-scheduler-exception? _%exn98857%_)
                (macro-scheduler-exception-reason _%exn98857%_)
                (let ((__tmp100235
                       (cons 'scheduler-exception-reason
                             (cons _%exn98857%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'scheduler-exception?
                         __tmp100235))))))
    (define sfun-conversion-exception?
      (lambda (_%exn98853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98853%_))
            (let ((_%e98855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98853%_ 'exception))))
              (macro-sfun-conversion-exception? _%e98855%_))
            (macro-sfun-conversion-exception? _%exn98853%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn98849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98849%_))
            (let ((_%e98851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98849%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98851%_)
                  (macro-sfun-conversion-exception-arguments _%e98851%_)
                  (let ((__tmp100236
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e98851%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100236))))
            (if (macro-sfun-conversion-exception? _%exn98849%_)
                (macro-sfun-conversion-exception-arguments _%exn98849%_)
                (let ((__tmp100237
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn98849%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100237))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn98845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98845%_))
            (let ((_%e98847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98845%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98847%_)
                  (macro-sfun-conversion-exception-code _%e98847%_)
                  (let ((__tmp100238
                         (cons 'sfun-conversion-exception-code
                               (cons _%e98847%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100238))))
            (if (macro-sfun-conversion-exception? _%exn98845%_)
                (macro-sfun-conversion-exception-code _%exn98845%_)
                (let ((__tmp100239
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn98845%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100239))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn98841%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98841%_))
            (let ((_%e98843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98841%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98843%_)
                  (macro-sfun-conversion-exception-message _%e98843%_)
                  (let ((__tmp100240
                         (cons 'sfun-conversion-exception-message
                               (cons _%e98843%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100240))))
            (if (macro-sfun-conversion-exception? _%exn98841%_)
                (macro-sfun-conversion-exception-message _%exn98841%_)
                (let ((__tmp100241
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn98841%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100241))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn98835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98835%_))
            (let ((_%e98838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98835%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e98838%_)
                  (macro-sfun-conversion-exception-procedure _%e98838%_)
                  (let ((__tmp100242
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e98838%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'sfun-conversion-exception?
                           __tmp100242))))
            (if (macro-sfun-conversion-exception? _%exn98835%_)
                (macro-sfun-conversion-exception-procedure _%exn98835%_)
                (let ((__tmp100243
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn98835%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         __tmp100243))))))
    (define stack-overflow-exception?
      (lambda (_%exn98829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98829%_))
            (let ((_%e98832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98829%_ 'exception))))
              (macro-stack-overflow-exception? _%e98832%_))
            (macro-stack-overflow-exception? _%exn98829%_))))
    (define started-thread-exception?
      (lambda (_%exn98825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98825%_))
            (let ((_%e98827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98825%_ 'exception))))
              (macro-started-thread-exception? _%e98827%_))
            (macro-started-thread-exception? _%exn98825%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn98821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98821%_))
            (let ((_%e98823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98821%_ 'exception))))
              (if (macro-started-thread-exception? _%e98823%_)
                  (macro-started-thread-exception-arguments _%e98823%_)
                  (let ((__tmp100244
                         (cons 'started-thread-exception-arguments
                               (cons _%e98823%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100244))))
            (if (macro-started-thread-exception? _%exn98821%_)
                (macro-started-thread-exception-arguments _%exn98821%_)
                (let ((__tmp100245
                       (cons 'started-thread-exception-arguments
                             (cons _%exn98821%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100245))))))
    (define started-thread-exception-procedure
      (lambda (_%exn98815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98815%_))
            (let ((_%e98818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98815%_ 'exception))))
              (if (macro-started-thread-exception? _%e98818%_)
                  (macro-started-thread-exception-procedure _%e98818%_)
                  (let ((__tmp100246
                         (cons 'started-thread-exception-procedure
                               (cons _%e98818%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'started-thread-exception?
                           __tmp100246))))
            (if (macro-started-thread-exception? _%exn98815%_)
                (macro-started-thread-exception-procedure _%exn98815%_)
                (let ((__tmp100247
                       (cons 'started-thread-exception-procedure
                             (cons _%exn98815%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'started-thread-exception?
                         __tmp100247))))))
    (define terminated-thread-exception?
      (lambda (_%exn98811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98811%_))
            (let ((_%e98813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98811%_ 'exception))))
              (macro-terminated-thread-exception? _%e98813%_))
            (macro-terminated-thread-exception? _%exn98811%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn98807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98807%_))
            (let ((_%e98809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98807%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98809%_)
                  (macro-terminated-thread-exception-arguments _%e98809%_)
                  (let ((__tmp100248
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e98809%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100248))))
            (if (macro-terminated-thread-exception? _%exn98807%_)
                (macro-terminated-thread-exception-arguments _%exn98807%_)
                (let ((__tmp100249
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn98807%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100249))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn98801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98801%_))
            (let ((_%e98804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98801%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e98804%_)
                  (macro-terminated-thread-exception-procedure _%e98804%_)
                  (let ((__tmp100250
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e98804%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'terminated-thread-exception?
                           __tmp100250))))
            (if (macro-terminated-thread-exception? _%exn98801%_)
                (macro-terminated-thread-exception-procedure _%exn98801%_)
                (let ((__tmp100251
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn98801%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'terminated-thread-exception?
                         __tmp100251))))))
    (define type-exception?
      (lambda (_%exn98797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98797%_))
            (let ((_%e98799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98797%_ 'exception))))
              (macro-type-exception? _%e98799%_))
            (macro-type-exception? _%exn98797%_))))
    (define type-exception-arg-id
      (lambda (_%exn98793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98793%_))
            (let ((_%e98795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98793%_ 'exception))))
              (if (macro-type-exception? _%e98795%_)
                  (macro-type-exception-arg-id _%e98795%_)
                  (let ((__tmp100252
                         (cons 'type-exception-arg-id (cons _%e98795%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100252))))
            (if (macro-type-exception? _%exn98793%_)
                (macro-type-exception-arg-id _%exn98793%_)
                (let ((__tmp100253
                       (cons 'type-exception-arg-id (cons _%exn98793%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100253))))))
    (define type-exception-arguments
      (lambda (_%exn98789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98789%_))
            (let ((_%e98791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98789%_ 'exception))))
              (if (macro-type-exception? _%e98791%_)
                  (macro-type-exception-arguments _%e98791%_)
                  (let ((__tmp100254
                         (cons 'type-exception-arguments
                               (cons _%e98791%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100254))))
            (if (macro-type-exception? _%exn98789%_)
                (macro-type-exception-arguments _%exn98789%_)
                (let ((__tmp100255
                       (cons 'type-exception-arguments
                             (cons _%exn98789%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100255))))))
    (define type-exception-procedure
      (lambda (_%exn98785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98785%_))
            (let ((_%e98787%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98785%_ 'exception))))
              (if (macro-type-exception? _%e98787%_)
                  (macro-type-exception-procedure _%e98787%_)
                  (let ((__tmp100256
                         (cons 'type-exception-procedure
                               (cons _%e98787%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100256))))
            (if (macro-type-exception? _%exn98785%_)
                (macro-type-exception-procedure _%exn98785%_)
                (let ((__tmp100257
                       (cons 'type-exception-procedure
                             (cons _%exn98785%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100257))))))
    (define type-exception-type-id
      (lambda (_%exn98779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98779%_))
            (let ((_%e98782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98779%_ 'exception))))
              (if (macro-type-exception? _%e98782%_)
                  (macro-type-exception-type-id _%e98782%_)
                  (let ((__tmp100258
                         (cons 'type-exception-type-id (cons _%e98782%_ '()))))
                    (declare (not safe))
                    (error '"not an instance" 'type-exception? __tmp100258))))
            (if (macro-type-exception? _%exn98779%_)
                (macro-type-exception-type-id _%exn98779%_)
                (let ((__tmp100259
                       (cons 'type-exception-type-id (cons _%exn98779%_ '()))))
                  (declare (not safe))
                  (error '"not an instance" 'type-exception? __tmp100259))))))
    (define unbound-global-exception?
      (lambda (_%exn98775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98775%_))
            (let ((_%e98777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98775%_ 'exception))))
              (macro-unbound-global-exception? _%e98777%_))
            (macro-unbound-global-exception? _%exn98775%_))))
    (define unbound-global-exception-code
      (lambda (_%exn98771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98771%_))
            (let ((_%e98773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98771%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98773%_)
                  (macro-unbound-global-exception-code _%e98773%_)
                  (let ((__tmp100260
                         (cons 'unbound-global-exception-code
                               (cons _%e98773%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100260))))
            (if (macro-unbound-global-exception? _%exn98771%_)
                (macro-unbound-global-exception-code _%exn98771%_)
                (let ((__tmp100261
                       (cons 'unbound-global-exception-code
                             (cons _%exn98771%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100261))))))
    (define unbound-global-exception-rte
      (lambda (_%exn98767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98767%_))
            (let ((_%e98769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98767%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98769%_)
                  (macro-unbound-global-exception-rte _%e98769%_)
                  (let ((__tmp100262
                         (cons 'unbound-global-exception-rte
                               (cons _%e98769%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100262))))
            (if (macro-unbound-global-exception? _%exn98767%_)
                (macro-unbound-global-exception-rte _%exn98767%_)
                (let ((__tmp100263
                       (cons 'unbound-global-exception-rte
                             (cons _%exn98767%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100263))))))
    (define unbound-global-exception-variable
      (lambda (_%exn98761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98761%_))
            (let ((_%e98764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98761%_ 'exception))))
              (if (macro-unbound-global-exception? _%e98764%_)
                  (macro-unbound-global-exception-variable _%e98764%_)
                  (let ((__tmp100264
                         (cons 'unbound-global-exception-variable
                               (cons _%e98764%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-global-exception?
                           __tmp100264))))
            (if (macro-unbound-global-exception? _%exn98761%_)
                (macro-unbound-global-exception-variable _%exn98761%_)
                (let ((__tmp100265
                       (cons 'unbound-global-exception-variable
                             (cons _%exn98761%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-global-exception?
                         __tmp100265))))))
    (define unbound-key-exception?
      (lambda (_%exn98757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98757%_))
            (let ((_%e98759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98757%_ 'exception))))
              (macro-unbound-key-exception? _%e98759%_))
            (macro-unbound-key-exception? _%exn98757%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn98753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98753%_))
            (let ((_%e98755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98753%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98755%_)
                  (macro-unbound-key-exception-arguments _%e98755%_)
                  (let ((__tmp100266
                         (cons 'unbound-key-exception-arguments
                               (cons _%e98755%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100266))))
            (if (macro-unbound-key-exception? _%exn98753%_)
                (macro-unbound-key-exception-arguments _%exn98753%_)
                (let ((__tmp100267
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn98753%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100267))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn98747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98747%_))
            (let ((_%e98750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98747%_ 'exception))))
              (if (macro-unbound-key-exception? _%e98750%_)
                  (macro-unbound-key-exception-procedure _%e98750%_)
                  (let ((__tmp100268
                         (cons 'unbound-key-exception-procedure
                               (cons _%e98750%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-key-exception?
                           __tmp100268))))
            (if (macro-unbound-key-exception? _%exn98747%_)
                (macro-unbound-key-exception-procedure _%exn98747%_)
                (let ((__tmp100269
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn98747%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-key-exception?
                         __tmp100269))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn98743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98743%_))
            (let ((_%e98745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98743%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e98745%_))
            (macro-unbound-os-environment-variable-exception? _%exn98743%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn98739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98739%_))
            (let ((_%e98741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98739%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98741%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e98741%_)
                  (let ((__tmp100270
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e98741%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100270))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98739%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn98739%_)
                (let ((__tmp100271
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn98739%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100271))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn98733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98733%_))
            (let ((_%e98736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98733%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e98736%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e98736%_)
                  (let ((__tmp100272
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e98736%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-os-environment-variable-exception?
                           __tmp100272))))
            (if (macro-unbound-os-environment-variable-exception? _%exn98733%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn98733%_)
                (let ((__tmp100273
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn98733%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         __tmp100273))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn98729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98729%_))
            (let ((_%e98731%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98729%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e98731%_))
            (macro-unbound-serial-number-exception? _%exn98729%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn98725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98725%_))
            (let ((_%e98727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98725%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98727%_)
                  (macro-unbound-serial-number-exception-arguments _%e98727%_)
                  (let ((__tmp100274
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e98727%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100274))))
            (if (macro-unbound-serial-number-exception? _%exn98725%_)
                (macro-unbound-serial-number-exception-arguments _%exn98725%_)
                (let ((__tmp100275
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn98725%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100275))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn98719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98719%_))
            (let ((_%e98722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98719%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e98722%_)
                  (macro-unbound-serial-number-exception-procedure _%e98722%_)
                  (let ((__tmp100276
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e98722%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unbound-serial-number-exception?
                           __tmp100276))))
            (if (macro-unbound-serial-number-exception? _%exn98719%_)
                (macro-unbound-serial-number-exception-procedure _%exn98719%_)
                (let ((__tmp100277
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn98719%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         __tmp100277))))))
    (define uncaught-exception?
      (lambda (_%exn98715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98715%_))
            (let ((_%e98717%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98715%_ 'exception))))
              (macro-uncaught-exception? _%e98717%_))
            (macro-uncaught-exception? _%exn98715%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn98711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98711%_))
            (let ((_%e98713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98711%_ 'exception))))
              (if (macro-uncaught-exception? _%e98713%_)
                  (macro-uncaught-exception-arguments _%e98713%_)
                  (let ((__tmp100278
                         (cons 'uncaught-exception-arguments
                               (cons _%e98713%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100278))))
            (if (macro-uncaught-exception? _%exn98711%_)
                (macro-uncaught-exception-arguments _%exn98711%_)
                (let ((__tmp100279
                       (cons 'uncaught-exception-arguments
                             (cons _%exn98711%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100279))))))
    (define uncaught-exception-procedure
      (lambda (_%exn98707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98707%_))
            (let ((_%e98709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98707%_ 'exception))))
              (if (macro-uncaught-exception? _%e98709%_)
                  (macro-uncaught-exception-procedure _%e98709%_)
                  (let ((__tmp100280
                         (cons 'uncaught-exception-procedure
                               (cons _%e98709%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100280))))
            (if (macro-uncaught-exception? _%exn98707%_)
                (macro-uncaught-exception-procedure _%exn98707%_)
                (let ((__tmp100281
                       (cons 'uncaught-exception-procedure
                             (cons _%exn98707%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100281))))))
    (define uncaught-exception-reason
      (lambda (_%exn98701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98701%_))
            (let ((_%e98704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98701%_ 'exception))))
              (if (macro-uncaught-exception? _%e98704%_)
                  (macro-uncaught-exception-reason _%e98704%_)
                  (let ((__tmp100282
                         (cons 'uncaught-exception-reason
                               (cons _%e98704%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uncaught-exception?
                           __tmp100282))))
            (if (macro-uncaught-exception? _%exn98701%_)
                (macro-uncaught-exception-reason _%exn98701%_)
                (let ((__tmp100283
                       (cons 'uncaught-exception-reason
                             (cons _%exn98701%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uncaught-exception?
                         __tmp100283))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn98697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98697%_))
            (let ((_%e98699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98697%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e98699%_))
            (macro-uninitialized-thread-exception? _%exn98697%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn98693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98693%_))
            (let ((_%e98695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98693%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98695%_)
                  (macro-uninitialized-thread-exception-arguments _%e98695%_)
                  (let ((__tmp100284
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e98695%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100284))))
            (if (macro-uninitialized-thread-exception? _%exn98693%_)
                (macro-uninitialized-thread-exception-arguments _%exn98693%_)
                (let ((__tmp100285
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn98693%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100285))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn98687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98687%_))
            (let ((_%e98690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98687%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e98690%_)
                  (macro-uninitialized-thread-exception-procedure _%e98690%_)
                  (let ((__tmp100286
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e98690%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'uninitialized-thread-exception?
                           __tmp100286))))
            (if (macro-uninitialized-thread-exception? _%exn98687%_)
                (macro-uninitialized-thread-exception-procedure _%exn98687%_)
                (let ((__tmp100287
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn98687%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         __tmp100287))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn98683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98683%_))
            (let ((_%e98685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98683%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e98685%_))
            (macro-unknown-keyword-argument-exception? _%exn98683%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn98679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98679%_))
            (let ((_%e98681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98679%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98681%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e98681%_)
                  (let ((__tmp100288
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e98681%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100288))))
            (if (macro-unknown-keyword-argument-exception? _%exn98679%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn98679%_)
                (let ((__tmp100289
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn98679%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100289))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn98673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98673%_))
            (let ((_%e98676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98673%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e98676%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e98676%_)
                  (let ((__tmp100290
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e98676%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unknown-keyword-argument-exception?
                           __tmp100290))))
            (if (macro-unknown-keyword-argument-exception? _%exn98673%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn98673%_)
                (let ((__tmp100291
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn98673%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         __tmp100291))))))
    (define unterminated-process-exception?
      (lambda (_%exn98669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98669%_))
            (let ((_%e98671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98669%_ 'exception))))
              (macro-unterminated-process-exception? _%e98671%_))
            (macro-unterminated-process-exception? _%exn98669%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn98665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98665%_))
            (let ((_%e98667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98665%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98667%_)
                  (macro-unterminated-process-exception-arguments _%e98667%_)
                  (let ((__tmp100292
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e98667%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100292))))
            (if (macro-unterminated-process-exception? _%exn98665%_)
                (macro-unterminated-process-exception-arguments _%exn98665%_)
                (let ((__tmp100293
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn98665%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100293))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn98659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98659%_))
            (let ((_%e98662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98659%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e98662%_)
                  (macro-unterminated-process-exception-procedure _%e98662%_)
                  (let ((__tmp100294
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e98662%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'unterminated-process-exception?
                           __tmp100294))))
            (if (macro-unterminated-process-exception? _%exn98659%_)
                (macro-unterminated-process-exception-procedure _%exn98659%_)
                (let ((__tmp100295
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn98659%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'unterminated-process-exception?
                         __tmp100295))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn98655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98655%_))
            (let ((_%e98657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98655%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e98657%_))
            (macro-wrong-number-of-arguments-exception? _%exn98655%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn98651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98651%_))
            (let ((_%e98653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98651%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98653%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e98653%_)
                  (let ((__tmp100296
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e98653%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100296))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98651%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn98651%_)
                (let ((__tmp100297
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn98651%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100297))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn98645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98645%_))
            (let ((_%e98648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98645%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e98648%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e98648%_)
                  (let ((__tmp100298
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e98648%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-arguments-exception?
                           __tmp100298))))
            (if (macro-wrong-number-of-arguments-exception? _%exn98645%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn98645%_)
                (let ((__tmp100299
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn98645%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         __tmp100299))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn98641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98641%_))
            (let ((_%e98643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98641%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e98643%_))
            (macro-wrong-number-of-values-exception? _%exn98641%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn98637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98637%_))
            (let ((_%e98639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98637%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98639%_)
                  (macro-wrong-number-of-values-exception-code _%e98639%_)
                  (let ((__tmp100300
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e98639%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100300))))
            (if (macro-wrong-number-of-values-exception? _%exn98637%_)
                (macro-wrong-number-of-values-exception-code _%exn98637%_)
                (let ((__tmp100301
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn98637%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100301))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn98633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98633%_))
            (let ((_%e98635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98633%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98635%_)
                  (macro-wrong-number-of-values-exception-rte _%e98635%_)
                  (let ((__tmp100302
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e98635%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100302))))
            (if (macro-wrong-number-of-values-exception? _%exn98633%_)
                (macro-wrong-number-of-values-exception-rte _%exn98633%_)
                (let ((__tmp100303
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn98633%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100303))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn98627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98627%_))
            (let ((_%e98630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98627%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e98630%_)
                  (macro-wrong-number-of-values-exception-vals _%e98630%_)
                  (let ((__tmp100304
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e98630%_ '()))))
                    (declare (not safe))
                    (error '"not an instance"
                           'wrong-number-of-values-exception?
                           __tmp100304))))
            (if (macro-wrong-number-of-values-exception? _%exn98627%_)
                (macro-wrong-number-of-values-exception-vals _%exn98627%_)
                (let ((__tmp100305
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn98627%_ '()))))
                  (declare (not safe))
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         __tmp100305))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn98621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn98621%_))
            (let ((_%e98624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn98621%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e98624%_))
            (macro-wrong-processor-c-return-exception? _%exn98621%_))))))
