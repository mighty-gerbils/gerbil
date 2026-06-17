(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1781697558)
  (begin
    (define Exception::t
      (let ((__tmp145371 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp145371 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args145289%_
        (apply make-instance Exception::t _%$args145289%_)))
    (define StackTrace::t
      (let ((__tmp145372 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp145372
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args145286%_
        (apply make-instance StackTrace::t _%$args145286%_)))
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
      (let ((__tmp145373 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp145373
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args145283%_ (apply make-instance Error::t _%$args145283%_)))
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
      (let ((__tmp145374 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp145374
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args145280%_
        (apply make-instance ContractViolation::t _%$args145280%_)))
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
      (let ((__tmp145375 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp145375
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args145277%_
        (apply make-instance RuntimeException::t _%$args145277%_)))
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
      (lambda (_%exn145272%_ _%continue145273%_)
        (let ((_%exn145275%_ (wrap-runtime-exception _%exn145272%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn145275%_ _%continue145273%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn145268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn145268%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn145268%_ 'continuation))
                '#!void
                (let ((__tmp145376
                       (lambda (_%cont145270%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn145268%_
                            'continuation
                            _%cont145270%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp145376)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn145268%_))))
    (define error
      (lambda (_%message145265%_ . _%irritants145266%_)
        (raise (let ((__obj145368
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj145368
                  _%message145265%_
                  'irritants:
                  _%irritants145266%_)
                 __obj145368))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords145240%_
               _%$%ctx145235145241%_
               _%$%contract-expr145236145242%_
               _%$%value145237145243%_
               _%message145244%_)
        (let* ((_%ctx145246%_
                (if (eq? _%$%ctx145235145241%_ absent-value)
                    '#f
                    _%$%ctx145235145241%_))
               (_%contract-expr145248%_
                (if (eq? _%$%contract-expr145236145242%_ absent-value)
                    '#f
                    _%$%contract-expr145236145242%_))
               (_%value145250%_
                (if (eq? _%$%value145237145243%_ absent-value)
                    '#f
                    _%$%value145237145243%_)))
          (raise (let ((__obj145369
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj145369
                    _%message145244%_
                    'where:
                    _%ctx145246%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr145248%_
                                (cons 'value: (cons _%value145250%_ '())))))
                   __obj145369)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords145255%_ . _%args145256%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords145255%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145255%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145255%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145255%_
                  'value:
                  absent-value))
               _%args145256%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args145238145262%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args145238145262%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler145209%_ _%thunk145210%_)
        (let* ((_%handler145213%_ _%handler145209%_)
               (_%thunk145221%_ _%thunk145210%_)
               (__tmp145377
                (lambda (_%exn145230%_)
                  (let ((_%exn145232%_ (wrap-runtime-exception _%exn145230%_)))
                    (declare (not safe))
                    (_%handler145213%_ _%exn145232%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp145377 _%thunk145221%_))))
    (define with-exception-handler
      (lambda (_%handler145184%_ _%thunk145185%_)
        (if (procedure? _%handler145184%_)
            (let ((_%handler145189%_ _%handler145184%_))
              (if (procedure? _%thunk145185%_)
                  (let ((_%thunk145199%_ _%thunk145185%_))
                    (__with-exception-handler
                     _%handler145189%_
                     _%thunk145199%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk145185%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler145184%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler145126%_ _%thunk145127%_)
        (let* ((_%handler145130%_ _%handler145126%_)
               (_%thunk145138%_ _%thunk145127%_)
               (__tmp145378
                (lambda (_%cont145147%_)
                  (let* ((_%handler145151%_
                          (lambda (_%exn145149%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont145147%_
                               _%handler145130%_
                               _%exn145149%_))))
                         (_%thunk145154%_ _%thunk145138%_)
                         (_%handler145159%_ _%handler145151%_)
                         (_%thunk145174%_ _%thunk145154%_))
                    (__with-exception-handler
                     _%handler145159%_
                     _%thunk145174%_)))))
          (declare (not safe))
          (##continuation-capture __tmp145378))))
    (define with-catch
      (lambda (_%handler145101%_ _%thunk145102%_)
        (if (procedure? _%handler145101%_)
            (let ((_%handler145106%_ _%handler145101%_))
              (if (procedure? _%thunk145102%_)
                  (let ((_%thunk145116%_ _%thunk145102%_))
                    (__with-catch _%handler145106%_ _%thunk145116%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk145102%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler145101%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn145088%_)
        (if (or (heap-overflow-exception? _%exn145088%_)
                (stack-overflow-exception? _%exn145088%_))
            _%exn145088%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn145088%_))
                _%exn145088%_
                (if (macro-exception? _%exn145088%_)
                    (let ((_%rte145096%_
                           (let ((__obj145370
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj145370
                                _%exn145088%_
                                '2
                                '#f
                                '#f))
                             __obj145370)))
                      (let ((__tmp145379
                             (lambda (_%cont145098%_)
                               (let ((__tmp145380
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont145098%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte145096%_
                                  'continuation
                                  __tmp145380)))))
                        (declare (not safe))
                        (##continuation-capture __tmp145379))
                      _%rte145096%_)
                    _%exn145088%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj145083%_)
        (let ((_%$e145085%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj145083%_))))
          (if _%$e145085%_ _%$e145085%_ (error-exception? _%obj145083%_)))))
    (define error-message
      (lambda (_%obj145042%_)
        (let ((_%$e145078%_
               (let* ((_%obj145044%_ _%obj145042%_)
                      (_%slot145047%_ 'message)
                      (_%E145050%_ false)
                      (_%slot145055%_ _%slot145047%_)
                      (_%E145068%_ _%E145050%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj145044%_ _%slot145055%_ _%E145068%_))))
          (if _%$e145078%_
              _%$e145078%_
              (if (error-exception? _%obj145042%_)
                  (error-exception-message _%obj145042%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj145037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj145037%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj145037%_ 'irritants))
            (if (error-exception? _%obj145037%_)
                (error-exception-parameters _%obj145037%_)
                '#f))))
    (define error-trace
      (lambda (_%obj145035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj145035%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj145035%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e144996%_ _%port144997%_)
        (let ((_%$e145019%_
               (let* ((_%obj144999%_ _%e144996%_)
                      (_%id145002%_ 'display-exception)
                      (_%id145007%_ _%id145002%_))
                 (declare (not safe))
                 (__method-ref _%obj144999%_ _%id145007%_))))
          (if _%$e145019%_
              (_%$e145019%_ _%e144996%_ _%port144997%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e144996%_ _%port144997%_))))))
    (define display-exception__0
      (lambda (_%e145028%_)
        (let ((_%port145030%_ (current-error-port)))
          (display-exception__% _%e145028%_ _%port145030%_))))
    (define display-exception
      (lambda _g145381_
        (let ((_g145382_ (let () (declare (not safe)) (##length _g145381_))))
          (cond ((let () (declare (not safe)) (##fx= _g145382_ 1))
                 (apply display-exception__0 _g145381_))
                ((let () (declare (not safe)) (##fx= _g145382_ 2))
                 (apply display-exception__% _g145381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g145381_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self144974%_ _%message144975%_ . _%rest144976%_)
        (let* ((_%self144979%_ _%self144974%_)
               (_%message144993%_
                (if (string? _%message144975%_)
                    _%message144975%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g144988144990%_)
                       (display _%message144975%_ _%$%g144988144990%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self144979%_ 'message _%message144993%_))
          (apply class-instance-init! _%self144979%_ _%rest144976%_))))
    (define Error:::init!::specialize
      (lambda (__klass145291 __method-table145292)
        (let ((__message145293
               (let ((__slot145294
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145291 'message))))
                 (if __slot145294
                     __slot145294
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self144974%_ _%message144975%_ . _%rest144976%_)
            (let* ((_%self144979%_ _%self144974%_)
                   (_%message144993%_
                    (if (string? _%message144975%_)
                        _%message144975%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g144988144990%_)
                           (display _%message144975%_ _%$%g144988144990%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self144979%_
                 _%message144993%_
                 __message145293
                 '#f
                 '#f))
              (apply class-instance-init! _%self144979%_ _%rest144976%_))))))
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
      (lambda (_%self144679%_ _%port144680%_)
        (let ((_%self144683%_ _%self144679%_))
          (let ((_%tmp-port144693%_ (open-output-string))
                (_%display-error-newline144694%_
                 (> (output-port-column _%port144680%_) '0)))
            (fix-port-width! _%tmp-port144693%_)
            (let ((__tmp145383
                   (lambda ()
                     (if _%display-error-newline144694%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e144697%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self144683%_ 'where))))
                       (if _%$e144697%_ (display _%$e144697%_) (display '"?")))
                     (let ((__tmp145384
                            (let ((__tmp145385
                                   (let ((_%obj144701%_ _%self144683%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj144701%_))
                                         (let ((_%obj144706%_ _%obj144701%_))
                                           (declare (not safe))
                                           (__object-class _%obj144706%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj144701%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp145385))))
                       (declare (not safe))
                       (display* '" [" __tmp145384 '"]: "))
                     (let ((__tmp145386
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self144683%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp145386))
                     (let ((_%irritants144721%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self144683%_ 'irritants))))
                       (if (null? _%irritants144721%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj144723%_)
                                (if (u8vector? _%obj144723%_)
                                    (let ((__tmp145387
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj144723%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp145387))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj144723%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants144721%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont144724144726%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self144683%_
                                   'continuation))))
                           (if _%$%cont144724144726%_
                               (let ((_%cont144728%_ _%$%cont144724144726%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont144728%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp145383
               current-output-port
               _%tmp-port144693%_))
            (let ((__tmp145388 (get-output-string _%tmp-port144693%_)))
              (declare (not safe))
              (##write-string __tmp145388 _%port144680%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass145295 __method-table145296)
        (let ((__continuation145297
               (let ((__slot145301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145295 'continuation))))
                 (if __slot145301
                     __slot145301
                     (error '"Unknown slot" 'continuation))))
              (__message145298
               (let ((__slot145302
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145295 'message))))
                 (if __slot145302
                     __slot145302
                     (error '"Unknown slot" 'message))))
              (__irritants145299
               (let ((__slot145303
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145295 'irritants))))
                 (if __slot145303
                     __slot145303
                     (error '"Unknown slot" 'irritants))))
              (__where145300
               (let ((__slot145304
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145295 'where))))
                 (if __slot145304
                     __slot145304
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self144679%_ _%port144680%_)
            (let ((_%self144683%_ _%self144679%_))
              (let ((_%tmp-port144693%_ (open-output-string))
                    (_%display-error-newline144694%_
                     (> (output-port-column _%port144680%_) '0)))
                (fix-port-width! _%tmp-port144693%_)
                (let ((__tmp145389
                       (lambda ()
                         (if _%display-error-newline144694%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e144697%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self144683%_
                                   __where145300
                                   '#f
                                   '#f))))
                           (if _%$e144697%_
                               (display _%$e144697%_)
                               (display '"?")))
                         (let ((__tmp145390
                                (let ((__tmp145391
                                       (let ((_%obj144701%_ _%self144683%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj144701%_))
                                             (let ((_%obj144706%_
                                                    _%obj144701%_))
                                               (declare (not safe))
                                               (__object-class _%obj144706%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj144701%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp145391))))
                           (declare (not safe))
                           (display* '" [" __tmp145390 '"]: "))
                         (let ((__tmp145392
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self144683%_
                                   __message145298
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp145392))
                         (let ((_%irritants144721%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self144683%_
                                   __irritants145299
                                   '#f
                                   '#f))))
                           (if (null? _%irritants144721%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj144723%_)
                                    (if (u8vector? _%obj144723%_)
                                        (let ((__tmp145393
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj144723%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp145393))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj144723%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants144721%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont144724144726%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self144683%_
                                       __continuation145297
                                       '#f
                                       '#f))))
                               (if _%$%cont144724144726%_
                                   (let ((_%cont144728%_
                                          _%$%cont144724144726%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont144728%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp145389
                   current-output-port
                   _%tmp-port144693%_))
                (let ((__tmp145394 (get-output-string _%tmp-port144693%_)))
                  (declare (not safe))
                  (##write-string __tmp145394 _%port144680%_))))))))
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
      (lambda (_%self144536%_ _%port144537%_)
        (let* ((_%self144540%_ _%self144536%_)
               (_%tmp-port144550%_ (open-output-string)))
          (fix-port-width! _%tmp-port144550%_)
          (let ((__tmp145395
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self144540%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp145395 _%tmp-port144550%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont144551144553%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self144540%_ 'continuation))))
                (if _%$%cont144551144553%_
                    (let ((_%cont144555%_ _%$%cont144551144553%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port144550%_)
                      (newline _%tmp-port144550%_)
                      (display-continuation-backtrace
                       _%cont144555%_
                       _%tmp-port144550%_))
                    '#f))
              '#!void)
          (let ((__tmp145396 (get-output-string _%tmp-port144550%_)))
            (declare (not safe))
            (##write-string __tmp145396 _%port144537%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass145305 __method-table145306)
        (let ((__exception145307
               (let ((__slot145309
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145305 'exception))))
                 (if __slot145309
                     __slot145309
                     (error '"Unknown slot" 'exception))))
              (__continuation145308
               (let ((__slot145310
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass145305 'continuation))))
                 (if __slot145310
                     __slot145310
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self144536%_ _%port144537%_)
            (let* ((_%self144540%_ _%self144536%_)
                   (_%tmp-port144550%_ (open-output-string)))
              (fix-port-width! _%tmp-port144550%_)
              (let ((__tmp145397
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self144540%_
                        __exception145307
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp145397 _%tmp-port144550%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont144551144553%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self144540%_
                            __continuation145308
                            '#f
                            '#f))))
                    (if _%$%cont144551144553%_
                        (let ((_%cont144555%_ _%$%cont144551144553%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port144550%_)
                          (newline _%tmp-port144550%_)
                          (display-continuation-backtrace
                           _%cont144555%_
                           _%tmp-port144550%_))
                        '#f))
                  '#!void)
              (let ((__tmp145398 (get-output-string _%tmp-port144550%_)))
                (declare (not safe))
                (##write-string __tmp145398 _%port144537%_)))))))
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
      (lambda (_%port144408%_)
        (if (macro-character-port? _%port144408%_)
            (let ((_%old-width144410%_
                   (macro-character-port-output-width _%port144408%_)))
              (macro-character-port-output-width-set!
               _%port144408%_
               (lambda (_%port144412%_) '512))
              _%old-width144410%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port144405%_ _%old-width144406%_)
        (if (macro-character-port? _%port144405%_)
            (macro-character-port-output-width-set!
             _%port144405%_
             _%old-width144406%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e144403%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e144403%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn144397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144397%_))
            (let ((_%e144400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144397%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e144400%_))
            (macro-abandoned-mutex-exception? _%exn144397%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn144393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144393%_))
            (let ((_%e144395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144393%_ 'exception))))
              (macro-cfun-conversion-exception? _%e144395%_))
            (macro-cfun-conversion-exception? _%exn144393%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn144389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144389%_))
            (let ((_%e144391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144389%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e144391%_)
                  (macro-cfun-conversion-exception-arguments _%e144391%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e144391%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn144389%_)
                (macro-cfun-conversion-exception-arguments _%exn144389%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn144389%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn144385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144385%_))
            (let ((_%e144387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144385%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e144387%_)
                  (macro-cfun-conversion-exception-code _%e144387%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e144387%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn144385%_)
                (macro-cfun-conversion-exception-code _%exn144385%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn144385%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn144381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144381%_))
            (let ((_%e144383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144381%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e144383%_)
                  (macro-cfun-conversion-exception-message _%e144383%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e144383%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn144381%_)
                (macro-cfun-conversion-exception-message _%exn144381%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn144381%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn144375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144375%_))
            (let ((_%e144378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144375%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e144378%_)
                  (macro-cfun-conversion-exception-procedure _%e144378%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e144378%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn144375%_)
                (macro-cfun-conversion-exception-procedure _%exn144375%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn144375%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn144371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144371%_))
            (let ((_%e144373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144371%_ 'exception))))
              (macro-datum-parsing-exception? _%e144373%_))
            (macro-datum-parsing-exception? _%exn144371%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn144367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144367%_))
            (let ((_%e144369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144367%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e144369%_)
                  (macro-datum-parsing-exception-kind _%e144369%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e144369%_ '())))))
            (if (macro-datum-parsing-exception? _%exn144367%_)
                (macro-datum-parsing-exception-kind _%exn144367%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn144367%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn144363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144363%_))
            (let ((_%e144365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144363%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e144365%_)
                  (macro-datum-parsing-exception-parameters _%e144365%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e144365%_ '())))))
            (if (macro-datum-parsing-exception? _%exn144363%_)
                (macro-datum-parsing-exception-parameters _%exn144363%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn144363%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn144357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144357%_))
            (let ((_%e144360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144357%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e144360%_)
                  (macro-datum-parsing-exception-readenv _%e144360%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e144360%_ '())))))
            (if (macro-datum-parsing-exception? _%exn144357%_)
                (macro-datum-parsing-exception-readenv _%exn144357%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn144357%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn144351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144351%_))
            (let ((_%e144354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144351%_ 'exception))))
              (macro-deadlock-exception? _%e144354%_))
            (macro-deadlock-exception? _%exn144351%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn144347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144347%_))
            (let ((_%e144349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144347%_ 'exception))))
              (macro-divide-by-zero-exception? _%e144349%_))
            (macro-divide-by-zero-exception? _%exn144347%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn144343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144343%_))
            (let ((_%e144345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144343%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e144345%_)
                  (macro-divide-by-zero-exception-arguments _%e144345%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e144345%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn144343%_)
                (macro-divide-by-zero-exception-arguments _%exn144343%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn144343%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn144337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144337%_))
            (let ((_%e144340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144337%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e144340%_)
                  (macro-divide-by-zero-exception-procedure _%e144340%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e144340%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn144337%_)
                (macro-divide-by-zero-exception-procedure _%exn144337%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn144337%_ '())))))))
    (define error-exception?
      (lambda (_%exn144333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144333%_))
            (let ((_%e144335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144333%_ 'exception))))
              (macro-error-exception? _%e144335%_))
            (macro-error-exception? _%exn144333%_))))
    (define error-exception-message
      (lambda (_%exn144329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144329%_))
            (let ((_%e144331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144329%_ 'exception))))
              (if (macro-error-exception? _%e144331%_)
                  (macro-error-exception-message _%e144331%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e144331%_ '())))))
            (if (macro-error-exception? _%exn144329%_)
                (macro-error-exception-message _%exn144329%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn144329%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn144323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144323%_))
            (let ((_%e144326%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144323%_ 'exception))))
              (if (macro-error-exception? _%e144326%_)
                  (macro-error-exception-parameters _%e144326%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e144326%_ '())))))
            (if (macro-error-exception? _%exn144323%_)
                (macro-error-exception-parameters _%exn144323%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn144323%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn144319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144319%_))
            (let ((_%e144321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144319%_ 'exception))))
              (macro-expression-parsing-exception? _%e144321%_))
            (macro-expression-parsing-exception? _%exn144319%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn144315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144315%_))
            (let ((_%e144317%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144315%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e144317%_)
                  (macro-expression-parsing-exception-kind _%e144317%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e144317%_ '())))))
            (if (macro-expression-parsing-exception? _%exn144315%_)
                (macro-expression-parsing-exception-kind _%exn144315%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn144315%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn144311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144311%_))
            (let ((_%e144313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144311%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e144313%_)
                  (macro-expression-parsing-exception-parameters _%e144313%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e144313%_ '())))))
            (if (macro-expression-parsing-exception? _%exn144311%_)
                (macro-expression-parsing-exception-parameters _%exn144311%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn144311%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn144305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144305%_))
            (let ((_%e144308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144305%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e144308%_)
                  (macro-expression-parsing-exception-source _%e144308%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e144308%_ '())))))
            (if (macro-expression-parsing-exception? _%exn144305%_)
                (macro-expression-parsing-exception-source _%exn144305%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn144305%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn144301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144301%_))
            (let ((_%e144303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144301%_ 'exception))))
              (macro-file-exists-exception? _%e144303%_))
            (macro-file-exists-exception? _%exn144301%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn144297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144297%_))
            (let ((_%e144299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144297%_ 'exception))))
              (if (macro-file-exists-exception? _%e144299%_)
                  (macro-file-exists-exception-arguments _%e144299%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e144299%_ '())))))
            (if (macro-file-exists-exception? _%exn144297%_)
                (macro-file-exists-exception-arguments _%exn144297%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn144297%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn144291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144291%_))
            (let ((_%e144294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144291%_ 'exception))))
              (if (macro-file-exists-exception? _%e144294%_)
                  (macro-file-exists-exception-procedure _%e144294%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e144294%_ '())))))
            (if (macro-file-exists-exception? _%exn144291%_)
                (macro-file-exists-exception-procedure _%exn144291%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn144291%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn144287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144287%_))
            (let ((_%e144289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144287%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e144289%_))
            (macro-fixnum-overflow-exception? _%exn144287%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn144283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144283%_))
            (let ((_%e144285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144283%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e144285%_)
                  (macro-fixnum-overflow-exception-arguments _%e144285%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e144285%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn144283%_)
                (macro-fixnum-overflow-exception-arguments _%exn144283%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn144283%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn144277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144277%_))
            (let ((_%e144280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144277%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e144280%_)
                  (macro-fixnum-overflow-exception-procedure _%e144280%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e144280%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn144277%_)
                (macro-fixnum-overflow-exception-procedure _%exn144277%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn144277%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn144271%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144271%_))
            (let ((_%e144274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144271%_ 'exception))))
              (macro-heap-overflow-exception? _%e144274%_))
            (macro-heap-overflow-exception? _%exn144271%_))))
    (define inactive-thread-exception?
      (lambda (_%exn144267%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144267%_))
            (let ((_%e144269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144267%_ 'exception))))
              (macro-inactive-thread-exception? _%e144269%_))
            (macro-inactive-thread-exception? _%exn144267%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn144263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144263%_))
            (let ((_%e144265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144263%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e144265%_)
                  (macro-inactive-thread-exception-arguments _%e144265%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e144265%_ '())))))
            (if (macro-inactive-thread-exception? _%exn144263%_)
                (macro-inactive-thread-exception-arguments _%exn144263%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn144263%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn144257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144257%_))
            (let ((_%e144260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144257%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e144260%_)
                  (macro-inactive-thread-exception-procedure _%e144260%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e144260%_ '())))))
            (if (macro-inactive-thread-exception? _%exn144257%_)
                (macro-inactive-thread-exception-procedure _%exn144257%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn144257%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn144253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144253%_))
            (let ((_%e144255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144253%_ 'exception))))
              (macro-initialized-thread-exception? _%e144255%_))
            (macro-initialized-thread-exception? _%exn144253%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn144249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144249%_))
            (let ((_%e144251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144249%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e144251%_)
                  (macro-initialized-thread-exception-arguments _%e144251%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e144251%_ '())))))
            (if (macro-initialized-thread-exception? _%exn144249%_)
                (macro-initialized-thread-exception-arguments _%exn144249%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn144249%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn144243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144243%_))
            (let ((_%e144246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144243%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e144246%_)
                  (macro-initialized-thread-exception-procedure _%e144246%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e144246%_ '())))))
            (if (macro-initialized-thread-exception? _%exn144243%_)
                (macro-initialized-thread-exception-procedure _%exn144243%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn144243%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn144239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144239%_))
            (let ((_%e144241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144239%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e144241%_))
            (macro-invalid-hash-number-exception? _%exn144239%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn144235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144235%_))
            (let ((_%e144237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144235%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e144237%_)
                  (macro-invalid-hash-number-exception-arguments _%e144237%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e144237%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn144235%_)
                (macro-invalid-hash-number-exception-arguments _%exn144235%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn144235%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn144229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144229%_))
            (let ((_%e144232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144229%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e144232%_)
                  (macro-invalid-hash-number-exception-procedure _%e144232%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e144232%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn144229%_)
                (macro-invalid-hash-number-exception-procedure _%exn144229%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn144229%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn144225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144225%_))
            (let ((_%e144227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144225%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e144227%_))
            (macro-invalid-utf8-encoding-exception? _%exn144225%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn144221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144221%_))
            (let ((_%e144223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144221%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e144223%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e144223%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e144223%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn144221%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn144221%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn144221%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn144215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144215%_))
            (let ((_%e144218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144215%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e144218%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e144218%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e144218%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn144215%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn144215%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn144215%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn144211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144211%_))
            (let ((_%e144213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144211%_ 'exception))))
              (macro-join-timeout-exception? _%e144213%_))
            (macro-join-timeout-exception? _%exn144211%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn144207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144207%_))
            (let ((_%e144209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144207%_ 'exception))))
              (if (macro-join-timeout-exception? _%e144209%_)
                  (macro-join-timeout-exception-arguments _%e144209%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e144209%_ '())))))
            (if (macro-join-timeout-exception? _%exn144207%_)
                (macro-join-timeout-exception-arguments _%exn144207%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn144207%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn144201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144201%_))
            (let ((_%e144204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144201%_ 'exception))))
              (if (macro-join-timeout-exception? _%e144204%_)
                  (macro-join-timeout-exception-procedure _%e144204%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e144204%_ '())))))
            (if (macro-join-timeout-exception? _%exn144201%_)
                (macro-join-timeout-exception-procedure _%exn144201%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn144201%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn144197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144197%_))
            (let ((_%e144199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144197%_ 'exception))))
              (macro-keyword-expected-exception? _%e144199%_))
            (macro-keyword-expected-exception? _%exn144197%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn144193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144193%_))
            (let ((_%e144195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144193%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e144195%_)
                  (macro-keyword-expected-exception-arguments _%e144195%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e144195%_ '())))))
            (if (macro-keyword-expected-exception? _%exn144193%_)
                (macro-keyword-expected-exception-arguments _%exn144193%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn144193%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn144187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144187%_))
            (let ((_%e144190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144187%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e144190%_)
                  (macro-keyword-expected-exception-procedure _%e144190%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e144190%_ '())))))
            (if (macro-keyword-expected-exception? _%exn144187%_)
                (macro-keyword-expected-exception-procedure _%exn144187%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn144187%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn144183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144183%_))
            (let ((_%e144185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144183%_ 'exception))))
              (macro-length-mismatch-exception? _%e144185%_))
            (macro-length-mismatch-exception? _%exn144183%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn144179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144179%_))
            (let ((_%e144181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144179%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e144181%_)
                  (macro-length-mismatch-exception-arg-id _%e144181%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e144181%_ '())))))
            (if (macro-length-mismatch-exception? _%exn144179%_)
                (macro-length-mismatch-exception-arg-id _%exn144179%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn144179%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn144175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144175%_))
            (let ((_%e144177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144175%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e144177%_)
                  (macro-length-mismatch-exception-arguments _%e144177%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e144177%_ '())))))
            (if (macro-length-mismatch-exception? _%exn144175%_)
                (macro-length-mismatch-exception-arguments _%exn144175%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn144175%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn144169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144169%_))
            (let ((_%e144172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144169%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e144172%_)
                  (macro-length-mismatch-exception-procedure _%e144172%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e144172%_ '())))))
            (if (macro-length-mismatch-exception? _%exn144169%_)
                (macro-length-mismatch-exception-procedure _%exn144169%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn144169%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn144165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144165%_))
            (let ((_%e144167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144165%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e144167%_))
            (macro-mailbox-receive-timeout-exception? _%exn144165%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn144161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144161%_))
            (let ((_%e144163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144161%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e144163%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e144163%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e144163%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn144161%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn144161%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn144161%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn144155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144155%_))
            (let ((_%e144158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144155%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e144158%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e144158%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e144158%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn144155%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn144155%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn144155%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn144151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144151%_))
            (let ((_%e144153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144151%_ 'exception))))
              (macro-module-not-found-exception? _%e144153%_))
            (macro-module-not-found-exception? _%exn144151%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn144147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144147%_))
            (let ((_%e144149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144147%_ 'exception))))
              (if (macro-module-not-found-exception? _%e144149%_)
                  (macro-module-not-found-exception-arguments _%e144149%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e144149%_ '())))))
            (if (macro-module-not-found-exception? _%exn144147%_)
                (macro-module-not-found-exception-arguments _%exn144147%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn144147%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn144141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144141%_))
            (let ((_%e144144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144141%_ 'exception))))
              (if (macro-module-not-found-exception? _%e144144%_)
                  (macro-module-not-found-exception-procedure _%e144144%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e144144%_ '())))))
            (if (macro-module-not-found-exception? _%exn144141%_)
                (macro-module-not-found-exception-procedure _%exn144141%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn144141%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn144135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144135%_))
            (let ((_%e144138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144135%_ 'exception))))
              (macro-multiple-c-return-exception? _%e144138%_))
            (macro-multiple-c-return-exception? _%exn144135%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn144131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144131%_))
            (let ((_%e144133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144131%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e144133%_))
            (macro-no-such-file-or-directory-exception? _%exn144131%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn144127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144127%_))
            (let ((_%e144129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144127%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e144129%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e144129%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e144129%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn144127%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn144127%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn144127%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn144121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144121%_))
            (let ((_%e144124%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144121%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e144124%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e144124%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e144124%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn144121%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn144121%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn144121%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn144117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144117%_))
            (let ((_%e144119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144117%_ 'exception))))
              (macro-noncontinuable-exception? _%e144119%_))
            (macro-noncontinuable-exception? _%exn144117%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn144111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144111%_))
            (let ((_%e144114%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144111%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e144114%_)
                  (macro-noncontinuable-exception-reason _%e144114%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e144114%_ '())))))
            (if (macro-noncontinuable-exception? _%exn144111%_)
                (macro-noncontinuable-exception-reason _%exn144111%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn144111%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn144107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144107%_))
            (let ((_%e144109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144107%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e144109%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn144107%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn144103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144103%_))
            (let ((_%e144105%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144103%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e144105%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e144105%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e144105%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn144103%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn144103%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn144103%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn144097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144097%_))
            (let ((_%e144100%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144097%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e144100%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e144100%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e144100%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn144097%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn144097%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn144097%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn144093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144093%_))
            (let ((_%e144095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144093%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e144095%_))
            (macro-nonprocedure-operator-exception? _%exn144093%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn144089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144089%_))
            (let ((_%e144091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144089%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e144091%_)
                  (macro-nonprocedure-operator-exception-arguments _%e144091%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e144091%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn144089%_)
                (macro-nonprocedure-operator-exception-arguments _%exn144089%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn144089%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn144085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144085%_))
            (let ((_%e144087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144085%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e144087%_)
                  (macro-nonprocedure-operator-exception-code _%e144087%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e144087%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn144085%_)
                (macro-nonprocedure-operator-exception-code _%exn144085%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn144085%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn144081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144081%_))
            (let ((_%e144083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144081%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e144083%_)
                  (macro-nonprocedure-operator-exception-operator _%e144083%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e144083%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn144081%_)
                (macro-nonprocedure-operator-exception-operator _%exn144081%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn144081%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn144075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144075%_))
            (let ((_%e144078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144075%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e144078%_)
                  (macro-nonprocedure-operator-exception-rte _%e144078%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e144078%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn144075%_)
                (macro-nonprocedure-operator-exception-rte _%exn144075%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn144075%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn144071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144071%_))
            (let ((_%e144073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144071%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e144073%_))
            (macro-not-in-compilation-context-exception? _%exn144071%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn144067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144067%_))
            (let ((_%e144069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144067%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e144069%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e144069%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e144069%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn144067%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn144067%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn144067%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn144061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144061%_))
            (let ((_%e144064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144061%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e144064%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e144064%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e144064%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn144061%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn144061%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn144061%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn144057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144057%_))
            (let ((_%e144059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144057%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e144059%_))
            (macro-number-of-arguments-limit-exception? _%exn144057%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn144053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144053%_))
            (let ((_%e144055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144053%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e144055%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e144055%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e144055%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn144053%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn144053%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn144053%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn144047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144047%_))
            (let ((_%e144050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144047%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e144050%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e144050%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e144050%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn144047%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn144047%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn144047%_ '())))))))
    (define os-exception?
      (lambda (_%exn144043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144043%_))
            (let ((_%e144045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144043%_ 'exception))))
              (macro-os-exception? _%e144045%_))
            (macro-os-exception? _%exn144043%_))))
    (define os-exception-arguments
      (lambda (_%exn144039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144039%_))
            (let ((_%e144041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144039%_ 'exception))))
              (if (macro-os-exception? _%e144041%_)
                  (macro-os-exception-arguments _%e144041%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e144041%_ '())))))
            (if (macro-os-exception? _%exn144039%_)
                (macro-os-exception-arguments _%exn144039%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn144039%_ '())))))))
    (define os-exception-code
      (lambda (_%exn144035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144035%_))
            (let ((_%e144037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144035%_ 'exception))))
              (if (macro-os-exception? _%e144037%_)
                  (macro-os-exception-code _%e144037%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e144037%_ '())))))
            (if (macro-os-exception? _%exn144035%_)
                (macro-os-exception-code _%exn144035%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn144035%_ '())))))))
    (define os-exception-message
      (lambda (_%exn144031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144031%_))
            (let ((_%e144033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144031%_ 'exception))))
              (if (macro-os-exception? _%e144033%_)
                  (macro-os-exception-message _%e144033%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e144033%_ '())))))
            (if (macro-os-exception? _%exn144031%_)
                (macro-os-exception-message _%exn144031%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn144031%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn144025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144025%_))
            (let ((_%e144028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144025%_ 'exception))))
              (if (macro-os-exception? _%e144028%_)
                  (macro-os-exception-procedure _%e144028%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e144028%_ '())))))
            (if (macro-os-exception? _%exn144025%_)
                (macro-os-exception-procedure _%exn144025%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn144025%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn144021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144021%_))
            (let ((_%e144023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144021%_ 'exception))))
              (macro-permission-denied-exception? _%e144023%_))
            (macro-permission-denied-exception? _%exn144021%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn144017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144017%_))
            (let ((_%e144019%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144017%_ 'exception))))
              (if (macro-permission-denied-exception? _%e144019%_)
                  (macro-permission-denied-exception-arguments _%e144019%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e144019%_ '())))))
            (if (macro-permission-denied-exception? _%exn144017%_)
                (macro-permission-denied-exception-arguments _%exn144017%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn144017%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn144011%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144011%_))
            (let ((_%e144014%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144011%_ 'exception))))
              (if (macro-permission-denied-exception? _%e144014%_)
                  (macro-permission-denied-exception-procedure _%e144014%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e144014%_ '())))))
            (if (macro-permission-denied-exception? _%exn144011%_)
                (macro-permission-denied-exception-procedure _%exn144011%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn144011%_ '())))))))
    (define range-exception?
      (lambda (_%exn144007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144007%_))
            (let ((_%e144009%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144007%_ 'exception))))
              (macro-range-exception? _%e144009%_))
            (macro-range-exception? _%exn144007%_))))
    (define range-exception-arg-id
      (lambda (_%exn144003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn144003%_))
            (let ((_%e144005%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn144003%_ 'exception))))
              (if (macro-range-exception? _%e144005%_)
                  (macro-range-exception-arg-id _%e144005%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e144005%_ '())))))
            (if (macro-range-exception? _%exn144003%_)
                (macro-range-exception-arg-id _%exn144003%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn144003%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn143999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143999%_))
            (let ((_%e144001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143999%_ 'exception))))
              (if (macro-range-exception? _%e144001%_)
                  (macro-range-exception-arguments _%e144001%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e144001%_ '())))))
            (if (macro-range-exception? _%exn143999%_)
                (macro-range-exception-arguments _%exn143999%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn143999%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn143993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143993%_))
            (let ((_%e143996%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143993%_ 'exception))))
              (if (macro-range-exception? _%e143996%_)
                  (macro-range-exception-procedure _%e143996%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e143996%_ '())))))
            (if (macro-range-exception? _%exn143993%_)
                (macro-range-exception-procedure _%exn143993%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn143993%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn143989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143989%_))
            (let ((_%e143991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143989%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e143991%_))
            (macro-rpc-remote-error-exception? _%exn143989%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn143985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143985%_))
            (let ((_%e143987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143985%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e143987%_)
                  (macro-rpc-remote-error-exception-arguments _%e143987%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e143987%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn143985%_)
                (macro-rpc-remote-error-exception-arguments _%exn143985%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn143985%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn143981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143981%_))
            (let ((_%e143983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143981%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e143983%_)
                  (macro-rpc-remote-error-exception-message _%e143983%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e143983%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn143981%_)
                (macro-rpc-remote-error-exception-message _%exn143981%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn143981%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn143975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143975%_))
            (let ((_%e143978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143975%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e143978%_)
                  (macro-rpc-remote-error-exception-procedure _%e143978%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e143978%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn143975%_)
                (macro-rpc-remote-error-exception-procedure _%exn143975%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn143975%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn143971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143971%_))
            (let ((_%e143973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143971%_ 'exception))))
              (macro-scheduler-exception? _%e143973%_))
            (macro-scheduler-exception? _%exn143971%_))))
    (define scheduler-exception-reason
      (lambda (_%exn143965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143965%_))
            (let ((_%e143968%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143965%_ 'exception))))
              (if (macro-scheduler-exception? _%e143968%_)
                  (macro-scheduler-exception-reason _%e143968%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e143968%_ '())))))
            (if (macro-scheduler-exception? _%exn143965%_)
                (macro-scheduler-exception-reason _%exn143965%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn143965%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn143961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143961%_))
            (let ((_%e143963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143961%_ 'exception))))
              (macro-sfun-conversion-exception? _%e143963%_))
            (macro-sfun-conversion-exception? _%exn143961%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn143957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143957%_))
            (let ((_%e143959%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143957%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e143959%_)
                  (macro-sfun-conversion-exception-arguments _%e143959%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e143959%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn143957%_)
                (macro-sfun-conversion-exception-arguments _%exn143957%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn143957%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn143953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143953%_))
            (let ((_%e143955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143953%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e143955%_)
                  (macro-sfun-conversion-exception-code _%e143955%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e143955%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn143953%_)
                (macro-sfun-conversion-exception-code _%exn143953%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn143953%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn143949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143949%_))
            (let ((_%e143951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143949%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e143951%_)
                  (macro-sfun-conversion-exception-message _%e143951%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e143951%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn143949%_)
                (macro-sfun-conversion-exception-message _%exn143949%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn143949%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn143943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143943%_))
            (let ((_%e143946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143943%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e143946%_)
                  (macro-sfun-conversion-exception-procedure _%e143946%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e143946%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn143943%_)
                (macro-sfun-conversion-exception-procedure _%exn143943%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn143943%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn143937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143937%_))
            (let ((_%e143940%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143937%_ 'exception))))
              (macro-stack-overflow-exception? _%e143940%_))
            (macro-stack-overflow-exception? _%exn143937%_))))
    (define started-thread-exception?
      (lambda (_%exn143933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143933%_))
            (let ((_%e143935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143933%_ 'exception))))
              (macro-started-thread-exception? _%e143935%_))
            (macro-started-thread-exception? _%exn143933%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn143929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143929%_))
            (let ((_%e143931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143929%_ 'exception))))
              (if (macro-started-thread-exception? _%e143931%_)
                  (macro-started-thread-exception-arguments _%e143931%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e143931%_ '())))))
            (if (macro-started-thread-exception? _%exn143929%_)
                (macro-started-thread-exception-arguments _%exn143929%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn143929%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn143923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143923%_))
            (let ((_%e143926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143923%_ 'exception))))
              (if (macro-started-thread-exception? _%e143926%_)
                  (macro-started-thread-exception-procedure _%e143926%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e143926%_ '())))))
            (if (macro-started-thread-exception? _%exn143923%_)
                (macro-started-thread-exception-procedure _%exn143923%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn143923%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn143919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143919%_))
            (let ((_%e143921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143919%_ 'exception))))
              (macro-terminated-thread-exception? _%e143921%_))
            (macro-terminated-thread-exception? _%exn143919%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn143915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143915%_))
            (let ((_%e143917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143915%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e143917%_)
                  (macro-terminated-thread-exception-arguments _%e143917%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e143917%_ '())))))
            (if (macro-terminated-thread-exception? _%exn143915%_)
                (macro-terminated-thread-exception-arguments _%exn143915%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn143915%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn143909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143909%_))
            (let ((_%e143912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143909%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e143912%_)
                  (macro-terminated-thread-exception-procedure _%e143912%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e143912%_ '())))))
            (if (macro-terminated-thread-exception? _%exn143909%_)
                (macro-terminated-thread-exception-procedure _%exn143909%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn143909%_ '())))))))
    (define type-exception?
      (lambda (_%exn143905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143905%_))
            (let ((_%e143907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143905%_ 'exception))))
              (macro-type-exception? _%e143907%_))
            (macro-type-exception? _%exn143905%_))))
    (define type-exception-arg-id
      (lambda (_%exn143901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143901%_))
            (let ((_%e143903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143901%_ 'exception))))
              (if (macro-type-exception? _%e143903%_)
                  (macro-type-exception-arg-id _%e143903%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e143903%_ '())))))
            (if (macro-type-exception? _%exn143901%_)
                (macro-type-exception-arg-id _%exn143901%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn143901%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn143897%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143897%_))
            (let ((_%e143899%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143897%_ 'exception))))
              (if (macro-type-exception? _%e143899%_)
                  (macro-type-exception-arguments _%e143899%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e143899%_ '())))))
            (if (macro-type-exception? _%exn143897%_)
                (macro-type-exception-arguments _%exn143897%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn143897%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn143893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143893%_))
            (let ((_%e143895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143893%_ 'exception))))
              (if (macro-type-exception? _%e143895%_)
                  (macro-type-exception-procedure _%e143895%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e143895%_ '())))))
            (if (macro-type-exception? _%exn143893%_)
                (macro-type-exception-procedure _%exn143893%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn143893%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn143887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143887%_))
            (let ((_%e143890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143887%_ 'exception))))
              (if (macro-type-exception? _%e143890%_)
                  (macro-type-exception-type-id _%e143890%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e143890%_ '())))))
            (if (macro-type-exception? _%exn143887%_)
                (macro-type-exception-type-id _%exn143887%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn143887%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn143883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143883%_))
            (let ((_%e143885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143883%_ 'exception))))
              (macro-unbound-global-exception? _%e143885%_))
            (macro-unbound-global-exception? _%exn143883%_))))
    (define unbound-global-exception-code
      (lambda (_%exn143879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143879%_))
            (let ((_%e143881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143879%_ 'exception))))
              (if (macro-unbound-global-exception? _%e143881%_)
                  (macro-unbound-global-exception-code _%e143881%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e143881%_ '())))))
            (if (macro-unbound-global-exception? _%exn143879%_)
                (macro-unbound-global-exception-code _%exn143879%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn143879%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn143875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143875%_))
            (let ((_%e143877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143875%_ 'exception))))
              (if (macro-unbound-global-exception? _%e143877%_)
                  (macro-unbound-global-exception-rte _%e143877%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e143877%_ '())))))
            (if (macro-unbound-global-exception? _%exn143875%_)
                (macro-unbound-global-exception-rte _%exn143875%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn143875%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn143869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143869%_))
            (let ((_%e143872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143869%_ 'exception))))
              (if (macro-unbound-global-exception? _%e143872%_)
                  (macro-unbound-global-exception-variable _%e143872%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e143872%_ '())))))
            (if (macro-unbound-global-exception? _%exn143869%_)
                (macro-unbound-global-exception-variable _%exn143869%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn143869%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn143865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143865%_))
            (let ((_%e143867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143865%_ 'exception))))
              (macro-unbound-key-exception? _%e143867%_))
            (macro-unbound-key-exception? _%exn143865%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn143861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143861%_))
            (let ((_%e143863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143861%_ 'exception))))
              (if (macro-unbound-key-exception? _%e143863%_)
                  (macro-unbound-key-exception-arguments _%e143863%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e143863%_ '())))))
            (if (macro-unbound-key-exception? _%exn143861%_)
                (macro-unbound-key-exception-arguments _%exn143861%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn143861%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn143855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143855%_))
            (let ((_%e143858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143855%_ 'exception))))
              (if (macro-unbound-key-exception? _%e143858%_)
                  (macro-unbound-key-exception-procedure _%e143858%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e143858%_ '())))))
            (if (macro-unbound-key-exception? _%exn143855%_)
                (macro-unbound-key-exception-procedure _%exn143855%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn143855%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn143851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143851%_))
            (let ((_%e143853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143851%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e143853%_))
            (macro-unbound-os-environment-variable-exception? _%exn143851%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn143847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143847%_))
            (let ((_%e143849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143847%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e143849%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e143849%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e143849%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn143847%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn143847%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn143847%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn143841%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143841%_))
            (let ((_%e143844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143841%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e143844%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e143844%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e143844%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn143841%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn143841%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn143841%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn143837%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143837%_))
            (let ((_%e143839%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143837%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e143839%_))
            (macro-unbound-serial-number-exception? _%exn143837%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn143833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143833%_))
            (let ((_%e143835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143833%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e143835%_)
                  (macro-unbound-serial-number-exception-arguments _%e143835%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e143835%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn143833%_)
                (macro-unbound-serial-number-exception-arguments _%exn143833%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn143833%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn143827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143827%_))
            (let ((_%e143830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143827%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e143830%_)
                  (macro-unbound-serial-number-exception-procedure _%e143830%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e143830%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn143827%_)
                (macro-unbound-serial-number-exception-procedure _%exn143827%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn143827%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn143823%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143823%_))
            (let ((_%e143825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143823%_ 'exception))))
              (macro-uncaught-exception? _%e143825%_))
            (macro-uncaught-exception? _%exn143823%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn143819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143819%_))
            (let ((_%e143821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143819%_ 'exception))))
              (if (macro-uncaught-exception? _%e143821%_)
                  (macro-uncaught-exception-arguments _%e143821%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e143821%_ '())))))
            (if (macro-uncaught-exception? _%exn143819%_)
                (macro-uncaught-exception-arguments _%exn143819%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn143819%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn143815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143815%_))
            (let ((_%e143817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143815%_ 'exception))))
              (if (macro-uncaught-exception? _%e143817%_)
                  (macro-uncaught-exception-procedure _%e143817%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e143817%_ '())))))
            (if (macro-uncaught-exception? _%exn143815%_)
                (macro-uncaught-exception-procedure _%exn143815%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn143815%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn143809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143809%_))
            (let ((_%e143812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143809%_ 'exception))))
              (if (macro-uncaught-exception? _%e143812%_)
                  (macro-uncaught-exception-reason _%e143812%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e143812%_ '())))))
            (if (macro-uncaught-exception? _%exn143809%_)
                (macro-uncaught-exception-reason _%exn143809%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn143809%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn143805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143805%_))
            (let ((_%e143807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143805%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e143807%_))
            (macro-uninitialized-thread-exception? _%exn143805%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn143801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143801%_))
            (let ((_%e143803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143801%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e143803%_)
                  (macro-uninitialized-thread-exception-arguments _%e143803%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e143803%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn143801%_)
                (macro-uninitialized-thread-exception-arguments _%exn143801%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn143801%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn143795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143795%_))
            (let ((_%e143798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143795%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e143798%_)
                  (macro-uninitialized-thread-exception-procedure _%e143798%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e143798%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn143795%_)
                (macro-uninitialized-thread-exception-procedure _%exn143795%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn143795%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn143791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143791%_))
            (let ((_%e143793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143791%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e143793%_))
            (macro-unknown-keyword-argument-exception? _%exn143791%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn143787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143787%_))
            (let ((_%e143789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143787%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e143789%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e143789%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e143789%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn143787%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn143787%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn143787%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn143781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143781%_))
            (let ((_%e143784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143781%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e143784%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e143784%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e143784%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn143781%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn143781%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn143781%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn143777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143777%_))
            (let ((_%e143779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143777%_ 'exception))))
              (macro-unterminated-process-exception? _%e143779%_))
            (macro-unterminated-process-exception? _%exn143777%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn143773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143773%_))
            (let ((_%e143775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143773%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e143775%_)
                  (macro-unterminated-process-exception-arguments _%e143775%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e143775%_ '())))))
            (if (macro-unterminated-process-exception? _%exn143773%_)
                (macro-unterminated-process-exception-arguments _%exn143773%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn143773%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn143767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143767%_))
            (let ((_%e143770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143767%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e143770%_)
                  (macro-unterminated-process-exception-procedure _%e143770%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e143770%_ '())))))
            (if (macro-unterminated-process-exception? _%exn143767%_)
                (macro-unterminated-process-exception-procedure _%exn143767%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn143767%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn143763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143763%_))
            (let ((_%e143765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143763%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e143765%_))
            (macro-wrong-number-of-arguments-exception? _%exn143763%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn143759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143759%_))
            (let ((_%e143761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143759%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e143761%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e143761%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e143761%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn143759%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn143759%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn143759%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn143753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143753%_))
            (let ((_%e143756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143753%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e143756%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e143756%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e143756%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn143753%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn143753%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn143753%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn143749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143749%_))
            (let ((_%e143751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143749%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e143751%_))
            (macro-wrong-number-of-values-exception? _%exn143749%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn143745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143745%_))
            (let ((_%e143747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143745%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e143747%_)
                  (macro-wrong-number-of-values-exception-code _%e143747%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e143747%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn143745%_)
                (macro-wrong-number-of-values-exception-code _%exn143745%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn143745%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn143741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143741%_))
            (let ((_%e143743%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143741%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e143743%_)
                  (macro-wrong-number-of-values-exception-rte _%e143743%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e143743%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn143741%_)
                (macro-wrong-number-of-values-exception-rte _%exn143741%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn143741%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn143735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143735%_))
            (let ((_%e143738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143735%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e143738%_)
                  (macro-wrong-number-of-values-exception-vals _%e143738%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e143738%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn143735%_)
                (macro-wrong-number-of-values-exception-vals _%exn143735%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn143735%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn143729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn143729%_))
            (let ((_%e143732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn143729%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e143732%_))
            (macro-wrong-processor-c-return-exception? _%exn143729%_))))))
