(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771178562)
  (begin
    (define Exception::t
      (let ((__tmp142169 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp142169
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args142087%_
        (apply make-instance Exception::t _%$args142087%_)))
    (define StackTrace::t
      (let ((__tmp142170 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp142170
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args142084%_
        (apply make-instance StackTrace::t _%$args142084%_)))
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
      (let ((__tmp142171 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp142171
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args142081%_ (apply make-instance Error::t _%$args142081%_)))
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
      (let ((__tmp142172 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp142172
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args142078%_
        (apply make-instance ContractViolation::t _%$args142078%_)))
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
      (let ((__tmp142173 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp142173
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args142075%_
        (apply make-instance RuntimeException::t _%$args142075%_)))
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
      (lambda (_%exn142070%_ _%continue142071%_)
        (let ((_%exn142073%_ (wrap-runtime-exception _%exn142070%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn142073%_ _%continue142071%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn142066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn142066%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn142066%_ 'continuation))
                '#!void
                (let ((__tmp142174
                       (lambda (_%cont142068%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn142066%_
                            'continuation
                            _%cont142068%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp142174)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn142066%_))))
    (define error
      (lambda (_%message142063%_ . _%irritants142064%_)
        (raise (let ((__obj142166
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj142166
                  _%message142063%_
                  'irritants:
                  _%irritants142064%_)
                 __obj142166))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords142038%_
               _%ctx142033142039%_
               _%contract-expr142034142040%_
               _%value142035142041%_
               _%message142042%_)
        (let* ((_%ctx142044%_
                (if (eq? _%ctx142033142039%_ absent-value)
                    '#f
                    _%ctx142033142039%_))
               (_%contract-expr142046%_
                (if (eq? _%contract-expr142034142040%_ absent-value)
                    '#f
                    _%contract-expr142034142040%_))
               (_%value142048%_
                (if (eq? _%value142035142041%_ absent-value)
                    '#f
                    _%value142035142041%_)))
          (raise (let ((__obj142167
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj142167
                    _%message142042%_
                    'where:
                    _%ctx142044%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr142046%_
                                (cons 'value: (cons _%value142048%_ '())))))
                   __obj142167)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords142053%_ . _%args142054%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords142053%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142053%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142053%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142053%_
                  'value:
                  absent-value))
               _%args142054%_)))
    (define __raise-contract-violation-error
      (lambda _%args142036142060%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args142036142060%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler142007%_ _%thunk142008%_)
        (let* ((_%handler142011%_ _%handler142007%_)
               (_%thunk142019%_ _%thunk142008%_)
               (__tmp142175
                (lambda (_%exn142028%_)
                  (let ((_%exn142030%_ (wrap-runtime-exception _%exn142028%_)))
                    (declare (not safe))
                    (_%handler142011%_ _%exn142030%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp142175 _%thunk142019%_))))
    (define with-exception-handler
      (lambda (_%handler140042%_ _%thunk140043%_)
        (if (procedure? _%handler140042%_)
            (let ((_%handler140047%_ _%handler140042%_))
              (if (procedure? _%thunk140043%_)
                  (let ((_%thunk140057%_ _%thunk140043%_))
                    (__with-exception-handler
                     _%handler140047%_
                     _%thunk140057%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140043%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler140042%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler141949%_ _%thunk141950%_)
        (let* ((_%handler141953%_ _%handler141949%_)
               (_%thunk141961%_ _%thunk141950%_)
               (__tmp142176
                (lambda (_%cont141970%_)
                  (let* ((_%handler141974%_
                          (lambda (_%exn141972%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont141970%_
                               _%handler141953%_
                               _%exn141972%_))))
                         (_%thunk141977%_ _%thunk141961%_)
                         (_%handler141982%_ _%handler141974%_)
                         (_%thunk141997%_ _%thunk141977%_))
                    (__with-exception-handler
                     _%handler141982%_
                     _%thunk141997%_)))))
          (declare (not safe))
          (##continuation-capture __tmp142176))))
    (define with-catch
      (lambda (_%handler140187%_ _%thunk140188%_)
        (if (procedure? _%handler140187%_)
            (let ((_%handler140192%_ _%handler140187%_))
              (if (procedure? _%thunk140188%_)
                  (let ((_%thunk140202%_ _%thunk140188%_))
                    (__with-catch _%handler140192%_ _%thunk140202%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140188%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler140187%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn141936%_)
        (if (or (heap-overflow-exception? _%exn141936%_)
                (stack-overflow-exception? _%exn141936%_))
            _%exn141936%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn141936%_))
                _%exn141936%_
                (if (macro-exception? _%exn141936%_)
                    (let ((_%rte141944%_
                           (let ((__obj142168
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj142168
                                _%exn141936%_
                                '2
                                '#f
                                '#f))
                             __obj142168)))
                      (let ((__tmp142177
                             (lambda (_%cont141946%_)
                               (let ((__tmp142178
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont141946%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte141944%_
                                  'continuation
                                  __tmp142178)))))
                        (declare (not safe))
                        (##continuation-capture __tmp142177))
                      _%rte141944%_)
                    _%exn141936%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj141931%_)
        (let ((_%$e141933%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj141931%_))))
          (if _%$e141933%_ _%$e141933%_ (error-exception? _%obj141931%_)))))
    (define error-message
      (lambda (_%obj141890%_)
        (let ((_%$e141926%_
               (let* ((_%obj141892%_ _%obj141890%_)
                      (_%slot141895%_ 'message)
                      (_%E141898%_ false)
                      (_%slot141903%_ _%slot141895%_)
                      (_%E141916%_ _%E141898%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj141892%_ _%slot141903%_ _%E141916%_))))
          (if _%$e141926%_
              _%$e141926%_
              (if (error-exception? _%obj141890%_)
                  (error-exception-message _%obj141890%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj141885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141885%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141885%_ 'irritants))
            (if (error-exception? _%obj141885%_)
                (error-exception-parameters _%obj141885%_)
                '#f))))
    (define error-trace
      (lambda (_%obj141883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141883%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141883%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e141844%_ _%port141845%_)
        (let ((_%$e141867%_
               (let* ((_%obj141847%_ _%e141844%_)
                      (_%id141850%_ 'display-exception)
                      (_%id141855%_ _%id141850%_))
                 (declare (not safe))
                 (__method-ref _%obj141847%_ _%id141855%_))))
          (if _%$e141867%_
              ((lambda (_%f141870%_) (_%f141870%_ _%e141844%_ _%port141845%_))
               _%$e141867%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e141844%_ _%port141845%_))))))
    (define display-exception__0
      (lambda (_%e141876%_)
        (let ((_%port141878%_ (current-error-port)))
          (display-exception__% _%e141876%_ _%port141878%_))))
    (define display-exception
      (lambda _g142179_
        (let ((_g142180_ (let () (declare (not safe)) (##length _g142179_))))
          (cond ((let () (declare (not safe)) (##fx= _g142180_ 1))
                 (apply display-exception__0 _g142179_))
                ((let () (declare (not safe)) (##fx= _g142180_ 2))
                 (apply display-exception__% _g142179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g142179_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self141822%_ _%message141823%_ . _%rest141824%_)
        (let* ((_%self141827%_ _%self141822%_)
               (_%message141841%_
                (if (string? _%message141823%_)
                    _%message141823%_
                    (call-with-output-string
                     '""
                     (lambda (_%g141836141838%_)
                       (display _%message141823%_ _%g141836141838%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self141827%_ 'message _%message141841%_))
          (apply class-instance-init! _%self141827%_ _%rest141824%_))))
    (define Error:::init!::specialize
      (lambda (__klass142089 __method-table142090)
        (let ((__message142091
               (let ((__slot142092
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142089 'message))))
                 (if __slot142092
                     __slot142092
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self141822%_ _%message141823%_ . _%rest141824%_)
            (let* ((_%self141827%_ _%self141822%_)
                   (_%message141841%_
                    (if (string? _%message141823%_)
                        _%message141823%_
                        (call-with-output-string
                         '""
                         (lambda (_%g141836141838%_)
                           (display _%message141823%_ _%g141836141838%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self141827%_
                 _%message141841%_
                 __message142091
                 '#f
                 '#f))
              (apply class-instance-init! _%self141827%_ _%rest141824%_))))))
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
      (lambda (_%self141527%_ _%port141528%_)
        (let ((_%self141531%_ _%self141527%_))
          (let ((_%tmp-port141541%_ (open-output-string))
                (_%display-error-newline141542%_
                 (> (output-port-column _%port141528%_) '0)))
            (fix-port-width! _%tmp-port141541%_)
            (let ((__tmp142181
                   (lambda ()
                     (if _%display-error-newline141542%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e141545%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141531%_ 'where))))
                       (if _%$e141545%_ (display _%$e141545%_) (display '"?")))
                     (let ((__tmp142182
                            (let ((__tmp142183
                                   (let ((_%obj141549%_ _%self141531%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj141549%_))
                                         (let ((_%obj141554%_ _%obj141549%_))
                                           (declare (not safe))
                                           (__object-class _%obj141554%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj141549%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp142183))))
                       (declare (not safe))
                       (display* '" [" __tmp142182 '"]: "))
                     (let ((__tmp142184
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141531%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp142184))
                     (let ((_%irritants141569%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141531%_ 'irritants))))
                       (if (null? _%irritants141569%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj141571%_)
                                (if (u8vector? _%obj141571%_)
                                    (let ((__tmp142185
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj141571%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp142185))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj141571%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants141569%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont141572141574%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self141531%_
                                   'continuation))))
                           (if _%cont141572141574%_
                               (let ((_%cont141576%_ _%cont141572141574%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont141576%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp142181
               current-output-port
               _%tmp-port141541%_))
            (let ((__tmp142186 (get-output-string _%tmp-port141541%_)))
              (declare (not safe))
              (##write-string __tmp142186 _%port141528%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass142093 __method-table142094)
        (let ((__message142095
               (let ((__slot142099
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142093 'message))))
                 (if __slot142099
                     __slot142099
                     (error '"Unknown slot" 'message))))
              (__continuation142096
               (let ((__slot142100
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142093 'continuation))))
                 (if __slot142100
                     __slot142100
                     (error '"Unknown slot" 'continuation))))
              (__irritants142097
               (let ((__slot142101
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142093 'irritants))))
                 (if __slot142101
                     __slot142101
                     (error '"Unknown slot" 'irritants))))
              (__where142098
               (let ((__slot142102
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142093 'where))))
                 (if __slot142102
                     __slot142102
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self141527%_ _%port141528%_)
            (let ((_%self141531%_ _%self141527%_))
              (let ((_%tmp-port141541%_ (open-output-string))
                    (_%display-error-newline141542%_
                     (> (output-port-column _%port141528%_) '0)))
                (fix-port-width! _%tmp-port141541%_)
                (let ((__tmp142187
                       (lambda ()
                         (if _%display-error-newline141542%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e141545%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141531%_
                                   __where142098
                                   '#f
                                   '#f))))
                           (if _%$e141545%_
                               (display _%$e141545%_)
                               (display '"?")))
                         (let ((__tmp142188
                                (let ((__tmp142189
                                       (let ((_%obj141549%_ _%self141531%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj141549%_))
                                             (let ((_%obj141554%_
                                                    _%obj141549%_))
                                               (declare (not safe))
                                               (__object-class _%obj141554%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj141549%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp142189))))
                           (declare (not safe))
                           (display* '" [" __tmp142188 '"]: "))
                         (let ((__tmp142190
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141531%_
                                   __message142095
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp142190))
                         (let ((_%irritants141569%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141531%_
                                   __irritants142097
                                   '#f
                                   '#f))))
                           (if (null? _%irritants141569%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj141571%_)
                                    (if (u8vector? _%obj141571%_)
                                        (let ((__tmp142191
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj141571%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp142191))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj141571%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants141569%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont141572141574%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self141531%_
                                       __continuation142096
                                       '#f
                                       '#f))))
                               (if _%cont141572141574%_
                                   (let ((_%cont141576%_ _%cont141572141574%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont141576%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp142187
                   current-output-port
                   _%tmp-port141541%_))
                (let ((__tmp142192 (get-output-string _%tmp-port141541%_)))
                  (declare (not safe))
                  (##write-string __tmp142192 _%port141528%_))))))))
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
      (lambda (_%self141384%_ _%port141385%_)
        (let* ((_%self141388%_ _%self141384%_)
               (_%tmp-port141398%_ (open-output-string)))
          (fix-port-width! _%tmp-port141398%_)
          (let ((__tmp142193
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self141388%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp142193 _%tmp-port141398%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont141399141401%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self141388%_ 'continuation))))
                (if _%cont141399141401%_
                    (let ((_%cont141403%_ _%cont141399141401%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port141398%_)
                      (newline _%tmp-port141398%_)
                      (display-continuation-backtrace
                       _%cont141403%_
                       _%tmp-port141398%_))
                    '#f))
              '#!void)
          (let ((__tmp142194 (get-output-string _%tmp-port141398%_)))
            (declare (not safe))
            (##write-string __tmp142194 _%port141385%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass142103 __method-table142104)
        (let ((__continuation142105
               (let ((__slot142107
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142103 'continuation))))
                 (if __slot142107
                     __slot142107
                     (error '"Unknown slot" 'continuation))))
              (__exception142106
               (let ((__slot142108
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142103 'exception))))
                 (if __slot142108
                     __slot142108
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self141384%_ _%port141385%_)
            (let* ((_%self141388%_ _%self141384%_)
                   (_%tmp-port141398%_ (open-output-string)))
              (fix-port-width! _%tmp-port141398%_)
              (let ((__tmp142195
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self141388%_
                        __exception142106
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp142195 _%tmp-port141398%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont141399141401%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self141388%_
                            __continuation142105
                            '#f
                            '#f))))
                    (if _%cont141399141401%_
                        (let ((_%cont141403%_ _%cont141399141401%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port141398%_)
                          (newline _%tmp-port141398%_)
                          (display-continuation-backtrace
                           _%cont141403%_
                           _%tmp-port141398%_))
                        '#f))
                  '#!void)
              (let ((__tmp142196 (get-output-string _%tmp-port141398%_)))
                (declare (not safe))
                (##write-string __tmp142196 _%port141385%_)))))))
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
      (lambda (_%port141256%_)
        (if (macro-character-port? _%port141256%_)
            (let ((_%old-width141258%_
                   (macro-character-port-output-width _%port141256%_)))
              (macro-character-port-output-width-set!
               _%port141256%_
               (lambda (_%port141260%_) '256))
              _%old-width141258%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port141253%_ _%old-width141254%_)
        (if (macro-character-port? _%port141253%_)
            (macro-character-port-output-width-set!
             _%port141253%_
             _%old-width141254%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e141251%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e141251%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn141245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141245%_))
            (let ((_%e141248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141245%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e141248%_))
            (macro-abandoned-mutex-exception? _%exn141245%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn141241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141241%_))
            (let ((_%e141243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141241%_ 'exception))))
              (macro-cfun-conversion-exception? _%e141243%_))
            (macro-cfun-conversion-exception? _%exn141241%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn141237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141237%_))
            (let ((_%e141239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141237%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141239%_)
                  (macro-cfun-conversion-exception-arguments _%e141239%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e141239%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141237%_)
                (macro-cfun-conversion-exception-arguments _%exn141237%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn141237%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn141233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141233%_))
            (let ((_%e141235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141233%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141235%_)
                  (macro-cfun-conversion-exception-code _%e141235%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e141235%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141233%_)
                (macro-cfun-conversion-exception-code _%exn141233%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn141233%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn141229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141229%_))
            (let ((_%e141231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141229%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141231%_)
                  (macro-cfun-conversion-exception-message _%e141231%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e141231%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141229%_)
                (macro-cfun-conversion-exception-message _%exn141229%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn141229%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn141223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141223%_))
            (let ((_%e141226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141223%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141226%_)
                  (macro-cfun-conversion-exception-procedure _%e141226%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e141226%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141223%_)
                (macro-cfun-conversion-exception-procedure _%exn141223%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn141223%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn141219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141219%_))
            (let ((_%e141221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141219%_ 'exception))))
              (macro-datum-parsing-exception? _%e141221%_))
            (macro-datum-parsing-exception? _%exn141219%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn141215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141215%_))
            (let ((_%e141217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141215%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141217%_)
                  (macro-datum-parsing-exception-kind _%e141217%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e141217%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141215%_)
                (macro-datum-parsing-exception-kind _%exn141215%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn141215%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn141211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141211%_))
            (let ((_%e141213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141211%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141213%_)
                  (macro-datum-parsing-exception-parameters _%e141213%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e141213%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141211%_)
                (macro-datum-parsing-exception-parameters _%exn141211%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn141211%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn141205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141205%_))
            (let ((_%e141208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141205%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141208%_)
                  (macro-datum-parsing-exception-readenv _%e141208%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e141208%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141205%_)
                (macro-datum-parsing-exception-readenv _%exn141205%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn141205%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn141199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141199%_))
            (let ((_%e141202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141199%_ 'exception))))
              (macro-deadlock-exception? _%e141202%_))
            (macro-deadlock-exception? _%exn141199%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn141195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141195%_))
            (let ((_%e141197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141195%_ 'exception))))
              (macro-divide-by-zero-exception? _%e141197%_))
            (macro-divide-by-zero-exception? _%exn141195%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn141191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141191%_))
            (let ((_%e141193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141191%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141193%_)
                  (macro-divide-by-zero-exception-arguments _%e141193%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e141193%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141191%_)
                (macro-divide-by-zero-exception-arguments _%exn141191%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn141191%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn141185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141185%_))
            (let ((_%e141188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141185%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141188%_)
                  (macro-divide-by-zero-exception-procedure _%e141188%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e141188%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141185%_)
                (macro-divide-by-zero-exception-procedure _%exn141185%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn141185%_ '())))))))
    (define error-exception?
      (lambda (_%exn141181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141181%_))
            (let ((_%e141183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141181%_ 'exception))))
              (macro-error-exception? _%e141183%_))
            (macro-error-exception? _%exn141181%_))))
    (define error-exception-message
      (lambda (_%exn141177%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141177%_))
            (let ((_%e141179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141177%_ 'exception))))
              (if (macro-error-exception? _%e141179%_)
                  (macro-error-exception-message _%e141179%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e141179%_ '())))))
            (if (macro-error-exception? _%exn141177%_)
                (macro-error-exception-message _%exn141177%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn141177%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn141171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141171%_))
            (let ((_%e141174%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141171%_ 'exception))))
              (if (macro-error-exception? _%e141174%_)
                  (macro-error-exception-parameters _%e141174%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e141174%_ '())))))
            (if (macro-error-exception? _%exn141171%_)
                (macro-error-exception-parameters _%exn141171%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn141171%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn141167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141167%_))
            (let ((_%e141169%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141167%_ 'exception))))
              (macro-expression-parsing-exception? _%e141169%_))
            (macro-expression-parsing-exception? _%exn141167%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn141163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141163%_))
            (let ((_%e141165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141163%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141165%_)
                  (macro-expression-parsing-exception-kind _%e141165%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e141165%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141163%_)
                (macro-expression-parsing-exception-kind _%exn141163%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn141163%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn141159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141159%_))
            (let ((_%e141161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141159%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141161%_)
                  (macro-expression-parsing-exception-parameters _%e141161%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e141161%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141159%_)
                (macro-expression-parsing-exception-parameters _%exn141159%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn141159%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn141153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141153%_))
            (let ((_%e141156%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141153%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141156%_)
                  (macro-expression-parsing-exception-source _%e141156%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e141156%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141153%_)
                (macro-expression-parsing-exception-source _%exn141153%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn141153%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn141149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141149%_))
            (let ((_%e141151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141149%_ 'exception))))
              (macro-file-exists-exception? _%e141151%_))
            (macro-file-exists-exception? _%exn141149%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn141145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141145%_))
            (let ((_%e141147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141145%_ 'exception))))
              (if (macro-file-exists-exception? _%e141147%_)
                  (macro-file-exists-exception-arguments _%e141147%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e141147%_ '())))))
            (if (macro-file-exists-exception? _%exn141145%_)
                (macro-file-exists-exception-arguments _%exn141145%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn141145%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn141139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141139%_))
            (let ((_%e141142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141139%_ 'exception))))
              (if (macro-file-exists-exception? _%e141142%_)
                  (macro-file-exists-exception-procedure _%e141142%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e141142%_ '())))))
            (if (macro-file-exists-exception? _%exn141139%_)
                (macro-file-exists-exception-procedure _%exn141139%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn141139%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn141135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141135%_))
            (let ((_%e141137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141135%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e141137%_))
            (macro-fixnum-overflow-exception? _%exn141135%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn141131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141131%_))
            (let ((_%e141133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141131%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141133%_)
                  (macro-fixnum-overflow-exception-arguments _%e141133%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e141133%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141131%_)
                (macro-fixnum-overflow-exception-arguments _%exn141131%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn141131%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn141125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141125%_))
            (let ((_%e141128%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141125%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141128%_)
                  (macro-fixnum-overflow-exception-procedure _%e141128%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e141128%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141125%_)
                (macro-fixnum-overflow-exception-procedure _%exn141125%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn141125%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn141119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141119%_))
            (let ((_%e141122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141119%_ 'exception))))
              (macro-heap-overflow-exception? _%e141122%_))
            (macro-heap-overflow-exception? _%exn141119%_))))
    (define inactive-thread-exception?
      (lambda (_%exn141115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141115%_))
            (let ((_%e141117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141115%_ 'exception))))
              (macro-inactive-thread-exception? _%e141117%_))
            (macro-inactive-thread-exception? _%exn141115%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn141111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141111%_))
            (let ((_%e141113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141111%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141113%_)
                  (macro-inactive-thread-exception-arguments _%e141113%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e141113%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141111%_)
                (macro-inactive-thread-exception-arguments _%exn141111%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn141111%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn141105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141105%_))
            (let ((_%e141108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141105%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141108%_)
                  (macro-inactive-thread-exception-procedure _%e141108%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e141108%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141105%_)
                (macro-inactive-thread-exception-procedure _%exn141105%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn141105%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn141101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141101%_))
            (let ((_%e141103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141101%_ 'exception))))
              (macro-initialized-thread-exception? _%e141103%_))
            (macro-initialized-thread-exception? _%exn141101%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn141097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141097%_))
            (let ((_%e141099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141097%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141099%_)
                  (macro-initialized-thread-exception-arguments _%e141099%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e141099%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141097%_)
                (macro-initialized-thread-exception-arguments _%exn141097%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn141097%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn141091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141091%_))
            (let ((_%e141094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141091%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141094%_)
                  (macro-initialized-thread-exception-procedure _%e141094%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e141094%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141091%_)
                (macro-initialized-thread-exception-procedure _%exn141091%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn141091%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn141087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141087%_))
            (let ((_%e141089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141087%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e141089%_))
            (macro-invalid-hash-number-exception? _%exn141087%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn141083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141083%_))
            (let ((_%e141085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141083%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141085%_)
                  (macro-invalid-hash-number-exception-arguments _%e141085%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e141085%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141083%_)
                (macro-invalid-hash-number-exception-arguments _%exn141083%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn141083%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn141077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141077%_))
            (let ((_%e141080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141077%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141080%_)
                  (macro-invalid-hash-number-exception-procedure _%e141080%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e141080%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141077%_)
                (macro-invalid-hash-number-exception-procedure _%exn141077%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn141077%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn141073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141073%_))
            (let ((_%e141075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141073%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e141075%_))
            (macro-invalid-utf8-encoding-exception? _%exn141073%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn141069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141069%_))
            (let ((_%e141071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141069%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141071%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e141071%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e141071%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141069%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn141069%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn141069%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn141063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141063%_))
            (let ((_%e141066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141063%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141066%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e141066%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e141066%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141063%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn141063%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn141063%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn141059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141059%_))
            (let ((_%e141061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141059%_ 'exception))))
              (macro-join-timeout-exception? _%e141061%_))
            (macro-join-timeout-exception? _%exn141059%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn141055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141055%_))
            (let ((_%e141057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141055%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141057%_)
                  (macro-join-timeout-exception-arguments _%e141057%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e141057%_ '())))))
            (if (macro-join-timeout-exception? _%exn141055%_)
                (macro-join-timeout-exception-arguments _%exn141055%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn141055%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn141049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141049%_))
            (let ((_%e141052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141049%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141052%_)
                  (macro-join-timeout-exception-procedure _%e141052%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e141052%_ '())))))
            (if (macro-join-timeout-exception? _%exn141049%_)
                (macro-join-timeout-exception-procedure _%exn141049%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn141049%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn141045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141045%_))
            (let ((_%e141047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141045%_ 'exception))))
              (macro-keyword-expected-exception? _%e141047%_))
            (macro-keyword-expected-exception? _%exn141045%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn141041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141041%_))
            (let ((_%e141043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141041%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141043%_)
                  (macro-keyword-expected-exception-arguments _%e141043%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e141043%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141041%_)
                (macro-keyword-expected-exception-arguments _%exn141041%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn141041%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn141035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141035%_))
            (let ((_%e141038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141035%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141038%_)
                  (macro-keyword-expected-exception-procedure _%e141038%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e141038%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141035%_)
                (macro-keyword-expected-exception-procedure _%exn141035%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn141035%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn141031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141031%_))
            (let ((_%e141033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141031%_ 'exception))))
              (macro-length-mismatch-exception? _%e141033%_))
            (macro-length-mismatch-exception? _%exn141031%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn141027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141027%_))
            (let ((_%e141029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141027%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141029%_)
                  (macro-length-mismatch-exception-arg-id _%e141029%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e141029%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141027%_)
                (macro-length-mismatch-exception-arg-id _%exn141027%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn141027%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn141023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141023%_))
            (let ((_%e141025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141023%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141025%_)
                  (macro-length-mismatch-exception-arguments _%e141025%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e141025%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141023%_)
                (macro-length-mismatch-exception-arguments _%exn141023%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn141023%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn141017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141017%_))
            (let ((_%e141020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141017%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141020%_)
                  (macro-length-mismatch-exception-procedure _%e141020%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e141020%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141017%_)
                (macro-length-mismatch-exception-procedure _%exn141017%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn141017%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn141013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141013%_))
            (let ((_%e141015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141013%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e141015%_))
            (macro-mailbox-receive-timeout-exception? _%exn141013%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn141009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141009%_))
            (let ((_%e141011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141009%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141011%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e141011%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e141011%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141009%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn141009%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn141009%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn141003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141003%_))
            (let ((_%e141006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141003%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141006%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e141006%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e141006%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141003%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn141003%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn141003%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn140999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140999%_))
            (let ((_%e141001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140999%_ 'exception))))
              (macro-module-not-found-exception? _%e141001%_))
            (macro-module-not-found-exception? _%exn140999%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn140995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140995%_))
            (let ((_%e140997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140995%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140997%_)
                  (macro-module-not-found-exception-arguments _%e140997%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e140997%_ '())))))
            (if (macro-module-not-found-exception? _%exn140995%_)
                (macro-module-not-found-exception-arguments _%exn140995%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn140995%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn140989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140989%_))
            (let ((_%e140992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140989%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140992%_)
                  (macro-module-not-found-exception-procedure _%e140992%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e140992%_ '())))))
            (if (macro-module-not-found-exception? _%exn140989%_)
                (macro-module-not-found-exception-procedure _%exn140989%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn140989%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn140983%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140983%_))
            (let ((_%e140986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140983%_ 'exception))))
              (macro-multiple-c-return-exception? _%e140986%_))
            (macro-multiple-c-return-exception? _%exn140983%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn140979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140979%_))
            (let ((_%e140981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140979%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e140981%_))
            (macro-no-such-file-or-directory-exception? _%exn140979%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn140975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140975%_))
            (let ((_%e140977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140975%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140977%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e140977%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e140977%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140975%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn140975%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn140975%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn140969%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140969%_))
            (let ((_%e140972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140969%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140972%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e140972%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e140972%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140969%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn140969%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn140969%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn140965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140965%_))
            (let ((_%e140967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140965%_ 'exception))))
              (macro-noncontinuable-exception? _%e140967%_))
            (macro-noncontinuable-exception? _%exn140965%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn140959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140959%_))
            (let ((_%e140962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140959%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e140962%_)
                  (macro-noncontinuable-exception-reason _%e140962%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e140962%_ '())))))
            (if (macro-noncontinuable-exception? _%exn140959%_)
                (macro-noncontinuable-exception-reason _%exn140959%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn140959%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn140955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140955%_))
            (let ((_%e140957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140955%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e140957%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn140955%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn140951%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140951%_))
            (let ((_%e140953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140951%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140953%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e140953%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e140953%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140951%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn140951%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn140951%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn140945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140945%_))
            (let ((_%e140948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140945%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140948%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e140948%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e140948%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140945%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn140945%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn140945%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn140941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140941%_))
            (let ((_%e140943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140941%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e140943%_))
            (macro-nonprocedure-operator-exception? _%exn140941%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn140937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140937%_))
            (let ((_%e140939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140937%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140939%_)
                  (macro-nonprocedure-operator-exception-arguments _%e140939%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e140939%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140937%_)
                (macro-nonprocedure-operator-exception-arguments _%exn140937%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn140937%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn140933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140933%_))
            (let ((_%e140935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140933%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140935%_)
                  (macro-nonprocedure-operator-exception-code _%e140935%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e140935%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140933%_)
                (macro-nonprocedure-operator-exception-code _%exn140933%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn140933%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn140929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140929%_))
            (let ((_%e140931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140929%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140931%_)
                  (macro-nonprocedure-operator-exception-operator _%e140931%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e140931%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140929%_)
                (macro-nonprocedure-operator-exception-operator _%exn140929%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn140929%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn140923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140923%_))
            (let ((_%e140926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140923%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140926%_)
                  (macro-nonprocedure-operator-exception-rte _%e140926%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e140926%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140923%_)
                (macro-nonprocedure-operator-exception-rte _%exn140923%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn140923%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn140919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140919%_))
            (let ((_%e140921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140919%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e140921%_))
            (macro-not-in-compilation-context-exception? _%exn140919%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn140915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140915%_))
            (let ((_%e140917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140915%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140917%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e140917%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e140917%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140915%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn140915%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn140915%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn140909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140909%_))
            (let ((_%e140912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140909%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140912%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e140912%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e140912%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140909%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn140909%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn140909%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn140905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140905%_))
            (let ((_%e140907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140905%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e140907%_))
            (macro-number-of-arguments-limit-exception? _%exn140905%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn140901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140901%_))
            (let ((_%e140903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140901%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140903%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e140903%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e140903%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140901%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn140901%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn140901%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn140895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140895%_))
            (let ((_%e140898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140895%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140898%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e140898%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e140898%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140895%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn140895%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn140895%_ '())))))))
    (define os-exception?
      (lambda (_%exn140891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140891%_))
            (let ((_%e140893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140891%_ 'exception))))
              (macro-os-exception? _%e140893%_))
            (macro-os-exception? _%exn140891%_))))
    (define os-exception-arguments
      (lambda (_%exn140887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140887%_))
            (let ((_%e140889%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140887%_ 'exception))))
              (if (macro-os-exception? _%e140889%_)
                  (macro-os-exception-arguments _%e140889%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e140889%_ '())))))
            (if (macro-os-exception? _%exn140887%_)
                (macro-os-exception-arguments _%exn140887%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn140887%_ '())))))))
    (define os-exception-code
      (lambda (_%exn140883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140883%_))
            (let ((_%e140885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140883%_ 'exception))))
              (if (macro-os-exception? _%e140885%_)
                  (macro-os-exception-code _%e140885%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e140885%_ '())))))
            (if (macro-os-exception? _%exn140883%_)
                (macro-os-exception-code _%exn140883%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn140883%_ '())))))))
    (define os-exception-message
      (lambda (_%exn140879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140879%_))
            (let ((_%e140881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140879%_ 'exception))))
              (if (macro-os-exception? _%e140881%_)
                  (macro-os-exception-message _%e140881%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e140881%_ '())))))
            (if (macro-os-exception? _%exn140879%_)
                (macro-os-exception-message _%exn140879%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn140879%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn140873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140873%_))
            (let ((_%e140876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140873%_ 'exception))))
              (if (macro-os-exception? _%e140876%_)
                  (macro-os-exception-procedure _%e140876%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e140876%_ '())))))
            (if (macro-os-exception? _%exn140873%_)
                (macro-os-exception-procedure _%exn140873%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn140873%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn140869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140869%_))
            (let ((_%e140871%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140869%_ 'exception))))
              (macro-permission-denied-exception? _%e140871%_))
            (macro-permission-denied-exception? _%exn140869%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn140865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140865%_))
            (let ((_%e140867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140865%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140867%_)
                  (macro-permission-denied-exception-arguments _%e140867%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e140867%_ '())))))
            (if (macro-permission-denied-exception? _%exn140865%_)
                (macro-permission-denied-exception-arguments _%exn140865%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn140865%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn140859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140859%_))
            (let ((_%e140862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140859%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140862%_)
                  (macro-permission-denied-exception-procedure _%e140862%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e140862%_ '())))))
            (if (macro-permission-denied-exception? _%exn140859%_)
                (macro-permission-denied-exception-procedure _%exn140859%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn140859%_ '())))))))
    (define range-exception?
      (lambda (_%exn140855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140855%_))
            (let ((_%e140857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140855%_ 'exception))))
              (macro-range-exception? _%e140857%_))
            (macro-range-exception? _%exn140855%_))))
    (define range-exception-arg-id
      (lambda (_%exn140851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140851%_))
            (let ((_%e140853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140851%_ 'exception))))
              (if (macro-range-exception? _%e140853%_)
                  (macro-range-exception-arg-id _%e140853%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e140853%_ '())))))
            (if (macro-range-exception? _%exn140851%_)
                (macro-range-exception-arg-id _%exn140851%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn140851%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn140847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140847%_))
            (let ((_%e140849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140847%_ 'exception))))
              (if (macro-range-exception? _%e140849%_)
                  (macro-range-exception-arguments _%e140849%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e140849%_ '())))))
            (if (macro-range-exception? _%exn140847%_)
                (macro-range-exception-arguments _%exn140847%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn140847%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn140841%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140841%_))
            (let ((_%e140844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140841%_ 'exception))))
              (if (macro-range-exception? _%e140844%_)
                  (macro-range-exception-procedure _%e140844%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e140844%_ '())))))
            (if (macro-range-exception? _%exn140841%_)
                (macro-range-exception-procedure _%exn140841%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn140841%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn140837%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140837%_))
            (let ((_%e140839%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140837%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e140839%_))
            (macro-rpc-remote-error-exception? _%exn140837%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn140833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140833%_))
            (let ((_%e140835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140833%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140835%_)
                  (macro-rpc-remote-error-exception-arguments _%e140835%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e140835%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140833%_)
                (macro-rpc-remote-error-exception-arguments _%exn140833%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn140833%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn140829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140829%_))
            (let ((_%e140831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140829%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140831%_)
                  (macro-rpc-remote-error-exception-message _%e140831%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e140831%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140829%_)
                (macro-rpc-remote-error-exception-message _%exn140829%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn140829%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn140823%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140823%_))
            (let ((_%e140826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140823%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140826%_)
                  (macro-rpc-remote-error-exception-procedure _%e140826%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e140826%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140823%_)
                (macro-rpc-remote-error-exception-procedure _%exn140823%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn140823%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn140819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140819%_))
            (let ((_%e140821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140819%_ 'exception))))
              (macro-scheduler-exception? _%e140821%_))
            (macro-scheduler-exception? _%exn140819%_))))
    (define scheduler-exception-reason
      (lambda (_%exn140813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140813%_))
            (let ((_%e140816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140813%_ 'exception))))
              (if (macro-scheduler-exception? _%e140816%_)
                  (macro-scheduler-exception-reason _%e140816%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e140816%_ '())))))
            (if (macro-scheduler-exception? _%exn140813%_)
                (macro-scheduler-exception-reason _%exn140813%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn140813%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn140809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140809%_))
            (let ((_%e140811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140809%_ 'exception))))
              (macro-sfun-conversion-exception? _%e140811%_))
            (macro-sfun-conversion-exception? _%exn140809%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn140805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140805%_))
            (let ((_%e140807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140805%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140807%_)
                  (macro-sfun-conversion-exception-arguments _%e140807%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e140807%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140805%_)
                (macro-sfun-conversion-exception-arguments _%exn140805%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn140805%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn140801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140801%_))
            (let ((_%e140803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140801%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140803%_)
                  (macro-sfun-conversion-exception-code _%e140803%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e140803%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140801%_)
                (macro-sfun-conversion-exception-code _%exn140801%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn140801%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn140797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140797%_))
            (let ((_%e140799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140797%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140799%_)
                  (macro-sfun-conversion-exception-message _%e140799%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e140799%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140797%_)
                (macro-sfun-conversion-exception-message _%exn140797%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn140797%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn140791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140791%_))
            (let ((_%e140794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140791%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140794%_)
                  (macro-sfun-conversion-exception-procedure _%e140794%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e140794%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140791%_)
                (macro-sfun-conversion-exception-procedure _%exn140791%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn140791%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn140785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140785%_))
            (let ((_%e140788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140785%_ 'exception))))
              (macro-stack-overflow-exception? _%e140788%_))
            (macro-stack-overflow-exception? _%exn140785%_))))
    (define started-thread-exception?
      (lambda (_%exn140781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140781%_))
            (let ((_%e140783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140781%_ 'exception))))
              (macro-started-thread-exception? _%e140783%_))
            (macro-started-thread-exception? _%exn140781%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn140777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140777%_))
            (let ((_%e140779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140777%_ 'exception))))
              (if (macro-started-thread-exception? _%e140779%_)
                  (macro-started-thread-exception-arguments _%e140779%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e140779%_ '())))))
            (if (macro-started-thread-exception? _%exn140777%_)
                (macro-started-thread-exception-arguments _%exn140777%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn140777%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn140771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140771%_))
            (let ((_%e140774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140771%_ 'exception))))
              (if (macro-started-thread-exception? _%e140774%_)
                  (macro-started-thread-exception-procedure _%e140774%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e140774%_ '())))))
            (if (macro-started-thread-exception? _%exn140771%_)
                (macro-started-thread-exception-procedure _%exn140771%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn140771%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn140767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140767%_))
            (let ((_%e140769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140767%_ 'exception))))
              (macro-terminated-thread-exception? _%e140769%_))
            (macro-terminated-thread-exception? _%exn140767%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn140763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140763%_))
            (let ((_%e140765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140763%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140765%_)
                  (macro-terminated-thread-exception-arguments _%e140765%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e140765%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140763%_)
                (macro-terminated-thread-exception-arguments _%exn140763%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn140763%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn140757%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140757%_))
            (let ((_%e140760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140757%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140760%_)
                  (macro-terminated-thread-exception-procedure _%e140760%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e140760%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140757%_)
                (macro-terminated-thread-exception-procedure _%exn140757%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn140757%_ '())))))))
    (define type-exception?
      (lambda (_%exn140753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140753%_))
            (let ((_%e140755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140753%_ 'exception))))
              (macro-type-exception? _%e140755%_))
            (macro-type-exception? _%exn140753%_))))
    (define type-exception-arg-id
      (lambda (_%exn140749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140749%_))
            (let ((_%e140751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140749%_ 'exception))))
              (if (macro-type-exception? _%e140751%_)
                  (macro-type-exception-arg-id _%e140751%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e140751%_ '())))))
            (if (macro-type-exception? _%exn140749%_)
                (macro-type-exception-arg-id _%exn140749%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn140749%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn140745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140745%_))
            (let ((_%e140747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140745%_ 'exception))))
              (if (macro-type-exception? _%e140747%_)
                  (macro-type-exception-arguments _%e140747%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e140747%_ '())))))
            (if (macro-type-exception? _%exn140745%_)
                (macro-type-exception-arguments _%exn140745%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn140745%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn140741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140741%_))
            (let ((_%e140743%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140741%_ 'exception))))
              (if (macro-type-exception? _%e140743%_)
                  (macro-type-exception-procedure _%e140743%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e140743%_ '())))))
            (if (macro-type-exception? _%exn140741%_)
                (macro-type-exception-procedure _%exn140741%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn140741%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn140735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140735%_))
            (let ((_%e140738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140735%_ 'exception))))
              (if (macro-type-exception? _%e140738%_)
                  (macro-type-exception-type-id _%e140738%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e140738%_ '())))))
            (if (macro-type-exception? _%exn140735%_)
                (macro-type-exception-type-id _%exn140735%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn140735%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn140731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140731%_))
            (let ((_%e140733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140731%_ 'exception))))
              (macro-unbound-global-exception? _%e140733%_))
            (macro-unbound-global-exception? _%exn140731%_))))
    (define unbound-global-exception-code
      (lambda (_%exn140727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140727%_))
            (let ((_%e140729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140727%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140729%_)
                  (macro-unbound-global-exception-code _%e140729%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e140729%_ '())))))
            (if (macro-unbound-global-exception? _%exn140727%_)
                (macro-unbound-global-exception-code _%exn140727%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn140727%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn140723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140723%_))
            (let ((_%e140725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140723%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140725%_)
                  (macro-unbound-global-exception-rte _%e140725%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e140725%_ '())))))
            (if (macro-unbound-global-exception? _%exn140723%_)
                (macro-unbound-global-exception-rte _%exn140723%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn140723%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn140717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140717%_))
            (let ((_%e140720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140717%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140720%_)
                  (macro-unbound-global-exception-variable _%e140720%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e140720%_ '())))))
            (if (macro-unbound-global-exception? _%exn140717%_)
                (macro-unbound-global-exception-variable _%exn140717%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn140717%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn140713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140713%_))
            (let ((_%e140715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140713%_ 'exception))))
              (macro-unbound-key-exception? _%e140715%_))
            (macro-unbound-key-exception? _%exn140713%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn140709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140709%_))
            (let ((_%e140711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140709%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140711%_)
                  (macro-unbound-key-exception-arguments _%e140711%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e140711%_ '())))))
            (if (macro-unbound-key-exception? _%exn140709%_)
                (macro-unbound-key-exception-arguments _%exn140709%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn140709%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn140703%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140703%_))
            (let ((_%e140706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140703%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140706%_)
                  (macro-unbound-key-exception-procedure _%e140706%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e140706%_ '())))))
            (if (macro-unbound-key-exception? _%exn140703%_)
                (macro-unbound-key-exception-procedure _%exn140703%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn140703%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn140699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140699%_))
            (let ((_%e140701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140699%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e140701%_))
            (macro-unbound-os-environment-variable-exception? _%exn140699%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn140695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140695%_))
            (let ((_%e140697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140695%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140697%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e140697%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e140697%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140695%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn140695%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn140695%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn140689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140689%_))
            (let ((_%e140692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140689%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140692%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e140692%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e140692%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140689%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn140689%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn140689%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn140685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140685%_))
            (let ((_%e140687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140685%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e140687%_))
            (macro-unbound-serial-number-exception? _%exn140685%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn140681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140681%_))
            (let ((_%e140683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140681%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140683%_)
                  (macro-unbound-serial-number-exception-arguments _%e140683%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e140683%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140681%_)
                (macro-unbound-serial-number-exception-arguments _%exn140681%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn140681%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn140675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140675%_))
            (let ((_%e140678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140675%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140678%_)
                  (macro-unbound-serial-number-exception-procedure _%e140678%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e140678%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140675%_)
                (macro-unbound-serial-number-exception-procedure _%exn140675%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn140675%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn140671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140671%_))
            (let ((_%e140673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140671%_ 'exception))))
              (macro-uncaught-exception? _%e140673%_))
            (macro-uncaught-exception? _%exn140671%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn140667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140667%_))
            (let ((_%e140669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140667%_ 'exception))))
              (if (macro-uncaught-exception? _%e140669%_)
                  (macro-uncaught-exception-arguments _%e140669%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e140669%_ '())))))
            (if (macro-uncaught-exception? _%exn140667%_)
                (macro-uncaught-exception-arguments _%exn140667%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn140667%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn140663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140663%_))
            (let ((_%e140665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140663%_ 'exception))))
              (if (macro-uncaught-exception? _%e140665%_)
                  (macro-uncaught-exception-procedure _%e140665%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e140665%_ '())))))
            (if (macro-uncaught-exception? _%exn140663%_)
                (macro-uncaught-exception-procedure _%exn140663%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn140663%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn140657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140657%_))
            (let ((_%e140660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140657%_ 'exception))))
              (if (macro-uncaught-exception? _%e140660%_)
                  (macro-uncaught-exception-reason _%e140660%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e140660%_ '())))))
            (if (macro-uncaught-exception? _%exn140657%_)
                (macro-uncaught-exception-reason _%exn140657%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn140657%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn140653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140653%_))
            (let ((_%e140655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140653%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e140655%_))
            (macro-uninitialized-thread-exception? _%exn140653%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn140649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140649%_))
            (let ((_%e140651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140649%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140651%_)
                  (macro-uninitialized-thread-exception-arguments _%e140651%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e140651%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140649%_)
                (macro-uninitialized-thread-exception-arguments _%exn140649%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn140649%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn140643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140643%_))
            (let ((_%e140646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140643%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140646%_)
                  (macro-uninitialized-thread-exception-procedure _%e140646%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e140646%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140643%_)
                (macro-uninitialized-thread-exception-procedure _%exn140643%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn140643%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn140639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140639%_))
            (let ((_%e140641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140639%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e140641%_))
            (macro-unknown-keyword-argument-exception? _%exn140639%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn140635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140635%_))
            (let ((_%e140637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140635%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140637%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e140637%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e140637%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140635%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn140635%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn140635%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn140629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140629%_))
            (let ((_%e140632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140629%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140632%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e140632%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e140632%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140629%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn140629%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn140629%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn140625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140625%_))
            (let ((_%e140627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140625%_ 'exception))))
              (macro-unterminated-process-exception? _%e140627%_))
            (macro-unterminated-process-exception? _%exn140625%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn140621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140621%_))
            (let ((_%e140623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140621%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140623%_)
                  (macro-unterminated-process-exception-arguments _%e140623%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e140623%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140621%_)
                (macro-unterminated-process-exception-arguments _%exn140621%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn140621%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn140615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140615%_))
            (let ((_%e140618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140615%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140618%_)
                  (macro-unterminated-process-exception-procedure _%e140618%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e140618%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140615%_)
                (macro-unterminated-process-exception-procedure _%exn140615%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn140615%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn140611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140611%_))
            (let ((_%e140613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140611%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e140613%_))
            (macro-wrong-number-of-arguments-exception? _%exn140611%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn140607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140607%_))
            (let ((_%e140609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140607%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140609%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e140609%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e140609%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140607%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn140607%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn140607%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn140601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140601%_))
            (let ((_%e140604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140601%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140604%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e140604%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e140604%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140601%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn140601%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn140601%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn140597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140597%_))
            (let ((_%e140599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140597%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e140599%_))
            (macro-wrong-number-of-values-exception? _%exn140597%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn140593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140593%_))
            (let ((_%e140595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140593%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140595%_)
                  (macro-wrong-number-of-values-exception-code _%e140595%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e140595%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140593%_)
                (macro-wrong-number-of-values-exception-code _%exn140593%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn140593%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn140589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140589%_))
            (let ((_%e140591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140589%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140591%_)
                  (macro-wrong-number-of-values-exception-rte _%e140591%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e140591%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140589%_)
                (macro-wrong-number-of-values-exception-rte _%exn140589%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn140589%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn140583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140583%_))
            (let ((_%e140586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140583%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140586%_)
                  (macro-wrong-number-of-values-exception-vals _%e140586%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e140586%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140583%_)
                (macro-wrong-number-of-values-exception-vals _%exn140583%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn140583%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn140577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140577%_))
            (let ((_%e140580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140577%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e140580%_))
            (macro-wrong-processor-c-return-exception? _%exn140577%_))))))
