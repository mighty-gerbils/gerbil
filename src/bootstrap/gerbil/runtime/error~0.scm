(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1771022574)
  (begin
    (define Exception::t
      (let ((__tmp141099 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp141099
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args141017%_
        (apply make-instance Exception::t _%$args141017%_)))
    (define StackTrace::t
      (let ((__tmp141100 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp141100
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args141014%_
        (apply make-instance StackTrace::t _%$args141014%_)))
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
      (let ((__tmp141101 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp141101
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args141011%_ (apply make-instance Error::t _%$args141011%_)))
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
      (let ((__tmp141102 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp141102
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args141008%_
        (apply make-instance ContractViolation::t _%$args141008%_)))
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
      (let ((__tmp141103 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp141103
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args141005%_
        (apply make-instance RuntimeException::t _%$args141005%_)))
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
      (lambda (_%exn141000%_ _%continue141001%_)
        (let ((_%exn141003%_ (wrap-runtime-exception _%exn141000%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn141003%_ _%continue141001%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn140996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn140996%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn140996%_ 'continuation))
                '#!void
                (let ((__tmp141104
                       (lambda (_%cont140998%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn140996%_
                            'continuation
                            _%cont140998%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp141104)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn140996%_))))
    (define error
      (lambda (_%message140993%_ . _%irritants140994%_)
        (raise (let ((__obj141096
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj141096
                  _%message140993%_
                  'irritants:
                  _%irritants140994%_)
                 __obj141096))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords140968%_
               _%ctx140963140969%_
               _%contract-expr140964140970%_
               _%value140965140971%_
               _%message140972%_)
        (let* ((_%ctx140974%_
                (if (eq? _%ctx140963140969%_ absent-value)
                    '#f
                    _%ctx140963140969%_))
               (_%contract-expr140976%_
                (if (eq? _%contract-expr140964140970%_ absent-value)
                    '#f
                    _%contract-expr140964140970%_))
               (_%value140978%_
                (if (eq? _%value140965140971%_ absent-value)
                    '#f
                    _%value140965140971%_)))
          (raise (let ((__obj141097
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj141097
                    _%message140972%_
                    'where:
                    _%ctx140974%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr140976%_
                                (cons 'value: (cons _%value140978%_ '())))))
                   __obj141097)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords140983%_ . _%args140984%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords140983%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords140983%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords140983%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords140983%_
                  'value:
                  absent-value))
               _%args140984%_)))
    (define __raise-contract-violation-error
      (lambda _%args140966140990%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args140966140990%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler140937%_ _%thunk140938%_)
        (let* ((_%handler140941%_ _%handler140937%_)
               (_%thunk140949%_ _%thunk140938%_)
               (__tmp141105
                (lambda (_%exn140958%_)
                  (let ((_%exn140960%_ (wrap-runtime-exception _%exn140958%_)))
                    (declare (not safe))
                    (_%handler140941%_ _%exn140960%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp141105 _%thunk140949%_))))
    (define with-exception-handler
      (lambda (_%handler138972%_ _%thunk138973%_)
        (if (procedure? _%handler138972%_)
            (let ((_%handler138977%_ _%handler138972%_))
              (if (procedure? _%thunk138973%_)
                  (let ((_%thunk138987%_ _%thunk138973%_))
                    (__with-exception-handler
                     _%handler138977%_
                     _%thunk138987%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk138973%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler138972%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler140879%_ _%thunk140880%_)
        (let* ((_%handler140883%_ _%handler140879%_)
               (_%thunk140891%_ _%thunk140880%_)
               (__tmp141106
                (lambda (_%cont140900%_)
                  (let* ((_%handler140904%_
                          (lambda (_%exn140902%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont140900%_
                               _%handler140883%_
                               _%exn140902%_))))
                         (_%thunk140907%_ _%thunk140891%_)
                         (_%handler140912%_ _%handler140904%_)
                         (_%thunk140927%_ _%thunk140907%_))
                    (__with-exception-handler
                     _%handler140912%_
                     _%thunk140927%_)))))
          (declare (not safe))
          (##continuation-capture __tmp141106))))
    (define with-catch
      (lambda (_%handler139117%_ _%thunk139118%_)
        (if (procedure? _%handler139117%_)
            (let ((_%handler139122%_ _%handler139117%_))
              (if (procedure? _%thunk139118%_)
                  (let ((_%thunk139132%_ _%thunk139118%_))
                    (__with-catch _%handler139122%_ _%thunk139132%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk139118%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler139117%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn140866%_)
        (if (or (heap-overflow-exception? _%exn140866%_)
                (stack-overflow-exception? _%exn140866%_))
            _%exn140866%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn140866%_))
                _%exn140866%_
                (if (macro-exception? _%exn140866%_)
                    (let ((_%rte140874%_
                           (let ((__obj141098
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj141098
                                _%exn140866%_
                                '2
                                '#f
                                '#f))
                             __obj141098)))
                      (let ((__tmp141107
                             (lambda (_%cont140876%_)
                               (let ((__tmp141108
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont140876%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte140874%_
                                  'continuation
                                  __tmp141108)))))
                        (declare (not safe))
                        (##continuation-capture __tmp141107))
                      _%rte140874%_)
                    _%exn140866%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj140861%_)
        (let ((_%$e140863%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj140861%_))))
          (if _%$e140863%_ _%$e140863%_ (error-exception? _%obj140861%_)))))
    (define error-message
      (lambda (_%obj140820%_)
        (let ((_%$e140856%_
               (let* ((_%obj140822%_ _%obj140820%_)
                      (_%slot140825%_ 'message)
                      (_%E140828%_ false)
                      (_%slot140833%_ _%slot140825%_)
                      (_%E140846%_ _%E140828%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj140822%_ _%slot140833%_ _%E140846%_))))
          (if _%$e140856%_
              _%$e140856%_
              (if (error-exception? _%obj140820%_)
                  (error-exception-message _%obj140820%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj140815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj140815%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj140815%_ 'irritants))
            (if (error-exception? _%obj140815%_)
                (error-exception-parameters _%obj140815%_)
                '#f))))
    (define error-trace
      (lambda (_%obj140813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj140813%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj140813%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e140774%_ _%port140775%_)
        (let ((_%$e140797%_
               (let* ((_%obj140777%_ _%e140774%_)
                      (_%id140780%_ 'display-exception)
                      (_%id140785%_ _%id140780%_))
                 (declare (not safe))
                 (__method-ref _%obj140777%_ _%id140785%_))))
          (if _%$e140797%_
              ((lambda (_%f140800%_) (_%f140800%_ _%e140774%_ _%port140775%_))
               _%$e140797%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e140774%_ _%port140775%_))))))
    (define display-exception__0
      (lambda (_%e140806%_)
        (let ((_%port140808%_ (current-error-port)))
          (display-exception__% _%e140806%_ _%port140808%_))))
    (define display-exception
      (lambda _g141109_
        (let ((_g141110_ (let () (declare (not safe)) (##length _g141109_))))
          (cond ((let () (declare (not safe)) (##fx= _g141110_ 1))
                 (apply display-exception__0 _g141109_))
                ((let () (declare (not safe)) (##fx= _g141110_ 2))
                 (apply display-exception__% _g141109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g141109_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self140752%_ _%message140753%_ . _%rest140754%_)
        (let* ((_%self140757%_ _%self140752%_)
               (_%message140771%_
                (if (string? _%message140753%_)
                    _%message140753%_
                    (call-with-output-string
                     '""
                     (lambda (_%g140766140768%_)
                       (display _%message140753%_ _%g140766140768%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self140757%_ 'message _%message140771%_))
          (apply class-instance-init! _%self140757%_ _%rest140754%_))))
    (define Error:::init!::specialize
      (lambda (__klass141019 __method-table141020)
        (let ((__message141021
               (let ((__slot141022
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141019 'message))))
                 (if __slot141022
                     __slot141022
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self140752%_ _%message140753%_ . _%rest140754%_)
            (let* ((_%self140757%_ _%self140752%_)
                   (_%message140771%_
                    (if (string? _%message140753%_)
                        _%message140753%_
                        (call-with-output-string
                         '""
                         (lambda (_%g140766140768%_)
                           (display _%message140753%_ _%g140766140768%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self140757%_
                 _%message140771%_
                 __message141021
                 '#f
                 '#f))
              (apply class-instance-init! _%self140757%_ _%rest140754%_))))))
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
      (lambda (_%self140457%_ _%port140458%_)
        (let ((_%self140461%_ _%self140457%_))
          (let ((_%tmp-port140471%_ (open-output-string))
                (_%display-error-newline140472%_
                 (> (output-port-column _%port140458%_) '0)))
            (fix-port-width! _%tmp-port140471%_)
            (let ((__tmp141111
                   (lambda ()
                     (if _%display-error-newline140472%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e140475%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self140461%_ 'where))))
                       (if _%$e140475%_ (display _%$e140475%_) (display '"?")))
                     (let ((__tmp141112
                            (let ((__tmp141113
                                   (let ((_%obj140479%_ _%self140461%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj140479%_))
                                         (let ((_%obj140484%_ _%obj140479%_))
                                           (declare (not safe))
                                           (__object-class _%obj140484%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj140479%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp141113))))
                       (declare (not safe))
                       (display* '" [" __tmp141112 '"]: "))
                     (let ((__tmp141114
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self140461%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp141114))
                     (let ((_%irritants140499%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self140461%_ 'irritants))))
                       (if (null? _%irritants140499%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj140501%_)
                                (if (u8vector? _%obj140501%_)
                                    (let ((__tmp141115
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj140501%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp141115))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj140501%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants140499%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont140502140504%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self140461%_
                                   'continuation))))
                           (if _%cont140502140504%_
                               (let ((_%cont140506%_ _%cont140502140504%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont140506%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp141111
               current-output-port
               _%tmp-port140471%_))
            (let ((__tmp141116 (get-output-string _%tmp-port140471%_)))
              (declare (not safe))
              (##write-string __tmp141116 _%port140458%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass141023 __method-table141024)
        (let ((__continuation141025
               (let ((__slot141029
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141023 'continuation))))
                 (if __slot141029
                     __slot141029
                     (error '"Unknown slot" 'continuation))))
              (__irritants141026
               (let ((__slot141030
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141023 'irritants))))
                 (if __slot141030
                     __slot141030
                     (error '"Unknown slot" 'irritants))))
              (__where141027
               (let ((__slot141031
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141023 'where))))
                 (if __slot141031
                     __slot141031
                     (error '"Unknown slot" 'where))))
              (__message141028
               (let ((__slot141032
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141023 'message))))
                 (if __slot141032
                     __slot141032
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self140457%_ _%port140458%_)
            (let ((_%self140461%_ _%self140457%_))
              (let ((_%tmp-port140471%_ (open-output-string))
                    (_%display-error-newline140472%_
                     (> (output-port-column _%port140458%_) '0)))
                (fix-port-width! _%tmp-port140471%_)
                (let ((__tmp141117
                       (lambda ()
                         (if _%display-error-newline140472%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e140475%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self140461%_
                                   __where141027
                                   '#f
                                   '#f))))
                           (if _%$e140475%_
                               (display _%$e140475%_)
                               (display '"?")))
                         (let ((__tmp141118
                                (let ((__tmp141119
                                       (let ((_%obj140479%_ _%self140461%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj140479%_))
                                             (let ((_%obj140484%_
                                                    _%obj140479%_))
                                               (declare (not safe))
                                               (__object-class _%obj140484%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj140479%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp141119))))
                           (declare (not safe))
                           (display* '" [" __tmp141118 '"]: "))
                         (let ((__tmp141120
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self140461%_
                                   __message141028
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp141120))
                         (let ((_%irritants140499%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self140461%_
                                   __irritants141026
                                   '#f
                                   '#f))))
                           (if (null? _%irritants140499%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj140501%_)
                                    (if (u8vector? _%obj140501%_)
                                        (let ((__tmp141121
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj140501%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp141121))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj140501%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants140499%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont140502140504%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self140461%_
                                       __continuation141025
                                       '#f
                                       '#f))))
                               (if _%cont140502140504%_
                                   (let ((_%cont140506%_ _%cont140502140504%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont140506%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp141117
                   current-output-port
                   _%tmp-port140471%_))
                (let ((__tmp141122 (get-output-string _%tmp-port140471%_)))
                  (declare (not safe))
                  (##write-string __tmp141122 _%port140458%_))))))))
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
      (lambda (_%self140314%_ _%port140315%_)
        (let* ((_%self140318%_ _%self140314%_)
               (_%tmp-port140328%_ (open-output-string)))
          (fix-port-width! _%tmp-port140328%_)
          (let ((__tmp141123
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self140318%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp141123 _%tmp-port140328%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont140329140331%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self140318%_ 'continuation))))
                (if _%cont140329140331%_
                    (let ((_%cont140333%_ _%cont140329140331%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port140328%_)
                      (newline _%tmp-port140328%_)
                      (display-continuation-backtrace
                       _%cont140333%_
                       _%tmp-port140328%_))
                    '#f))
              '#!void)
          (let ((__tmp141124 (get-output-string _%tmp-port140328%_)))
            (declare (not safe))
            (##write-string __tmp141124 _%port140315%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass141033 __method-table141034)
        (let ((__continuation141035
               (let ((__slot141037
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141033 'continuation))))
                 (if __slot141037
                     __slot141037
                     (error '"Unknown slot" 'continuation))))
              (__exception141036
               (let ((__slot141038
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass141033 'exception))))
                 (if __slot141038
                     __slot141038
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self140314%_ _%port140315%_)
            (let* ((_%self140318%_ _%self140314%_)
                   (_%tmp-port140328%_ (open-output-string)))
              (fix-port-width! _%tmp-port140328%_)
              (let ((__tmp141125
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self140318%_
                        __exception141036
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp141125 _%tmp-port140328%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont140329140331%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self140318%_
                            __continuation141035
                            '#f
                            '#f))))
                    (if _%cont140329140331%_
                        (let ((_%cont140333%_ _%cont140329140331%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port140328%_)
                          (newline _%tmp-port140328%_)
                          (display-continuation-backtrace
                           _%cont140333%_
                           _%tmp-port140328%_))
                        '#f))
                  '#!void)
              (let ((__tmp141126 (get-output-string _%tmp-port140328%_)))
                (declare (not safe))
                (##write-string __tmp141126 _%port140315%_)))))))
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
      (lambda (_%port140186%_)
        (if (macro-character-port? _%port140186%_)
            (let ((_%old-width140188%_
                   (macro-character-port-output-width _%port140186%_)))
              (macro-character-port-output-width-set!
               _%port140186%_
               (lambda (_%port140190%_) '256))
              _%old-width140188%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port140183%_ _%old-width140184%_)
        (if (macro-character-port? _%port140183%_)
            (macro-character-port-output-width-set!
             _%port140183%_
             _%old-width140184%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e140181%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e140181%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn140175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140175%_))
            (let ((_%e140178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140175%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e140178%_))
            (macro-abandoned-mutex-exception? _%exn140175%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn140171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140171%_))
            (let ((_%e140173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140171%_ 'exception))))
              (macro-cfun-conversion-exception? _%e140173%_))
            (macro-cfun-conversion-exception? _%exn140171%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn140167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140167%_))
            (let ((_%e140169%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140167%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140169%_)
                  (macro-cfun-conversion-exception-arguments _%e140169%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e140169%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140167%_)
                (macro-cfun-conversion-exception-arguments _%exn140167%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn140167%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn140163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140163%_))
            (let ((_%e140165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140163%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140165%_)
                  (macro-cfun-conversion-exception-code _%e140165%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e140165%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140163%_)
                (macro-cfun-conversion-exception-code _%exn140163%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn140163%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn140159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140159%_))
            (let ((_%e140161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140159%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140161%_)
                  (macro-cfun-conversion-exception-message _%e140161%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e140161%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140159%_)
                (macro-cfun-conversion-exception-message _%exn140159%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn140159%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn140153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140153%_))
            (let ((_%e140156%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140153%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e140156%_)
                  (macro-cfun-conversion-exception-procedure _%e140156%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e140156%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn140153%_)
                (macro-cfun-conversion-exception-procedure _%exn140153%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn140153%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn140149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140149%_))
            (let ((_%e140151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140149%_ 'exception))))
              (macro-datum-parsing-exception? _%e140151%_))
            (macro-datum-parsing-exception? _%exn140149%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn140145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140145%_))
            (let ((_%e140147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140145%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140147%_)
                  (macro-datum-parsing-exception-kind _%e140147%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e140147%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140145%_)
                (macro-datum-parsing-exception-kind _%exn140145%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn140145%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn140141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140141%_))
            (let ((_%e140143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140141%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140143%_)
                  (macro-datum-parsing-exception-parameters _%e140143%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e140143%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140141%_)
                (macro-datum-parsing-exception-parameters _%exn140141%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn140141%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn140135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140135%_))
            (let ((_%e140138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140135%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e140138%_)
                  (macro-datum-parsing-exception-readenv _%e140138%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e140138%_ '())))))
            (if (macro-datum-parsing-exception? _%exn140135%_)
                (macro-datum-parsing-exception-readenv _%exn140135%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn140135%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn140129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140129%_))
            (let ((_%e140132%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140129%_ 'exception))))
              (macro-deadlock-exception? _%e140132%_))
            (macro-deadlock-exception? _%exn140129%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn140125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140125%_))
            (let ((_%e140127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140125%_ 'exception))))
              (macro-divide-by-zero-exception? _%e140127%_))
            (macro-divide-by-zero-exception? _%exn140125%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn140121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140121%_))
            (let ((_%e140123%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140121%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e140123%_)
                  (macro-divide-by-zero-exception-arguments _%e140123%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e140123%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn140121%_)
                (macro-divide-by-zero-exception-arguments _%exn140121%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn140121%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn140115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140115%_))
            (let ((_%e140118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140115%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e140118%_)
                  (macro-divide-by-zero-exception-procedure _%e140118%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e140118%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn140115%_)
                (macro-divide-by-zero-exception-procedure _%exn140115%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn140115%_ '())))))))
    (define error-exception?
      (lambda (_%exn140111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140111%_))
            (let ((_%e140113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140111%_ 'exception))))
              (macro-error-exception? _%e140113%_))
            (macro-error-exception? _%exn140111%_))))
    (define error-exception-message
      (lambda (_%exn140107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140107%_))
            (let ((_%e140109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140107%_ 'exception))))
              (if (macro-error-exception? _%e140109%_)
                  (macro-error-exception-message _%e140109%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e140109%_ '())))))
            (if (macro-error-exception? _%exn140107%_)
                (macro-error-exception-message _%exn140107%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn140107%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn140101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140101%_))
            (let ((_%e140104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140101%_ 'exception))))
              (if (macro-error-exception? _%e140104%_)
                  (macro-error-exception-parameters _%e140104%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e140104%_ '())))))
            (if (macro-error-exception? _%exn140101%_)
                (macro-error-exception-parameters _%exn140101%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn140101%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn140097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140097%_))
            (let ((_%e140099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140097%_ 'exception))))
              (macro-expression-parsing-exception? _%e140099%_))
            (macro-expression-parsing-exception? _%exn140097%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn140093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140093%_))
            (let ((_%e140095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140093%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140095%_)
                  (macro-expression-parsing-exception-kind _%e140095%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e140095%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140093%_)
                (macro-expression-parsing-exception-kind _%exn140093%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn140093%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn140089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140089%_))
            (let ((_%e140091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140089%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140091%_)
                  (macro-expression-parsing-exception-parameters _%e140091%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e140091%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140089%_)
                (macro-expression-parsing-exception-parameters _%exn140089%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn140089%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn140083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140083%_))
            (let ((_%e140086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140083%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e140086%_)
                  (macro-expression-parsing-exception-source _%e140086%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e140086%_ '())))))
            (if (macro-expression-parsing-exception? _%exn140083%_)
                (macro-expression-parsing-exception-source _%exn140083%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn140083%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn140079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140079%_))
            (let ((_%e140081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140079%_ 'exception))))
              (macro-file-exists-exception? _%e140081%_))
            (macro-file-exists-exception? _%exn140079%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn140075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140075%_))
            (let ((_%e140077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140075%_ 'exception))))
              (if (macro-file-exists-exception? _%e140077%_)
                  (macro-file-exists-exception-arguments _%e140077%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e140077%_ '())))))
            (if (macro-file-exists-exception? _%exn140075%_)
                (macro-file-exists-exception-arguments _%exn140075%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn140075%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn140069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140069%_))
            (let ((_%e140072%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140069%_ 'exception))))
              (if (macro-file-exists-exception? _%e140072%_)
                  (macro-file-exists-exception-procedure _%e140072%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e140072%_ '())))))
            (if (macro-file-exists-exception? _%exn140069%_)
                (macro-file-exists-exception-procedure _%exn140069%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn140069%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn140065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140065%_))
            (let ((_%e140067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140065%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e140067%_))
            (macro-fixnum-overflow-exception? _%exn140065%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn140061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140061%_))
            (let ((_%e140063%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140061%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e140063%_)
                  (macro-fixnum-overflow-exception-arguments _%e140063%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e140063%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn140061%_)
                (macro-fixnum-overflow-exception-arguments _%exn140061%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn140061%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn140055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140055%_))
            (let ((_%e140058%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140055%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e140058%_)
                  (macro-fixnum-overflow-exception-procedure _%e140058%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e140058%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn140055%_)
                (macro-fixnum-overflow-exception-procedure _%exn140055%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn140055%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn140049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140049%_))
            (let ((_%e140052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140049%_ 'exception))))
              (macro-heap-overflow-exception? _%e140052%_))
            (macro-heap-overflow-exception? _%exn140049%_))))
    (define inactive-thread-exception?
      (lambda (_%exn140045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140045%_))
            (let ((_%e140047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140045%_ 'exception))))
              (macro-inactive-thread-exception? _%e140047%_))
            (macro-inactive-thread-exception? _%exn140045%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn140041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140041%_))
            (let ((_%e140043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140041%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e140043%_)
                  (macro-inactive-thread-exception-arguments _%e140043%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e140043%_ '())))))
            (if (macro-inactive-thread-exception? _%exn140041%_)
                (macro-inactive-thread-exception-arguments _%exn140041%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn140041%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn140035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140035%_))
            (let ((_%e140038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140035%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e140038%_)
                  (macro-inactive-thread-exception-procedure _%e140038%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e140038%_ '())))))
            (if (macro-inactive-thread-exception? _%exn140035%_)
                (macro-inactive-thread-exception-procedure _%exn140035%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn140035%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn140031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140031%_))
            (let ((_%e140033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140031%_ 'exception))))
              (macro-initialized-thread-exception? _%e140033%_))
            (macro-initialized-thread-exception? _%exn140031%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn140027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140027%_))
            (let ((_%e140029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140027%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e140029%_)
                  (macro-initialized-thread-exception-arguments _%e140029%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e140029%_ '())))))
            (if (macro-initialized-thread-exception? _%exn140027%_)
                (macro-initialized-thread-exception-arguments _%exn140027%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn140027%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn140021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140021%_))
            (let ((_%e140024%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140021%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e140024%_)
                  (macro-initialized-thread-exception-procedure _%e140024%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e140024%_ '())))))
            (if (macro-initialized-thread-exception? _%exn140021%_)
                (macro-initialized-thread-exception-procedure _%exn140021%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn140021%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn140017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140017%_))
            (let ((_%e140019%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140017%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e140019%_))
            (macro-invalid-hash-number-exception? _%exn140017%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn140013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140013%_))
            (let ((_%e140015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140013%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e140015%_)
                  (macro-invalid-hash-number-exception-arguments _%e140015%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e140015%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn140013%_)
                (macro-invalid-hash-number-exception-arguments _%exn140013%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn140013%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn140007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140007%_))
            (let ((_%e140010%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140007%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e140010%_)
                  (macro-invalid-hash-number-exception-procedure _%e140010%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e140010%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn140007%_)
                (macro-invalid-hash-number-exception-procedure _%exn140007%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn140007%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn140003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn140003%_))
            (let ((_%e140005%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn140003%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e140005%_))
            (macro-invalid-utf8-encoding-exception? _%exn140003%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn139999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139999%_))
            (let ((_%e140001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139999%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e140001%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e140001%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e140001%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn139999%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn139999%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn139999%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn139993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139993%_))
            (let ((_%e139996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139993%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e139996%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e139996%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e139996%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn139993%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn139993%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn139993%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn139989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139989%_))
            (let ((_%e139991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139989%_ 'exception))))
              (macro-join-timeout-exception? _%e139991%_))
            (macro-join-timeout-exception? _%exn139989%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn139985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139985%_))
            (let ((_%e139987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139985%_ 'exception))))
              (if (macro-join-timeout-exception? _%e139987%_)
                  (macro-join-timeout-exception-arguments _%e139987%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e139987%_ '())))))
            (if (macro-join-timeout-exception? _%exn139985%_)
                (macro-join-timeout-exception-arguments _%exn139985%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn139985%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn139979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139979%_))
            (let ((_%e139982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139979%_ 'exception))))
              (if (macro-join-timeout-exception? _%e139982%_)
                  (macro-join-timeout-exception-procedure _%e139982%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e139982%_ '())))))
            (if (macro-join-timeout-exception? _%exn139979%_)
                (macro-join-timeout-exception-procedure _%exn139979%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn139979%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn139975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139975%_))
            (let ((_%e139977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139975%_ 'exception))))
              (macro-keyword-expected-exception? _%e139977%_))
            (macro-keyword-expected-exception? _%exn139975%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn139971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139971%_))
            (let ((_%e139973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139971%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e139973%_)
                  (macro-keyword-expected-exception-arguments _%e139973%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e139973%_ '())))))
            (if (macro-keyword-expected-exception? _%exn139971%_)
                (macro-keyword-expected-exception-arguments _%exn139971%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn139971%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn139965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139965%_))
            (let ((_%e139968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139965%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e139968%_)
                  (macro-keyword-expected-exception-procedure _%e139968%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e139968%_ '())))))
            (if (macro-keyword-expected-exception? _%exn139965%_)
                (macro-keyword-expected-exception-procedure _%exn139965%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn139965%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn139961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139961%_))
            (let ((_%e139963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139961%_ 'exception))))
              (macro-length-mismatch-exception? _%e139963%_))
            (macro-length-mismatch-exception? _%exn139961%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn139957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139957%_))
            (let ((_%e139959%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139957%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e139959%_)
                  (macro-length-mismatch-exception-arg-id _%e139959%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e139959%_ '())))))
            (if (macro-length-mismatch-exception? _%exn139957%_)
                (macro-length-mismatch-exception-arg-id _%exn139957%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn139957%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn139953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139953%_))
            (let ((_%e139955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139953%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e139955%_)
                  (macro-length-mismatch-exception-arguments _%e139955%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e139955%_ '())))))
            (if (macro-length-mismatch-exception? _%exn139953%_)
                (macro-length-mismatch-exception-arguments _%exn139953%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn139953%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn139947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139947%_))
            (let ((_%e139950%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139947%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e139950%_)
                  (macro-length-mismatch-exception-procedure _%e139950%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e139950%_ '())))))
            (if (macro-length-mismatch-exception? _%exn139947%_)
                (macro-length-mismatch-exception-procedure _%exn139947%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn139947%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn139943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139943%_))
            (let ((_%e139945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139943%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e139945%_))
            (macro-mailbox-receive-timeout-exception? _%exn139943%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn139939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139939%_))
            (let ((_%e139941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139939%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e139941%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e139941%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e139941%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn139939%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn139939%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn139939%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn139933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139933%_))
            (let ((_%e139936%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139933%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e139936%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e139936%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e139936%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn139933%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn139933%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn139933%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn139929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139929%_))
            (let ((_%e139931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139929%_ 'exception))))
              (macro-module-not-found-exception? _%e139931%_))
            (macro-module-not-found-exception? _%exn139929%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn139925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139925%_))
            (let ((_%e139927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139925%_ 'exception))))
              (if (macro-module-not-found-exception? _%e139927%_)
                  (macro-module-not-found-exception-arguments _%e139927%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e139927%_ '())))))
            (if (macro-module-not-found-exception? _%exn139925%_)
                (macro-module-not-found-exception-arguments _%exn139925%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn139925%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn139919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139919%_))
            (let ((_%e139922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139919%_ 'exception))))
              (if (macro-module-not-found-exception? _%e139922%_)
                  (macro-module-not-found-exception-procedure _%e139922%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e139922%_ '())))))
            (if (macro-module-not-found-exception? _%exn139919%_)
                (macro-module-not-found-exception-procedure _%exn139919%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn139919%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn139913%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139913%_))
            (let ((_%e139916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139913%_ 'exception))))
              (macro-multiple-c-return-exception? _%e139916%_))
            (macro-multiple-c-return-exception? _%exn139913%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn139909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139909%_))
            (let ((_%e139911%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139909%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e139911%_))
            (macro-no-such-file-or-directory-exception? _%exn139909%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn139905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139905%_))
            (let ((_%e139907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139905%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e139907%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e139907%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e139907%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn139905%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn139905%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn139905%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn139899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139899%_))
            (let ((_%e139902%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139899%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e139902%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e139902%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e139902%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn139899%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn139899%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn139899%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn139895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139895%_))
            (let ((_%e139897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139895%_ 'exception))))
              (macro-noncontinuable-exception? _%e139897%_))
            (macro-noncontinuable-exception? _%exn139895%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn139889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139889%_))
            (let ((_%e139892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139889%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e139892%_)
                  (macro-noncontinuable-exception-reason _%e139892%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e139892%_ '())))))
            (if (macro-noncontinuable-exception? _%exn139889%_)
                (macro-noncontinuable-exception-reason _%exn139889%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn139889%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn139885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139885%_))
            (let ((_%e139887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139885%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e139887%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn139885%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn139881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139881%_))
            (let ((_%e139883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139881%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e139883%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e139883%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e139883%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn139881%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn139881%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn139881%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn139875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139875%_))
            (let ((_%e139878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139875%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e139878%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e139878%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e139878%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn139875%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn139875%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn139875%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn139871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139871%_))
            (let ((_%e139873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139871%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e139873%_))
            (macro-nonprocedure-operator-exception? _%exn139871%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn139867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139867%_))
            (let ((_%e139869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139867%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e139869%_)
                  (macro-nonprocedure-operator-exception-arguments _%e139869%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e139869%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn139867%_)
                (macro-nonprocedure-operator-exception-arguments _%exn139867%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn139867%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn139863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139863%_))
            (let ((_%e139865%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139863%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e139865%_)
                  (macro-nonprocedure-operator-exception-code _%e139865%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e139865%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn139863%_)
                (macro-nonprocedure-operator-exception-code _%exn139863%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn139863%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn139859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139859%_))
            (let ((_%e139861%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139859%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e139861%_)
                  (macro-nonprocedure-operator-exception-operator _%e139861%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e139861%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn139859%_)
                (macro-nonprocedure-operator-exception-operator _%exn139859%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn139859%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn139853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139853%_))
            (let ((_%e139856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139853%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e139856%_)
                  (macro-nonprocedure-operator-exception-rte _%e139856%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e139856%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn139853%_)
                (macro-nonprocedure-operator-exception-rte _%exn139853%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn139853%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn139849%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139849%_))
            (let ((_%e139851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139849%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e139851%_))
            (macro-not-in-compilation-context-exception? _%exn139849%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn139845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139845%_))
            (let ((_%e139847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139845%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e139847%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e139847%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e139847%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn139845%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn139845%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn139845%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn139839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139839%_))
            (let ((_%e139842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139839%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e139842%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e139842%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e139842%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn139839%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn139839%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn139839%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn139835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139835%_))
            (let ((_%e139837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139835%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e139837%_))
            (macro-number-of-arguments-limit-exception? _%exn139835%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn139831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139831%_))
            (let ((_%e139833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139831%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e139833%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e139833%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e139833%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn139831%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn139831%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn139831%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn139825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139825%_))
            (let ((_%e139828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139825%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e139828%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e139828%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e139828%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn139825%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn139825%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn139825%_ '())))))))
    (define os-exception?
      (lambda (_%exn139821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139821%_))
            (let ((_%e139823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139821%_ 'exception))))
              (macro-os-exception? _%e139823%_))
            (macro-os-exception? _%exn139821%_))))
    (define os-exception-arguments
      (lambda (_%exn139817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139817%_))
            (let ((_%e139819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139817%_ 'exception))))
              (if (macro-os-exception? _%e139819%_)
                  (macro-os-exception-arguments _%e139819%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e139819%_ '())))))
            (if (macro-os-exception? _%exn139817%_)
                (macro-os-exception-arguments _%exn139817%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn139817%_ '())))))))
    (define os-exception-code
      (lambda (_%exn139813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139813%_))
            (let ((_%e139815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139813%_ 'exception))))
              (if (macro-os-exception? _%e139815%_)
                  (macro-os-exception-code _%e139815%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e139815%_ '())))))
            (if (macro-os-exception? _%exn139813%_)
                (macro-os-exception-code _%exn139813%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn139813%_ '())))))))
    (define os-exception-message
      (lambda (_%exn139809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139809%_))
            (let ((_%e139811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139809%_ 'exception))))
              (if (macro-os-exception? _%e139811%_)
                  (macro-os-exception-message _%e139811%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e139811%_ '())))))
            (if (macro-os-exception? _%exn139809%_)
                (macro-os-exception-message _%exn139809%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn139809%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn139803%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139803%_))
            (let ((_%e139806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139803%_ 'exception))))
              (if (macro-os-exception? _%e139806%_)
                  (macro-os-exception-procedure _%e139806%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e139806%_ '())))))
            (if (macro-os-exception? _%exn139803%_)
                (macro-os-exception-procedure _%exn139803%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn139803%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn139799%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139799%_))
            (let ((_%e139801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139799%_ 'exception))))
              (macro-permission-denied-exception? _%e139801%_))
            (macro-permission-denied-exception? _%exn139799%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn139795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139795%_))
            (let ((_%e139797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139795%_ 'exception))))
              (if (macro-permission-denied-exception? _%e139797%_)
                  (macro-permission-denied-exception-arguments _%e139797%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e139797%_ '())))))
            (if (macro-permission-denied-exception? _%exn139795%_)
                (macro-permission-denied-exception-arguments _%exn139795%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn139795%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn139789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139789%_))
            (let ((_%e139792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139789%_ 'exception))))
              (if (macro-permission-denied-exception? _%e139792%_)
                  (macro-permission-denied-exception-procedure _%e139792%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e139792%_ '())))))
            (if (macro-permission-denied-exception? _%exn139789%_)
                (macro-permission-denied-exception-procedure _%exn139789%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn139789%_ '())))))))
    (define range-exception?
      (lambda (_%exn139785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139785%_))
            (let ((_%e139787%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139785%_ 'exception))))
              (macro-range-exception? _%e139787%_))
            (macro-range-exception? _%exn139785%_))))
    (define range-exception-arg-id
      (lambda (_%exn139781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139781%_))
            (let ((_%e139783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139781%_ 'exception))))
              (if (macro-range-exception? _%e139783%_)
                  (macro-range-exception-arg-id _%e139783%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e139783%_ '())))))
            (if (macro-range-exception? _%exn139781%_)
                (macro-range-exception-arg-id _%exn139781%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn139781%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn139777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139777%_))
            (let ((_%e139779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139777%_ 'exception))))
              (if (macro-range-exception? _%e139779%_)
                  (macro-range-exception-arguments _%e139779%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e139779%_ '())))))
            (if (macro-range-exception? _%exn139777%_)
                (macro-range-exception-arguments _%exn139777%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn139777%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn139771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139771%_))
            (let ((_%e139774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139771%_ 'exception))))
              (if (macro-range-exception? _%e139774%_)
                  (macro-range-exception-procedure _%e139774%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e139774%_ '())))))
            (if (macro-range-exception? _%exn139771%_)
                (macro-range-exception-procedure _%exn139771%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn139771%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn139767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139767%_))
            (let ((_%e139769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139767%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e139769%_))
            (macro-rpc-remote-error-exception? _%exn139767%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn139763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139763%_))
            (let ((_%e139765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139763%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e139765%_)
                  (macro-rpc-remote-error-exception-arguments _%e139765%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e139765%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn139763%_)
                (macro-rpc-remote-error-exception-arguments _%exn139763%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn139763%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn139759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139759%_))
            (let ((_%e139761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139759%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e139761%_)
                  (macro-rpc-remote-error-exception-message _%e139761%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e139761%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn139759%_)
                (macro-rpc-remote-error-exception-message _%exn139759%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn139759%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn139753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139753%_))
            (let ((_%e139756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139753%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e139756%_)
                  (macro-rpc-remote-error-exception-procedure _%e139756%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e139756%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn139753%_)
                (macro-rpc-remote-error-exception-procedure _%exn139753%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn139753%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn139749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139749%_))
            (let ((_%e139751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139749%_ 'exception))))
              (macro-scheduler-exception? _%e139751%_))
            (macro-scheduler-exception? _%exn139749%_))))
    (define scheduler-exception-reason
      (lambda (_%exn139743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139743%_))
            (let ((_%e139746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139743%_ 'exception))))
              (if (macro-scheduler-exception? _%e139746%_)
                  (macro-scheduler-exception-reason _%e139746%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e139746%_ '())))))
            (if (macro-scheduler-exception? _%exn139743%_)
                (macro-scheduler-exception-reason _%exn139743%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn139743%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn139739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139739%_))
            (let ((_%e139741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139739%_ 'exception))))
              (macro-sfun-conversion-exception? _%e139741%_))
            (macro-sfun-conversion-exception? _%exn139739%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn139735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139735%_))
            (let ((_%e139737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139735%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e139737%_)
                  (macro-sfun-conversion-exception-arguments _%e139737%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e139737%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn139735%_)
                (macro-sfun-conversion-exception-arguments _%exn139735%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn139735%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn139731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139731%_))
            (let ((_%e139733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139731%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e139733%_)
                  (macro-sfun-conversion-exception-code _%e139733%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e139733%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn139731%_)
                (macro-sfun-conversion-exception-code _%exn139731%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn139731%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn139727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139727%_))
            (let ((_%e139729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139727%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e139729%_)
                  (macro-sfun-conversion-exception-message _%e139729%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e139729%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn139727%_)
                (macro-sfun-conversion-exception-message _%exn139727%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn139727%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn139721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139721%_))
            (let ((_%e139724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139721%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e139724%_)
                  (macro-sfun-conversion-exception-procedure _%e139724%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e139724%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn139721%_)
                (macro-sfun-conversion-exception-procedure _%exn139721%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn139721%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn139715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139715%_))
            (let ((_%e139718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139715%_ 'exception))))
              (macro-stack-overflow-exception? _%e139718%_))
            (macro-stack-overflow-exception? _%exn139715%_))))
    (define started-thread-exception?
      (lambda (_%exn139711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139711%_))
            (let ((_%e139713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139711%_ 'exception))))
              (macro-started-thread-exception? _%e139713%_))
            (macro-started-thread-exception? _%exn139711%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn139707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139707%_))
            (let ((_%e139709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139707%_ 'exception))))
              (if (macro-started-thread-exception? _%e139709%_)
                  (macro-started-thread-exception-arguments _%e139709%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e139709%_ '())))))
            (if (macro-started-thread-exception? _%exn139707%_)
                (macro-started-thread-exception-arguments _%exn139707%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn139707%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn139701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139701%_))
            (let ((_%e139704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139701%_ 'exception))))
              (if (macro-started-thread-exception? _%e139704%_)
                  (macro-started-thread-exception-procedure _%e139704%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e139704%_ '())))))
            (if (macro-started-thread-exception? _%exn139701%_)
                (macro-started-thread-exception-procedure _%exn139701%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn139701%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn139697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139697%_))
            (let ((_%e139699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139697%_ 'exception))))
              (macro-terminated-thread-exception? _%e139699%_))
            (macro-terminated-thread-exception? _%exn139697%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn139693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139693%_))
            (let ((_%e139695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139693%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e139695%_)
                  (macro-terminated-thread-exception-arguments _%e139695%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e139695%_ '())))))
            (if (macro-terminated-thread-exception? _%exn139693%_)
                (macro-terminated-thread-exception-arguments _%exn139693%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn139693%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn139687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139687%_))
            (let ((_%e139690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139687%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e139690%_)
                  (macro-terminated-thread-exception-procedure _%e139690%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e139690%_ '())))))
            (if (macro-terminated-thread-exception? _%exn139687%_)
                (macro-terminated-thread-exception-procedure _%exn139687%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn139687%_ '())))))))
    (define type-exception?
      (lambda (_%exn139683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139683%_))
            (let ((_%e139685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139683%_ 'exception))))
              (macro-type-exception? _%e139685%_))
            (macro-type-exception? _%exn139683%_))))
    (define type-exception-arg-id
      (lambda (_%exn139679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139679%_))
            (let ((_%e139681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139679%_ 'exception))))
              (if (macro-type-exception? _%e139681%_)
                  (macro-type-exception-arg-id _%e139681%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e139681%_ '())))))
            (if (macro-type-exception? _%exn139679%_)
                (macro-type-exception-arg-id _%exn139679%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn139679%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn139675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139675%_))
            (let ((_%e139677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139675%_ 'exception))))
              (if (macro-type-exception? _%e139677%_)
                  (macro-type-exception-arguments _%e139677%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e139677%_ '())))))
            (if (macro-type-exception? _%exn139675%_)
                (macro-type-exception-arguments _%exn139675%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn139675%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn139671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139671%_))
            (let ((_%e139673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139671%_ 'exception))))
              (if (macro-type-exception? _%e139673%_)
                  (macro-type-exception-procedure _%e139673%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e139673%_ '())))))
            (if (macro-type-exception? _%exn139671%_)
                (macro-type-exception-procedure _%exn139671%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn139671%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn139665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139665%_))
            (let ((_%e139668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139665%_ 'exception))))
              (if (macro-type-exception? _%e139668%_)
                  (macro-type-exception-type-id _%e139668%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e139668%_ '())))))
            (if (macro-type-exception? _%exn139665%_)
                (macro-type-exception-type-id _%exn139665%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn139665%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn139661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139661%_))
            (let ((_%e139663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139661%_ 'exception))))
              (macro-unbound-global-exception? _%e139663%_))
            (macro-unbound-global-exception? _%exn139661%_))))
    (define unbound-global-exception-code
      (lambda (_%exn139657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139657%_))
            (let ((_%e139659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139657%_ 'exception))))
              (if (macro-unbound-global-exception? _%e139659%_)
                  (macro-unbound-global-exception-code _%e139659%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e139659%_ '())))))
            (if (macro-unbound-global-exception? _%exn139657%_)
                (macro-unbound-global-exception-code _%exn139657%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn139657%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn139653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139653%_))
            (let ((_%e139655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139653%_ 'exception))))
              (if (macro-unbound-global-exception? _%e139655%_)
                  (macro-unbound-global-exception-rte _%e139655%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e139655%_ '())))))
            (if (macro-unbound-global-exception? _%exn139653%_)
                (macro-unbound-global-exception-rte _%exn139653%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn139653%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn139647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139647%_))
            (let ((_%e139650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139647%_ 'exception))))
              (if (macro-unbound-global-exception? _%e139650%_)
                  (macro-unbound-global-exception-variable _%e139650%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e139650%_ '())))))
            (if (macro-unbound-global-exception? _%exn139647%_)
                (macro-unbound-global-exception-variable _%exn139647%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn139647%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn139643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139643%_))
            (let ((_%e139645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139643%_ 'exception))))
              (macro-unbound-key-exception? _%e139645%_))
            (macro-unbound-key-exception? _%exn139643%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn139639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139639%_))
            (let ((_%e139641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139639%_ 'exception))))
              (if (macro-unbound-key-exception? _%e139641%_)
                  (macro-unbound-key-exception-arguments _%e139641%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e139641%_ '())))))
            (if (macro-unbound-key-exception? _%exn139639%_)
                (macro-unbound-key-exception-arguments _%exn139639%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn139639%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn139633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139633%_))
            (let ((_%e139636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139633%_ 'exception))))
              (if (macro-unbound-key-exception? _%e139636%_)
                  (macro-unbound-key-exception-procedure _%e139636%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e139636%_ '())))))
            (if (macro-unbound-key-exception? _%exn139633%_)
                (macro-unbound-key-exception-procedure _%exn139633%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn139633%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn139629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139629%_))
            (let ((_%e139631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139629%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e139631%_))
            (macro-unbound-os-environment-variable-exception? _%exn139629%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn139625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139625%_))
            (let ((_%e139627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139625%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e139627%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e139627%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e139627%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn139625%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn139625%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn139625%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn139619%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139619%_))
            (let ((_%e139622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139619%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e139622%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e139622%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e139622%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn139619%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn139619%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn139619%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn139615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139615%_))
            (let ((_%e139617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139615%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e139617%_))
            (macro-unbound-serial-number-exception? _%exn139615%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn139611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139611%_))
            (let ((_%e139613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139611%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e139613%_)
                  (macro-unbound-serial-number-exception-arguments _%e139613%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e139613%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn139611%_)
                (macro-unbound-serial-number-exception-arguments _%exn139611%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn139611%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn139605%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139605%_))
            (let ((_%e139608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139605%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e139608%_)
                  (macro-unbound-serial-number-exception-procedure _%e139608%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e139608%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn139605%_)
                (macro-unbound-serial-number-exception-procedure _%exn139605%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn139605%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn139601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139601%_))
            (let ((_%e139603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139601%_ 'exception))))
              (macro-uncaught-exception? _%e139603%_))
            (macro-uncaught-exception? _%exn139601%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn139597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139597%_))
            (let ((_%e139599%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139597%_ 'exception))))
              (if (macro-uncaught-exception? _%e139599%_)
                  (macro-uncaught-exception-arguments _%e139599%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e139599%_ '())))))
            (if (macro-uncaught-exception? _%exn139597%_)
                (macro-uncaught-exception-arguments _%exn139597%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn139597%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn139593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139593%_))
            (let ((_%e139595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139593%_ 'exception))))
              (if (macro-uncaught-exception? _%e139595%_)
                  (macro-uncaught-exception-procedure _%e139595%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e139595%_ '())))))
            (if (macro-uncaught-exception? _%exn139593%_)
                (macro-uncaught-exception-procedure _%exn139593%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn139593%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn139587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139587%_))
            (let ((_%e139590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139587%_ 'exception))))
              (if (macro-uncaught-exception? _%e139590%_)
                  (macro-uncaught-exception-reason _%e139590%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e139590%_ '())))))
            (if (macro-uncaught-exception? _%exn139587%_)
                (macro-uncaught-exception-reason _%exn139587%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn139587%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn139583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139583%_))
            (let ((_%e139585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139583%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e139585%_))
            (macro-uninitialized-thread-exception? _%exn139583%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn139579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139579%_))
            (let ((_%e139581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139579%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e139581%_)
                  (macro-uninitialized-thread-exception-arguments _%e139581%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e139581%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn139579%_)
                (macro-uninitialized-thread-exception-arguments _%exn139579%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn139579%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn139573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139573%_))
            (let ((_%e139576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139573%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e139576%_)
                  (macro-uninitialized-thread-exception-procedure _%e139576%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e139576%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn139573%_)
                (macro-uninitialized-thread-exception-procedure _%exn139573%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn139573%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn139569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139569%_))
            (let ((_%e139571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139569%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e139571%_))
            (macro-unknown-keyword-argument-exception? _%exn139569%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn139565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139565%_))
            (let ((_%e139567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139565%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e139567%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e139567%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e139567%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn139565%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn139565%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn139565%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn139559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139559%_))
            (let ((_%e139562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139559%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e139562%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e139562%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e139562%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn139559%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn139559%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn139559%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn139555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139555%_))
            (let ((_%e139557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139555%_ 'exception))))
              (macro-unterminated-process-exception? _%e139557%_))
            (macro-unterminated-process-exception? _%exn139555%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn139551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139551%_))
            (let ((_%e139553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139551%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e139553%_)
                  (macro-unterminated-process-exception-arguments _%e139553%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e139553%_ '())))))
            (if (macro-unterminated-process-exception? _%exn139551%_)
                (macro-unterminated-process-exception-arguments _%exn139551%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn139551%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn139545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139545%_))
            (let ((_%e139548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139545%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e139548%_)
                  (macro-unterminated-process-exception-procedure _%e139548%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e139548%_ '())))))
            (if (macro-unterminated-process-exception? _%exn139545%_)
                (macro-unterminated-process-exception-procedure _%exn139545%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn139545%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn139541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139541%_))
            (let ((_%e139543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139541%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e139543%_))
            (macro-wrong-number-of-arguments-exception? _%exn139541%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn139537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139537%_))
            (let ((_%e139539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139537%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e139539%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e139539%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e139539%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn139537%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn139537%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn139537%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn139531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139531%_))
            (let ((_%e139534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139531%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e139534%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e139534%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e139534%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn139531%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn139531%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn139531%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn139527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139527%_))
            (let ((_%e139529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139527%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e139529%_))
            (macro-wrong-number-of-values-exception? _%exn139527%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn139523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139523%_))
            (let ((_%e139525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139523%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e139525%_)
                  (macro-wrong-number-of-values-exception-code _%e139525%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e139525%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn139523%_)
                (macro-wrong-number-of-values-exception-code _%exn139523%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn139523%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn139519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139519%_))
            (let ((_%e139521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139519%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e139521%_)
                  (macro-wrong-number-of-values-exception-rte _%e139521%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e139521%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn139519%_)
                (macro-wrong-number-of-values-exception-rte _%exn139519%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn139519%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn139513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139513%_))
            (let ((_%e139516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139513%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e139516%_)
                  (macro-wrong-number-of-values-exception-vals _%e139516%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e139516%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn139513%_)
                (macro-wrong-number-of-values-exception-vals _%exn139513%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn139513%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn139507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139507%_))
            (let ((_%e139510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139507%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e139510%_))
            (macro-wrong-processor-c-return-exception? _%exn139507%_))))))
