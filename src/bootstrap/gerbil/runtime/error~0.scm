(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771104503)
  (begin
    (define Exception::t
      (let ((__tmp142220 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp142220
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args142138%_
        (apply make-instance Exception::t _%$args142138%_)))
    (define StackTrace::t
      (let ((__tmp142221 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp142221
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args142135%_
        (apply make-instance StackTrace::t _%$args142135%_)))
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
      (let ((__tmp142222 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp142222
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args142132%_ (apply make-instance Error::t _%$args142132%_)))
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
      (let ((__tmp142223 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp142223
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args142129%_
        (apply make-instance ContractViolation::t _%$args142129%_)))
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
      (let ((__tmp142224 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp142224
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args142126%_
        (apply make-instance RuntimeException::t _%$args142126%_)))
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
      (lambda (_%exn142121%_ _%continue142122%_)
        (let ((_%exn142124%_ (wrap-runtime-exception _%exn142121%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn142124%_ _%continue142122%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn142117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn142117%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn142117%_ 'continuation))
                '#!void
                (let ((__tmp142225
                       (lambda (_%cont142119%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn142117%_
                            'continuation
                            _%cont142119%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp142225)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn142117%_))))
    (define error
      (lambda (_%message142114%_ . _%irritants142115%_)
        (raise (let ((__obj142217
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj142217
                  _%message142114%_
                  'irritants:
                  _%irritants142115%_)
                 __obj142217))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords142089%_
               _%ctx142084142090%_
               _%contract-expr142085142091%_
               _%value142086142092%_
               _%message142093%_)
        (let* ((_%ctx142095%_
                (if (eq? _%ctx142084142090%_ absent-value)
                    '#f
                    _%ctx142084142090%_))
               (_%contract-expr142097%_
                (if (eq? _%contract-expr142085142091%_ absent-value)
                    '#f
                    _%contract-expr142085142091%_))
               (_%value142099%_
                (if (eq? _%value142086142092%_ absent-value)
                    '#f
                    _%value142086142092%_)))
          (raise (let ((__obj142218
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj142218
                    _%message142093%_
                    'where:
                    _%ctx142095%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr142097%_
                                (cons 'value: (cons _%value142099%_ '())))))
                   __obj142218)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords142104%_ . _%args142105%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords142104%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142104%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142104%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142104%_
                  'value:
                  absent-value))
               _%args142105%_)))
    (define __raise-contract-violation-error
      (lambda _%args142087142111%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args142087142111%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler142058%_ _%thunk142059%_)
        (let* ((_%handler142062%_ _%handler142058%_)
               (_%thunk142070%_ _%thunk142059%_)
               (__tmp142226
                (lambda (_%exn142079%_)
                  (let ((_%exn142081%_ (wrap-runtime-exception _%exn142079%_)))
                    (declare (not safe))
                    (_%handler142062%_ _%exn142081%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp142226 _%thunk142070%_))))
    (define with-exception-handler
      (lambda (_%handler140093%_ _%thunk140094%_)
        (if (procedure? _%handler140093%_)
            (let ((_%handler140098%_ _%handler140093%_))
              (if (procedure? _%thunk140094%_)
                  (let ((_%thunk140108%_ _%thunk140094%_))
                    (__with-exception-handler
                     _%handler140098%_
                     _%thunk140108%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140094%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler140093%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler142000%_ _%thunk142001%_)
        (let* ((_%handler142004%_ _%handler142000%_)
               (_%thunk142012%_ _%thunk142001%_)
               (__tmp142227
                (lambda (_%cont142021%_)
                  (let* ((_%handler142025%_
                          (lambda (_%exn142023%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont142021%_
                               _%handler142004%_
                               _%exn142023%_))))
                         (_%thunk142028%_ _%thunk142012%_)
                         (_%handler142033%_ _%handler142025%_)
                         (_%thunk142048%_ _%thunk142028%_))
                    (__with-exception-handler
                     _%handler142033%_
                     _%thunk142048%_)))))
          (declare (not safe))
          (##continuation-capture __tmp142227))))
    (define with-catch
      (lambda (_%handler140238%_ _%thunk140239%_)
        (if (procedure? _%handler140238%_)
            (let ((_%handler140243%_ _%handler140238%_))
              (if (procedure? _%thunk140239%_)
                  (let ((_%thunk140253%_ _%thunk140239%_))
                    (__with-catch _%handler140243%_ _%thunk140253%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140239%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler140238%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn141987%_)
        (if (or (heap-overflow-exception? _%exn141987%_)
                (stack-overflow-exception? _%exn141987%_))
            _%exn141987%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn141987%_))
                _%exn141987%_
                (if (macro-exception? _%exn141987%_)
                    (let ((_%rte141995%_
                           (let ((__obj142219
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj142219
                                _%exn141987%_
                                '2
                                '#f
                                '#f))
                             __obj142219)))
                      (let ((__tmp142228
                             (lambda (_%cont141997%_)
                               (let ((__tmp142229
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont141997%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte141995%_
                                  'continuation
                                  __tmp142229)))))
                        (declare (not safe))
                        (##continuation-capture __tmp142228))
                      _%rte141995%_)
                    _%exn141987%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj141982%_)
        (let ((_%$e141984%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj141982%_))))
          (if _%$e141984%_ _%$e141984%_ (error-exception? _%obj141982%_)))))
    (define error-message
      (lambda (_%obj141941%_)
        (let ((_%$e141977%_
               (let* ((_%obj141943%_ _%obj141941%_)
                      (_%slot141946%_ 'message)
                      (_%E141949%_ false)
                      (_%slot141954%_ _%slot141946%_)
                      (_%E141967%_ _%E141949%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj141943%_ _%slot141954%_ _%E141967%_))))
          (if _%$e141977%_
              _%$e141977%_
              (if (error-exception? _%obj141941%_)
                  (error-exception-message _%obj141941%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj141936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141936%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141936%_ 'irritants))
            (if (error-exception? _%obj141936%_)
                (error-exception-parameters _%obj141936%_)
                '#f))))
    (define error-trace
      (lambda (_%obj141934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141934%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141934%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e141895%_ _%port141896%_)
        (let ((_%$e141918%_
               (let* ((_%obj141898%_ _%e141895%_)
                      (_%id141901%_ 'display-exception)
                      (_%id141906%_ _%id141901%_))
                 (declare (not safe))
                 (__method-ref _%obj141898%_ _%id141906%_))))
          (if _%$e141918%_
              ((lambda (_%f141921%_) (_%f141921%_ _%e141895%_ _%port141896%_))
               _%$e141918%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e141895%_ _%port141896%_))))))
    (define display-exception__0
      (lambda (_%e141927%_)
        (let ((_%port141929%_ (current-error-port)))
          (display-exception__% _%e141927%_ _%port141929%_))))
    (define display-exception
      (lambda _g142230_
        (let ((_g142231_ (let () (declare (not safe)) (##length _g142230_))))
          (cond ((let () (declare (not safe)) (##fx= _g142231_ 1))
                 (apply display-exception__0 _g142230_))
                ((let () (declare (not safe)) (##fx= _g142231_ 2))
                 (apply display-exception__% _g142230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g142230_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self141873%_ _%message141874%_ . _%rest141875%_)
        (let* ((_%self141878%_ _%self141873%_)
               (_%message141892%_
                (if (string? _%message141874%_)
                    _%message141874%_
                    (call-with-output-string
                     '""
                     (lambda (_%g141887141889%_)
                       (display _%message141874%_ _%g141887141889%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self141878%_ 'message _%message141892%_))
          (apply class-instance-init! _%self141878%_ _%rest141875%_))))
    (define Error:::init!::specialize
      (lambda (__klass142140 __method-table142141)
        (let ((__message142142
               (let ((__slot142143
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142140 'message))))
                 (if __slot142143
                     __slot142143
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self141873%_ _%message141874%_ . _%rest141875%_)
            (let* ((_%self141878%_ _%self141873%_)
                   (_%message141892%_
                    (if (string? _%message141874%_)
                        _%message141874%_
                        (call-with-output-string
                         '""
                         (lambda (_%g141887141889%_)
                           (display _%message141874%_ _%g141887141889%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self141878%_
                 _%message141892%_
                 __message142142
                 '#f
                 '#f))
              (apply class-instance-init! _%self141878%_ _%rest141875%_))))))
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
      (lambda (_%self141578%_ _%port141579%_)
        (let ((_%self141582%_ _%self141578%_))
          (let ((_%tmp-port141592%_ (open-output-string))
                (_%display-error-newline141593%_
                 (> (output-port-column _%port141579%_) '0)))
            (fix-port-width! _%tmp-port141592%_)
            (let ((__tmp142232
                   (lambda ()
                     (if _%display-error-newline141593%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e141596%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141582%_ 'where))))
                       (if _%$e141596%_ (display _%$e141596%_) (display '"?")))
                     (let ((__tmp142233
                            (let ((__tmp142234
                                   (let ((_%obj141600%_ _%self141582%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj141600%_))
                                         (let ((_%obj141605%_ _%obj141600%_))
                                           (declare (not safe))
                                           (__object-class _%obj141605%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj141600%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp142234))))
                       (declare (not safe))
                       (display* '" [" __tmp142233 '"]: "))
                     (let ((__tmp142235
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141582%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp142235))
                     (let ((_%irritants141620%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141582%_ 'irritants))))
                       (if (null? _%irritants141620%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj141622%_)
                                (if (u8vector? _%obj141622%_)
                                    (let ((__tmp142236
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj141622%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp142236))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj141622%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants141620%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont141623141625%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self141582%_
                                   'continuation))))
                           (if _%cont141623141625%_
                               (let ((_%cont141627%_ _%cont141623141625%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont141627%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp142232
               current-output-port
               _%tmp-port141592%_))
            (let ((__tmp142237 (get-output-string _%tmp-port141592%_)))
              (declare (not safe))
              (##write-string __tmp142237 _%port141579%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass142144 __method-table142145)
        (let ((__irritants142146
               (let ((__slot142150
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142144 'irritants))))
                 (if __slot142150
                     __slot142150
                     (error '"Unknown slot" 'irritants))))
              (__where142147
               (let ((__slot142151
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142144 'where))))
                 (if __slot142151
                     __slot142151
                     (error '"Unknown slot" 'where))))
              (__message142148
               (let ((__slot142152
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142144 'message))))
                 (if __slot142152
                     __slot142152
                     (error '"Unknown slot" 'message))))
              (__continuation142149
               (let ((__slot142153
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142144 'continuation))))
                 (if __slot142153
                     __slot142153
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self141578%_ _%port141579%_)
            (let ((_%self141582%_ _%self141578%_))
              (let ((_%tmp-port141592%_ (open-output-string))
                    (_%display-error-newline141593%_
                     (> (output-port-column _%port141579%_) '0)))
                (fix-port-width! _%tmp-port141592%_)
                (let ((__tmp142238
                       (lambda ()
                         (if _%display-error-newline141593%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e141596%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141582%_
                                   __where142147
                                   '#f
                                   '#f))))
                           (if _%$e141596%_
                               (display _%$e141596%_)
                               (display '"?")))
                         (let ((__tmp142239
                                (let ((__tmp142240
                                       (let ((_%obj141600%_ _%self141582%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj141600%_))
                                             (let ((_%obj141605%_
                                                    _%obj141600%_))
                                               (declare (not safe))
                                               (__object-class _%obj141605%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj141600%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp142240))))
                           (declare (not safe))
                           (display* '" [" __tmp142239 '"]: "))
                         (let ((__tmp142241
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141582%_
                                   __message142148
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp142241))
                         (let ((_%irritants141620%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141582%_
                                   __irritants142146
                                   '#f
                                   '#f))))
                           (if (null? _%irritants141620%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj141622%_)
                                    (if (u8vector? _%obj141622%_)
                                        (let ((__tmp142242
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj141622%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp142242))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj141622%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants141620%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont141623141625%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self141582%_
                                       __continuation142149
                                       '#f
                                       '#f))))
                               (if _%cont141623141625%_
                                   (let ((_%cont141627%_ _%cont141623141625%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont141627%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp142238
                   current-output-port
                   _%tmp-port141592%_))
                (let ((__tmp142243 (get-output-string _%tmp-port141592%_)))
                  (declare (not safe))
                  (##write-string __tmp142243 _%port141579%_))))))))
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
      (lambda (_%self141435%_ _%port141436%_)
        (let* ((_%self141439%_ _%self141435%_)
               (_%tmp-port141449%_ (open-output-string)))
          (fix-port-width! _%tmp-port141449%_)
          (let ((__tmp142244
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self141439%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp142244 _%tmp-port141449%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont141450141452%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self141439%_ 'continuation))))
                (if _%cont141450141452%_
                    (let ((_%cont141454%_ _%cont141450141452%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port141449%_)
                      (newline _%tmp-port141449%_)
                      (display-continuation-backtrace
                       _%cont141454%_
                       _%tmp-port141449%_))
                    '#f))
              '#!void)
          (let ((__tmp142245 (get-output-string _%tmp-port141449%_)))
            (declare (not safe))
            (##write-string __tmp142245 _%port141436%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass142154 __method-table142155)
        (let ((__exception142156
               (let ((__slot142158
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142154 'exception))))
                 (if __slot142158
                     __slot142158
                     (error '"Unknown slot" 'exception))))
              (__continuation142157
               (let ((__slot142159
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142154 'continuation))))
                 (if __slot142159
                     __slot142159
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self141435%_ _%port141436%_)
            (let* ((_%self141439%_ _%self141435%_)
                   (_%tmp-port141449%_ (open-output-string)))
              (fix-port-width! _%tmp-port141449%_)
              (let ((__tmp142246
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self141439%_
                        __exception142156
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp142246 _%tmp-port141449%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont141450141452%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self141439%_
                            __continuation142157
                            '#f
                            '#f))))
                    (if _%cont141450141452%_
                        (let ((_%cont141454%_ _%cont141450141452%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port141449%_)
                          (newline _%tmp-port141449%_)
                          (display-continuation-backtrace
                           _%cont141454%_
                           _%tmp-port141449%_))
                        '#f))
                  '#!void)
              (let ((__tmp142247 (get-output-string _%tmp-port141449%_)))
                (declare (not safe))
                (##write-string __tmp142247 _%port141436%_)))))))
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
      (lambda (_%port141307%_)
        (if (macro-character-port? _%port141307%_)
            (let ((_%old-width141309%_
                   (macro-character-port-output-width _%port141307%_)))
              (macro-character-port-output-width-set!
               _%port141307%_
               (lambda (_%port141311%_) '256))
              _%old-width141309%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port141304%_ _%old-width141305%_)
        (if (macro-character-port? _%port141304%_)
            (macro-character-port-output-width-set!
             _%port141304%_
             _%old-width141305%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e141302%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e141302%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn141296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141296%_))
            (let ((_%e141299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141296%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e141299%_))
            (macro-abandoned-mutex-exception? _%exn141296%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn141292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141292%_))
            (let ((_%e141294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141292%_ 'exception))))
              (macro-cfun-conversion-exception? _%e141294%_))
            (macro-cfun-conversion-exception? _%exn141292%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn141288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141288%_))
            (let ((_%e141290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141288%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141290%_)
                  (macro-cfun-conversion-exception-arguments _%e141290%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e141290%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141288%_)
                (macro-cfun-conversion-exception-arguments _%exn141288%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn141288%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn141284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141284%_))
            (let ((_%e141286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141284%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141286%_)
                  (macro-cfun-conversion-exception-code _%e141286%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e141286%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141284%_)
                (macro-cfun-conversion-exception-code _%exn141284%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn141284%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn141280%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141280%_))
            (let ((_%e141282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141280%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141282%_)
                  (macro-cfun-conversion-exception-message _%e141282%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e141282%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141280%_)
                (macro-cfun-conversion-exception-message _%exn141280%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn141280%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn141274%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141274%_))
            (let ((_%e141277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141274%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141277%_)
                  (macro-cfun-conversion-exception-procedure _%e141277%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e141277%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141274%_)
                (macro-cfun-conversion-exception-procedure _%exn141274%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn141274%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn141270%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141270%_))
            (let ((_%e141272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141270%_ 'exception))))
              (macro-datum-parsing-exception? _%e141272%_))
            (macro-datum-parsing-exception? _%exn141270%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn141266%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141266%_))
            (let ((_%e141268%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141266%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141268%_)
                  (macro-datum-parsing-exception-kind _%e141268%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e141268%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141266%_)
                (macro-datum-parsing-exception-kind _%exn141266%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn141266%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn141262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141262%_))
            (let ((_%e141264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141262%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141264%_)
                  (macro-datum-parsing-exception-parameters _%e141264%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e141264%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141262%_)
                (macro-datum-parsing-exception-parameters _%exn141262%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn141262%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn141256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141256%_))
            (let ((_%e141259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141256%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141259%_)
                  (macro-datum-parsing-exception-readenv _%e141259%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e141259%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141256%_)
                (macro-datum-parsing-exception-readenv _%exn141256%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn141256%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn141250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141250%_))
            (let ((_%e141253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141250%_ 'exception))))
              (macro-deadlock-exception? _%e141253%_))
            (macro-deadlock-exception? _%exn141250%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn141246%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141246%_))
            (let ((_%e141248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141246%_ 'exception))))
              (macro-divide-by-zero-exception? _%e141248%_))
            (macro-divide-by-zero-exception? _%exn141246%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn141242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141242%_))
            (let ((_%e141244%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141242%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141244%_)
                  (macro-divide-by-zero-exception-arguments _%e141244%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e141244%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141242%_)
                (macro-divide-by-zero-exception-arguments _%exn141242%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn141242%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn141236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141236%_))
            (let ((_%e141239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141236%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141239%_)
                  (macro-divide-by-zero-exception-procedure _%e141239%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e141239%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141236%_)
                (macro-divide-by-zero-exception-procedure _%exn141236%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn141236%_ '())))))))
    (define error-exception?
      (lambda (_%exn141232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141232%_))
            (let ((_%e141234%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141232%_ 'exception))))
              (macro-error-exception? _%e141234%_))
            (macro-error-exception? _%exn141232%_))))
    (define error-exception-message
      (lambda (_%exn141228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141228%_))
            (let ((_%e141230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141228%_ 'exception))))
              (if (macro-error-exception? _%e141230%_)
                  (macro-error-exception-message _%e141230%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e141230%_ '())))))
            (if (macro-error-exception? _%exn141228%_)
                (macro-error-exception-message _%exn141228%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn141228%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn141222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141222%_))
            (let ((_%e141225%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141222%_ 'exception))))
              (if (macro-error-exception? _%e141225%_)
                  (macro-error-exception-parameters _%e141225%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e141225%_ '())))))
            (if (macro-error-exception? _%exn141222%_)
                (macro-error-exception-parameters _%exn141222%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn141222%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn141218%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141218%_))
            (let ((_%e141220%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141218%_ 'exception))))
              (macro-expression-parsing-exception? _%e141220%_))
            (macro-expression-parsing-exception? _%exn141218%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn141214%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141214%_))
            (let ((_%e141216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141214%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141216%_)
                  (macro-expression-parsing-exception-kind _%e141216%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e141216%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141214%_)
                (macro-expression-parsing-exception-kind _%exn141214%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn141214%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn141210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141210%_))
            (let ((_%e141212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141210%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141212%_)
                  (macro-expression-parsing-exception-parameters _%e141212%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e141212%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141210%_)
                (macro-expression-parsing-exception-parameters _%exn141210%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn141210%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn141204%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141204%_))
            (let ((_%e141207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141204%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141207%_)
                  (macro-expression-parsing-exception-source _%e141207%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e141207%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141204%_)
                (macro-expression-parsing-exception-source _%exn141204%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn141204%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn141200%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141200%_))
            (let ((_%e141202%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141200%_ 'exception))))
              (macro-file-exists-exception? _%e141202%_))
            (macro-file-exists-exception? _%exn141200%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn141196%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141196%_))
            (let ((_%e141198%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141196%_ 'exception))))
              (if (macro-file-exists-exception? _%e141198%_)
                  (macro-file-exists-exception-arguments _%e141198%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e141198%_ '())))))
            (if (macro-file-exists-exception? _%exn141196%_)
                (macro-file-exists-exception-arguments _%exn141196%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn141196%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn141190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141190%_))
            (let ((_%e141193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141190%_ 'exception))))
              (if (macro-file-exists-exception? _%e141193%_)
                  (macro-file-exists-exception-procedure _%e141193%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e141193%_ '())))))
            (if (macro-file-exists-exception? _%exn141190%_)
                (macro-file-exists-exception-procedure _%exn141190%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn141190%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn141186%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141186%_))
            (let ((_%e141188%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141186%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e141188%_))
            (macro-fixnum-overflow-exception? _%exn141186%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn141182%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141182%_))
            (let ((_%e141184%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141182%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141184%_)
                  (macro-fixnum-overflow-exception-arguments _%e141184%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e141184%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141182%_)
                (macro-fixnum-overflow-exception-arguments _%exn141182%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn141182%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn141176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141176%_))
            (let ((_%e141179%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141176%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141179%_)
                  (macro-fixnum-overflow-exception-procedure _%e141179%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e141179%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141176%_)
                (macro-fixnum-overflow-exception-procedure _%exn141176%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn141176%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn141170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141170%_))
            (let ((_%e141173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141170%_ 'exception))))
              (macro-heap-overflow-exception? _%e141173%_))
            (macro-heap-overflow-exception? _%exn141170%_))))
    (define inactive-thread-exception?
      (lambda (_%exn141166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141166%_))
            (let ((_%e141168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141166%_ 'exception))))
              (macro-inactive-thread-exception? _%e141168%_))
            (macro-inactive-thread-exception? _%exn141166%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn141162%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141162%_))
            (let ((_%e141164%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141162%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141164%_)
                  (macro-inactive-thread-exception-arguments _%e141164%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e141164%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141162%_)
                (macro-inactive-thread-exception-arguments _%exn141162%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn141162%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn141156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141156%_))
            (let ((_%e141159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141156%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141159%_)
                  (macro-inactive-thread-exception-procedure _%e141159%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e141159%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141156%_)
                (macro-inactive-thread-exception-procedure _%exn141156%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn141156%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn141152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141152%_))
            (let ((_%e141154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141152%_ 'exception))))
              (macro-initialized-thread-exception? _%e141154%_))
            (macro-initialized-thread-exception? _%exn141152%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn141148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141148%_))
            (let ((_%e141150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141148%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141150%_)
                  (macro-initialized-thread-exception-arguments _%e141150%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e141150%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141148%_)
                (macro-initialized-thread-exception-arguments _%exn141148%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn141148%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn141142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141142%_))
            (let ((_%e141145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141142%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141145%_)
                  (macro-initialized-thread-exception-procedure _%e141145%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e141145%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141142%_)
                (macro-initialized-thread-exception-procedure _%exn141142%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn141142%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn141138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141138%_))
            (let ((_%e141140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141138%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e141140%_))
            (macro-invalid-hash-number-exception? _%exn141138%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn141134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141134%_))
            (let ((_%e141136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141134%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141136%_)
                  (macro-invalid-hash-number-exception-arguments _%e141136%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e141136%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141134%_)
                (macro-invalid-hash-number-exception-arguments _%exn141134%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn141134%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn141128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141128%_))
            (let ((_%e141131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141128%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141131%_)
                  (macro-invalid-hash-number-exception-procedure _%e141131%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e141131%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141128%_)
                (macro-invalid-hash-number-exception-procedure _%exn141128%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn141128%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn141124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141124%_))
            (let ((_%e141126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141124%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e141126%_))
            (macro-invalid-utf8-encoding-exception? _%exn141124%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn141120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141120%_))
            (let ((_%e141122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141120%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141122%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e141122%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e141122%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141120%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn141120%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn141120%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn141114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141114%_))
            (let ((_%e141117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141114%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141117%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e141117%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e141117%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141114%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn141114%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn141114%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn141110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141110%_))
            (let ((_%e141112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141110%_ 'exception))))
              (macro-join-timeout-exception? _%e141112%_))
            (macro-join-timeout-exception? _%exn141110%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn141106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141106%_))
            (let ((_%e141108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141106%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141108%_)
                  (macro-join-timeout-exception-arguments _%e141108%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e141108%_ '())))))
            (if (macro-join-timeout-exception? _%exn141106%_)
                (macro-join-timeout-exception-arguments _%exn141106%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn141106%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn141100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141100%_))
            (let ((_%e141103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141100%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141103%_)
                  (macro-join-timeout-exception-procedure _%e141103%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e141103%_ '())))))
            (if (macro-join-timeout-exception? _%exn141100%_)
                (macro-join-timeout-exception-procedure _%exn141100%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn141100%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn141096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141096%_))
            (let ((_%e141098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141096%_ 'exception))))
              (macro-keyword-expected-exception? _%e141098%_))
            (macro-keyword-expected-exception? _%exn141096%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn141092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141092%_))
            (let ((_%e141094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141092%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141094%_)
                  (macro-keyword-expected-exception-arguments _%e141094%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e141094%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141092%_)
                (macro-keyword-expected-exception-arguments _%exn141092%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn141092%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn141086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141086%_))
            (let ((_%e141089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141086%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e141089%_)
                  (macro-keyword-expected-exception-procedure _%e141089%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e141089%_ '())))))
            (if (macro-keyword-expected-exception? _%exn141086%_)
                (macro-keyword-expected-exception-procedure _%exn141086%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn141086%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn141082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141082%_))
            (let ((_%e141084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141082%_ 'exception))))
              (macro-length-mismatch-exception? _%e141084%_))
            (macro-length-mismatch-exception? _%exn141082%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn141078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141078%_))
            (let ((_%e141080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141078%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141080%_)
                  (macro-length-mismatch-exception-arg-id _%e141080%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e141080%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141078%_)
                (macro-length-mismatch-exception-arg-id _%exn141078%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn141078%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn141074%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141074%_))
            (let ((_%e141076%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141074%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141076%_)
                  (macro-length-mismatch-exception-arguments _%e141076%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e141076%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141074%_)
                (macro-length-mismatch-exception-arguments _%exn141074%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn141074%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn141068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141068%_))
            (let ((_%e141071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141068%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e141071%_)
                  (macro-length-mismatch-exception-procedure _%e141071%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e141071%_ '())))))
            (if (macro-length-mismatch-exception? _%exn141068%_)
                (macro-length-mismatch-exception-procedure _%exn141068%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn141068%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn141064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141064%_))
            (let ((_%e141066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141064%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e141066%_))
            (macro-mailbox-receive-timeout-exception? _%exn141064%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn141060%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141060%_))
            (let ((_%e141062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141060%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141062%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e141062%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e141062%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141060%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn141060%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn141060%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn141054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141054%_))
            (let ((_%e141057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141054%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e141057%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e141057%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e141057%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn141054%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn141054%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn141054%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn141050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141050%_))
            (let ((_%e141052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141050%_ 'exception))))
              (macro-module-not-found-exception? _%e141052%_))
            (macro-module-not-found-exception? _%exn141050%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn141046%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141046%_))
            (let ((_%e141048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141046%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141048%_)
                  (macro-module-not-found-exception-arguments _%e141048%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e141048%_ '())))))
            (if (macro-module-not-found-exception? _%exn141046%_)
                (macro-module-not-found-exception-arguments _%exn141046%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn141046%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn141040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141040%_))
            (let ((_%e141043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141040%_ 'exception))))
              (if (macro-module-not-found-exception? _%e141043%_)
                  (macro-module-not-found-exception-procedure _%e141043%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e141043%_ '())))))
            (if (macro-module-not-found-exception? _%exn141040%_)
                (macro-module-not-found-exception-procedure _%exn141040%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn141040%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn141034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141034%_))
            (let ((_%e141037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141034%_ 'exception))))
              (macro-multiple-c-return-exception? _%e141037%_))
            (macro-multiple-c-return-exception? _%exn141034%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn141030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141030%_))
            (let ((_%e141032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141030%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e141032%_))
            (macro-no-such-file-or-directory-exception? _%exn141030%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn141026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141026%_))
            (let ((_%e141028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141026%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141028%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e141028%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e141028%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141026%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn141026%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn141026%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn141020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141020%_))
            (let ((_%e141023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141020%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e141023%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e141023%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e141023%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn141020%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn141020%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn141020%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn141016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141016%_))
            (let ((_%e141018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141016%_ 'exception))))
              (macro-noncontinuable-exception? _%e141018%_))
            (macro-noncontinuable-exception? _%exn141016%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn141010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141010%_))
            (let ((_%e141013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141010%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e141013%_)
                  (macro-noncontinuable-exception-reason _%e141013%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e141013%_ '())))))
            (if (macro-noncontinuable-exception? _%exn141010%_)
                (macro-noncontinuable-exception-reason _%exn141010%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn141010%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn141006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141006%_))
            (let ((_%e141008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141006%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e141008%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn141006%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn141002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141002%_))
            (let ((_%e141004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141002%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e141004%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e141004%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e141004%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn141002%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn141002%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn141002%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn140996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140996%_))
            (let ((_%e140999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140996%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140999%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e140999%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e140999%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140996%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn140996%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn140996%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn140992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140992%_))
            (let ((_%e140994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140992%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e140994%_))
            (macro-nonprocedure-operator-exception? _%exn140992%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn140988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140988%_))
            (let ((_%e140990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140988%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140990%_)
                  (macro-nonprocedure-operator-exception-arguments _%e140990%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e140990%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140988%_)
                (macro-nonprocedure-operator-exception-arguments _%exn140988%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn140988%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn140984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140984%_))
            (let ((_%e140986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140984%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140986%_)
                  (macro-nonprocedure-operator-exception-code _%e140986%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e140986%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140984%_)
                (macro-nonprocedure-operator-exception-code _%exn140984%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn140984%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn140980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140980%_))
            (let ((_%e140982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140980%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140982%_)
                  (macro-nonprocedure-operator-exception-operator _%e140982%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e140982%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140980%_)
                (macro-nonprocedure-operator-exception-operator _%exn140980%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn140980%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn140974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140974%_))
            (let ((_%e140977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140974%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140977%_)
                  (macro-nonprocedure-operator-exception-rte _%e140977%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e140977%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140974%_)
                (macro-nonprocedure-operator-exception-rte _%exn140974%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn140974%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn140970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140970%_))
            (let ((_%e140972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140970%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e140972%_))
            (macro-not-in-compilation-context-exception? _%exn140970%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn140966%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140966%_))
            (let ((_%e140968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140966%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140968%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e140968%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e140968%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140966%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn140966%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn140966%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn140960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140960%_))
            (let ((_%e140963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140960%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140963%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e140963%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e140963%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140960%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn140960%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn140960%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn140956%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140956%_))
            (let ((_%e140958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140956%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e140958%_))
            (macro-number-of-arguments-limit-exception? _%exn140956%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn140952%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140952%_))
            (let ((_%e140954%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140952%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140954%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e140954%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e140954%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140952%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn140952%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn140952%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn140946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140946%_))
            (let ((_%e140949%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140946%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140949%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e140949%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e140949%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140946%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn140946%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn140946%_ '())))))))
    (define os-exception?
      (lambda (_%exn140942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140942%_))
            (let ((_%e140944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140942%_ 'exception))))
              (macro-os-exception? _%e140944%_))
            (macro-os-exception? _%exn140942%_))))
    (define os-exception-arguments
      (lambda (_%exn140938%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140938%_))
            (let ((_%e140940%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140938%_ 'exception))))
              (if (macro-os-exception? _%e140940%_)
                  (macro-os-exception-arguments _%e140940%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e140940%_ '())))))
            (if (macro-os-exception? _%exn140938%_)
                (macro-os-exception-arguments _%exn140938%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn140938%_ '())))))))
    (define os-exception-code
      (lambda (_%exn140934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140934%_))
            (let ((_%e140936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140934%_ 'exception))))
              (if (macro-os-exception? _%e140936%_)
                  (macro-os-exception-code _%e140936%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e140936%_ '())))))
            (if (macro-os-exception? _%exn140934%_)
                (macro-os-exception-code _%exn140934%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn140934%_ '())))))))
    (define os-exception-message
      (lambda (_%exn140930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140930%_))
            (let ((_%e140932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140930%_ 'exception))))
              (if (macro-os-exception? _%e140932%_)
                  (macro-os-exception-message _%e140932%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e140932%_ '())))))
            (if (macro-os-exception? _%exn140930%_)
                (macro-os-exception-message _%exn140930%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn140930%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn140924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140924%_))
            (let ((_%e140927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140924%_ 'exception))))
              (if (macro-os-exception? _%e140927%_)
                  (macro-os-exception-procedure _%e140927%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e140927%_ '())))))
            (if (macro-os-exception? _%exn140924%_)
                (macro-os-exception-procedure _%exn140924%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn140924%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn140920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140920%_))
            (let ((_%e140922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140920%_ 'exception))))
              (macro-permission-denied-exception? _%e140922%_))
            (macro-permission-denied-exception? _%exn140920%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn140916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140916%_))
            (let ((_%e140918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140916%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140918%_)
                  (macro-permission-denied-exception-arguments _%e140918%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e140918%_ '())))))
            (if (macro-permission-denied-exception? _%exn140916%_)
                (macro-permission-denied-exception-arguments _%exn140916%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn140916%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn140910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140910%_))
            (let ((_%e140913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140910%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140913%_)
                  (macro-permission-denied-exception-procedure _%e140913%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e140913%_ '())))))
            (if (macro-permission-denied-exception? _%exn140910%_)
                (macro-permission-denied-exception-procedure _%exn140910%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn140910%_ '())))))))
    (define range-exception?
      (lambda (_%exn140906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140906%_))
            (let ((_%e140908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140906%_ 'exception))))
              (macro-range-exception? _%e140908%_))
            (macro-range-exception? _%exn140906%_))))
    (define range-exception-arg-id
      (lambda (_%exn140902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140902%_))
            (let ((_%e140904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140902%_ 'exception))))
              (if (macro-range-exception? _%e140904%_)
                  (macro-range-exception-arg-id _%e140904%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e140904%_ '())))))
            (if (macro-range-exception? _%exn140902%_)
                (macro-range-exception-arg-id _%exn140902%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn140902%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn140898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140898%_))
            (let ((_%e140900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140898%_ 'exception))))
              (if (macro-range-exception? _%e140900%_)
                  (macro-range-exception-arguments _%e140900%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e140900%_ '())))))
            (if (macro-range-exception? _%exn140898%_)
                (macro-range-exception-arguments _%exn140898%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn140898%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn140892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140892%_))
            (let ((_%e140895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140892%_ 'exception))))
              (if (macro-range-exception? _%e140895%_)
                  (macro-range-exception-procedure _%e140895%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e140895%_ '())))))
            (if (macro-range-exception? _%exn140892%_)
                (macro-range-exception-procedure _%exn140892%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn140892%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn140888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140888%_))
            (let ((_%e140890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140888%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e140890%_))
            (macro-rpc-remote-error-exception? _%exn140888%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn140884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140884%_))
            (let ((_%e140886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140884%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140886%_)
                  (macro-rpc-remote-error-exception-arguments _%e140886%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e140886%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140884%_)
                (macro-rpc-remote-error-exception-arguments _%exn140884%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn140884%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn140880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140880%_))
            (let ((_%e140882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140880%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140882%_)
                  (macro-rpc-remote-error-exception-message _%e140882%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e140882%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140880%_)
                (macro-rpc-remote-error-exception-message _%exn140880%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn140880%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn140874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140874%_))
            (let ((_%e140877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140874%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140877%_)
                  (macro-rpc-remote-error-exception-procedure _%e140877%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e140877%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140874%_)
                (macro-rpc-remote-error-exception-procedure _%exn140874%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn140874%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn140870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140870%_))
            (let ((_%e140872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140870%_ 'exception))))
              (macro-scheduler-exception? _%e140872%_))
            (macro-scheduler-exception? _%exn140870%_))))
    (define scheduler-exception-reason
      (lambda (_%exn140864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140864%_))
            (let ((_%e140867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140864%_ 'exception))))
              (if (macro-scheduler-exception? _%e140867%_)
                  (macro-scheduler-exception-reason _%e140867%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e140867%_ '())))))
            (if (macro-scheduler-exception? _%exn140864%_)
                (macro-scheduler-exception-reason _%exn140864%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn140864%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn140860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140860%_))
            (let ((_%e140862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140860%_ 'exception))))
              (macro-sfun-conversion-exception? _%e140862%_))
            (macro-sfun-conversion-exception? _%exn140860%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn140856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140856%_))
            (let ((_%e140858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140856%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140858%_)
                  (macro-sfun-conversion-exception-arguments _%e140858%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e140858%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140856%_)
                (macro-sfun-conversion-exception-arguments _%exn140856%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn140856%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn140852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140852%_))
            (let ((_%e140854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140852%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140854%_)
                  (macro-sfun-conversion-exception-code _%e140854%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e140854%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140852%_)
                (macro-sfun-conversion-exception-code _%exn140852%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn140852%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn140848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140848%_))
            (let ((_%e140850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140848%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140850%_)
                  (macro-sfun-conversion-exception-message _%e140850%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e140850%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140848%_)
                (macro-sfun-conversion-exception-message _%exn140848%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn140848%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn140842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140842%_))
            (let ((_%e140845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140842%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140845%_)
                  (macro-sfun-conversion-exception-procedure _%e140845%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e140845%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140842%_)
                (macro-sfun-conversion-exception-procedure _%exn140842%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn140842%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn140836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140836%_))
            (let ((_%e140839%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140836%_ 'exception))))
              (macro-stack-overflow-exception? _%e140839%_))
            (macro-stack-overflow-exception? _%exn140836%_))))
    (define started-thread-exception?
      (lambda (_%exn140832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140832%_))
            (let ((_%e140834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140832%_ 'exception))))
              (macro-started-thread-exception? _%e140834%_))
            (macro-started-thread-exception? _%exn140832%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn140828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140828%_))
            (let ((_%e140830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140828%_ 'exception))))
              (if (macro-started-thread-exception? _%e140830%_)
                  (macro-started-thread-exception-arguments _%e140830%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e140830%_ '())))))
            (if (macro-started-thread-exception? _%exn140828%_)
                (macro-started-thread-exception-arguments _%exn140828%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn140828%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn140822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140822%_))
            (let ((_%e140825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140822%_ 'exception))))
              (if (macro-started-thread-exception? _%e140825%_)
                  (macro-started-thread-exception-procedure _%e140825%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e140825%_ '())))))
            (if (macro-started-thread-exception? _%exn140822%_)
                (macro-started-thread-exception-procedure _%exn140822%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn140822%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn140818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140818%_))
            (let ((_%e140820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140818%_ 'exception))))
              (macro-terminated-thread-exception? _%e140820%_))
            (macro-terminated-thread-exception? _%exn140818%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn140814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140814%_))
            (let ((_%e140816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140814%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140816%_)
                  (macro-terminated-thread-exception-arguments _%e140816%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e140816%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140814%_)
                (macro-terminated-thread-exception-arguments _%exn140814%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn140814%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn140808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140808%_))
            (let ((_%e140811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140808%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140811%_)
                  (macro-terminated-thread-exception-procedure _%e140811%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e140811%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140808%_)
                (macro-terminated-thread-exception-procedure _%exn140808%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn140808%_ '())))))))
    (define type-exception?
      (lambda (_%exn140804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140804%_))
            (let ((_%e140806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140804%_ 'exception))))
              (macro-type-exception? _%e140806%_))
            (macro-type-exception? _%exn140804%_))))
    (define type-exception-arg-id
      (lambda (_%exn140800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140800%_))
            (let ((_%e140802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140800%_ 'exception))))
              (if (macro-type-exception? _%e140802%_)
                  (macro-type-exception-arg-id _%e140802%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e140802%_ '())))))
            (if (macro-type-exception? _%exn140800%_)
                (macro-type-exception-arg-id _%exn140800%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn140800%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn140796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140796%_))
            (let ((_%e140798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140796%_ 'exception))))
              (if (macro-type-exception? _%e140798%_)
                  (macro-type-exception-arguments _%e140798%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e140798%_ '())))))
            (if (macro-type-exception? _%exn140796%_)
                (macro-type-exception-arguments _%exn140796%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn140796%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn140792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140792%_))
            (let ((_%e140794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140792%_ 'exception))))
              (if (macro-type-exception? _%e140794%_)
                  (macro-type-exception-procedure _%e140794%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e140794%_ '())))))
            (if (macro-type-exception? _%exn140792%_)
                (macro-type-exception-procedure _%exn140792%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn140792%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn140786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140786%_))
            (let ((_%e140789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140786%_ 'exception))))
              (if (macro-type-exception? _%e140789%_)
                  (macro-type-exception-type-id _%e140789%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e140789%_ '())))))
            (if (macro-type-exception? _%exn140786%_)
                (macro-type-exception-type-id _%exn140786%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn140786%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn140782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140782%_))
            (let ((_%e140784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140782%_ 'exception))))
              (macro-unbound-global-exception? _%e140784%_))
            (macro-unbound-global-exception? _%exn140782%_))))
    (define unbound-global-exception-code
      (lambda (_%exn140778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140778%_))
            (let ((_%e140780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140778%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140780%_)
                  (macro-unbound-global-exception-code _%e140780%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e140780%_ '())))))
            (if (macro-unbound-global-exception? _%exn140778%_)
                (macro-unbound-global-exception-code _%exn140778%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn140778%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn140774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140774%_))
            (let ((_%e140776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140774%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140776%_)
                  (macro-unbound-global-exception-rte _%e140776%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e140776%_ '())))))
            (if (macro-unbound-global-exception? _%exn140774%_)
                (macro-unbound-global-exception-rte _%exn140774%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn140774%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn140768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140768%_))
            (let ((_%e140771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140768%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140771%_)
                  (macro-unbound-global-exception-variable _%e140771%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e140771%_ '())))))
            (if (macro-unbound-global-exception? _%exn140768%_)
                (macro-unbound-global-exception-variable _%exn140768%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn140768%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn140764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140764%_))
            (let ((_%e140766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140764%_ 'exception))))
              (macro-unbound-key-exception? _%e140766%_))
            (macro-unbound-key-exception? _%exn140764%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn140760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140760%_))
            (let ((_%e140762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140760%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140762%_)
                  (macro-unbound-key-exception-arguments _%e140762%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e140762%_ '())))))
            (if (macro-unbound-key-exception? _%exn140760%_)
                (macro-unbound-key-exception-arguments _%exn140760%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn140760%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn140754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140754%_))
            (let ((_%e140757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140754%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140757%_)
                  (macro-unbound-key-exception-procedure _%e140757%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e140757%_ '())))))
            (if (macro-unbound-key-exception? _%exn140754%_)
                (macro-unbound-key-exception-procedure _%exn140754%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn140754%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn140750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140750%_))
            (let ((_%e140752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140750%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e140752%_))
            (macro-unbound-os-environment-variable-exception? _%exn140750%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn140746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140746%_))
            (let ((_%e140748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140746%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140748%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e140748%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e140748%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140746%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn140746%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn140746%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn140740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140740%_))
            (let ((_%e140743%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140740%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140743%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e140743%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e140743%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140740%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn140740%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn140740%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn140736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140736%_))
            (let ((_%e140738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140736%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e140738%_))
            (macro-unbound-serial-number-exception? _%exn140736%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn140732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140732%_))
            (let ((_%e140734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140732%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140734%_)
                  (macro-unbound-serial-number-exception-arguments _%e140734%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e140734%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140732%_)
                (macro-unbound-serial-number-exception-arguments _%exn140732%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn140732%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn140726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140726%_))
            (let ((_%e140729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140726%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140729%_)
                  (macro-unbound-serial-number-exception-procedure _%e140729%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e140729%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140726%_)
                (macro-unbound-serial-number-exception-procedure _%exn140726%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn140726%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn140722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140722%_))
            (let ((_%e140724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140722%_ 'exception))))
              (macro-uncaught-exception? _%e140724%_))
            (macro-uncaught-exception? _%exn140722%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn140718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140718%_))
            (let ((_%e140720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140718%_ 'exception))))
              (if (macro-uncaught-exception? _%e140720%_)
                  (macro-uncaught-exception-arguments _%e140720%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e140720%_ '())))))
            (if (macro-uncaught-exception? _%exn140718%_)
                (macro-uncaught-exception-arguments _%exn140718%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn140718%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn140714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140714%_))
            (let ((_%e140716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140714%_ 'exception))))
              (if (macro-uncaught-exception? _%e140716%_)
                  (macro-uncaught-exception-procedure _%e140716%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e140716%_ '())))))
            (if (macro-uncaught-exception? _%exn140714%_)
                (macro-uncaught-exception-procedure _%exn140714%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn140714%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn140708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140708%_))
            (let ((_%e140711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140708%_ 'exception))))
              (if (macro-uncaught-exception? _%e140711%_)
                  (macro-uncaught-exception-reason _%e140711%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e140711%_ '())))))
            (if (macro-uncaught-exception? _%exn140708%_)
                (macro-uncaught-exception-reason _%exn140708%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn140708%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn140704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140704%_))
            (let ((_%e140706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140704%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e140706%_))
            (macro-uninitialized-thread-exception? _%exn140704%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn140700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140700%_))
            (let ((_%e140702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140700%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140702%_)
                  (macro-uninitialized-thread-exception-arguments _%e140702%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e140702%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140700%_)
                (macro-uninitialized-thread-exception-arguments _%exn140700%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn140700%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn140694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140694%_))
            (let ((_%e140697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140694%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140697%_)
                  (macro-uninitialized-thread-exception-procedure _%e140697%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e140697%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140694%_)
                (macro-uninitialized-thread-exception-procedure _%exn140694%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn140694%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn140690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140690%_))
            (let ((_%e140692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140690%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e140692%_))
            (macro-unknown-keyword-argument-exception? _%exn140690%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn140686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140686%_))
            (let ((_%e140688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140686%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140688%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e140688%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e140688%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140686%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn140686%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn140686%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn140680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140680%_))
            (let ((_%e140683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140680%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140683%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e140683%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e140683%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140680%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn140680%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn140680%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn140676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140676%_))
            (let ((_%e140678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140676%_ 'exception))))
              (macro-unterminated-process-exception? _%e140678%_))
            (macro-unterminated-process-exception? _%exn140676%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn140672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140672%_))
            (let ((_%e140674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140672%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140674%_)
                  (macro-unterminated-process-exception-arguments _%e140674%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e140674%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140672%_)
                (macro-unterminated-process-exception-arguments _%exn140672%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn140672%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn140666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140666%_))
            (let ((_%e140669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140666%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140669%_)
                  (macro-unterminated-process-exception-procedure _%e140669%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e140669%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140666%_)
                (macro-unterminated-process-exception-procedure _%exn140666%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn140666%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn140662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140662%_))
            (let ((_%e140664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140662%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e140664%_))
            (macro-wrong-number-of-arguments-exception? _%exn140662%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn140658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140658%_))
            (let ((_%e140660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140658%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140660%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e140660%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e140660%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140658%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn140658%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn140658%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn140652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140652%_))
            (let ((_%e140655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140652%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140655%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e140655%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e140655%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140652%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn140652%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn140652%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn140648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140648%_))
            (let ((_%e140650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140648%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e140650%_))
            (macro-wrong-number-of-values-exception? _%exn140648%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn140644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140644%_))
            (let ((_%e140646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140644%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140646%_)
                  (macro-wrong-number-of-values-exception-code _%e140646%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e140646%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140644%_)
                (macro-wrong-number-of-values-exception-code _%exn140644%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn140644%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn140640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140640%_))
            (let ((_%e140642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140640%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140642%_)
                  (macro-wrong-number-of-values-exception-rte _%e140642%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e140642%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140640%_)
                (macro-wrong-number-of-values-exception-rte _%exn140640%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn140640%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn140634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140634%_))
            (let ((_%e140637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140634%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140637%_)
                  (macro-wrong-number-of-values-exception-vals _%e140637%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e140637%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140634%_)
                (macro-wrong-number-of-values-exception-vals _%exn140634%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn140634%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn140628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140628%_))
            (let ((_%e140631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140628%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e140631%_))
            (macro-wrong-processor-c-return-exception? _%exn140628%_))))))
