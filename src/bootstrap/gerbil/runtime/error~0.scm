(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712773524)
  (begin
    (define Exception::t
      (let ((__tmp100914 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp100914
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args100884%_
        (apply make-instance Exception::t _%$args100884%_)))
    (define StackTrace::t
      (let ((__tmp100915 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp100915
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args100881%_
        (apply make-instance StackTrace::t _%$args100881%_)))
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
      (let ((__tmp100916 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp100916
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args100878%_ (apply make-instance Error::t _%$args100878%_)))
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
      (let ((__tmp100917 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp100917
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args100875%_
        (apply make-instance ContractViolation::t _%$args100875%_)))
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
      (let ((__tmp100918 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp100918
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args100872%_
        (apply make-instance RuntimeException::t _%$args100872%_)))
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
      (lambda (_%exn100867%_ _%continue100868%_)
        (let ((_%exn100870%_ (wrap-runtime-exception _%exn100867%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn100870%_ _%continue100868%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn100863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn100863%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn100863%_ 'continuation))
                '#!void
                (let ((__tmp100919
                       (lambda (_%cont100865%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn100863%_
                            'continuation
                            _%cont100865%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp100919)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn100863%_))))
    (define error
      (lambda (_%message100860%_ . _%irritants100861%_)
        (raise (let ((__obj100911
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj100911
                  _%message100860%_
                  'irritants:
                  _%irritants100861%_)
                 __obj100911))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords100832%_
               _%ctx100827100833%_
               _%contract-expr100828100835%_
               _%value100829100837%_
               _%message100839%_)
        (let* ((_%ctx100841%_
                (if (eq? _%ctx100827100833%_ absent-value)
                    '#f
                    _%ctx100827100833%_))
               (_%contract-expr100843%_
                (if (eq? _%contract-expr100828100835%_ absent-value)
                    '#f
                    _%contract-expr100828100835%_))
               (_%value100845%_
                (if (eq? _%value100829100837%_ absent-value)
                    '#f
                    _%value100829100837%_)))
          (raise (let ((__obj100912
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj100912
                    _%message100839%_
                    'where:
                    _%ctx100841%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr100843%_
                                (cons 'value: (cons _%value100845%_ '())))))
                   __obj100912)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords100850%_ . _%args100851%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords100850%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100850%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100850%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords100850%_
                  'value:
                  absent-value))
               _%args100851%_)))
    (define __raise-contract-violation-error
      (lambda _%args100830100857%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args100830100857%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler100801%_ _%thunk100802%_)
        (if (procedure? _%handler100801%_)
            (let ((_%handler100806%_ _%handler100801%_))
              (if (procedure? _%thunk100802%_)
                  (let ((_%thunk100816%_ _%thunk100802%_))
                    (__with-exception-handler
                     _%handler100806%_
                     _%thunk100816%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk100802%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler100801%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler100776%_ _%thunk100777%_)
        (let* ((_%handler100780%_ _%handler100776%_)
               (_%thunk100788%_ _%thunk100777%_)
               (__tmp100920
                (lambda (_%exn100797%_)
                  (let ((_%exn100799%_ (wrap-runtime-exception _%exn100797%_)))
                    (declare (not safe))
                    (_%handler100780%_ _%exn100799%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp100920 _%thunk100788%_))))
    (define with-catch
      (lambda (_%handler100751%_ _%thunk100752%_)
        (if (procedure? _%handler100751%_)
            (let ((_%handler100756%_ _%handler100751%_))
              (if (procedure? _%thunk100752%_)
                  (let ((_%thunk100766%_ _%thunk100752%_))
                    (__with-catch _%handler100756%_ _%thunk100766%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk100752%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler100751%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler100726%_ _%thunk100727%_)
        (let* ((_%handler100730%_ _%handler100726%_)
               (_%thunk100738%_ _%thunk100727%_)
               (__tmp100921
                (lambda (_%cont100747%_)
                  (__with-exception-handler
                   (lambda (_%exn100749%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont100747%_
                        _%handler100730%_
                        _%exn100749%_)))
                   _%thunk100738%_))))
          (declare (not safe))
          (##continuation-capture __tmp100921))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn100713%_)
        (if (or (heap-overflow-exception? _%exn100713%_)
                (stack-overflow-exception? _%exn100713%_))
            _%exn100713%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn100713%_))
                _%exn100713%_
                (if (macro-exception? _%exn100713%_)
                    (let ((_%rte100721%_
                           (let ((__obj100913
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj100913
                                _%exn100713%_
                                '2
                                '#f
                                '#f))
                             __obj100913)))
                      (let ((__tmp100922
                             (lambda (_%cont100723%_)
                               (let ((__tmp100923
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont100723%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte100721%_
                                  'continuation
                                  __tmp100923)))))
                        (declare (not safe))
                        (##continuation-capture __tmp100922))
                      _%rte100721%_)
                    _%exn100713%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj100708%_)
        (let ((_%$e100710%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj100708%_))))
          (if _%$e100710%_ _%$e100710%_ (error-exception? _%obj100708%_)))))
    (define error-message
      (lambda (_%obj100701%_)
        (let ((_%$e100703%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj100701%_ 'message false))))
          (if _%$e100703%_
              _%$e100703%_
              (if (error-exception? _%obj100701%_)
                  (error-exception-message _%obj100701%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj100696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100696%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100696%_ 'irritants))
            (if (error-exception? _%obj100696%_)
                (error-exception-parameters _%obj100696%_)
                '#f))))
    (define error-trace
      (lambda (_%obj100694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj100694%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj100694%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e100675%_ _%port100676%_)
        (let ((_%$e100678%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e100675%_ 'display-exception))))
          (if _%$e100678%_
              ((lambda (_%f100681%_) (_%f100681%_ _%e100675%_ _%port100676%_))
               _%$e100678%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e100675%_ _%port100676%_))))))
    (define display-exception__0
      (lambda (_%e100687%_)
        (let ((_%port100689%_ (current-error-port)))
          (display-exception__% _%e100687%_ _%port100689%_))))
    (define display-exception
      (lambda _g100925_
        (let ((_g100924_ (let () (declare (not safe)) (##length _g100925_))))
          (cond ((let () (declare (not safe)) (##fx= _g100924_ 1))
                 (apply display-exception__0 _g100925_))
                ((let () (declare (not safe)) (##fx= _g100924_ 2))
                 (apply display-exception__% _g100925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g100925_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99044100651%_ _%message100653%_ . _%rest100654%_)
        (let* ((_%self100656%_ _%self99044100651%_)
               (_%self100658%_ _%self100656%_)
               (_%message100672%_
                (if (string? _%message100653%_)
                    _%message100653%_
                    (call-with-output-string
                     '""
                     (lambda (_%g100667100669%_)
                       (display _%message100653%_ _%g100667100669%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self100658%_ 'message _%message100672%_))
          (apply class-instance-init! _%self100658%_ _%rest100654%_))))
    (define Error:::init!::specialize
      (lambda (__klass100886 __method-table100887)
        (let ((__message100888
               (let ((__slot100889
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100886 'message))))
                 (if __slot100889
                     __slot100889
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self99044100651%_ _%message100653%_ . _%rest100654%_)
            (let* ((_%self100656%_ _%self99044100651%_)
                   (_%self100658%_ _%self100656%_)
                   (_%message100672%_
                    (if (string? _%message100653%_)
                        _%message100653%_
                        (call-with-output-string
                         '""
                         (lambda (_%g100667100669%_)
                           (display _%message100653%_ _%g100667100669%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self100658%_
                 _%message100672%_
                 __message100888
                 '#f
                 '#f))
              (apply class-instance-init! _%self100658%_ _%rest100654%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
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
      (lambda (_%self99045100373%_ _%port100375%_)
        (let* ((_%self100377%_ _%self99045100373%_)
               (_%self100379%_ _%self100377%_))
          (let ((_%tmp-port100389%_ (open-output-string))
                (_%display-error-newline100390%_
                 (> (output-port-column _%port100375%_) '0)))
            (fix-port-width! _%tmp-port100389%_)
            (let ((__tmp100926
                   (lambda ()
                     (if _%display-error-newline100390%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100393%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100379%_ 'where))))
                       (if _%$e100393%_ (display _%$e100393%_) (display '"?")))
                     (let ((__tmp100927
                            (let ((__tmp100928
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100379%_))))
                              (declare (not safe))
                              (##type-name __tmp100928))))
                       (declare (not safe))
                       (display* '" [" __tmp100927 '"]: "))
                     (let ((__tmp100929
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100379%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp100929))
                     (let ((_%irritants100397%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100379%_ 'irritants))))
                       (if (null? _%irritants100397%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100399%_)
                                (if (u8vector? _%obj100399%_)
                                    (let ((__tmp100930
                                           (cons '<u8vector>
                                                 (cons (u8vector-length
                                                        _%obj100399%_)
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp100930))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj100399%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100397%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100400100402%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100379%_
                                   'continuation))))
                           (if _%cont100400100402%_
                               (let ((_%cont100405%_ _%cont100400100402%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100405%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp100926
               current-output-port
               _%tmp-port100389%_))
            (let ((__tmp100931 (get-output-string _%tmp-port100389%_)))
              (declare (not safe))
              (##write-string __tmp100931 _%port100375%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass100890 __method-table100891)
        (let ((__message100892
               (let ((__slot100896
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100890 'message))))
                 (if __slot100896
                     __slot100896
                     (error '"Unknown slot" 'message))))
              (__irritants100893
               (let ((__slot100897
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100890 'irritants))))
                 (if __slot100897
                     __slot100897
                     (error '"Unknown slot" 'irritants))))
              (__continuation100894
               (let ((__slot100898
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100890 'continuation))))
                 (if __slot100898
                     __slot100898
                     (error '"Unknown slot" 'continuation))))
              (__where100895
               (let ((__slot100899
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100890 'where))))
                 (if __slot100899
                     __slot100899
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self99045100373%_ _%port100375%_)
            (let* ((_%self100377%_ _%self99045100373%_)
                   (_%self100379%_ _%self100377%_))
              (let ((_%tmp-port100389%_ (open-output-string))
                    (_%display-error-newline100390%_
                     (> (output-port-column _%port100375%_) '0)))
                (fix-port-width! _%tmp-port100389%_)
                (let ((__tmp100932
                       (lambda ()
                         (if _%display-error-newline100390%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e100393%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self100379%_
                                   __where100895
                                   '#f
                                   '#f))))
                           (if _%$e100393%_
                               (display _%$e100393%_)
                               (display '"?")))
                         (let ((__tmp100933
                                (let ((__tmp100934
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self100379%_))))
                                  (declare (not safe))
                                  (##type-name __tmp100934))))
                           (declare (not safe))
                           (display* '" [" __tmp100933 '"]: "))
                         (let ((__tmp100935
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self100379%_
                                   __message100892
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp100935))
                         (let ((_%irritants100397%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self100379%_
                                   __irritants100893
                                   '#f
                                   '#f))))
                           (if (null? _%irritants100397%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj100399%_)
                                    (if (u8vector? _%obj100399%_)
                                        (let ((__tmp100936
                                               (cons '<u8vector>
                                                     (cons (u8vector-length
                                                            _%obj100399%_)
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp100936))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj100399%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants100397%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont100400100402%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self100379%_
                                       __continuation100894
                                       '#f
                                       '#f))))
                               (if _%cont100400100402%_
                                   (let ((_%cont100405%_ _%cont100400100402%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont100405%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp100932
                   current-output-port
                   _%tmp-port100389%_))
                (let ((__tmp100937 (get-output-string _%tmp-port100389%_)))
                  (declare (not safe))
                  (##write-string __tmp100937 _%port100375%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99046100227%_ _%port100229%_)
        (let* ((_%self100231%_ _%self99046100227%_)
               (_%self100233%_ _%self100231%_)
               (_%tmp-port100243%_ (open-output-string)))
          (fix-port-width! _%tmp-port100243%_)
          (let ((__tmp100938
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self100233%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp100938 _%tmp-port100243%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont100244100246%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self100233%_ 'continuation))))
                (if _%cont100244100246%_
                    (let ((_%cont100249%_ _%cont100244100246%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port100243%_)
                      (newline _%tmp-port100243%_)
                      (display-continuation-backtrace
                       _%cont100249%_
                       _%tmp-port100243%_))
                    '#f))
              '#!void)
          (let ((__tmp100939 (get-output-string _%tmp-port100243%_)))
            (declare (not safe))
            (##write-string __tmp100939 _%port100229%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass100900 __method-table100901)
        (let ((__continuation100902
               (let ((__slot100904
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100900 'continuation))))
                 (if __slot100904
                     __slot100904
                     (error '"Unknown slot" 'continuation))))
              (__exception100903
               (let ((__slot100905
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass100900 'exception))))
                 (if __slot100905
                     __slot100905
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self99046100227%_ _%port100229%_)
            (let* ((_%self100231%_ _%self99046100227%_)
                   (_%self100233%_ _%self100231%_)
                   (_%tmp-port100243%_ (open-output-string)))
              (fix-port-width! _%tmp-port100243%_)
              (let ((__tmp100940
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self100233%_
                        __exception100903
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp100940 _%tmp-port100243%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont100244100246%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self100233%_
                            __continuation100902
                            '#f
                            '#f))))
                    (if _%cont100244100246%_
                        (let ((_%cont100249%_ _%cont100244100246%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port100243%_)
                          (newline _%tmp-port100243%_)
                          (display-continuation-backtrace
                           _%cont100249%_
                           _%tmp-port100243%_))
                        '#f))
                  '#!void)
              (let ((__tmp100941 (get-output-string _%tmp-port100243%_)))
                (declare (not safe))
                (##write-string __tmp100941 _%port100229%_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port100099%_)
        (if (macro-character-port? _%port100099%_)
            (let ((_%old-width100101%_
                   (macro-character-port-output-width _%port100099%_)))
              (macro-character-port-output-width-set!
               _%port100099%_
               (lambda (_%port100103%_) '256))
              _%old-width100101%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port100096%_ _%old-width100097%_)
        (if (macro-character-port? _%port100096%_)
            (macro-character-port-output-width-set!
             _%port100096%_
             _%old-width100097%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e100094%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e100094%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn100088%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100088%_))
            (let ((_%e100091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100088%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e100091%_))
            (macro-abandoned-mutex-exception? _%exn100088%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn100084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100084%_))
            (let ((_%e100086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100084%_ 'exception))))
              (macro-cfun-conversion-exception? _%e100086%_))
            (macro-cfun-conversion-exception? _%exn100084%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn100080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100080%_))
            (let ((_%e100082%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100080%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100082%_)
                  (macro-cfun-conversion-exception-arguments _%e100082%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e100082%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100080%_)
                (macro-cfun-conversion-exception-arguments _%exn100080%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn100080%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn100076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100076%_))
            (let ((_%e100078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100076%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100078%_)
                  (macro-cfun-conversion-exception-code _%e100078%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e100078%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100076%_)
                (macro-cfun-conversion-exception-code _%exn100076%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn100076%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn100072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100072%_))
            (let ((_%e100074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100072%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100074%_)
                  (macro-cfun-conversion-exception-message _%e100074%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e100074%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100072%_)
                (macro-cfun-conversion-exception-message _%exn100072%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn100072%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn100066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100066%_))
            (let ((_%e100069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100066%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100069%_)
                  (macro-cfun-conversion-exception-procedure _%e100069%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e100069%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100066%_)
                (macro-cfun-conversion-exception-procedure _%exn100066%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn100066%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn100062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100062%_))
            (let ((_%e100064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100062%_ 'exception))))
              (macro-datum-parsing-exception? _%e100064%_))
            (macro-datum-parsing-exception? _%exn100062%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn100058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100058%_))
            (let ((_%e100060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100058%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e100060%_)
                  (macro-datum-parsing-exception-kind _%e100060%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e100060%_ '())))))
            (if (macro-datum-parsing-exception? _%exn100058%_)
                (macro-datum-parsing-exception-kind _%exn100058%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn100058%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn100054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100054%_))
            (let ((_%e100056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100054%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e100056%_)
                  (macro-datum-parsing-exception-parameters _%e100056%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e100056%_ '())))))
            (if (macro-datum-parsing-exception? _%exn100054%_)
                (macro-datum-parsing-exception-parameters _%exn100054%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn100054%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn100048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100048%_))
            (let ((_%e100051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100048%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e100051%_)
                  (macro-datum-parsing-exception-readenv _%e100051%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e100051%_ '())))))
            (if (macro-datum-parsing-exception? _%exn100048%_)
                (macro-datum-parsing-exception-readenv _%exn100048%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn100048%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn100042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100042%_))
            (let ((_%e100045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100042%_ 'exception))))
              (macro-deadlock-exception? _%e100045%_))
            (macro-deadlock-exception? _%exn100042%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn100038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100038%_))
            (let ((_%e100040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100038%_ 'exception))))
              (macro-divide-by-zero-exception? _%e100040%_))
            (macro-divide-by-zero-exception? _%exn100038%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn100034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100034%_))
            (let ((_%e100036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100034%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e100036%_)
                  (macro-divide-by-zero-exception-arguments _%e100036%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e100036%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn100034%_)
                (macro-divide-by-zero-exception-arguments _%exn100034%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn100034%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn100028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100028%_))
            (let ((_%e100031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100028%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e100031%_)
                  (macro-divide-by-zero-exception-procedure _%e100031%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e100031%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn100028%_)
                (macro-divide-by-zero-exception-procedure _%exn100028%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn100028%_ '())))))))
    (define error-exception?
      (lambda (_%exn100024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100024%_))
            (let ((_%e100026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100024%_ 'exception))))
              (macro-error-exception? _%e100026%_))
            (macro-error-exception? _%exn100024%_))))
    (define error-exception-message
      (lambda (_%exn100020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100020%_))
            (let ((_%e100022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100020%_ 'exception))))
              (if (macro-error-exception? _%e100022%_)
                  (macro-error-exception-message _%e100022%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e100022%_ '())))))
            (if (macro-error-exception? _%exn100020%_)
                (macro-error-exception-message _%exn100020%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn100020%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn100014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100014%_))
            (let ((_%e100017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100014%_ 'exception))))
              (if (macro-error-exception? _%e100017%_)
                  (macro-error-exception-parameters _%e100017%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e100017%_ '())))))
            (if (macro-error-exception? _%exn100014%_)
                (macro-error-exception-parameters _%exn100014%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn100014%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn100010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100010%_))
            (let ((_%e100012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100010%_ 'exception))))
              (macro-expression-parsing-exception? _%e100012%_))
            (macro-expression-parsing-exception? _%exn100010%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn100006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100006%_))
            (let ((_%e100008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100006%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e100008%_)
                  (macro-expression-parsing-exception-kind _%e100008%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e100008%_ '())))))
            (if (macro-expression-parsing-exception? _%exn100006%_)
                (macro-expression-parsing-exception-kind _%exn100006%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn100006%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn100002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100002%_))
            (let ((_%e100004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100002%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e100004%_)
                  (macro-expression-parsing-exception-parameters _%e100004%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e100004%_ '())))))
            (if (macro-expression-parsing-exception? _%exn100002%_)
                (macro-expression-parsing-exception-parameters _%exn100002%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn100002%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn99996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99996%_))
            (let ((_%e99999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99996%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e99999%_)
                  (macro-expression-parsing-exception-source _%e99999%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e99999%_ '())))))
            (if (macro-expression-parsing-exception? _%exn99996%_)
                (macro-expression-parsing-exception-source _%exn99996%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn99996%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn99992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99992%_))
            (let ((_%e99994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99992%_ 'exception))))
              (macro-file-exists-exception? _%e99994%_))
            (macro-file-exists-exception? _%exn99992%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn99988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99988%_))
            (let ((_%e99990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99988%_ 'exception))))
              (if (macro-file-exists-exception? _%e99990%_)
                  (macro-file-exists-exception-arguments _%e99990%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e99990%_ '())))))
            (if (macro-file-exists-exception? _%exn99988%_)
                (macro-file-exists-exception-arguments _%exn99988%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn99988%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn99982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99982%_))
            (let ((_%e99985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99982%_ 'exception))))
              (if (macro-file-exists-exception? _%e99985%_)
                  (macro-file-exists-exception-procedure _%e99985%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e99985%_ '())))))
            (if (macro-file-exists-exception? _%exn99982%_)
                (macro-file-exists-exception-procedure _%exn99982%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn99982%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn99978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99978%_))
            (let ((_%e99980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99978%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e99980%_))
            (macro-fixnum-overflow-exception? _%exn99978%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn99974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99974%_))
            (let ((_%e99976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99974%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99976%_)
                  (macro-fixnum-overflow-exception-arguments _%e99976%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e99976%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn99974%_)
                (macro-fixnum-overflow-exception-arguments _%exn99974%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn99974%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn99968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99968%_))
            (let ((_%e99971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99968%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e99971%_)
                  (macro-fixnum-overflow-exception-procedure _%e99971%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e99971%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn99968%_)
                (macro-fixnum-overflow-exception-procedure _%exn99968%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn99968%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn99962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99962%_))
            (let ((_%e99965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99962%_ 'exception))))
              (macro-heap-overflow-exception? _%e99965%_))
            (macro-heap-overflow-exception? _%exn99962%_))))
    (define inactive-thread-exception?
      (lambda (_%exn99958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99958%_))
            (let ((_%e99960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99958%_ 'exception))))
              (macro-inactive-thread-exception? _%e99960%_))
            (macro-inactive-thread-exception? _%exn99958%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn99954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99954%_))
            (let ((_%e99956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99954%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99956%_)
                  (macro-inactive-thread-exception-arguments _%e99956%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e99956%_ '())))))
            (if (macro-inactive-thread-exception? _%exn99954%_)
                (macro-inactive-thread-exception-arguments _%exn99954%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn99954%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn99948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99948%_))
            (let ((_%e99951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99948%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e99951%_)
                  (macro-inactive-thread-exception-procedure _%e99951%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e99951%_ '())))))
            (if (macro-inactive-thread-exception? _%exn99948%_)
                (macro-inactive-thread-exception-procedure _%exn99948%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn99948%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn99944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99944%_))
            (let ((_%e99946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99944%_ 'exception))))
              (macro-initialized-thread-exception? _%e99946%_))
            (macro-initialized-thread-exception? _%exn99944%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn99940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99940%_))
            (let ((_%e99942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99940%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99942%_)
                  (macro-initialized-thread-exception-arguments _%e99942%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e99942%_ '())))))
            (if (macro-initialized-thread-exception? _%exn99940%_)
                (macro-initialized-thread-exception-arguments _%exn99940%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn99940%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn99934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99934%_))
            (let ((_%e99937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99934%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e99937%_)
                  (macro-initialized-thread-exception-procedure _%e99937%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e99937%_ '())))))
            (if (macro-initialized-thread-exception? _%exn99934%_)
                (macro-initialized-thread-exception-procedure _%exn99934%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn99934%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn99930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99930%_))
            (let ((_%e99932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99930%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e99932%_))
            (macro-invalid-hash-number-exception? _%exn99930%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn99926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99926%_))
            (let ((_%e99928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99926%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99928%_)
                  (macro-invalid-hash-number-exception-arguments _%e99928%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e99928%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn99926%_)
                (macro-invalid-hash-number-exception-arguments _%exn99926%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn99926%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn99920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99920%_))
            (let ((_%e99923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99920%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e99923%_)
                  (macro-invalid-hash-number-exception-procedure _%e99923%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e99923%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn99920%_)
                (macro-invalid-hash-number-exception-procedure _%exn99920%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn99920%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn99916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99916%_))
            (let ((_%e99918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99916%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e99918%_))
            (macro-invalid-utf8-encoding-exception? _%exn99916%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn99912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99912%_))
            (let ((_%e99914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99912%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99914%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e99914%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e99914%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99912%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn99912%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn99912%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn99906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99906%_))
            (let ((_%e99909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99906%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e99909%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e99909%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e99909%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn99906%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn99906%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn99906%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn99902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99902%_))
            (let ((_%e99904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99902%_ 'exception))))
              (macro-join-timeout-exception? _%e99904%_))
            (macro-join-timeout-exception? _%exn99902%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn99898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99898%_))
            (let ((_%e99900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99898%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99900%_)
                  (macro-join-timeout-exception-arguments _%e99900%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e99900%_ '())))))
            (if (macro-join-timeout-exception? _%exn99898%_)
                (macro-join-timeout-exception-arguments _%exn99898%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn99898%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn99892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99892%_))
            (let ((_%e99895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99892%_ 'exception))))
              (if (macro-join-timeout-exception? _%e99895%_)
                  (macro-join-timeout-exception-procedure _%e99895%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e99895%_ '())))))
            (if (macro-join-timeout-exception? _%exn99892%_)
                (macro-join-timeout-exception-procedure _%exn99892%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn99892%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn99888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99888%_))
            (let ((_%e99890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99888%_ 'exception))))
              (macro-keyword-expected-exception? _%e99890%_))
            (macro-keyword-expected-exception? _%exn99888%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn99884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99884%_))
            (let ((_%e99886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99884%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99886%_)
                  (macro-keyword-expected-exception-arguments _%e99886%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e99886%_ '())))))
            (if (macro-keyword-expected-exception? _%exn99884%_)
                (macro-keyword-expected-exception-arguments _%exn99884%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn99884%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn99878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99878%_))
            (let ((_%e99881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99878%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e99881%_)
                  (macro-keyword-expected-exception-procedure _%e99881%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e99881%_ '())))))
            (if (macro-keyword-expected-exception? _%exn99878%_)
                (macro-keyword-expected-exception-procedure _%exn99878%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn99878%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn99874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99874%_))
            (let ((_%e99876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99874%_ 'exception))))
              (macro-length-mismatch-exception? _%e99876%_))
            (macro-length-mismatch-exception? _%exn99874%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn99870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99870%_))
            (let ((_%e99872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99870%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99872%_)
                  (macro-length-mismatch-exception-arg-id _%e99872%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e99872%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99870%_)
                (macro-length-mismatch-exception-arg-id _%exn99870%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn99870%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn99866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99866%_))
            (let ((_%e99868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99866%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99868%_)
                  (macro-length-mismatch-exception-arguments _%e99868%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e99868%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99866%_)
                (macro-length-mismatch-exception-arguments _%exn99866%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn99866%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn99860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99860%_))
            (let ((_%e99863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99860%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e99863%_)
                  (macro-length-mismatch-exception-procedure _%e99863%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e99863%_ '())))))
            (if (macro-length-mismatch-exception? _%exn99860%_)
                (macro-length-mismatch-exception-procedure _%exn99860%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn99860%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn99856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99856%_))
            (let ((_%e99858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99856%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e99858%_))
            (macro-mailbox-receive-timeout-exception? _%exn99856%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn99852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99852%_))
            (let ((_%e99854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99852%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99854%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e99854%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e99854%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99852%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn99852%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn99852%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn99846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99846%_))
            (let ((_%e99849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99846%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e99849%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e99849%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e99849%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn99846%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn99846%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn99846%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn99842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99842%_))
            (let ((_%e99844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99842%_ 'exception))))
              (macro-module-not-found-exception? _%e99844%_))
            (macro-module-not-found-exception? _%exn99842%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn99838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99838%_))
            (let ((_%e99840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99838%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99840%_)
                  (macro-module-not-found-exception-arguments _%e99840%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e99840%_ '())))))
            (if (macro-module-not-found-exception? _%exn99838%_)
                (macro-module-not-found-exception-arguments _%exn99838%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn99838%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn99832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99832%_))
            (let ((_%e99835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99832%_ 'exception))))
              (if (macro-module-not-found-exception? _%e99835%_)
                  (macro-module-not-found-exception-procedure _%e99835%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e99835%_ '())))))
            (if (macro-module-not-found-exception? _%exn99832%_)
                (macro-module-not-found-exception-procedure _%exn99832%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn99832%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn99826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99826%_))
            (let ((_%e99829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99826%_ 'exception))))
              (macro-multiple-c-return-exception? _%e99829%_))
            (macro-multiple-c-return-exception? _%exn99826%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn99822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99822%_))
            (let ((_%e99824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99822%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e99824%_))
            (macro-no-such-file-or-directory-exception? _%exn99822%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn99818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99818%_))
            (let ((_%e99820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99818%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99820%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e99820%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e99820%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn99818%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn99818%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn99818%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn99812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99812%_))
            (let ((_%e99815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99812%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e99815%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e99815%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e99815%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn99812%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn99812%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn99812%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn99808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99808%_))
            (let ((_%e99810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99808%_ 'exception))))
              (macro-noncontinuable-exception? _%e99810%_))
            (macro-noncontinuable-exception? _%exn99808%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn99802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99802%_))
            (let ((_%e99805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99802%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e99805%_)
                  (macro-noncontinuable-exception-reason _%e99805%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e99805%_ '())))))
            (if (macro-noncontinuable-exception? _%exn99802%_)
                (macro-noncontinuable-exception-reason _%exn99802%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn99802%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn99798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99798%_))
            (let ((_%e99800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99798%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e99800%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn99798%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn99794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99794%_))
            (let ((_%e99796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99794%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99796%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e99796%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e99796%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99794%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn99794%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn99794%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn99788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99788%_))
            (let ((_%e99791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99788%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e99791%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e99791%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e99791%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn99788%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn99788%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn99788%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn99784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99784%_))
            (let ((_%e99786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99784%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e99786%_))
            (macro-nonprocedure-operator-exception? _%exn99784%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn99780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99780%_))
            (let ((_%e99782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99780%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99782%_)
                  (macro-nonprocedure-operator-exception-arguments _%e99782%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e99782%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99780%_)
                (macro-nonprocedure-operator-exception-arguments _%exn99780%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn99780%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn99776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99776%_))
            (let ((_%e99778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99776%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99778%_)
                  (macro-nonprocedure-operator-exception-code _%e99778%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e99778%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99776%_)
                (macro-nonprocedure-operator-exception-code _%exn99776%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn99776%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn99772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99772%_))
            (let ((_%e99774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99772%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99774%_)
                  (macro-nonprocedure-operator-exception-operator _%e99774%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e99774%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99772%_)
                (macro-nonprocedure-operator-exception-operator _%exn99772%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn99772%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn99766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99766%_))
            (let ((_%e99769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99766%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e99769%_)
                  (macro-nonprocedure-operator-exception-rte _%e99769%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e99769%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn99766%_)
                (macro-nonprocedure-operator-exception-rte _%exn99766%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn99766%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn99762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99762%_))
            (let ((_%e99764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99762%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e99764%_))
            (macro-not-in-compilation-context-exception? _%exn99762%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn99758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99758%_))
            (let ((_%e99760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99758%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99760%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e99760%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e99760%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn99758%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn99758%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn99758%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn99752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99752%_))
            (let ((_%e99755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99752%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e99755%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e99755%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e99755%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn99752%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn99752%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn99752%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn99748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99748%_))
            (let ((_%e99750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99748%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e99750%_))
            (macro-number-of-arguments-limit-exception? _%exn99748%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn99744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99744%_))
            (let ((_%e99746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99744%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99746%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e99746%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e99746%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn99744%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn99744%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn99744%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn99738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99738%_))
            (let ((_%e99741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99738%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e99741%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e99741%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e99741%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn99738%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn99738%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn99738%_ '())))))))
    (define os-exception?
      (lambda (_%exn99734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99734%_))
            (let ((_%e99736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99734%_ 'exception))))
              (macro-os-exception? _%e99736%_))
            (macro-os-exception? _%exn99734%_))))
    (define os-exception-arguments
      (lambda (_%exn99730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99730%_))
            (let ((_%e99732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99730%_ 'exception))))
              (if (macro-os-exception? _%e99732%_)
                  (macro-os-exception-arguments _%e99732%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e99732%_ '())))))
            (if (macro-os-exception? _%exn99730%_)
                (macro-os-exception-arguments _%exn99730%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn99730%_ '())))))))
    (define os-exception-code
      (lambda (_%exn99726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99726%_))
            (let ((_%e99728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99726%_ 'exception))))
              (if (macro-os-exception? _%e99728%_)
                  (macro-os-exception-code _%e99728%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e99728%_ '())))))
            (if (macro-os-exception? _%exn99726%_)
                (macro-os-exception-code _%exn99726%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn99726%_ '())))))))
    (define os-exception-message
      (lambda (_%exn99722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99722%_))
            (let ((_%e99724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99722%_ 'exception))))
              (if (macro-os-exception? _%e99724%_)
                  (macro-os-exception-message _%e99724%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e99724%_ '())))))
            (if (macro-os-exception? _%exn99722%_)
                (macro-os-exception-message _%exn99722%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn99722%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn99716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99716%_))
            (let ((_%e99719%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99716%_ 'exception))))
              (if (macro-os-exception? _%e99719%_)
                  (macro-os-exception-procedure _%e99719%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e99719%_ '())))))
            (if (macro-os-exception? _%exn99716%_)
                (macro-os-exception-procedure _%exn99716%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn99716%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn99712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99712%_))
            (let ((_%e99714%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99712%_ 'exception))))
              (macro-permission-denied-exception? _%e99714%_))
            (macro-permission-denied-exception? _%exn99712%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn99708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99708%_))
            (let ((_%e99710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99708%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99710%_)
                  (macro-permission-denied-exception-arguments _%e99710%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e99710%_ '())))))
            (if (macro-permission-denied-exception? _%exn99708%_)
                (macro-permission-denied-exception-arguments _%exn99708%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn99708%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn99702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99702%_))
            (let ((_%e99705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99702%_ 'exception))))
              (if (macro-permission-denied-exception? _%e99705%_)
                  (macro-permission-denied-exception-procedure _%e99705%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e99705%_ '())))))
            (if (macro-permission-denied-exception? _%exn99702%_)
                (macro-permission-denied-exception-procedure _%exn99702%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn99702%_ '())))))))
    (define range-exception?
      (lambda (_%exn99698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99698%_))
            (let ((_%e99700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99698%_ 'exception))))
              (macro-range-exception? _%e99700%_))
            (macro-range-exception? _%exn99698%_))))
    (define range-exception-arg-id
      (lambda (_%exn99694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99694%_))
            (let ((_%e99696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99694%_ 'exception))))
              (if (macro-range-exception? _%e99696%_)
                  (macro-range-exception-arg-id _%e99696%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e99696%_ '())))))
            (if (macro-range-exception? _%exn99694%_)
                (macro-range-exception-arg-id _%exn99694%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn99694%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn99690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99690%_))
            (let ((_%e99692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99690%_ 'exception))))
              (if (macro-range-exception? _%e99692%_)
                  (macro-range-exception-arguments _%e99692%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e99692%_ '())))))
            (if (macro-range-exception? _%exn99690%_)
                (macro-range-exception-arguments _%exn99690%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn99690%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn99684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99684%_))
            (let ((_%e99687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99684%_ 'exception))))
              (if (macro-range-exception? _%e99687%_)
                  (macro-range-exception-procedure _%e99687%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e99687%_ '())))))
            (if (macro-range-exception? _%exn99684%_)
                (macro-range-exception-procedure _%exn99684%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn99684%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn99680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99680%_))
            (let ((_%e99682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99680%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e99682%_))
            (macro-rpc-remote-error-exception? _%exn99680%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn99676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99676%_))
            (let ((_%e99678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99676%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99678%_)
                  (macro-rpc-remote-error-exception-arguments _%e99678%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e99678%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn99676%_)
                (macro-rpc-remote-error-exception-arguments _%exn99676%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn99676%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn99672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99672%_))
            (let ((_%e99674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99672%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99674%_)
                  (macro-rpc-remote-error-exception-message _%e99674%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e99674%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn99672%_)
                (macro-rpc-remote-error-exception-message _%exn99672%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn99672%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn99666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99666%_))
            (let ((_%e99669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99666%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e99669%_)
                  (macro-rpc-remote-error-exception-procedure _%e99669%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e99669%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn99666%_)
                (macro-rpc-remote-error-exception-procedure _%exn99666%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn99666%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn99662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99662%_))
            (let ((_%e99664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99662%_ 'exception))))
              (macro-scheduler-exception? _%e99664%_))
            (macro-scheduler-exception? _%exn99662%_))))
    (define scheduler-exception-reason
      (lambda (_%exn99656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99656%_))
            (let ((_%e99659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99656%_ 'exception))))
              (if (macro-scheduler-exception? _%e99659%_)
                  (macro-scheduler-exception-reason _%e99659%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e99659%_ '())))))
            (if (macro-scheduler-exception? _%exn99656%_)
                (macro-scheduler-exception-reason _%exn99656%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn99656%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn99652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99652%_))
            (let ((_%e99654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99652%_ 'exception))))
              (macro-sfun-conversion-exception? _%e99654%_))
            (macro-sfun-conversion-exception? _%exn99652%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn99648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99648%_))
            (let ((_%e99650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99648%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99650%_)
                  (macro-sfun-conversion-exception-arguments _%e99650%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e99650%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99648%_)
                (macro-sfun-conversion-exception-arguments _%exn99648%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn99648%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn99644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99644%_))
            (let ((_%e99646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99644%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99646%_)
                  (macro-sfun-conversion-exception-code _%e99646%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e99646%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99644%_)
                (macro-sfun-conversion-exception-code _%exn99644%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn99644%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn99640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99640%_))
            (let ((_%e99642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99640%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99642%_)
                  (macro-sfun-conversion-exception-message _%e99642%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e99642%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99640%_)
                (macro-sfun-conversion-exception-message _%exn99640%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn99640%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn99634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99634%_))
            (let ((_%e99637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99634%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e99637%_)
                  (macro-sfun-conversion-exception-procedure _%e99637%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e99637%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn99634%_)
                (macro-sfun-conversion-exception-procedure _%exn99634%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn99634%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn99628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99628%_))
            (let ((_%e99631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99628%_ 'exception))))
              (macro-stack-overflow-exception? _%e99631%_))
            (macro-stack-overflow-exception? _%exn99628%_))))
    (define started-thread-exception?
      (lambda (_%exn99624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99624%_))
            (let ((_%e99626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99624%_ 'exception))))
              (macro-started-thread-exception? _%e99626%_))
            (macro-started-thread-exception? _%exn99624%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn99620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99620%_))
            (let ((_%e99622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99620%_ 'exception))))
              (if (macro-started-thread-exception? _%e99622%_)
                  (macro-started-thread-exception-arguments _%e99622%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e99622%_ '())))))
            (if (macro-started-thread-exception? _%exn99620%_)
                (macro-started-thread-exception-arguments _%exn99620%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn99620%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn99614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99614%_))
            (let ((_%e99617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99614%_ 'exception))))
              (if (macro-started-thread-exception? _%e99617%_)
                  (macro-started-thread-exception-procedure _%e99617%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e99617%_ '())))))
            (if (macro-started-thread-exception? _%exn99614%_)
                (macro-started-thread-exception-procedure _%exn99614%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn99614%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn99610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99610%_))
            (let ((_%e99612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99610%_ 'exception))))
              (macro-terminated-thread-exception? _%e99612%_))
            (macro-terminated-thread-exception? _%exn99610%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn99606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99606%_))
            (let ((_%e99608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99606%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99608%_)
                  (macro-terminated-thread-exception-arguments _%e99608%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e99608%_ '())))))
            (if (macro-terminated-thread-exception? _%exn99606%_)
                (macro-terminated-thread-exception-arguments _%exn99606%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn99606%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn99600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99600%_))
            (let ((_%e99603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99600%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e99603%_)
                  (macro-terminated-thread-exception-procedure _%e99603%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e99603%_ '())))))
            (if (macro-terminated-thread-exception? _%exn99600%_)
                (macro-terminated-thread-exception-procedure _%exn99600%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn99600%_ '())))))))
    (define type-exception?
      (lambda (_%exn99596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99596%_))
            (let ((_%e99598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99596%_ 'exception))))
              (macro-type-exception? _%e99598%_))
            (macro-type-exception? _%exn99596%_))))
    (define type-exception-arg-id
      (lambda (_%exn99592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99592%_))
            (let ((_%e99594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99592%_ 'exception))))
              (if (macro-type-exception? _%e99594%_)
                  (macro-type-exception-arg-id _%e99594%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id (cons _%e99594%_ '())))))
            (if (macro-type-exception? _%exn99592%_)
                (macro-type-exception-arg-id _%exn99592%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn99592%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn99588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99588%_))
            (let ((_%e99590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99588%_ 'exception))))
              (if (macro-type-exception? _%e99590%_)
                  (macro-type-exception-arguments _%e99590%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e99590%_ '())))))
            (if (macro-type-exception? _%exn99588%_)
                (macro-type-exception-arguments _%exn99588%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn99588%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn99584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99584%_))
            (let ((_%e99586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99584%_ 'exception))))
              (if (macro-type-exception? _%e99586%_)
                  (macro-type-exception-procedure _%e99586%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e99586%_ '())))))
            (if (macro-type-exception? _%exn99584%_)
                (macro-type-exception-procedure _%exn99584%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn99584%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn99578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99578%_))
            (let ((_%e99581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99578%_ 'exception))))
              (if (macro-type-exception? _%e99581%_)
                  (macro-type-exception-type-id _%e99581%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e99581%_ '())))))
            (if (macro-type-exception? _%exn99578%_)
                (macro-type-exception-type-id _%exn99578%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn99578%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn99574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99574%_))
            (let ((_%e99576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99574%_ 'exception))))
              (macro-unbound-global-exception? _%e99576%_))
            (macro-unbound-global-exception? _%exn99574%_))))
    (define unbound-global-exception-code
      (lambda (_%exn99570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99570%_))
            (let ((_%e99572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99570%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99572%_)
                  (macro-unbound-global-exception-code _%e99572%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e99572%_ '())))))
            (if (macro-unbound-global-exception? _%exn99570%_)
                (macro-unbound-global-exception-code _%exn99570%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn99570%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn99566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99566%_))
            (let ((_%e99568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99566%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99568%_)
                  (macro-unbound-global-exception-rte _%e99568%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e99568%_ '())))))
            (if (macro-unbound-global-exception? _%exn99566%_)
                (macro-unbound-global-exception-rte _%exn99566%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn99566%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99560%_))
            (let ((_%e99563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99560%_ 'exception))))
              (if (macro-unbound-global-exception? _%e99563%_)
                  (macro-unbound-global-exception-variable _%e99563%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e99563%_ '())))))
            (if (macro-unbound-global-exception? _%exn99560%_)
                (macro-unbound-global-exception-variable _%exn99560%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99560%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn99556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99556%_))
            (let ((_%e99558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99556%_ 'exception))))
              (macro-unbound-key-exception? _%e99558%_))
            (macro-unbound-key-exception? _%exn99556%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99552%_))
            (let ((_%e99554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99552%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99554%_)
                  (macro-unbound-key-exception-arguments _%e99554%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99554%_ '())))))
            (if (macro-unbound-key-exception? _%exn99552%_)
                (macro-unbound-key-exception-arguments _%exn99552%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99552%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99546%_))
            (let ((_%e99549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99546%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99549%_)
                  (macro-unbound-key-exception-procedure _%e99549%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99549%_ '())))))
            (if (macro-unbound-key-exception? _%exn99546%_)
                (macro-unbound-key-exception-procedure _%exn99546%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99546%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99542%_))
            (let ((_%e99544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99542%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99544%_))
            (macro-unbound-os-environment-variable-exception? _%exn99542%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99538%_))
            (let ((_%e99540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99538%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99540%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99540%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99540%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99538%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99538%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99538%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99532%_))
            (let ((_%e99535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99532%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99535%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99535%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99535%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99532%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99532%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99532%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99528%_))
            (let ((_%e99530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99528%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99530%_))
            (macro-unbound-serial-number-exception? _%exn99528%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99524%_))
            (let ((_%e99526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99524%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99526%_)
                  (macro-unbound-serial-number-exception-arguments _%e99526%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99526%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn99524%_)
                (macro-unbound-serial-number-exception-arguments _%exn99524%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99524%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99518%_))
            (let ((_%e99521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99518%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99521%_)
                  (macro-unbound-serial-number-exception-procedure _%e99521%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99521%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn99518%_)
                (macro-unbound-serial-number-exception-procedure _%exn99518%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99518%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn99514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99514%_))
            (let ((_%e99516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99514%_ 'exception))))
              (macro-uncaught-exception? _%e99516%_))
            (macro-uncaught-exception? _%exn99514%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99510%_))
            (let ((_%e99512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99510%_ 'exception))))
              (if (macro-uncaught-exception? _%e99512%_)
                  (macro-uncaught-exception-arguments _%e99512%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e99512%_ '())))))
            (if (macro-uncaught-exception? _%exn99510%_)
                (macro-uncaught-exception-arguments _%exn99510%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99510%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99506%_))
            (let ((_%e99508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99506%_ 'exception))))
              (if (macro-uncaught-exception? _%e99508%_)
                  (macro-uncaught-exception-procedure _%e99508%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e99508%_ '())))))
            (if (macro-uncaught-exception? _%exn99506%_)
                (macro-uncaught-exception-procedure _%exn99506%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99506%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn99500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99500%_))
            (let ((_%e99503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99500%_ 'exception))))
              (if (macro-uncaught-exception? _%e99503%_)
                  (macro-uncaught-exception-reason _%e99503%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e99503%_ '())))))
            (if (macro-uncaught-exception? _%exn99500%_)
                (macro-uncaught-exception-reason _%exn99500%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn99500%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99496%_))
            (let ((_%e99498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99496%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99498%_))
            (macro-uninitialized-thread-exception? _%exn99496%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99492%_))
            (let ((_%e99494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99492%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99494%_)
                  (macro-uninitialized-thread-exception-arguments _%e99494%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99494%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn99492%_)
                (macro-uninitialized-thread-exception-arguments _%exn99492%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99492%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99486%_))
            (let ((_%e99489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99486%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99489%_)
                  (macro-uninitialized-thread-exception-procedure _%e99489%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99489%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn99486%_)
                (macro-uninitialized-thread-exception-procedure _%exn99486%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99486%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99482%_))
            (let ((_%e99484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99482%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99484%_))
            (macro-unknown-keyword-argument-exception? _%exn99482%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99478%_))
            (let ((_%e99480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99478%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99480%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99480%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99480%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn99478%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99478%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99478%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99472%_))
            (let ((_%e99475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99472%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99475%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99475%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99475%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn99472%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99472%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99472%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn99468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99468%_))
            (let ((_%e99470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99468%_ 'exception))))
              (macro-unterminated-process-exception? _%e99470%_))
            (macro-unterminated-process-exception? _%exn99468%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99464%_))
            (let ((_%e99466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99464%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99466%_)
                  (macro-unterminated-process-exception-arguments _%e99466%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99466%_ '())))))
            (if (macro-unterminated-process-exception? _%exn99464%_)
                (macro-unterminated-process-exception-arguments _%exn99464%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99464%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99458%_))
            (let ((_%e99461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99458%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99461%_)
                  (macro-unterminated-process-exception-procedure _%e99461%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99461%_ '())))))
            (if (macro-unterminated-process-exception? _%exn99458%_)
                (macro-unterminated-process-exception-procedure _%exn99458%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99458%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99454%_))
            (let ((_%e99456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99454%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99456%_))
            (macro-wrong-number-of-arguments-exception? _%exn99454%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99450%_))
            (let ((_%e99452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99450%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99452%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99452%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99452%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99450%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99450%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99450%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99444%_))
            (let ((_%e99447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99444%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99447%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99447%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99447%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99444%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99444%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99444%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99440%_))
            (let ((_%e99442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99440%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99442%_))
            (macro-wrong-number-of-values-exception? _%exn99440%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99436%_))
            (let ((_%e99438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99436%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99438%_)
                  (macro-wrong-number-of-values-exception-code _%e99438%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99438%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99436%_)
                (macro-wrong-number-of-values-exception-code _%exn99436%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99436%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99432%_))
            (let ((_%e99434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99432%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99434%_)
                  (macro-wrong-number-of-values-exception-rte _%e99434%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99434%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99432%_)
                (macro-wrong-number-of-values-exception-rte _%exn99432%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99432%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99426%_))
            (let ((_%e99429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99426%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99429%_)
                  (macro-wrong-number-of-values-exception-vals _%e99429%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99429%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99426%_)
                (macro-wrong-number-of-values-exception-vals _%exn99426%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99426%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99420%_))
            (let ((_%e99423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99420%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99423%_))
            (macro-wrong-processor-c-return-exception? _%exn99420%_))))))
