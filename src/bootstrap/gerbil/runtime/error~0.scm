(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1770342546)
  (begin
    (define Exception::t
      (let ((__tmp135615 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp135615
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args135533%_
        (apply make-instance Exception::t _%$args135533%_)))
    (define StackTrace::t
      (let ((__tmp135616 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp135616
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args135530%_
        (apply make-instance StackTrace::t _%$args135530%_)))
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
      (let ((__tmp135617 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp135617
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args135527%_ (apply make-instance Error::t _%$args135527%_)))
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
      (let ((__tmp135618 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp135618
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args135524%_
        (apply make-instance ContractViolation::t _%$args135524%_)))
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
      (let ((__tmp135619 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp135619
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args135521%_
        (apply make-instance RuntimeException::t _%$args135521%_)))
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
      (lambda (_%exn135516%_ _%continue135517%_)
        (let ((_%exn135519%_ (wrap-runtime-exception _%exn135516%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn135519%_ _%continue135517%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn135512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn135512%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn135512%_ 'continuation))
                '#!void
                (let ((__tmp135620
                       (lambda (_%cont135514%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn135512%_
                            'continuation
                            _%cont135514%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp135620)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn135512%_))))
    (define error
      (lambda (_%message135509%_ . _%irritants135510%_)
        (raise (let ((__obj135612
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj135612
                  _%message135509%_
                  'irritants:
                  _%irritants135510%_)
                 __obj135612))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords135484%_
               _%ctx135479135485%_
               _%contract-expr135480135486%_
               _%value135481135487%_
               _%message135488%_)
        (let* ((_%ctx135490%_
                (if (eq? _%ctx135479135485%_ absent-value)
                    '#f
                    _%ctx135479135485%_))
               (_%contract-expr135492%_
                (if (eq? _%contract-expr135480135486%_ absent-value)
                    '#f
                    _%contract-expr135480135486%_))
               (_%value135494%_
                (if (eq? _%value135481135487%_ absent-value)
                    '#f
                    _%value135481135487%_)))
          (raise (let ((__obj135613
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj135613
                    _%message135488%_
                    'where:
                    _%ctx135490%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr135492%_
                                (cons 'value: (cons _%value135494%_ '())))))
                   __obj135613)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords135499%_ . _%args135500%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords135499%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords135499%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords135499%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords135499%_
                  'value:
                  absent-value))
               _%args135500%_)))
    (define __raise-contract-violation-error
      (lambda _%args135482135506%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args135482135506%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler135453%_ _%thunk135454%_)
        (let* ((_%handler135457%_ _%handler135453%_)
               (_%thunk135465%_ _%thunk135454%_)
               (__tmp135621
                (lambda (_%exn135474%_)
                  (let ((_%exn135476%_ (wrap-runtime-exception _%exn135474%_)))
                    (declare (not safe))
                    (_%handler135457%_ _%exn135476%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp135621 _%thunk135465%_))))
    (define with-exception-handler
      (lambda (_%handler133595%_ _%thunk133596%_)
        (if (procedure? _%handler133595%_)
            (let ((_%handler133600%_ _%handler133595%_))
              (if (procedure? _%thunk133596%_)
                  (let ((_%thunk133610%_ _%thunk133596%_))
                    (__with-exception-handler
                     _%handler133600%_
                     _%thunk133610%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk133596%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler133595%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler135428%_ _%thunk135429%_)
        (let* ((_%handler135432%_ _%handler135428%_)
               (_%thunk135440%_ _%thunk135429%_)
               (__tmp135622
                (lambda (_%cont135449%_)
                  (__with-exception-handler
                   (lambda (_%exn135451%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont135449%_
                        _%handler135432%_
                        _%exn135451%_)))
                   _%thunk135440%_))))
          (declare (not safe))
          (##continuation-capture __tmp135622))))
    (define with-catch
      (lambda (_%handler133740%_ _%thunk133741%_)
        (if (procedure? _%handler133740%_)
            (let ((_%handler133745%_ _%handler133740%_))
              (if (procedure? _%thunk133741%_)
                  (let ((_%thunk133755%_ _%thunk133741%_))
                    (__with-catch _%handler133745%_ _%thunk133755%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk133741%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler133740%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn135415%_)
        (if (or (heap-overflow-exception? _%exn135415%_)
                (stack-overflow-exception? _%exn135415%_))
            _%exn135415%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn135415%_))
                _%exn135415%_
                (if (macro-exception? _%exn135415%_)
                    (let ((_%rte135423%_
                           (let ((__obj135614
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj135614
                                _%exn135415%_
                                '2
                                '#f
                                '#f))
                             __obj135614)))
                      (let ((__tmp135623
                             (lambda (_%cont135425%_)
                               (let ((__tmp135624
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont135425%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte135423%_
                                  'continuation
                                  __tmp135624)))))
                        (declare (not safe))
                        (##continuation-capture __tmp135623))
                      _%rte135423%_)
                    _%exn135415%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj135410%_)
        (let ((_%$e135412%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj135410%_))))
          (if _%$e135412%_ _%$e135412%_ (error-exception? _%obj135410%_)))))
    (define error-message
      (lambda (_%obj135403%_)
        (let ((_%$e135405%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj135403%_ 'message false))))
          (if _%$e135405%_
              _%$e135405%_
              (if (error-exception? _%obj135403%_)
                  (error-exception-message _%obj135403%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj135398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj135398%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj135398%_ 'irritants))
            (if (error-exception? _%obj135398%_)
                (error-exception-parameters _%obj135398%_)
                '#f))))
    (define error-trace
      (lambda (_%obj135396%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj135396%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj135396%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e135377%_ _%port135378%_)
        (let ((_%$e135380%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e135377%_ 'display-exception))))
          (if _%$e135380%_
              ((lambda (_%f135383%_) (_%f135383%_ _%e135377%_ _%port135378%_))
               _%$e135380%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e135377%_ _%port135378%_))))))
    (define display-exception__0
      (lambda (_%e135389%_)
        (let ((_%port135391%_ (current-error-port)))
          (display-exception__% _%e135389%_ _%port135391%_))))
    (define display-exception
      (lambda _g135625_
        (let ((_g135626_ (let () (declare (not safe)) (##length _g135625_))))
          (cond ((let () (declare (not safe)) (##fx= _g135626_ 1))
                 (apply display-exception__0 _g135625_))
                ((let () (declare (not safe)) (##fx= _g135626_ 2))
                 (apply display-exception__% _g135625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g135625_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self135355%_ _%message135356%_ . _%rest135357%_)
        (let* ((_%self135360%_ _%self135355%_)
               (_%message135374%_
                (if (string? _%message135356%_)
                    _%message135356%_
                    (call-with-output-string
                     '""
                     (lambda (_%g135369135371%_)
                       (display _%message135356%_ _%g135369135371%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self135360%_ 'message _%message135374%_))
          (apply class-instance-init! _%self135360%_ _%rest135357%_))))
    (define Error:::init!::specialize
      (lambda (__klass135535 __method-table135536)
        (let ((__message135537
               (let ((__slot135538
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135535 'message))))
                 (if __slot135538
                     __slot135538
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self135355%_ _%message135356%_ . _%rest135357%_)
            (let* ((_%self135360%_ _%self135355%_)
                   (_%message135374%_
                    (if (string? _%message135356%_)
                        _%message135356%_
                        (call-with-output-string
                         '""
                         (lambda (_%g135369135371%_)
                           (display _%message135356%_ _%g135369135371%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self135360%_
                 _%message135374%_
                 __message135537
                 '#f
                 '#f))
              (apply class-instance-init! _%self135360%_ _%rest135357%_))))))
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
      (lambda (_%self135080%_ _%port135081%_)
        (let ((_%self135084%_ _%self135080%_))
          (let ((_%tmp-port135094%_ (open-output-string))
                (_%display-error-newline135095%_
                 (> (output-port-column _%port135081%_) '0)))
            (fix-port-width! _%tmp-port135094%_)
            (let ((__tmp135627
                   (lambda ()
                     (if _%display-error-newline135095%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e135098%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self135084%_ 'where))))
                       (if _%$e135098%_ (display _%$e135098%_) (display '"?")))
                     (let ((__tmp135628
                            (let ((__tmp135629
                                   (let ()
                                     (declare (not safe))
                                     (__object-class _%self135084%_))))
                              (declare (not safe))
                              (##type-name __tmp135629))))
                       (declare (not safe))
                       (display* '" [" __tmp135628 '"]: "))
                     (let ((__tmp135630
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self135084%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp135630))
                     (let ((_%irritants135102%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self135084%_ 'irritants))))
                       (if (null? _%irritants135102%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj135104%_)
                                (if (u8vector? _%obj135104%_)
                                    (let ((__tmp135631
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj135104%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp135631))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj135104%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants135102%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont135105135107%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self135084%_
                                   'continuation))))
                           (if _%cont135105135107%_
                               (let ((_%cont135109%_ _%cont135105135107%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont135109%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp135627
               current-output-port
               _%tmp-port135094%_))
            (let ((__tmp135632 (get-output-string _%tmp-port135094%_)))
              (declare (not safe))
              (##write-string __tmp135632 _%port135081%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass135539 __method-table135540)
        (let ((__where135541
               (let ((__slot135545
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135539 'where))))
                 (if __slot135545
                     __slot135545
                     (error '"Unknown slot" 'where))))
              (__continuation135542
               (let ((__slot135546
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135539 'continuation))))
                 (if __slot135546
                     __slot135546
                     (error '"Unknown slot" 'continuation))))
              (__message135543
               (let ((__slot135547
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135539 'message))))
                 (if __slot135547
                     __slot135547
                     (error '"Unknown slot" 'message))))
              (__irritants135544
               (let ((__slot135548
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135539 'irritants))))
                 (if __slot135548
                     __slot135548
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self135080%_ _%port135081%_)
            (let ((_%self135084%_ _%self135080%_))
              (let ((_%tmp-port135094%_ (open-output-string))
                    (_%display-error-newline135095%_
                     (> (output-port-column _%port135081%_) '0)))
                (fix-port-width! _%tmp-port135094%_)
                (let ((__tmp135633
                       (lambda ()
                         (if _%display-error-newline135095%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e135098%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self135084%_
                                   __where135541
                                   '#f
                                   '#f))))
                           (if _%$e135098%_
                               (display _%$e135098%_)
                               (display '"?")))
                         (let ((__tmp135634
                                (let ((__tmp135635
                                       (let ()
                                         (declare (not safe))
                                         (__object-class _%self135084%_))))
                                  (declare (not safe))
                                  (##type-name __tmp135635))))
                           (declare (not safe))
                           (display* '" [" __tmp135634 '"]: "))
                         (let ((__tmp135636
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self135084%_
                                   __message135543
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp135636))
                         (let ((_%irritants135102%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self135084%_
                                   __irritants135544
                                   '#f
                                   '#f))))
                           (if (null? _%irritants135102%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj135104%_)
                                    (if (u8vector? _%obj135104%_)
                                        (let ((__tmp135637
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj135104%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp135637))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj135104%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants135102%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont135105135107%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self135084%_
                                       __continuation135542
                                       '#f
                                       '#f))))
                               (if _%cont135105135107%_
                                   (let ((_%cont135109%_ _%cont135105135107%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont135109%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp135633
                   current-output-port
                   _%tmp-port135094%_))
                (let ((__tmp135638 (get-output-string _%tmp-port135094%_)))
                  (declare (not safe))
                  (##write-string __tmp135638 _%port135081%_))))))))
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
      (lambda (_%self134937%_ _%port134938%_)
        (let* ((_%self134941%_ _%self134937%_)
               (_%tmp-port134951%_ (open-output-string)))
          (fix-port-width! _%tmp-port134951%_)
          (let ((__tmp135639
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self134941%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp135639 _%tmp-port134951%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont134952134954%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self134941%_ 'continuation))))
                (if _%cont134952134954%_
                    (let ((_%cont134956%_ _%cont134952134954%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port134951%_)
                      (newline _%tmp-port134951%_)
                      (display-continuation-backtrace
                       _%cont134956%_
                       _%tmp-port134951%_))
                    '#f))
              '#!void)
          (let ((__tmp135640 (get-output-string _%tmp-port134951%_)))
            (declare (not safe))
            (##write-string __tmp135640 _%port134938%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass135549 __method-table135550)
        (let ((__exception135551
               (let ((__slot135553
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135549 'exception))))
                 (if __slot135553
                     __slot135553
                     (error '"Unknown slot" 'exception))))
              (__continuation135552
               (let ((__slot135554
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass135549 'continuation))))
                 (if __slot135554
                     __slot135554
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self134937%_ _%port134938%_)
            (let* ((_%self134941%_ _%self134937%_)
                   (_%tmp-port134951%_ (open-output-string)))
              (fix-port-width! _%tmp-port134951%_)
              (let ((__tmp135641
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self134941%_
                        __exception135551
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp135641 _%tmp-port134951%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont134952134954%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self134941%_
                            __continuation135552
                            '#f
                            '#f))))
                    (if _%cont134952134954%_
                        (let ((_%cont134956%_ _%cont134952134954%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port134951%_)
                          (newline _%tmp-port134951%_)
                          (display-continuation-backtrace
                           _%cont134956%_
                           _%tmp-port134951%_))
                        '#f))
                  '#!void)
              (let ((__tmp135642 (get-output-string _%tmp-port134951%_)))
                (declare (not safe))
                (##write-string __tmp135642 _%port134938%_)))))))
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
      (lambda (_%port134809%_)
        (if (macro-character-port? _%port134809%_)
            (let ((_%old-width134811%_
                   (macro-character-port-output-width _%port134809%_)))
              (macro-character-port-output-width-set!
               _%port134809%_
               (lambda (_%port134813%_) '256))
              _%old-width134811%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port134806%_ _%old-width134807%_)
        (if (macro-character-port? _%port134806%_)
            (macro-character-port-output-width-set!
             _%port134806%_
             _%old-width134807%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e134804%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e134804%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn134798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134798%_))
            (let ((_%e134801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134798%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e134801%_))
            (macro-abandoned-mutex-exception? _%exn134798%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn134794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134794%_))
            (let ((_%e134796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134794%_ 'exception))))
              (macro-cfun-conversion-exception? _%e134796%_))
            (macro-cfun-conversion-exception? _%exn134794%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn134790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134790%_))
            (let ((_%e134792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134790%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e134792%_)
                  (macro-cfun-conversion-exception-arguments _%e134792%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e134792%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn134790%_)
                (macro-cfun-conversion-exception-arguments _%exn134790%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn134790%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn134786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134786%_))
            (let ((_%e134788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134786%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e134788%_)
                  (macro-cfun-conversion-exception-code _%e134788%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e134788%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn134786%_)
                (macro-cfun-conversion-exception-code _%exn134786%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn134786%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn134782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134782%_))
            (let ((_%e134784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134782%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e134784%_)
                  (macro-cfun-conversion-exception-message _%e134784%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e134784%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn134782%_)
                (macro-cfun-conversion-exception-message _%exn134782%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn134782%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn134776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134776%_))
            (let ((_%e134779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134776%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e134779%_)
                  (macro-cfun-conversion-exception-procedure _%e134779%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e134779%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn134776%_)
                (macro-cfun-conversion-exception-procedure _%exn134776%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn134776%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn134772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134772%_))
            (let ((_%e134774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134772%_ 'exception))))
              (macro-datum-parsing-exception? _%e134774%_))
            (macro-datum-parsing-exception? _%exn134772%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn134768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134768%_))
            (let ((_%e134770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134768%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e134770%_)
                  (macro-datum-parsing-exception-kind _%e134770%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e134770%_ '())))))
            (if (macro-datum-parsing-exception? _%exn134768%_)
                (macro-datum-parsing-exception-kind _%exn134768%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn134768%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn134764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134764%_))
            (let ((_%e134766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134764%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e134766%_)
                  (macro-datum-parsing-exception-parameters _%e134766%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e134766%_ '())))))
            (if (macro-datum-parsing-exception? _%exn134764%_)
                (macro-datum-parsing-exception-parameters _%exn134764%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn134764%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn134758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134758%_))
            (let ((_%e134761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134758%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e134761%_)
                  (macro-datum-parsing-exception-readenv _%e134761%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e134761%_ '())))))
            (if (macro-datum-parsing-exception? _%exn134758%_)
                (macro-datum-parsing-exception-readenv _%exn134758%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn134758%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn134752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134752%_))
            (let ((_%e134755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134752%_ 'exception))))
              (macro-deadlock-exception? _%e134755%_))
            (macro-deadlock-exception? _%exn134752%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn134748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134748%_))
            (let ((_%e134750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134748%_ 'exception))))
              (macro-divide-by-zero-exception? _%e134750%_))
            (macro-divide-by-zero-exception? _%exn134748%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn134744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134744%_))
            (let ((_%e134746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134744%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e134746%_)
                  (macro-divide-by-zero-exception-arguments _%e134746%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e134746%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn134744%_)
                (macro-divide-by-zero-exception-arguments _%exn134744%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn134744%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn134738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134738%_))
            (let ((_%e134741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134738%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e134741%_)
                  (macro-divide-by-zero-exception-procedure _%e134741%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e134741%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn134738%_)
                (macro-divide-by-zero-exception-procedure _%exn134738%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn134738%_ '())))))))
    (define error-exception?
      (lambda (_%exn134734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134734%_))
            (let ((_%e134736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134734%_ 'exception))))
              (macro-error-exception? _%e134736%_))
            (macro-error-exception? _%exn134734%_))))
    (define error-exception-message
      (lambda (_%exn134730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134730%_))
            (let ((_%e134732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134730%_ 'exception))))
              (if (macro-error-exception? _%e134732%_)
                  (macro-error-exception-message _%e134732%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e134732%_ '())))))
            (if (macro-error-exception? _%exn134730%_)
                (macro-error-exception-message _%exn134730%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn134730%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn134724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134724%_))
            (let ((_%e134727%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134724%_ 'exception))))
              (if (macro-error-exception? _%e134727%_)
                  (macro-error-exception-parameters _%e134727%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e134727%_ '())))))
            (if (macro-error-exception? _%exn134724%_)
                (macro-error-exception-parameters _%exn134724%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn134724%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn134720%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134720%_))
            (let ((_%e134722%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134720%_ 'exception))))
              (macro-expression-parsing-exception? _%e134722%_))
            (macro-expression-parsing-exception? _%exn134720%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn134716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134716%_))
            (let ((_%e134718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134716%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e134718%_)
                  (macro-expression-parsing-exception-kind _%e134718%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e134718%_ '())))))
            (if (macro-expression-parsing-exception? _%exn134716%_)
                (macro-expression-parsing-exception-kind _%exn134716%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn134716%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn134712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134712%_))
            (let ((_%e134714%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134712%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e134714%_)
                  (macro-expression-parsing-exception-parameters _%e134714%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e134714%_ '())))))
            (if (macro-expression-parsing-exception? _%exn134712%_)
                (macro-expression-parsing-exception-parameters _%exn134712%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn134712%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn134706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134706%_))
            (let ((_%e134709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134706%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e134709%_)
                  (macro-expression-parsing-exception-source _%e134709%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e134709%_ '())))))
            (if (macro-expression-parsing-exception? _%exn134706%_)
                (macro-expression-parsing-exception-source _%exn134706%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn134706%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn134702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134702%_))
            (let ((_%e134704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134702%_ 'exception))))
              (macro-file-exists-exception? _%e134704%_))
            (macro-file-exists-exception? _%exn134702%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn134698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134698%_))
            (let ((_%e134700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134698%_ 'exception))))
              (if (macro-file-exists-exception? _%e134700%_)
                  (macro-file-exists-exception-arguments _%e134700%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e134700%_ '())))))
            (if (macro-file-exists-exception? _%exn134698%_)
                (macro-file-exists-exception-arguments _%exn134698%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn134698%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn134692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134692%_))
            (let ((_%e134695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134692%_ 'exception))))
              (if (macro-file-exists-exception? _%e134695%_)
                  (macro-file-exists-exception-procedure _%e134695%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e134695%_ '())))))
            (if (macro-file-exists-exception? _%exn134692%_)
                (macro-file-exists-exception-procedure _%exn134692%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn134692%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn134688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134688%_))
            (let ((_%e134690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134688%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e134690%_))
            (macro-fixnum-overflow-exception? _%exn134688%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn134684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134684%_))
            (let ((_%e134686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134684%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e134686%_)
                  (macro-fixnum-overflow-exception-arguments _%e134686%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e134686%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn134684%_)
                (macro-fixnum-overflow-exception-arguments _%exn134684%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn134684%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn134678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134678%_))
            (let ((_%e134681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134678%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e134681%_)
                  (macro-fixnum-overflow-exception-procedure _%e134681%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e134681%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn134678%_)
                (macro-fixnum-overflow-exception-procedure _%exn134678%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn134678%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn134672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134672%_))
            (let ((_%e134675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134672%_ 'exception))))
              (macro-heap-overflow-exception? _%e134675%_))
            (macro-heap-overflow-exception? _%exn134672%_))))
    (define inactive-thread-exception?
      (lambda (_%exn134668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134668%_))
            (let ((_%e134670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134668%_ 'exception))))
              (macro-inactive-thread-exception? _%e134670%_))
            (macro-inactive-thread-exception? _%exn134668%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn134664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134664%_))
            (let ((_%e134666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134664%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e134666%_)
                  (macro-inactive-thread-exception-arguments _%e134666%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e134666%_ '())))))
            (if (macro-inactive-thread-exception? _%exn134664%_)
                (macro-inactive-thread-exception-arguments _%exn134664%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn134664%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn134658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134658%_))
            (let ((_%e134661%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134658%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e134661%_)
                  (macro-inactive-thread-exception-procedure _%e134661%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e134661%_ '())))))
            (if (macro-inactive-thread-exception? _%exn134658%_)
                (macro-inactive-thread-exception-procedure _%exn134658%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn134658%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn134654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134654%_))
            (let ((_%e134656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134654%_ 'exception))))
              (macro-initialized-thread-exception? _%e134656%_))
            (macro-initialized-thread-exception? _%exn134654%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn134650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134650%_))
            (let ((_%e134652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134650%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e134652%_)
                  (macro-initialized-thread-exception-arguments _%e134652%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e134652%_ '())))))
            (if (macro-initialized-thread-exception? _%exn134650%_)
                (macro-initialized-thread-exception-arguments _%exn134650%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn134650%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn134644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134644%_))
            (let ((_%e134647%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134644%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e134647%_)
                  (macro-initialized-thread-exception-procedure _%e134647%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e134647%_ '())))))
            (if (macro-initialized-thread-exception? _%exn134644%_)
                (macro-initialized-thread-exception-procedure _%exn134644%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn134644%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn134640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134640%_))
            (let ((_%e134642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134640%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e134642%_))
            (macro-invalid-hash-number-exception? _%exn134640%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn134636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134636%_))
            (let ((_%e134638%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134636%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e134638%_)
                  (macro-invalid-hash-number-exception-arguments _%e134638%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e134638%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn134636%_)
                (macro-invalid-hash-number-exception-arguments _%exn134636%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn134636%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn134630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134630%_))
            (let ((_%e134633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134630%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e134633%_)
                  (macro-invalid-hash-number-exception-procedure _%e134633%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e134633%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn134630%_)
                (macro-invalid-hash-number-exception-procedure _%exn134630%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn134630%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn134626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134626%_))
            (let ((_%e134628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134626%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e134628%_))
            (macro-invalid-utf8-encoding-exception? _%exn134626%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn134622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134622%_))
            (let ((_%e134624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134622%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e134624%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e134624%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e134624%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn134622%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn134622%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn134622%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn134616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134616%_))
            (let ((_%e134619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134616%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e134619%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e134619%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e134619%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn134616%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn134616%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn134616%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn134612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134612%_))
            (let ((_%e134614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134612%_ 'exception))))
              (macro-join-timeout-exception? _%e134614%_))
            (macro-join-timeout-exception? _%exn134612%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn134608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134608%_))
            (let ((_%e134610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134608%_ 'exception))))
              (if (macro-join-timeout-exception? _%e134610%_)
                  (macro-join-timeout-exception-arguments _%e134610%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e134610%_ '())))))
            (if (macro-join-timeout-exception? _%exn134608%_)
                (macro-join-timeout-exception-arguments _%exn134608%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn134608%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn134602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134602%_))
            (let ((_%e134605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134602%_ 'exception))))
              (if (macro-join-timeout-exception? _%e134605%_)
                  (macro-join-timeout-exception-procedure _%e134605%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e134605%_ '())))))
            (if (macro-join-timeout-exception? _%exn134602%_)
                (macro-join-timeout-exception-procedure _%exn134602%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn134602%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn134598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134598%_))
            (let ((_%e134600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134598%_ 'exception))))
              (macro-keyword-expected-exception? _%e134600%_))
            (macro-keyword-expected-exception? _%exn134598%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn134594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134594%_))
            (let ((_%e134596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134594%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e134596%_)
                  (macro-keyword-expected-exception-arguments _%e134596%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e134596%_ '())))))
            (if (macro-keyword-expected-exception? _%exn134594%_)
                (macro-keyword-expected-exception-arguments _%exn134594%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn134594%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn134588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134588%_))
            (let ((_%e134591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134588%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e134591%_)
                  (macro-keyword-expected-exception-procedure _%e134591%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e134591%_ '())))))
            (if (macro-keyword-expected-exception? _%exn134588%_)
                (macro-keyword-expected-exception-procedure _%exn134588%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn134588%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn134584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134584%_))
            (let ((_%e134586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134584%_ 'exception))))
              (macro-length-mismatch-exception? _%e134586%_))
            (macro-length-mismatch-exception? _%exn134584%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn134580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134580%_))
            (let ((_%e134582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134580%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e134582%_)
                  (macro-length-mismatch-exception-arg-id _%e134582%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e134582%_ '())))))
            (if (macro-length-mismatch-exception? _%exn134580%_)
                (macro-length-mismatch-exception-arg-id _%exn134580%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn134580%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn134576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134576%_))
            (let ((_%e134578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134576%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e134578%_)
                  (macro-length-mismatch-exception-arguments _%e134578%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e134578%_ '())))))
            (if (macro-length-mismatch-exception? _%exn134576%_)
                (macro-length-mismatch-exception-arguments _%exn134576%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn134576%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn134570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134570%_))
            (let ((_%e134573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134570%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e134573%_)
                  (macro-length-mismatch-exception-procedure _%e134573%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e134573%_ '())))))
            (if (macro-length-mismatch-exception? _%exn134570%_)
                (macro-length-mismatch-exception-procedure _%exn134570%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn134570%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn134566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134566%_))
            (let ((_%e134568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134566%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e134568%_))
            (macro-mailbox-receive-timeout-exception? _%exn134566%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn134562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134562%_))
            (let ((_%e134564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134562%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e134564%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e134564%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e134564%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn134562%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn134562%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn134562%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn134556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134556%_))
            (let ((_%e134559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134556%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e134559%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e134559%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e134559%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn134556%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn134556%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn134556%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn134552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134552%_))
            (let ((_%e134554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134552%_ 'exception))))
              (macro-module-not-found-exception? _%e134554%_))
            (macro-module-not-found-exception? _%exn134552%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn134548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134548%_))
            (let ((_%e134550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134548%_ 'exception))))
              (if (macro-module-not-found-exception? _%e134550%_)
                  (macro-module-not-found-exception-arguments _%e134550%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e134550%_ '())))))
            (if (macro-module-not-found-exception? _%exn134548%_)
                (macro-module-not-found-exception-arguments _%exn134548%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn134548%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn134542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134542%_))
            (let ((_%e134545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134542%_ 'exception))))
              (if (macro-module-not-found-exception? _%e134545%_)
                  (macro-module-not-found-exception-procedure _%e134545%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e134545%_ '())))))
            (if (macro-module-not-found-exception? _%exn134542%_)
                (macro-module-not-found-exception-procedure _%exn134542%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn134542%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn134536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134536%_))
            (let ((_%e134539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134536%_ 'exception))))
              (macro-multiple-c-return-exception? _%e134539%_))
            (macro-multiple-c-return-exception? _%exn134536%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn134532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134532%_))
            (let ((_%e134534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134532%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e134534%_))
            (macro-no-such-file-or-directory-exception? _%exn134532%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn134528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134528%_))
            (let ((_%e134530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134528%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e134530%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e134530%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e134530%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn134528%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn134528%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn134528%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn134522%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134522%_))
            (let ((_%e134525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134522%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e134525%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e134525%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e134525%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn134522%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn134522%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn134522%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn134518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134518%_))
            (let ((_%e134520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134518%_ 'exception))))
              (macro-noncontinuable-exception? _%e134520%_))
            (macro-noncontinuable-exception? _%exn134518%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn134512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134512%_))
            (let ((_%e134515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134512%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e134515%_)
                  (macro-noncontinuable-exception-reason _%e134515%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e134515%_ '())))))
            (if (macro-noncontinuable-exception? _%exn134512%_)
                (macro-noncontinuable-exception-reason _%exn134512%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn134512%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn134508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134508%_))
            (let ((_%e134510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134508%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e134510%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn134508%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn134504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134504%_))
            (let ((_%e134506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134504%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e134506%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e134506%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e134506%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn134504%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn134504%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn134504%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn134498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134498%_))
            (let ((_%e134501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134498%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e134501%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e134501%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e134501%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn134498%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn134498%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn134498%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn134494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134494%_))
            (let ((_%e134496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134494%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e134496%_))
            (macro-nonprocedure-operator-exception? _%exn134494%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn134490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134490%_))
            (let ((_%e134492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134490%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e134492%_)
                  (macro-nonprocedure-operator-exception-arguments _%e134492%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e134492%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn134490%_)
                (macro-nonprocedure-operator-exception-arguments _%exn134490%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn134490%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn134486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134486%_))
            (let ((_%e134488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134486%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e134488%_)
                  (macro-nonprocedure-operator-exception-code _%e134488%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e134488%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn134486%_)
                (macro-nonprocedure-operator-exception-code _%exn134486%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn134486%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn134482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134482%_))
            (let ((_%e134484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134482%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e134484%_)
                  (macro-nonprocedure-operator-exception-operator _%e134484%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e134484%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn134482%_)
                (macro-nonprocedure-operator-exception-operator _%exn134482%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn134482%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn134476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134476%_))
            (let ((_%e134479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134476%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e134479%_)
                  (macro-nonprocedure-operator-exception-rte _%e134479%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e134479%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn134476%_)
                (macro-nonprocedure-operator-exception-rte _%exn134476%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn134476%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn134472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134472%_))
            (let ((_%e134474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134472%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e134474%_))
            (macro-not-in-compilation-context-exception? _%exn134472%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn134468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134468%_))
            (let ((_%e134470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134468%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e134470%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e134470%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e134470%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn134468%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn134468%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn134468%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn134462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134462%_))
            (let ((_%e134465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134462%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e134465%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e134465%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e134465%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn134462%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn134462%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn134462%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn134458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134458%_))
            (let ((_%e134460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134458%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e134460%_))
            (macro-number-of-arguments-limit-exception? _%exn134458%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn134454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134454%_))
            (let ((_%e134456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134454%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e134456%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e134456%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e134456%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn134454%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn134454%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn134454%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn134448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134448%_))
            (let ((_%e134451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134448%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e134451%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e134451%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e134451%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn134448%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn134448%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn134448%_ '())))))))
    (define os-exception?
      (lambda (_%exn134444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134444%_))
            (let ((_%e134446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134444%_ 'exception))))
              (macro-os-exception? _%e134446%_))
            (macro-os-exception? _%exn134444%_))))
    (define os-exception-arguments
      (lambda (_%exn134440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134440%_))
            (let ((_%e134442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134440%_ 'exception))))
              (if (macro-os-exception? _%e134442%_)
                  (macro-os-exception-arguments _%e134442%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e134442%_ '())))))
            (if (macro-os-exception? _%exn134440%_)
                (macro-os-exception-arguments _%exn134440%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn134440%_ '())))))))
    (define os-exception-code
      (lambda (_%exn134436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134436%_))
            (let ((_%e134438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134436%_ 'exception))))
              (if (macro-os-exception? _%e134438%_)
                  (macro-os-exception-code _%e134438%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e134438%_ '())))))
            (if (macro-os-exception? _%exn134436%_)
                (macro-os-exception-code _%exn134436%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn134436%_ '())))))))
    (define os-exception-message
      (lambda (_%exn134432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134432%_))
            (let ((_%e134434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134432%_ 'exception))))
              (if (macro-os-exception? _%e134434%_)
                  (macro-os-exception-message _%e134434%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e134434%_ '())))))
            (if (macro-os-exception? _%exn134432%_)
                (macro-os-exception-message _%exn134432%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn134432%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn134426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134426%_))
            (let ((_%e134429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134426%_ 'exception))))
              (if (macro-os-exception? _%e134429%_)
                  (macro-os-exception-procedure _%e134429%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e134429%_ '())))))
            (if (macro-os-exception? _%exn134426%_)
                (macro-os-exception-procedure _%exn134426%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn134426%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn134422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134422%_))
            (let ((_%e134424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134422%_ 'exception))))
              (macro-permission-denied-exception? _%e134424%_))
            (macro-permission-denied-exception? _%exn134422%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn134418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134418%_))
            (let ((_%e134420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134418%_ 'exception))))
              (if (macro-permission-denied-exception? _%e134420%_)
                  (macro-permission-denied-exception-arguments _%e134420%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e134420%_ '())))))
            (if (macro-permission-denied-exception? _%exn134418%_)
                (macro-permission-denied-exception-arguments _%exn134418%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn134418%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn134412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134412%_))
            (let ((_%e134415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134412%_ 'exception))))
              (if (macro-permission-denied-exception? _%e134415%_)
                  (macro-permission-denied-exception-procedure _%e134415%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e134415%_ '())))))
            (if (macro-permission-denied-exception? _%exn134412%_)
                (macro-permission-denied-exception-procedure _%exn134412%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn134412%_ '())))))))
    (define range-exception?
      (lambda (_%exn134408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134408%_))
            (let ((_%e134410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134408%_ 'exception))))
              (macro-range-exception? _%e134410%_))
            (macro-range-exception? _%exn134408%_))))
    (define range-exception-arg-id
      (lambda (_%exn134404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134404%_))
            (let ((_%e134406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134404%_ 'exception))))
              (if (macro-range-exception? _%e134406%_)
                  (macro-range-exception-arg-id _%e134406%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e134406%_ '())))))
            (if (macro-range-exception? _%exn134404%_)
                (macro-range-exception-arg-id _%exn134404%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn134404%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn134400%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134400%_))
            (let ((_%e134402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134400%_ 'exception))))
              (if (macro-range-exception? _%e134402%_)
                  (macro-range-exception-arguments _%e134402%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e134402%_ '())))))
            (if (macro-range-exception? _%exn134400%_)
                (macro-range-exception-arguments _%exn134400%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn134400%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn134394%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134394%_))
            (let ((_%e134397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134394%_ 'exception))))
              (if (macro-range-exception? _%e134397%_)
                  (macro-range-exception-procedure _%e134397%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e134397%_ '())))))
            (if (macro-range-exception? _%exn134394%_)
                (macro-range-exception-procedure _%exn134394%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn134394%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn134390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134390%_))
            (let ((_%e134392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134390%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e134392%_))
            (macro-rpc-remote-error-exception? _%exn134390%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn134386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134386%_))
            (let ((_%e134388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134386%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e134388%_)
                  (macro-rpc-remote-error-exception-arguments _%e134388%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e134388%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn134386%_)
                (macro-rpc-remote-error-exception-arguments _%exn134386%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn134386%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn134382%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134382%_))
            (let ((_%e134384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134382%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e134384%_)
                  (macro-rpc-remote-error-exception-message _%e134384%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e134384%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn134382%_)
                (macro-rpc-remote-error-exception-message _%exn134382%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn134382%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn134376%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134376%_))
            (let ((_%e134379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134376%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e134379%_)
                  (macro-rpc-remote-error-exception-procedure _%e134379%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e134379%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn134376%_)
                (macro-rpc-remote-error-exception-procedure _%exn134376%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn134376%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn134372%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134372%_))
            (let ((_%e134374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134372%_ 'exception))))
              (macro-scheduler-exception? _%e134374%_))
            (macro-scheduler-exception? _%exn134372%_))))
    (define scheduler-exception-reason
      (lambda (_%exn134366%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134366%_))
            (let ((_%e134369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134366%_ 'exception))))
              (if (macro-scheduler-exception? _%e134369%_)
                  (macro-scheduler-exception-reason _%e134369%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e134369%_ '())))))
            (if (macro-scheduler-exception? _%exn134366%_)
                (macro-scheduler-exception-reason _%exn134366%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn134366%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn134362%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134362%_))
            (let ((_%e134364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134362%_ 'exception))))
              (macro-sfun-conversion-exception? _%e134364%_))
            (macro-sfun-conversion-exception? _%exn134362%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn134358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134358%_))
            (let ((_%e134360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134358%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e134360%_)
                  (macro-sfun-conversion-exception-arguments _%e134360%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e134360%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn134358%_)
                (macro-sfun-conversion-exception-arguments _%exn134358%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn134358%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn134354%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134354%_))
            (let ((_%e134356%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134354%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e134356%_)
                  (macro-sfun-conversion-exception-code _%e134356%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e134356%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn134354%_)
                (macro-sfun-conversion-exception-code _%exn134354%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn134354%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn134350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134350%_))
            (let ((_%e134352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134350%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e134352%_)
                  (macro-sfun-conversion-exception-message _%e134352%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e134352%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn134350%_)
                (macro-sfun-conversion-exception-message _%exn134350%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn134350%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn134344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134344%_))
            (let ((_%e134347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134344%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e134347%_)
                  (macro-sfun-conversion-exception-procedure _%e134347%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e134347%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn134344%_)
                (macro-sfun-conversion-exception-procedure _%exn134344%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn134344%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn134338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134338%_))
            (let ((_%e134341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134338%_ 'exception))))
              (macro-stack-overflow-exception? _%e134341%_))
            (macro-stack-overflow-exception? _%exn134338%_))))
    (define started-thread-exception?
      (lambda (_%exn134334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134334%_))
            (let ((_%e134336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134334%_ 'exception))))
              (macro-started-thread-exception? _%e134336%_))
            (macro-started-thread-exception? _%exn134334%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn134330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134330%_))
            (let ((_%e134332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134330%_ 'exception))))
              (if (macro-started-thread-exception? _%e134332%_)
                  (macro-started-thread-exception-arguments _%e134332%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e134332%_ '())))))
            (if (macro-started-thread-exception? _%exn134330%_)
                (macro-started-thread-exception-arguments _%exn134330%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn134330%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn134324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134324%_))
            (let ((_%e134327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134324%_ 'exception))))
              (if (macro-started-thread-exception? _%e134327%_)
                  (macro-started-thread-exception-procedure _%e134327%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e134327%_ '())))))
            (if (macro-started-thread-exception? _%exn134324%_)
                (macro-started-thread-exception-procedure _%exn134324%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn134324%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn134320%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134320%_))
            (let ((_%e134322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134320%_ 'exception))))
              (macro-terminated-thread-exception? _%e134322%_))
            (macro-terminated-thread-exception? _%exn134320%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn134316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134316%_))
            (let ((_%e134318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134316%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e134318%_)
                  (macro-terminated-thread-exception-arguments _%e134318%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e134318%_ '())))))
            (if (macro-terminated-thread-exception? _%exn134316%_)
                (macro-terminated-thread-exception-arguments _%exn134316%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn134316%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn134310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134310%_))
            (let ((_%e134313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134310%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e134313%_)
                  (macro-terminated-thread-exception-procedure _%e134313%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e134313%_ '())))))
            (if (macro-terminated-thread-exception? _%exn134310%_)
                (macro-terminated-thread-exception-procedure _%exn134310%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn134310%_ '())))))))
    (define type-exception?
      (lambda (_%exn134306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134306%_))
            (let ((_%e134308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134306%_ 'exception))))
              (macro-type-exception? _%e134308%_))
            (macro-type-exception? _%exn134306%_))))
    (define type-exception-arg-id
      (lambda (_%exn134302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134302%_))
            (let ((_%e134304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134302%_ 'exception))))
              (if (macro-type-exception? _%e134304%_)
                  (macro-type-exception-arg-id _%e134304%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e134304%_ '())))))
            (if (macro-type-exception? _%exn134302%_)
                (macro-type-exception-arg-id _%exn134302%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn134302%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn134298%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134298%_))
            (let ((_%e134300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134298%_ 'exception))))
              (if (macro-type-exception? _%e134300%_)
                  (macro-type-exception-arguments _%e134300%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e134300%_ '())))))
            (if (macro-type-exception? _%exn134298%_)
                (macro-type-exception-arguments _%exn134298%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn134298%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn134294%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134294%_))
            (let ((_%e134296%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134294%_ 'exception))))
              (if (macro-type-exception? _%e134296%_)
                  (macro-type-exception-procedure _%e134296%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e134296%_ '())))))
            (if (macro-type-exception? _%exn134294%_)
                (macro-type-exception-procedure _%exn134294%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn134294%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn134288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134288%_))
            (let ((_%e134291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134288%_ 'exception))))
              (if (macro-type-exception? _%e134291%_)
                  (macro-type-exception-type-id _%e134291%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e134291%_ '())))))
            (if (macro-type-exception? _%exn134288%_)
                (macro-type-exception-type-id _%exn134288%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn134288%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn134284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134284%_))
            (let ((_%e134286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134284%_ 'exception))))
              (macro-unbound-global-exception? _%e134286%_))
            (macro-unbound-global-exception? _%exn134284%_))))
    (define unbound-global-exception-code
      (lambda (_%exn134280%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134280%_))
            (let ((_%e134282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134280%_ 'exception))))
              (if (macro-unbound-global-exception? _%e134282%_)
                  (macro-unbound-global-exception-code _%e134282%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e134282%_ '())))))
            (if (macro-unbound-global-exception? _%exn134280%_)
                (macro-unbound-global-exception-code _%exn134280%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn134280%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn134276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134276%_))
            (let ((_%e134278%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134276%_ 'exception))))
              (if (macro-unbound-global-exception? _%e134278%_)
                  (macro-unbound-global-exception-rte _%e134278%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e134278%_ '())))))
            (if (macro-unbound-global-exception? _%exn134276%_)
                (macro-unbound-global-exception-rte _%exn134276%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn134276%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn134270%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134270%_))
            (let ((_%e134273%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134270%_ 'exception))))
              (if (macro-unbound-global-exception? _%e134273%_)
                  (macro-unbound-global-exception-variable _%e134273%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e134273%_ '())))))
            (if (macro-unbound-global-exception? _%exn134270%_)
                (macro-unbound-global-exception-variable _%exn134270%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn134270%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn134266%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134266%_))
            (let ((_%e134268%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134266%_ 'exception))))
              (macro-unbound-key-exception? _%e134268%_))
            (macro-unbound-key-exception? _%exn134266%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn134262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134262%_))
            (let ((_%e134264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134262%_ 'exception))))
              (if (macro-unbound-key-exception? _%e134264%_)
                  (macro-unbound-key-exception-arguments _%e134264%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e134264%_ '())))))
            (if (macro-unbound-key-exception? _%exn134262%_)
                (macro-unbound-key-exception-arguments _%exn134262%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn134262%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn134256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134256%_))
            (let ((_%e134259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134256%_ 'exception))))
              (if (macro-unbound-key-exception? _%e134259%_)
                  (macro-unbound-key-exception-procedure _%e134259%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e134259%_ '())))))
            (if (macro-unbound-key-exception? _%exn134256%_)
                (macro-unbound-key-exception-procedure _%exn134256%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn134256%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn134252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134252%_))
            (let ((_%e134254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134252%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e134254%_))
            (macro-unbound-os-environment-variable-exception? _%exn134252%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn134248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134248%_))
            (let ((_%e134250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134248%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e134250%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e134250%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e134250%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn134248%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn134248%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn134248%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn134242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134242%_))
            (let ((_%e134245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134242%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e134245%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e134245%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e134245%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn134242%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn134242%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn134242%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn134238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134238%_))
            (let ((_%e134240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134238%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e134240%_))
            (macro-unbound-serial-number-exception? _%exn134238%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn134234%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134234%_))
            (let ((_%e134236%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134234%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e134236%_)
                  (macro-unbound-serial-number-exception-arguments _%e134236%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e134236%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn134234%_)
                (macro-unbound-serial-number-exception-arguments _%exn134234%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn134234%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn134228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134228%_))
            (let ((_%e134231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134228%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e134231%_)
                  (macro-unbound-serial-number-exception-procedure _%e134231%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e134231%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn134228%_)
                (macro-unbound-serial-number-exception-procedure _%exn134228%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn134228%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn134224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134224%_))
            (let ((_%e134226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134224%_ 'exception))))
              (macro-uncaught-exception? _%e134226%_))
            (macro-uncaught-exception? _%exn134224%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn134220%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134220%_))
            (let ((_%e134222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134220%_ 'exception))))
              (if (macro-uncaught-exception? _%e134222%_)
                  (macro-uncaught-exception-arguments _%e134222%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e134222%_ '())))))
            (if (macro-uncaught-exception? _%exn134220%_)
                (macro-uncaught-exception-arguments _%exn134220%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn134220%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn134216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134216%_))
            (let ((_%e134218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134216%_ 'exception))))
              (if (macro-uncaught-exception? _%e134218%_)
                  (macro-uncaught-exception-procedure _%e134218%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e134218%_ '())))))
            (if (macro-uncaught-exception? _%exn134216%_)
                (macro-uncaught-exception-procedure _%exn134216%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn134216%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn134210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134210%_))
            (let ((_%e134213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134210%_ 'exception))))
              (if (macro-uncaught-exception? _%e134213%_)
                  (macro-uncaught-exception-reason _%e134213%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e134213%_ '())))))
            (if (macro-uncaught-exception? _%exn134210%_)
                (macro-uncaught-exception-reason _%exn134210%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn134210%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn134206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134206%_))
            (let ((_%e134208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134206%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e134208%_))
            (macro-uninitialized-thread-exception? _%exn134206%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn134202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134202%_))
            (let ((_%e134204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134202%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e134204%_)
                  (macro-uninitialized-thread-exception-arguments _%e134204%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e134204%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn134202%_)
                (macro-uninitialized-thread-exception-arguments _%exn134202%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn134202%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn134196%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134196%_))
            (let ((_%e134199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134196%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e134199%_)
                  (macro-uninitialized-thread-exception-procedure _%e134199%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e134199%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn134196%_)
                (macro-uninitialized-thread-exception-procedure _%exn134196%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn134196%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn134192%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134192%_))
            (let ((_%e134194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134192%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e134194%_))
            (macro-unknown-keyword-argument-exception? _%exn134192%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn134188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134188%_))
            (let ((_%e134190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134188%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e134190%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e134190%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e134190%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn134188%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn134188%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn134188%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn134182%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134182%_))
            (let ((_%e134185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134182%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e134185%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e134185%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e134185%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn134182%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn134182%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn134182%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn134178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134178%_))
            (let ((_%e134180%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134178%_ 'exception))))
              (macro-unterminated-process-exception? _%e134180%_))
            (macro-unterminated-process-exception? _%exn134178%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn134174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134174%_))
            (let ((_%e134176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134174%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e134176%_)
                  (macro-unterminated-process-exception-arguments _%e134176%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e134176%_ '())))))
            (if (macro-unterminated-process-exception? _%exn134174%_)
                (macro-unterminated-process-exception-arguments _%exn134174%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn134174%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn134168%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134168%_))
            (let ((_%e134171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134168%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e134171%_)
                  (macro-unterminated-process-exception-procedure _%e134171%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e134171%_ '())))))
            (if (macro-unterminated-process-exception? _%exn134168%_)
                (macro-unterminated-process-exception-procedure _%exn134168%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn134168%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn134164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134164%_))
            (let ((_%e134166%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134164%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e134166%_))
            (macro-wrong-number-of-arguments-exception? _%exn134164%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn134160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134160%_))
            (let ((_%e134162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134160%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e134162%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e134162%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e134162%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn134160%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn134160%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn134160%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn134154%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134154%_))
            (let ((_%e134157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134154%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e134157%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e134157%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e134157%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn134154%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn134154%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn134154%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn134150%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134150%_))
            (let ((_%e134152%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134150%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e134152%_))
            (macro-wrong-number-of-values-exception? _%exn134150%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn134146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134146%_))
            (let ((_%e134148%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134146%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e134148%_)
                  (macro-wrong-number-of-values-exception-code _%e134148%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e134148%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn134146%_)
                (macro-wrong-number-of-values-exception-code _%exn134146%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn134146%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn134142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134142%_))
            (let ((_%e134144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134142%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e134144%_)
                  (macro-wrong-number-of-values-exception-rte _%e134144%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e134144%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn134142%_)
                (macro-wrong-number-of-values-exception-rte _%exn134142%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn134142%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn134136%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134136%_))
            (let ((_%e134139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134136%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e134139%_)
                  (macro-wrong-number-of-values-exception-vals _%e134139%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e134139%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn134136%_)
                (macro-wrong-number-of-values-exception-vals _%exn134136%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn134136%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn134130%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn134130%_))
            (let ((_%e134133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn134130%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e134133%_))
            (macro-wrong-processor-c-return-exception? _%exn134130%_))))))
