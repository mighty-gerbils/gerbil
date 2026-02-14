(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771101397)
  (begin
    (define Exception::t
      (let ((__tmp142116 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp142116
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args142034%_
        (apply make-instance Exception::t _%$args142034%_)))
    (define StackTrace::t
      (let ((__tmp142117 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp142117
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args142031%_
        (apply make-instance StackTrace::t _%$args142031%_)))
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
      (let ((__tmp142118 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp142118
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args142028%_ (apply make-instance Error::t _%$args142028%_)))
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
      (let ((__tmp142119 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp142119
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args142025%_
        (apply make-instance ContractViolation::t _%$args142025%_)))
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
      (let ((__tmp142120 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp142120
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args142022%_
        (apply make-instance RuntimeException::t _%$args142022%_)))
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
      (lambda (_%exn142017%_ _%continue142018%_)
        (let ((_%exn142020%_ (wrap-runtime-exception _%exn142017%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn142020%_ _%continue142018%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn142013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn142013%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn142013%_ 'continuation))
                '#!void
                (let ((__tmp142121
                       (lambda (_%cont142015%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn142013%_
                            'continuation
                            _%cont142015%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp142121)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn142013%_))))
    (define error
      (lambda (_%message142010%_ . _%irritants142011%_)
        (raise (let ((__obj142113
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj142113
                  _%message142010%_
                  'irritants:
                  _%irritants142011%_)
                 __obj142113))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords141985%_
               _%ctx141980141986%_
               _%contract-expr141981141987%_
               _%value141982141988%_
               _%message141989%_)
        (let* ((_%ctx141991%_
                (if (eq? _%ctx141980141986%_ absent-value)
                    '#f
                    _%ctx141980141986%_))
               (_%contract-expr141993%_
                (if (eq? _%contract-expr141981141987%_ absent-value)
                    '#f
                    _%contract-expr141981141987%_))
               (_%value141995%_
                (if (eq? _%value141982141988%_ absent-value)
                    '#f
                    _%value141982141988%_)))
          (raise (let ((__obj142114
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj142114
                    _%message141989%_
                    'where:
                    _%ctx141991%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr141993%_
                                (cons 'value: (cons _%value141995%_ '())))))
                   __obj142114)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords142000%_ . _%args142001%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords142000%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142000%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142000%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords142000%_
                  'value:
                  absent-value))
               _%args142001%_)))
    (define __raise-contract-violation-error
      (lambda _%args141983142007%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args141983142007%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler141954%_ _%thunk141955%_)
        (let* ((_%handler141958%_ _%handler141954%_)
               (_%thunk141966%_ _%thunk141955%_)
               (__tmp142122
                (lambda (_%exn141975%_)
                  (let ((_%exn141977%_ (wrap-runtime-exception _%exn141975%_)))
                    (declare (not safe))
                    (_%handler141958%_ _%exn141977%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp142122 _%thunk141966%_))))
    (define with-exception-handler
      (lambda (_%handler139989%_ _%thunk139990%_)
        (if (procedure? _%handler139989%_)
            (let ((_%handler139994%_ _%handler139989%_))
              (if (procedure? _%thunk139990%_)
                  (let ((_%thunk140004%_ _%thunk139990%_))
                    (__with-exception-handler
                     _%handler139994%_
                     _%thunk140004%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk139990%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler139989%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler141896%_ _%thunk141897%_)
        (let* ((_%handler141900%_ _%handler141896%_)
               (_%thunk141908%_ _%thunk141897%_)
               (__tmp142123
                (lambda (_%cont141917%_)
                  (let* ((_%handler141921%_
                          (lambda (_%exn141919%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont141917%_
                               _%handler141900%_
                               _%exn141919%_))))
                         (_%thunk141924%_ _%thunk141908%_)
                         (_%handler141929%_ _%handler141921%_)
                         (_%thunk141944%_ _%thunk141924%_))
                    (__with-exception-handler
                     _%handler141929%_
                     _%thunk141944%_)))))
          (declare (not safe))
          (##continuation-capture __tmp142123))))
    (define with-catch
      (lambda (_%handler140134%_ _%thunk140135%_)
        (if (procedure? _%handler140134%_)
            (let ((_%handler140139%_ _%handler140134%_))
              (if (procedure? _%thunk140135%_)
                  (let ((_%thunk140149%_ _%thunk140135%_))
                    (__with-catch _%handler140139%_ _%thunk140149%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk140135%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler140134%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn141883%_)
        (if (or (heap-overflow-exception? _%exn141883%_)
                (stack-overflow-exception? _%exn141883%_))
            _%exn141883%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn141883%_))
                _%exn141883%_
                (if (macro-exception? _%exn141883%_)
                    (let ((_%rte141891%_
                           (let ((__obj142115
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj142115
                                _%exn141883%_
                                '2
                                '#f
                                '#f))
                             __obj142115)))
                      (let ((__tmp142124
                             (lambda (_%cont141893%_)
                               (let ((__tmp142125
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont141893%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte141891%_
                                  'continuation
                                  __tmp142125)))))
                        (declare (not safe))
                        (##continuation-capture __tmp142124))
                      _%rte141891%_)
                    _%exn141883%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj141878%_)
        (let ((_%$e141880%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj141878%_))))
          (if _%$e141880%_ _%$e141880%_ (error-exception? _%obj141878%_)))))
    (define error-message
      (lambda (_%obj141837%_)
        (let ((_%$e141873%_
               (let* ((_%obj141839%_ _%obj141837%_)
                      (_%slot141842%_ 'message)
                      (_%E141845%_ false)
                      (_%slot141850%_ _%slot141842%_)
                      (_%E141863%_ _%E141845%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj141839%_ _%slot141850%_ _%E141863%_))))
          (if _%$e141873%_
              _%$e141873%_
              (if (error-exception? _%obj141837%_)
                  (error-exception-message _%obj141837%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj141832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141832%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141832%_ 'irritants))
            (if (error-exception? _%obj141832%_)
                (error-exception-parameters _%obj141832%_)
                '#f))))
    (define error-trace
      (lambda (_%obj141830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj141830%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj141830%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e141791%_ _%port141792%_)
        (let ((_%$e141814%_
               (let* ((_%obj141794%_ _%e141791%_)
                      (_%id141797%_ 'display-exception)
                      (_%id141802%_ _%id141797%_))
                 (declare (not safe))
                 (__method-ref _%obj141794%_ _%id141802%_))))
          (if _%$e141814%_
              ((lambda (_%f141817%_) (_%f141817%_ _%e141791%_ _%port141792%_))
               _%$e141814%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e141791%_ _%port141792%_))))))
    (define display-exception__0
      (lambda (_%e141823%_)
        (let ((_%port141825%_ (current-error-port)))
          (display-exception__% _%e141823%_ _%port141825%_))))
    (define display-exception
      (lambda _g142126_
        (let ((_g142127_ (let () (declare (not safe)) (##length _g142126_))))
          (cond ((let () (declare (not safe)) (##fx= _g142127_ 1))
                 (apply display-exception__0 _g142126_))
                ((let () (declare (not safe)) (##fx= _g142127_ 2))
                 (apply display-exception__% _g142126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g142126_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self141769%_ _%message141770%_ . _%rest141771%_)
        (let* ((_%self141774%_ _%self141769%_)
               (_%message141788%_
                (if (string? _%message141770%_)
                    _%message141770%_
                    (call-with-output-string
                     '""
                     (lambda (_%g141783141785%_)
                       (display _%message141770%_ _%g141783141785%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self141774%_ 'message _%message141788%_))
          (apply class-instance-init! _%self141774%_ _%rest141771%_))))
    (define Error:::init!::specialize
      (lambda (__klass142036 __method-table142037)
        (let ((__message142038
               (let ((__slot142039
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142036 'message))))
                 (if __slot142039
                     __slot142039
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self141769%_ _%message141770%_ . _%rest141771%_)
            (let* ((_%self141774%_ _%self141769%_)
                   (_%message141788%_
                    (if (string? _%message141770%_)
                        _%message141770%_
                        (call-with-output-string
                         '""
                         (lambda (_%g141783141785%_)
                           (display _%message141770%_ _%g141783141785%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self141774%_
                 _%message141788%_
                 __message142038
                 '#f
                 '#f))
              (apply class-instance-init! _%self141774%_ _%rest141771%_))))))
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
      (lambda (_%self141474%_ _%port141475%_)
        (let ((_%self141478%_ _%self141474%_))
          (let ((_%tmp-port141488%_ (open-output-string))
                (_%display-error-newline141489%_
                 (> (output-port-column _%port141475%_) '0)))
            (fix-port-width! _%tmp-port141488%_)
            (let ((__tmp142128
                   (lambda ()
                     (if _%display-error-newline141489%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e141492%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141478%_ 'where))))
                       (if _%$e141492%_ (display _%$e141492%_) (display '"?")))
                     (let ((__tmp142129
                            (let ((__tmp142130
                                   (let ((_%obj141496%_ _%self141478%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj141496%_))
                                         (let ((_%obj141501%_ _%obj141496%_))
                                           (declare (not safe))
                                           (__object-class _%obj141501%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj141496%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp142130))))
                       (declare (not safe))
                       (display* '" [" __tmp142129 '"]: "))
                     (let ((__tmp142131
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141478%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp142131))
                     (let ((_%irritants141516%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self141478%_ 'irritants))))
                       (if (null? _%irritants141516%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj141518%_)
                                (if (u8vector? _%obj141518%_)
                                    (let ((__tmp142132
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj141518%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp142132))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj141518%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants141516%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont141519141521%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self141478%_
                                   'continuation))))
                           (if _%cont141519141521%_
                               (let ((_%cont141523%_ _%cont141519141521%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont141523%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp142128
               current-output-port
               _%tmp-port141488%_))
            (let ((__tmp142133 (get-output-string _%tmp-port141488%_)))
              (declare (not safe))
              (##write-string __tmp142133 _%port141475%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass142040 __method-table142041)
        (let ((__continuation142042
               (let ((__slot142046
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142040 'continuation))))
                 (if __slot142046
                     __slot142046
                     (error '"Unknown slot" 'continuation))))
              (__message142043
               (let ((__slot142047
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142040 'message))))
                 (if __slot142047
                     __slot142047
                     (error '"Unknown slot" 'message))))
              (__irritants142044
               (let ((__slot142048
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142040 'irritants))))
                 (if __slot142048
                     __slot142048
                     (error '"Unknown slot" 'irritants))))
              (__where142045
               (let ((__slot142049
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142040 'where))))
                 (if __slot142049
                     __slot142049
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self141474%_ _%port141475%_)
            (let ((_%self141478%_ _%self141474%_))
              (let ((_%tmp-port141488%_ (open-output-string))
                    (_%display-error-newline141489%_
                     (> (output-port-column _%port141475%_) '0)))
                (fix-port-width! _%tmp-port141488%_)
                (let ((__tmp142134
                       (lambda ()
                         (if _%display-error-newline141489%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e141492%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141478%_
                                   __where142045
                                   '#f
                                   '#f))))
                           (if _%$e141492%_
                               (display _%$e141492%_)
                               (display '"?")))
                         (let ((__tmp142135
                                (let ((__tmp142136
                                       (let ((_%obj141496%_ _%self141478%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj141496%_))
                                             (let ((_%obj141501%_
                                                    _%obj141496%_))
                                               (declare (not safe))
                                               (__object-class _%obj141501%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj141496%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp142136))))
                           (declare (not safe))
                           (display* '" [" __tmp142135 '"]: "))
                         (let ((__tmp142137
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141478%_
                                   __message142043
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp142137))
                         (let ((_%irritants141516%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self141478%_
                                   __irritants142044
                                   '#f
                                   '#f))))
                           (if (null? _%irritants141516%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj141518%_)
                                    (if (u8vector? _%obj141518%_)
                                        (let ((__tmp142138
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj141518%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp142138))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj141518%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants141516%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont141519141521%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self141478%_
                                       __continuation142042
                                       '#f
                                       '#f))))
                               (if _%cont141519141521%_
                                   (let ((_%cont141523%_ _%cont141519141521%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont141523%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp142134
                   current-output-port
                   _%tmp-port141488%_))
                (let ((__tmp142139 (get-output-string _%tmp-port141488%_)))
                  (declare (not safe))
                  (##write-string __tmp142139 _%port141475%_))))))))
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
      (lambda (_%self141331%_ _%port141332%_)
        (let* ((_%self141335%_ _%self141331%_)
               (_%tmp-port141345%_ (open-output-string)))
          (fix-port-width! _%tmp-port141345%_)
          (let ((__tmp142140
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self141335%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp142140 _%tmp-port141345%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont141346141348%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self141335%_ 'continuation))))
                (if _%cont141346141348%_
                    (let ((_%cont141350%_ _%cont141346141348%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port141345%_)
                      (newline _%tmp-port141345%_)
                      (display-continuation-backtrace
                       _%cont141350%_
                       _%tmp-port141345%_))
                    '#f))
              '#!void)
          (let ((__tmp142141 (get-output-string _%tmp-port141345%_)))
            (declare (not safe))
            (##write-string __tmp142141 _%port141332%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass142050 __method-table142051)
        (let ((__continuation142052
               (let ((__slot142054
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142050 'continuation))))
                 (if __slot142054
                     __slot142054
                     (error '"Unknown slot" 'continuation))))
              (__exception142053
               (let ((__slot142055
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass142050 'exception))))
                 (if __slot142055
                     __slot142055
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self141331%_ _%port141332%_)
            (let* ((_%self141335%_ _%self141331%_)
                   (_%tmp-port141345%_ (open-output-string)))
              (fix-port-width! _%tmp-port141345%_)
              (let ((__tmp142142
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self141335%_
                        __exception142053
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp142142 _%tmp-port141345%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont141346141348%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self141335%_
                            __continuation142052
                            '#f
                            '#f))))
                    (if _%cont141346141348%_
                        (let ((_%cont141350%_ _%cont141346141348%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port141345%_)
                          (newline _%tmp-port141345%_)
                          (display-continuation-backtrace
                           _%cont141350%_
                           _%tmp-port141345%_))
                        '#f))
                  '#!void)
              (let ((__tmp142143 (get-output-string _%tmp-port141345%_)))
                (declare (not safe))
                (##write-string __tmp142143 _%port141332%_)))))))
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
      (lambda (_%port141203%_)
        (if (macro-character-port? _%port141203%_)
            (let ((_%old-width141205%_
                   (macro-character-port-output-width _%port141203%_)))
              (macro-character-port-output-width-set!
               _%port141203%_
               (lambda (_%port141207%_) '256))
              _%old-width141205%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port141200%_ _%old-width141201%_)
        (if (macro-character-port? _%port141200%_)
            (macro-character-port-output-width-set!
             _%port141200%_
             _%old-width141201%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e141198%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e141198%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn141192%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141192%_))
            (let ((_%e141195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141192%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e141195%_))
            (macro-abandoned-mutex-exception? _%exn141192%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn141188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141188%_))
            (let ((_%e141190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141188%_ 'exception))))
              (macro-cfun-conversion-exception? _%e141190%_))
            (macro-cfun-conversion-exception? _%exn141188%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn141184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141184%_))
            (let ((_%e141186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141184%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141186%_)
                  (macro-cfun-conversion-exception-arguments _%e141186%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e141186%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141184%_)
                (macro-cfun-conversion-exception-arguments _%exn141184%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn141184%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn141180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141180%_))
            (let ((_%e141182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141180%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141182%_)
                  (macro-cfun-conversion-exception-code _%e141182%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e141182%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141180%_)
                (macro-cfun-conversion-exception-code _%exn141180%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn141180%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn141176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141176%_))
            (let ((_%e141178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141176%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141178%_)
                  (macro-cfun-conversion-exception-message _%e141178%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e141178%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141176%_)
                (macro-cfun-conversion-exception-message _%exn141176%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn141176%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn141170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141170%_))
            (let ((_%e141173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141170%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e141173%_)
                  (macro-cfun-conversion-exception-procedure _%e141173%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e141173%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn141170%_)
                (macro-cfun-conversion-exception-procedure _%exn141170%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn141170%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn141166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141166%_))
            (let ((_%e141168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141166%_ 'exception))))
              (macro-datum-parsing-exception? _%e141168%_))
            (macro-datum-parsing-exception? _%exn141166%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn141162%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141162%_))
            (let ((_%e141164%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141162%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141164%_)
                  (macro-datum-parsing-exception-kind _%e141164%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e141164%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141162%_)
                (macro-datum-parsing-exception-kind _%exn141162%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn141162%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn141158%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141158%_))
            (let ((_%e141160%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141158%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141160%_)
                  (macro-datum-parsing-exception-parameters _%e141160%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e141160%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141158%_)
                (macro-datum-parsing-exception-parameters _%exn141158%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn141158%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn141152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141152%_))
            (let ((_%e141155%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141152%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e141155%_)
                  (macro-datum-parsing-exception-readenv _%e141155%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e141155%_ '())))))
            (if (macro-datum-parsing-exception? _%exn141152%_)
                (macro-datum-parsing-exception-readenv _%exn141152%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn141152%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn141146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141146%_))
            (let ((_%e141149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141146%_ 'exception))))
              (macro-deadlock-exception? _%e141149%_))
            (macro-deadlock-exception? _%exn141146%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn141142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141142%_))
            (let ((_%e141144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141142%_ 'exception))))
              (macro-divide-by-zero-exception? _%e141144%_))
            (macro-divide-by-zero-exception? _%exn141142%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn141138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141138%_))
            (let ((_%e141140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141138%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141140%_)
                  (macro-divide-by-zero-exception-arguments _%e141140%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e141140%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141138%_)
                (macro-divide-by-zero-exception-arguments _%exn141138%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn141138%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn141132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141132%_))
            (let ((_%e141135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141132%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e141135%_)
                  (macro-divide-by-zero-exception-procedure _%e141135%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e141135%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn141132%_)
                (macro-divide-by-zero-exception-procedure _%exn141132%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn141132%_ '())))))))
    (define error-exception?
      (lambda (_%exn141128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141128%_))
            (let ((_%e141130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141128%_ 'exception))))
              (macro-error-exception? _%e141130%_))
            (macro-error-exception? _%exn141128%_))))
    (define error-exception-message
      (lambda (_%exn141124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141124%_))
            (let ((_%e141126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141124%_ 'exception))))
              (if (macro-error-exception? _%e141126%_)
                  (macro-error-exception-message _%e141126%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e141126%_ '())))))
            (if (macro-error-exception? _%exn141124%_)
                (macro-error-exception-message _%exn141124%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn141124%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn141118%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141118%_))
            (let ((_%e141121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141118%_ 'exception))))
              (if (macro-error-exception? _%e141121%_)
                  (macro-error-exception-parameters _%e141121%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e141121%_ '())))))
            (if (macro-error-exception? _%exn141118%_)
                (macro-error-exception-parameters _%exn141118%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn141118%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn141114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141114%_))
            (let ((_%e141116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141114%_ 'exception))))
              (macro-expression-parsing-exception? _%e141116%_))
            (macro-expression-parsing-exception? _%exn141114%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn141110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141110%_))
            (let ((_%e141112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141110%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141112%_)
                  (macro-expression-parsing-exception-kind _%e141112%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e141112%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141110%_)
                (macro-expression-parsing-exception-kind _%exn141110%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn141110%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn141106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141106%_))
            (let ((_%e141108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141106%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141108%_)
                  (macro-expression-parsing-exception-parameters _%e141108%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e141108%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141106%_)
                (macro-expression-parsing-exception-parameters _%exn141106%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn141106%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn141100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141100%_))
            (let ((_%e141103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141100%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e141103%_)
                  (macro-expression-parsing-exception-source _%e141103%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e141103%_ '())))))
            (if (macro-expression-parsing-exception? _%exn141100%_)
                (macro-expression-parsing-exception-source _%exn141100%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn141100%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn141096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141096%_))
            (let ((_%e141098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141096%_ 'exception))))
              (macro-file-exists-exception? _%e141098%_))
            (macro-file-exists-exception? _%exn141096%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn141092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141092%_))
            (let ((_%e141094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141092%_ 'exception))))
              (if (macro-file-exists-exception? _%e141094%_)
                  (macro-file-exists-exception-arguments _%e141094%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e141094%_ '())))))
            (if (macro-file-exists-exception? _%exn141092%_)
                (macro-file-exists-exception-arguments _%exn141092%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn141092%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn141086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141086%_))
            (let ((_%e141089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141086%_ 'exception))))
              (if (macro-file-exists-exception? _%e141089%_)
                  (macro-file-exists-exception-procedure _%e141089%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e141089%_ '())))))
            (if (macro-file-exists-exception? _%exn141086%_)
                (macro-file-exists-exception-procedure _%exn141086%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn141086%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn141082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141082%_))
            (let ((_%e141084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141082%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e141084%_))
            (macro-fixnum-overflow-exception? _%exn141082%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn141078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141078%_))
            (let ((_%e141080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141078%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141080%_)
                  (macro-fixnum-overflow-exception-arguments _%e141080%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e141080%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141078%_)
                (macro-fixnum-overflow-exception-arguments _%exn141078%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn141078%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn141072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141072%_))
            (let ((_%e141075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141072%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e141075%_)
                  (macro-fixnum-overflow-exception-procedure _%e141075%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e141075%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn141072%_)
                (macro-fixnum-overflow-exception-procedure _%exn141072%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn141072%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn141066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141066%_))
            (let ((_%e141069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141066%_ 'exception))))
              (macro-heap-overflow-exception? _%e141069%_))
            (macro-heap-overflow-exception? _%exn141066%_))))
    (define inactive-thread-exception?
      (lambda (_%exn141062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141062%_))
            (let ((_%e141064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141062%_ 'exception))))
              (macro-inactive-thread-exception? _%e141064%_))
            (macro-inactive-thread-exception? _%exn141062%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn141058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141058%_))
            (let ((_%e141060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141058%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141060%_)
                  (macro-inactive-thread-exception-arguments _%e141060%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e141060%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141058%_)
                (macro-inactive-thread-exception-arguments _%exn141058%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn141058%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn141052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141052%_))
            (let ((_%e141055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141052%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e141055%_)
                  (macro-inactive-thread-exception-procedure _%e141055%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e141055%_ '())))))
            (if (macro-inactive-thread-exception? _%exn141052%_)
                (macro-inactive-thread-exception-procedure _%exn141052%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn141052%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn141048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141048%_))
            (let ((_%e141050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141048%_ 'exception))))
              (macro-initialized-thread-exception? _%e141050%_))
            (macro-initialized-thread-exception? _%exn141048%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn141044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141044%_))
            (let ((_%e141046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141044%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141046%_)
                  (macro-initialized-thread-exception-arguments _%e141046%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e141046%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141044%_)
                (macro-initialized-thread-exception-arguments _%exn141044%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn141044%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn141038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141038%_))
            (let ((_%e141041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141038%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e141041%_)
                  (macro-initialized-thread-exception-procedure _%e141041%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e141041%_ '())))))
            (if (macro-initialized-thread-exception? _%exn141038%_)
                (macro-initialized-thread-exception-procedure _%exn141038%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn141038%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn141034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141034%_))
            (let ((_%e141036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141034%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e141036%_))
            (macro-invalid-hash-number-exception? _%exn141034%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn141030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141030%_))
            (let ((_%e141032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141030%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141032%_)
                  (macro-invalid-hash-number-exception-arguments _%e141032%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e141032%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141030%_)
                (macro-invalid-hash-number-exception-arguments _%exn141030%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn141030%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn141024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141024%_))
            (let ((_%e141027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141024%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e141027%_)
                  (macro-invalid-hash-number-exception-procedure _%e141027%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e141027%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn141024%_)
                (macro-invalid-hash-number-exception-procedure _%exn141024%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn141024%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn141020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141020%_))
            (let ((_%e141022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141020%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e141022%_))
            (macro-invalid-utf8-encoding-exception? _%exn141020%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn141016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141016%_))
            (let ((_%e141018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141016%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141018%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e141018%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e141018%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141016%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn141016%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn141016%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn141010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141010%_))
            (let ((_%e141013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141010%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e141013%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e141013%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e141013%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn141010%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn141010%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn141010%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn141006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141006%_))
            (let ((_%e141008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141006%_ 'exception))))
              (macro-join-timeout-exception? _%e141008%_))
            (macro-join-timeout-exception? _%exn141006%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn141002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn141002%_))
            (let ((_%e141004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn141002%_ 'exception))))
              (if (macro-join-timeout-exception? _%e141004%_)
                  (macro-join-timeout-exception-arguments _%e141004%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e141004%_ '())))))
            (if (macro-join-timeout-exception? _%exn141002%_)
                (macro-join-timeout-exception-arguments _%exn141002%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn141002%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn140996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140996%_))
            (let ((_%e140999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140996%_ 'exception))))
              (if (macro-join-timeout-exception? _%e140999%_)
                  (macro-join-timeout-exception-procedure _%e140999%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e140999%_ '())))))
            (if (macro-join-timeout-exception? _%exn140996%_)
                (macro-join-timeout-exception-procedure _%exn140996%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn140996%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn140992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140992%_))
            (let ((_%e140994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140992%_ 'exception))))
              (macro-keyword-expected-exception? _%e140994%_))
            (macro-keyword-expected-exception? _%exn140992%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn140988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140988%_))
            (let ((_%e140990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140988%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e140990%_)
                  (macro-keyword-expected-exception-arguments _%e140990%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e140990%_ '())))))
            (if (macro-keyword-expected-exception? _%exn140988%_)
                (macro-keyword-expected-exception-arguments _%exn140988%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn140988%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn140982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140982%_))
            (let ((_%e140985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140982%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e140985%_)
                  (macro-keyword-expected-exception-procedure _%e140985%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e140985%_ '())))))
            (if (macro-keyword-expected-exception? _%exn140982%_)
                (macro-keyword-expected-exception-procedure _%exn140982%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn140982%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn140978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140978%_))
            (let ((_%e140980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140978%_ 'exception))))
              (macro-length-mismatch-exception? _%e140980%_))
            (macro-length-mismatch-exception? _%exn140978%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn140974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140974%_))
            (let ((_%e140976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140974%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140976%_)
                  (macro-length-mismatch-exception-arg-id _%e140976%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e140976%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140974%_)
                (macro-length-mismatch-exception-arg-id _%exn140974%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn140974%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn140970%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140970%_))
            (let ((_%e140972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140970%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140972%_)
                  (macro-length-mismatch-exception-arguments _%e140972%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e140972%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140970%_)
                (macro-length-mismatch-exception-arguments _%exn140970%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn140970%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn140964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140964%_))
            (let ((_%e140967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140964%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e140967%_)
                  (macro-length-mismatch-exception-procedure _%e140967%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e140967%_ '())))))
            (if (macro-length-mismatch-exception? _%exn140964%_)
                (macro-length-mismatch-exception-procedure _%exn140964%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn140964%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn140960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140960%_))
            (let ((_%e140962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140960%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e140962%_))
            (macro-mailbox-receive-timeout-exception? _%exn140960%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn140956%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140956%_))
            (let ((_%e140958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140956%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e140958%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e140958%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e140958%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn140956%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn140956%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn140956%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn140950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140950%_))
            (let ((_%e140953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140950%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e140953%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e140953%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e140953%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn140950%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn140950%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn140950%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn140946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140946%_))
            (let ((_%e140948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140946%_ 'exception))))
              (macro-module-not-found-exception? _%e140948%_))
            (macro-module-not-found-exception? _%exn140946%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn140942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140942%_))
            (let ((_%e140944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140942%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140944%_)
                  (macro-module-not-found-exception-arguments _%e140944%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e140944%_ '())))))
            (if (macro-module-not-found-exception? _%exn140942%_)
                (macro-module-not-found-exception-arguments _%exn140942%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn140942%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn140936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140936%_))
            (let ((_%e140939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140936%_ 'exception))))
              (if (macro-module-not-found-exception? _%e140939%_)
                  (macro-module-not-found-exception-procedure _%e140939%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e140939%_ '())))))
            (if (macro-module-not-found-exception? _%exn140936%_)
                (macro-module-not-found-exception-procedure _%exn140936%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn140936%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn140930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140930%_))
            (let ((_%e140933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140930%_ 'exception))))
              (macro-multiple-c-return-exception? _%e140933%_))
            (macro-multiple-c-return-exception? _%exn140930%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn140926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140926%_))
            (let ((_%e140928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140926%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e140928%_))
            (macro-no-such-file-or-directory-exception? _%exn140926%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn140922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140922%_))
            (let ((_%e140924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140922%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140924%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e140924%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e140924%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140922%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn140922%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn140922%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn140916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140916%_))
            (let ((_%e140919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140916%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e140919%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e140919%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e140919%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn140916%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn140916%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn140916%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn140912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140912%_))
            (let ((_%e140914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140912%_ 'exception))))
              (macro-noncontinuable-exception? _%e140914%_))
            (macro-noncontinuable-exception? _%exn140912%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn140906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140906%_))
            (let ((_%e140909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140906%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e140909%_)
                  (macro-noncontinuable-exception-reason _%e140909%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e140909%_ '())))))
            (if (macro-noncontinuable-exception? _%exn140906%_)
                (macro-noncontinuable-exception-reason _%exn140906%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn140906%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn140902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140902%_))
            (let ((_%e140904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140902%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e140904%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn140902%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn140898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140898%_))
            (let ((_%e140900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140898%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140900%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e140900%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e140900%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140898%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn140898%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn140898%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn140892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140892%_))
            (let ((_%e140895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140892%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e140895%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e140895%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e140895%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn140892%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn140892%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn140892%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn140888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140888%_))
            (let ((_%e140890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140888%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e140890%_))
            (macro-nonprocedure-operator-exception? _%exn140888%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn140884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140884%_))
            (let ((_%e140886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140884%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140886%_)
                  (macro-nonprocedure-operator-exception-arguments _%e140886%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e140886%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140884%_)
                (macro-nonprocedure-operator-exception-arguments _%exn140884%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn140884%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn140880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140880%_))
            (let ((_%e140882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140880%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140882%_)
                  (macro-nonprocedure-operator-exception-code _%e140882%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e140882%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140880%_)
                (macro-nonprocedure-operator-exception-code _%exn140880%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn140880%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn140876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140876%_))
            (let ((_%e140878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140876%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140878%_)
                  (macro-nonprocedure-operator-exception-operator _%e140878%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e140878%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140876%_)
                (macro-nonprocedure-operator-exception-operator _%exn140876%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn140876%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn140870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140870%_))
            (let ((_%e140873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140870%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e140873%_)
                  (macro-nonprocedure-operator-exception-rte _%e140873%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e140873%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn140870%_)
                (macro-nonprocedure-operator-exception-rte _%exn140870%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn140870%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn140866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140866%_))
            (let ((_%e140868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140866%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e140868%_))
            (macro-not-in-compilation-context-exception? _%exn140866%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn140862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140862%_))
            (let ((_%e140864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140862%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140864%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e140864%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e140864%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140862%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn140862%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn140862%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn140856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140856%_))
            (let ((_%e140859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140856%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e140859%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e140859%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e140859%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn140856%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn140856%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn140856%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn140852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140852%_))
            (let ((_%e140854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140852%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e140854%_))
            (macro-number-of-arguments-limit-exception? _%exn140852%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn140848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140848%_))
            (let ((_%e140850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140848%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140850%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e140850%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e140850%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140848%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn140848%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn140848%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn140842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140842%_))
            (let ((_%e140845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140842%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e140845%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e140845%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e140845%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn140842%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn140842%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn140842%_ '())))))))
    (define os-exception?
      (lambda (_%exn140838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140838%_))
            (let ((_%e140840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140838%_ 'exception))))
              (macro-os-exception? _%e140840%_))
            (macro-os-exception? _%exn140838%_))))
    (define os-exception-arguments
      (lambda (_%exn140834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140834%_))
            (let ((_%e140836%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140834%_ 'exception))))
              (if (macro-os-exception? _%e140836%_)
                  (macro-os-exception-arguments _%e140836%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e140836%_ '())))))
            (if (macro-os-exception? _%exn140834%_)
                (macro-os-exception-arguments _%exn140834%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn140834%_ '())))))))
    (define os-exception-code
      (lambda (_%exn140830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140830%_))
            (let ((_%e140832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140830%_ 'exception))))
              (if (macro-os-exception? _%e140832%_)
                  (macro-os-exception-code _%e140832%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e140832%_ '())))))
            (if (macro-os-exception? _%exn140830%_)
                (macro-os-exception-code _%exn140830%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn140830%_ '())))))))
    (define os-exception-message
      (lambda (_%exn140826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140826%_))
            (let ((_%e140828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140826%_ 'exception))))
              (if (macro-os-exception? _%e140828%_)
                  (macro-os-exception-message _%e140828%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e140828%_ '())))))
            (if (macro-os-exception? _%exn140826%_)
                (macro-os-exception-message _%exn140826%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn140826%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn140820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140820%_))
            (let ((_%e140823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140820%_ 'exception))))
              (if (macro-os-exception? _%e140823%_)
                  (macro-os-exception-procedure _%e140823%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e140823%_ '())))))
            (if (macro-os-exception? _%exn140820%_)
                (macro-os-exception-procedure _%exn140820%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn140820%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn140816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140816%_))
            (let ((_%e140818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140816%_ 'exception))))
              (macro-permission-denied-exception? _%e140818%_))
            (macro-permission-denied-exception? _%exn140816%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn140812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140812%_))
            (let ((_%e140814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140812%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140814%_)
                  (macro-permission-denied-exception-arguments _%e140814%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e140814%_ '())))))
            (if (macro-permission-denied-exception? _%exn140812%_)
                (macro-permission-denied-exception-arguments _%exn140812%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn140812%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn140806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140806%_))
            (let ((_%e140809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140806%_ 'exception))))
              (if (macro-permission-denied-exception? _%e140809%_)
                  (macro-permission-denied-exception-procedure _%e140809%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e140809%_ '())))))
            (if (macro-permission-denied-exception? _%exn140806%_)
                (macro-permission-denied-exception-procedure _%exn140806%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn140806%_ '())))))))
    (define range-exception?
      (lambda (_%exn140802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140802%_))
            (let ((_%e140804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140802%_ 'exception))))
              (macro-range-exception? _%e140804%_))
            (macro-range-exception? _%exn140802%_))))
    (define range-exception-arg-id
      (lambda (_%exn140798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140798%_))
            (let ((_%e140800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140798%_ 'exception))))
              (if (macro-range-exception? _%e140800%_)
                  (macro-range-exception-arg-id _%e140800%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e140800%_ '())))))
            (if (macro-range-exception? _%exn140798%_)
                (macro-range-exception-arg-id _%exn140798%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn140798%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn140794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140794%_))
            (let ((_%e140796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140794%_ 'exception))))
              (if (macro-range-exception? _%e140796%_)
                  (macro-range-exception-arguments _%e140796%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e140796%_ '())))))
            (if (macro-range-exception? _%exn140794%_)
                (macro-range-exception-arguments _%exn140794%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn140794%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn140788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140788%_))
            (let ((_%e140791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140788%_ 'exception))))
              (if (macro-range-exception? _%e140791%_)
                  (macro-range-exception-procedure _%e140791%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e140791%_ '())))))
            (if (macro-range-exception? _%exn140788%_)
                (macro-range-exception-procedure _%exn140788%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn140788%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn140784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140784%_))
            (let ((_%e140786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140784%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e140786%_))
            (macro-rpc-remote-error-exception? _%exn140784%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn140780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140780%_))
            (let ((_%e140782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140780%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140782%_)
                  (macro-rpc-remote-error-exception-arguments _%e140782%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e140782%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140780%_)
                (macro-rpc-remote-error-exception-arguments _%exn140780%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn140780%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn140776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140776%_))
            (let ((_%e140778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140776%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140778%_)
                  (macro-rpc-remote-error-exception-message _%e140778%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e140778%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140776%_)
                (macro-rpc-remote-error-exception-message _%exn140776%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn140776%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn140770%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140770%_))
            (let ((_%e140773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140770%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e140773%_)
                  (macro-rpc-remote-error-exception-procedure _%e140773%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e140773%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn140770%_)
                (macro-rpc-remote-error-exception-procedure _%exn140770%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn140770%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn140766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140766%_))
            (let ((_%e140768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140766%_ 'exception))))
              (macro-scheduler-exception? _%e140768%_))
            (macro-scheduler-exception? _%exn140766%_))))
    (define scheduler-exception-reason
      (lambda (_%exn140760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140760%_))
            (let ((_%e140763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140760%_ 'exception))))
              (if (macro-scheduler-exception? _%e140763%_)
                  (macro-scheduler-exception-reason _%e140763%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e140763%_ '())))))
            (if (macro-scheduler-exception? _%exn140760%_)
                (macro-scheduler-exception-reason _%exn140760%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn140760%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn140756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140756%_))
            (let ((_%e140758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140756%_ 'exception))))
              (macro-sfun-conversion-exception? _%e140758%_))
            (macro-sfun-conversion-exception? _%exn140756%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn140752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140752%_))
            (let ((_%e140754%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140752%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140754%_)
                  (macro-sfun-conversion-exception-arguments _%e140754%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e140754%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140752%_)
                (macro-sfun-conversion-exception-arguments _%exn140752%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn140752%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn140748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140748%_))
            (let ((_%e140750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140748%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140750%_)
                  (macro-sfun-conversion-exception-code _%e140750%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e140750%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140748%_)
                (macro-sfun-conversion-exception-code _%exn140748%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn140748%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn140744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140744%_))
            (let ((_%e140746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140744%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140746%_)
                  (macro-sfun-conversion-exception-message _%e140746%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e140746%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140744%_)
                (macro-sfun-conversion-exception-message _%exn140744%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn140744%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn140738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140738%_))
            (let ((_%e140741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140738%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e140741%_)
                  (macro-sfun-conversion-exception-procedure _%e140741%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e140741%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn140738%_)
                (macro-sfun-conversion-exception-procedure _%exn140738%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn140738%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn140732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140732%_))
            (let ((_%e140735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140732%_ 'exception))))
              (macro-stack-overflow-exception? _%e140735%_))
            (macro-stack-overflow-exception? _%exn140732%_))))
    (define started-thread-exception?
      (lambda (_%exn140728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140728%_))
            (let ((_%e140730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140728%_ 'exception))))
              (macro-started-thread-exception? _%e140730%_))
            (macro-started-thread-exception? _%exn140728%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn140724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140724%_))
            (let ((_%e140726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140724%_ 'exception))))
              (if (macro-started-thread-exception? _%e140726%_)
                  (macro-started-thread-exception-arguments _%e140726%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e140726%_ '())))))
            (if (macro-started-thread-exception? _%exn140724%_)
                (macro-started-thread-exception-arguments _%exn140724%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn140724%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn140718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140718%_))
            (let ((_%e140721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140718%_ 'exception))))
              (if (macro-started-thread-exception? _%e140721%_)
                  (macro-started-thread-exception-procedure _%e140721%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e140721%_ '())))))
            (if (macro-started-thread-exception? _%exn140718%_)
                (macro-started-thread-exception-procedure _%exn140718%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn140718%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn140714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140714%_))
            (let ((_%e140716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140714%_ 'exception))))
              (macro-terminated-thread-exception? _%e140716%_))
            (macro-terminated-thread-exception? _%exn140714%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn140710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140710%_))
            (let ((_%e140712%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140710%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140712%_)
                  (macro-terminated-thread-exception-arguments _%e140712%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e140712%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140710%_)
                (macro-terminated-thread-exception-arguments _%exn140710%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn140710%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn140704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140704%_))
            (let ((_%e140707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140704%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e140707%_)
                  (macro-terminated-thread-exception-procedure _%e140707%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e140707%_ '())))))
            (if (macro-terminated-thread-exception? _%exn140704%_)
                (macro-terminated-thread-exception-procedure _%exn140704%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn140704%_ '())))))))
    (define type-exception?
      (lambda (_%exn140700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140700%_))
            (let ((_%e140702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140700%_ 'exception))))
              (macro-type-exception? _%e140702%_))
            (macro-type-exception? _%exn140700%_))))
    (define type-exception-arg-id
      (lambda (_%exn140696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140696%_))
            (let ((_%e140698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140696%_ 'exception))))
              (if (macro-type-exception? _%e140698%_)
                  (macro-type-exception-arg-id _%e140698%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e140698%_ '())))))
            (if (macro-type-exception? _%exn140696%_)
                (macro-type-exception-arg-id _%exn140696%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn140696%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn140692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140692%_))
            (let ((_%e140694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140692%_ 'exception))))
              (if (macro-type-exception? _%e140694%_)
                  (macro-type-exception-arguments _%e140694%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e140694%_ '())))))
            (if (macro-type-exception? _%exn140692%_)
                (macro-type-exception-arguments _%exn140692%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn140692%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn140688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140688%_))
            (let ((_%e140690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140688%_ 'exception))))
              (if (macro-type-exception? _%e140690%_)
                  (macro-type-exception-procedure _%e140690%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e140690%_ '())))))
            (if (macro-type-exception? _%exn140688%_)
                (macro-type-exception-procedure _%exn140688%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn140688%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn140682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140682%_))
            (let ((_%e140685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140682%_ 'exception))))
              (if (macro-type-exception? _%e140685%_)
                  (macro-type-exception-type-id _%e140685%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e140685%_ '())))))
            (if (macro-type-exception? _%exn140682%_)
                (macro-type-exception-type-id _%exn140682%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn140682%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn140678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140678%_))
            (let ((_%e140680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140678%_ 'exception))))
              (macro-unbound-global-exception? _%e140680%_))
            (macro-unbound-global-exception? _%exn140678%_))))
    (define unbound-global-exception-code
      (lambda (_%exn140674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140674%_))
            (let ((_%e140676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140674%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140676%_)
                  (macro-unbound-global-exception-code _%e140676%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e140676%_ '())))))
            (if (macro-unbound-global-exception? _%exn140674%_)
                (macro-unbound-global-exception-code _%exn140674%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn140674%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn140670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140670%_))
            (let ((_%e140672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140670%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140672%_)
                  (macro-unbound-global-exception-rte _%e140672%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e140672%_ '())))))
            (if (macro-unbound-global-exception? _%exn140670%_)
                (macro-unbound-global-exception-rte _%exn140670%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn140670%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn140664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140664%_))
            (let ((_%e140667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140664%_ 'exception))))
              (if (macro-unbound-global-exception? _%e140667%_)
                  (macro-unbound-global-exception-variable _%e140667%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e140667%_ '())))))
            (if (macro-unbound-global-exception? _%exn140664%_)
                (macro-unbound-global-exception-variable _%exn140664%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn140664%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn140660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140660%_))
            (let ((_%e140662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140660%_ 'exception))))
              (macro-unbound-key-exception? _%e140662%_))
            (macro-unbound-key-exception? _%exn140660%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn140656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140656%_))
            (let ((_%e140658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140656%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140658%_)
                  (macro-unbound-key-exception-arguments _%e140658%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e140658%_ '())))))
            (if (macro-unbound-key-exception? _%exn140656%_)
                (macro-unbound-key-exception-arguments _%exn140656%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn140656%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn140650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140650%_))
            (let ((_%e140653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140650%_ 'exception))))
              (if (macro-unbound-key-exception? _%e140653%_)
                  (macro-unbound-key-exception-procedure _%e140653%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e140653%_ '())))))
            (if (macro-unbound-key-exception? _%exn140650%_)
                (macro-unbound-key-exception-procedure _%exn140650%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn140650%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn140646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140646%_))
            (let ((_%e140648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140646%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e140648%_))
            (macro-unbound-os-environment-variable-exception? _%exn140646%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn140642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140642%_))
            (let ((_%e140644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140642%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140644%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e140644%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e140644%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140642%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn140642%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn140642%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn140636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140636%_))
            (let ((_%e140639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140636%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e140639%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e140639%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e140639%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn140636%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn140636%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn140636%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn140632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140632%_))
            (let ((_%e140634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140632%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e140634%_))
            (macro-unbound-serial-number-exception? _%exn140632%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn140628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140628%_))
            (let ((_%e140630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140628%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140630%_)
                  (macro-unbound-serial-number-exception-arguments _%e140630%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e140630%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140628%_)
                (macro-unbound-serial-number-exception-arguments _%exn140628%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn140628%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn140622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140622%_))
            (let ((_%e140625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140622%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e140625%_)
                  (macro-unbound-serial-number-exception-procedure _%e140625%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e140625%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn140622%_)
                (macro-unbound-serial-number-exception-procedure _%exn140622%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn140622%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn140618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140618%_))
            (let ((_%e140620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140618%_ 'exception))))
              (macro-uncaught-exception? _%e140620%_))
            (macro-uncaught-exception? _%exn140618%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn140614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140614%_))
            (let ((_%e140616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140614%_ 'exception))))
              (if (macro-uncaught-exception? _%e140616%_)
                  (macro-uncaught-exception-arguments _%e140616%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e140616%_ '())))))
            (if (macro-uncaught-exception? _%exn140614%_)
                (macro-uncaught-exception-arguments _%exn140614%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn140614%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn140610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140610%_))
            (let ((_%e140612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140610%_ 'exception))))
              (if (macro-uncaught-exception? _%e140612%_)
                  (macro-uncaught-exception-procedure _%e140612%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e140612%_ '())))))
            (if (macro-uncaught-exception? _%exn140610%_)
                (macro-uncaught-exception-procedure _%exn140610%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn140610%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn140604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140604%_))
            (let ((_%e140607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140604%_ 'exception))))
              (if (macro-uncaught-exception? _%e140607%_)
                  (macro-uncaught-exception-reason _%e140607%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e140607%_ '())))))
            (if (macro-uncaught-exception? _%exn140604%_)
                (macro-uncaught-exception-reason _%exn140604%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn140604%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn140600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140600%_))
            (let ((_%e140602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140600%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e140602%_))
            (macro-uninitialized-thread-exception? _%exn140600%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn140596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140596%_))
            (let ((_%e140598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140596%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140598%_)
                  (macro-uninitialized-thread-exception-arguments _%e140598%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e140598%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140596%_)
                (macro-uninitialized-thread-exception-arguments _%exn140596%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn140596%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn140590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140590%_))
            (let ((_%e140593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140590%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e140593%_)
                  (macro-uninitialized-thread-exception-procedure _%e140593%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e140593%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn140590%_)
                (macro-uninitialized-thread-exception-procedure _%exn140590%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn140590%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn140586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140586%_))
            (let ((_%e140588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140586%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e140588%_))
            (macro-unknown-keyword-argument-exception? _%exn140586%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn140582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140582%_))
            (let ((_%e140584%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140582%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140584%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e140584%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e140584%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140582%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn140582%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn140582%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn140576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140576%_))
            (let ((_%e140579%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140576%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e140579%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e140579%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e140579%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn140576%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn140576%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn140576%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn140572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140572%_))
            (let ((_%e140574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140572%_ 'exception))))
              (macro-unterminated-process-exception? _%e140574%_))
            (macro-unterminated-process-exception? _%exn140572%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn140568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140568%_))
            (let ((_%e140570%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140568%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140570%_)
                  (macro-unterminated-process-exception-arguments _%e140570%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e140570%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140568%_)
                (macro-unterminated-process-exception-arguments _%exn140568%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn140568%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn140562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140562%_))
            (let ((_%e140565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140562%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e140565%_)
                  (macro-unterminated-process-exception-procedure _%e140565%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e140565%_ '())))))
            (if (macro-unterminated-process-exception? _%exn140562%_)
                (macro-unterminated-process-exception-procedure _%exn140562%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn140562%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn140558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140558%_))
            (let ((_%e140560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140558%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e140560%_))
            (macro-wrong-number-of-arguments-exception? _%exn140558%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn140554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140554%_))
            (let ((_%e140556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140554%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140556%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e140556%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e140556%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140554%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn140554%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn140554%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn140548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140548%_))
            (let ((_%e140551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140548%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e140551%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e140551%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e140551%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn140548%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn140548%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn140548%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn140544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140544%_))
            (let ((_%e140546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140544%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e140546%_))
            (macro-wrong-number-of-values-exception? _%exn140544%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn140540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140540%_))
            (let ((_%e140542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140540%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140542%_)
                  (macro-wrong-number-of-values-exception-code _%e140542%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e140542%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140540%_)
                (macro-wrong-number-of-values-exception-code _%exn140540%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn140540%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn140536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140536%_))
            (let ((_%e140538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140536%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140538%_)
                  (macro-wrong-number-of-values-exception-rte _%e140538%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e140538%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140536%_)
                (macro-wrong-number-of-values-exception-rte _%exn140536%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn140536%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn140530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140530%_))
            (let ((_%e140533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140530%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e140533%_)
                  (macro-wrong-number-of-values-exception-vals _%e140533%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e140533%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn140530%_)
                (macro-wrong-number-of-values-exception-vals _%exn140530%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn140530%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn140524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140524%_))
            (let ((_%e140527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140524%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e140527%_))
            (macro-wrong-processor-c-return-exception? _%exn140524%_))))))
