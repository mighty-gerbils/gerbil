(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1769384627)
  (begin
    (define Exception::t
      (let ((__tmp114816 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp114816
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args114786%_
        (apply make-instance Exception::t _%$args114786%_)))
    (define StackTrace::t
      (let ((__tmp114817 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp114817
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args114783%_
        (apply make-instance StackTrace::t _%$args114783%_)))
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
      (let ((__tmp114818 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp114818
         '(message irritants where)
         '()
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args114780%_ (apply make-instance Error::t _%$args114780%_)))
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
      (let ((__tmp114819 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp114819
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args114777%_
        (apply make-instance ContractViolation::t _%$args114777%_)))
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
      (let ((__tmp114820 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp114820
         '(exception)
         '()
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args114774%_
        (apply make-instance RuntimeException::t _%$args114774%_)))
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
      (lambda (_%exn114769%_ _%continue114770%_)
        (let ((_%exn114772%_ (wrap-runtime-exception _%exn114769%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn114772%_ _%continue114770%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn114765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn114765%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn114765%_ 'continuation))
                '#!void
                (let ((__tmp114821
                       (lambda (_%cont114767%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn114765%_
                            'continuation
                            _%cont114767%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp114821)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn114765%_))))
    (define error
      (lambda (_%message114762%_ . _%irritants114763%_)
        (raise (let ((__obj114813
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj114813
                  _%message114762%_
                  'irritants:
                  _%irritants114763%_)
                 __obj114813))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords114737%_
               _%ctx114732114738%_
               _%contract-expr114733114739%_
               _%value114734114740%_
               _%message114741%_)
        (let* ((_%ctx114743%_
                (if (eq? _%ctx114732114738%_ absent-value)
                    '#f
                    _%ctx114732114738%_))
               (_%contract-expr114745%_
                (if (eq? _%contract-expr114733114739%_ absent-value)
                    '#f
                    _%contract-expr114733114739%_))
               (_%value114747%_
                (if (eq? _%value114734114740%_ absent-value)
                    '#f
                    _%value114734114740%_)))
          (raise (let ((__obj114814
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj114814
                    _%message114741%_
                    'where:
                    _%ctx114743%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr114745%_
                                (cons 'value: (cons _%value114747%_ '())))))
                   __obj114814)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords114752%_ . _%args114753%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords114752%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114752%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114752%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords114752%_
                  'value:
                  absent-value))
               _%args114753%_)))
    (define __raise-contract-violation-error
      (lambda _%args114735114759%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args114735114759%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler114706%_ _%thunk114707%_)
        (if (procedure? _%handler114706%_)
            (let ((_%handler114711%_ _%handler114706%_))
              (if (procedure? _%thunk114707%_)
                  (let ((_%thunk114721%_ _%thunk114707%_))
                    (__with-exception-handler
                     _%handler114711%_
                     _%thunk114721%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114707%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler114706%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler114681%_ _%thunk114682%_)
        (let* ((_%handler114685%_ _%handler114681%_)
               (_%thunk114693%_ _%thunk114682%_)
               (__tmp114822
                (lambda (_%exn114702%_)
                  (let ((_%exn114704%_ (wrap-runtime-exception _%exn114702%_)))
                    (declare (not safe))
                    (_%handler114685%_ _%exn114704%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp114822 _%thunk114693%_))))
    (define with-catch
      (lambda (_%handler114656%_ _%thunk114657%_)
        (if (procedure? _%handler114656%_)
            (let ((_%handler114661%_ _%handler114656%_))
              (if (procedure? _%thunk114657%_)
                  (let ((_%thunk114671%_ _%thunk114657%_))
                    (__with-catch _%handler114661%_ _%thunk114671%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk114657%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler114656%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler114631%_ _%thunk114632%_)
        (let* ((_%handler114635%_ _%handler114631%_)
               (_%thunk114643%_ _%thunk114632%_)
               (__tmp114823
                (lambda (_%cont114652%_)
                  (__with-exception-handler
                   (lambda (_%exn114654%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont114652%_
                        _%handler114635%_
                        _%exn114654%_)))
                   _%thunk114643%_))))
          (declare (not safe))
          (##continuation-capture __tmp114823))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn114618%_)
        (if (or (heap-overflow-exception? _%exn114618%_)
                (stack-overflow-exception? _%exn114618%_))
            _%exn114618%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn114618%_))
                _%exn114618%_
                (if (macro-exception? _%exn114618%_)
                    (let ((_%rte114626%_
                           (let ((__obj114815
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj114815
                                _%exn114618%_
                                '2
                                '#f
                                '#f))
                             __obj114815)))
                      (let ((__tmp114824
                             (lambda (_%cont114628%_)
                               (let ((__tmp114825
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont114628%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte114626%_
                                  'continuation
                                  __tmp114825)))))
                        (declare (not safe))
                        (##continuation-capture __tmp114824))
                      _%rte114626%_)
                    _%exn114618%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj114613%_)
        (let ((_%$e114615%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj114613%_))))
          (if _%$e114615%_ _%$e114615%_ (error-exception? _%obj114613%_)))))
    (define error-message
      (lambda (_%obj114606%_)
        (let ((_%$e114608%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj114606%_ 'message false))))
          (if _%$e114608%_
              _%$e114608%_
              (if (error-exception? _%obj114606%_)
                  (error-exception-message _%obj114606%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj114601%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114601%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114601%_ 'irritants))
            (if (error-exception? _%obj114601%_)
                (error-exception-parameters _%obj114601%_)
                '#f))))
    (define error-trace
      (lambda (_%obj114599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj114599%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj114599%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e114580%_ _%port114581%_)
        (let ((_%$e114583%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e114580%_ 'display-exception))))
          (if _%$e114583%_
              ((lambda (_%f114586%_) (_%f114586%_ _%e114580%_ _%port114581%_))
               _%$e114583%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e114580%_ _%port114581%_))))))
    (define display-exception__0
      (lambda (_%e114592%_)
        (let ((_%port114594%_ (current-error-port)))
          (display-exception__% _%e114592%_ _%port114594%_))))
    (define display-exception
      (lambda _g114826_
        (let ((_g114827_ (let () (declare (not safe)) (##length _g114826_))))
          (cond ((let () (declare (not safe)) (##fx= _g114827_ 1))
                 (apply display-exception__0 _g114826_))
                ((let () (declare (not safe)) (##fx= _g114827_ 2))
                 (apply display-exception__% _g114826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g114826_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self114558%_ _%message114559%_ . _%rest114560%_)
        (let* ((_%self114563%_ _%self114558%_)
               (_%message114577%_
                (if (string? _%message114559%_)
                    _%message114559%_
                    (call-with-output-string
                     '""
                     (lambda (_%g114572114574%_)
                       (display _%message114559%_ _%g114572114574%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self114563%_ 'message _%message114577%_))
          (apply class-instance-init! _%self114563%_ _%rest114560%_))))
    (define Error:::init!::specialize
      (lambda (__klass114788 __method-table114789)
        (let ((__message114790
               (let ((__slot114791
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114788 'message))))
                 (if __slot114791
                     __slot114791
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self114558%_ _%message114559%_ . _%rest114560%_)
            (let* ((_%self114563%_ _%self114558%_)
                   (_%message114577%_
                    (if (string? _%message114559%_)
                        _%message114559%_
                        (call-with-output-string
                         '""
                         (lambda (_%g114572114574%_)
                           (display _%message114559%_ _%g114572114574%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self114563%_
                 _%message114577%_
                 __message114790
                 '#f
                 '#f))
              (apply class-instance-init! _%self114563%_ _%rest114560%_))))))
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
      (lambda (_%self114283%_ _%port114284%_)
        (let ((_%self114287%_ _%self114283%_))
          (let ((_%tmp-port114297%_ (open-output-string))
                (_%display-error-newline114298%_
                 (> (output-port-column _%port114284%_) '0)))
            (fix-port-width! _%tmp-port114297%_)
            (let ((__tmp114828
                   (lambda ()
                     (if _%display-error-newline114298%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e114301%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self114287%_ 'where))))
                       (if _%$e114301%_ (display _%$e114301%_) (display '"?")))
                     (let ((__tmp114829
                            (let ((__tmp114830
                                   (let ()
                                     (declare (not safe))
                                     (__object-class _%self114287%_))))
                              (declare (not safe))
                              (##type-name __tmp114830))))
                       (declare (not safe))
                       (display* '" [" __tmp114829 '"]: "))
                     (let ((__tmp114831
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self114287%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp114831))
                     (let ((_%irritants114305%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self114287%_ 'irritants))))
                       (if (null? _%irritants114305%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj114307%_)
                                (if (u8vector? _%obj114307%_)
                                    (let ((__tmp114832
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj114307%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp114832))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj114307%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants114305%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont114308114310%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self114287%_
                                   'continuation))))
                           (if _%cont114308114310%_
                               (let ((_%cont114312%_ _%cont114308114310%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont114312%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp114828
               current-output-port
               _%tmp-port114297%_))
            (let ((__tmp114833 (get-output-string _%tmp-port114297%_)))
              (declare (not safe))
              (##write-string __tmp114833 _%port114284%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass114792 __method-table114793)
        (let ((__irritants114794
               (let ((__slot114798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114792 'irritants))))
                 (if __slot114798
                     __slot114798
                     (error '"Unknown slot" 'irritants))))
              (__where114795
               (let ((__slot114799
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114792 'where))))
                 (if __slot114799
                     __slot114799
                     (error '"Unknown slot" 'where))))
              (__continuation114796
               (let ((__slot114800
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114792 'continuation))))
                 (if __slot114800
                     __slot114800
                     (error '"Unknown slot" 'continuation))))
              (__message114797
               (let ((__slot114801
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114792 'message))))
                 (if __slot114801
                     __slot114801
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self114283%_ _%port114284%_)
            (let ((_%self114287%_ _%self114283%_))
              (let ((_%tmp-port114297%_ (open-output-string))
                    (_%display-error-newline114298%_
                     (> (output-port-column _%port114284%_) '0)))
                (fix-port-width! _%tmp-port114297%_)
                (let ((__tmp114834
                       (lambda ()
                         (if _%display-error-newline114298%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e114301%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self114287%_
                                   __where114795
                                   '#f
                                   '#f))))
                           (if _%$e114301%_
                               (display _%$e114301%_)
                               (display '"?")))
                         (let ((__tmp114835
                                (let ((__tmp114836
                                       (let ()
                                         (declare (not safe))
                                         (__object-class _%self114287%_))))
                                  (declare (not safe))
                                  (##type-name __tmp114836))))
                           (declare (not safe))
                           (display* '" [" __tmp114835 '"]: "))
                         (let ((__tmp114837
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self114287%_
                                   __message114797
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp114837))
                         (let ((_%irritants114305%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self114287%_
                                   __irritants114794
                                   '#f
                                   '#f))))
                           (if (null? _%irritants114305%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj114307%_)
                                    (if (u8vector? _%obj114307%_)
                                        (let ((__tmp114838
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj114307%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp114838))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj114307%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants114305%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont114308114310%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self114287%_
                                       __continuation114796
                                       '#f
                                       '#f))))
                               (if _%cont114308114310%_
                                   (let ((_%cont114312%_ _%cont114308114310%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont114312%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp114834
                   current-output-port
                   _%tmp-port114297%_))
                (let ((__tmp114839 (get-output-string _%tmp-port114297%_)))
                  (declare (not safe))
                  (##write-string __tmp114839 _%port114284%_))))))))
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
      (lambda (_%self114140%_ _%port114141%_)
        (let* ((_%self114144%_ _%self114140%_)
               (_%tmp-port114154%_ (open-output-string)))
          (fix-port-width! _%tmp-port114154%_)
          (let ((__tmp114840
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self114144%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp114840 _%tmp-port114154%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont114155114157%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self114144%_ 'continuation))))
                (if _%cont114155114157%_
                    (let ((_%cont114159%_ _%cont114155114157%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port114154%_)
                      (newline _%tmp-port114154%_)
                      (display-continuation-backtrace
                       _%cont114159%_
                       _%tmp-port114154%_))
                    '#f))
              '#!void)
          (let ((__tmp114841 (get-output-string _%tmp-port114154%_)))
            (declare (not safe))
            (##write-string __tmp114841 _%port114141%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass114802 __method-table114803)
        (let ((__exception114804
               (let ((__slot114806
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114802 'exception))))
                 (if __slot114806
                     __slot114806
                     (error '"Unknown slot" 'exception))))
              (__continuation114805
               (let ((__slot114807
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114802 'continuation))))
                 (if __slot114807
                     __slot114807
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self114140%_ _%port114141%_)
            (let* ((_%self114144%_ _%self114140%_)
                   (_%tmp-port114154%_ (open-output-string)))
              (fix-port-width! _%tmp-port114154%_)
              (let ((__tmp114842
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self114144%_
                        __exception114804
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp114842 _%tmp-port114154%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont114155114157%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self114144%_
                            __continuation114805
                            '#f
                            '#f))))
                    (if _%cont114155114157%_
                        (let ((_%cont114159%_ _%cont114155114157%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port114154%_)
                          (newline _%tmp-port114154%_)
                          (display-continuation-backtrace
                           _%cont114159%_
                           _%tmp-port114154%_))
                        '#f))
                  '#!void)
              (let ((__tmp114843 (get-output-string _%tmp-port114154%_)))
                (declare (not safe))
                (##write-string __tmp114843 _%port114141%_)))))))
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
      (lambda (_%port114012%_)
        (if (macro-character-port? _%port114012%_)
            (let ((_%old-width114014%_
                   (macro-character-port-output-width _%port114012%_)))
              (macro-character-port-output-width-set!
               _%port114012%_
               (lambda (_%port114016%_) '256))
              _%old-width114014%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port114009%_ _%old-width114010%_)
        (if (macro-character-port? _%port114009%_)
            (macro-character-port-output-width-set!
             _%port114009%_
             _%old-width114010%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e114007%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e114007%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn114001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn114001%_))
            (let ((_%e114004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn114001%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e114004%_))
            (macro-abandoned-mutex-exception? _%exn114001%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn113997%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113997%_))
            (let ((_%e113999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113997%_ 'exception))))
              (macro-cfun-conversion-exception? _%e113999%_))
            (macro-cfun-conversion-exception? _%exn113997%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn113993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113993%_))
            (let ((_%e113995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113993%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113995%_)
                  (macro-cfun-conversion-exception-arguments _%e113995%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e113995%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113993%_)
                (macro-cfun-conversion-exception-arguments _%exn113993%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn113993%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn113989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113989%_))
            (let ((_%e113991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113989%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113991%_)
                  (macro-cfun-conversion-exception-code _%e113991%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e113991%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113989%_)
                (macro-cfun-conversion-exception-code _%exn113989%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn113989%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn113985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113985%_))
            (let ((_%e113987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113985%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113987%_)
                  (macro-cfun-conversion-exception-message _%e113987%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e113987%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113985%_)
                (macro-cfun-conversion-exception-message _%exn113985%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn113985%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn113979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113979%_))
            (let ((_%e113982%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113979%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e113982%_)
                  (macro-cfun-conversion-exception-procedure _%e113982%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e113982%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn113979%_)
                (macro-cfun-conversion-exception-procedure _%exn113979%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn113979%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn113975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113975%_))
            (let ((_%e113977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113975%_ 'exception))))
              (macro-datum-parsing-exception? _%e113977%_))
            (macro-datum-parsing-exception? _%exn113975%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn113971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113971%_))
            (let ((_%e113973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113971%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113973%_)
                  (macro-datum-parsing-exception-kind _%e113973%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e113973%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113971%_)
                (macro-datum-parsing-exception-kind _%exn113971%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn113971%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn113967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113967%_))
            (let ((_%e113969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113967%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113969%_)
                  (macro-datum-parsing-exception-parameters _%e113969%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e113969%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113967%_)
                (macro-datum-parsing-exception-parameters _%exn113967%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn113967%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn113961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113961%_))
            (let ((_%e113964%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113961%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e113964%_)
                  (macro-datum-parsing-exception-readenv _%e113964%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e113964%_ '())))))
            (if (macro-datum-parsing-exception? _%exn113961%_)
                (macro-datum-parsing-exception-readenv _%exn113961%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn113961%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn113955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113955%_))
            (let ((_%e113958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113955%_ 'exception))))
              (macro-deadlock-exception? _%e113958%_))
            (macro-deadlock-exception? _%exn113955%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn113951%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113951%_))
            (let ((_%e113953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113951%_ 'exception))))
              (macro-divide-by-zero-exception? _%e113953%_))
            (macro-divide-by-zero-exception? _%exn113951%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn113947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113947%_))
            (let ((_%e113949%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113947%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113949%_)
                  (macro-divide-by-zero-exception-arguments _%e113949%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e113949%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113947%_)
                (macro-divide-by-zero-exception-arguments _%exn113947%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn113947%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn113941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113941%_))
            (let ((_%e113944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113941%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e113944%_)
                  (macro-divide-by-zero-exception-procedure _%e113944%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e113944%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn113941%_)
                (macro-divide-by-zero-exception-procedure _%exn113941%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn113941%_ '())))))))
    (define error-exception?
      (lambda (_%exn113937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113937%_))
            (let ((_%e113939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113937%_ 'exception))))
              (macro-error-exception? _%e113939%_))
            (macro-error-exception? _%exn113937%_))))
    (define error-exception-message
      (lambda (_%exn113933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113933%_))
            (let ((_%e113935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113933%_ 'exception))))
              (if (macro-error-exception? _%e113935%_)
                  (macro-error-exception-message _%e113935%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e113935%_ '())))))
            (if (macro-error-exception? _%exn113933%_)
                (macro-error-exception-message _%exn113933%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn113933%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn113927%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113927%_))
            (let ((_%e113930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113927%_ 'exception))))
              (if (macro-error-exception? _%e113930%_)
                  (macro-error-exception-parameters _%e113930%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e113930%_ '())))))
            (if (macro-error-exception? _%exn113927%_)
                (macro-error-exception-parameters _%exn113927%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn113927%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn113923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113923%_))
            (let ((_%e113925%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113923%_ 'exception))))
              (macro-expression-parsing-exception? _%e113925%_))
            (macro-expression-parsing-exception? _%exn113923%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn113919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113919%_))
            (let ((_%e113921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113919%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113921%_)
                  (macro-expression-parsing-exception-kind _%e113921%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e113921%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113919%_)
                (macro-expression-parsing-exception-kind _%exn113919%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn113919%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn113915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113915%_))
            (let ((_%e113917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113915%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113917%_)
                  (macro-expression-parsing-exception-parameters _%e113917%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e113917%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113915%_)
                (macro-expression-parsing-exception-parameters _%exn113915%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn113915%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn113909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113909%_))
            (let ((_%e113912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113909%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e113912%_)
                  (macro-expression-parsing-exception-source _%e113912%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e113912%_ '())))))
            (if (macro-expression-parsing-exception? _%exn113909%_)
                (macro-expression-parsing-exception-source _%exn113909%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn113909%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn113905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113905%_))
            (let ((_%e113907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113905%_ 'exception))))
              (macro-file-exists-exception? _%e113907%_))
            (macro-file-exists-exception? _%exn113905%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn113901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113901%_))
            (let ((_%e113903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113901%_ 'exception))))
              (if (macro-file-exists-exception? _%e113903%_)
                  (macro-file-exists-exception-arguments _%e113903%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e113903%_ '())))))
            (if (macro-file-exists-exception? _%exn113901%_)
                (macro-file-exists-exception-arguments _%exn113901%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn113901%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn113895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113895%_))
            (let ((_%e113898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113895%_ 'exception))))
              (if (macro-file-exists-exception? _%e113898%_)
                  (macro-file-exists-exception-procedure _%e113898%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e113898%_ '())))))
            (if (macro-file-exists-exception? _%exn113895%_)
                (macro-file-exists-exception-procedure _%exn113895%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn113895%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn113891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113891%_))
            (let ((_%e113893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113891%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e113893%_))
            (macro-fixnum-overflow-exception? _%exn113891%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn113887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113887%_))
            (let ((_%e113889%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113887%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113889%_)
                  (macro-fixnum-overflow-exception-arguments _%e113889%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e113889%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113887%_)
                (macro-fixnum-overflow-exception-arguments _%exn113887%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn113887%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn113881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113881%_))
            (let ((_%e113884%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113881%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e113884%_)
                  (macro-fixnum-overflow-exception-procedure _%e113884%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e113884%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn113881%_)
                (macro-fixnum-overflow-exception-procedure _%exn113881%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn113881%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn113875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113875%_))
            (let ((_%e113878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113875%_ 'exception))))
              (macro-heap-overflow-exception? _%e113878%_))
            (macro-heap-overflow-exception? _%exn113875%_))))
    (define inactive-thread-exception?
      (lambda (_%exn113871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113871%_))
            (let ((_%e113873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113871%_ 'exception))))
              (macro-inactive-thread-exception? _%e113873%_))
            (macro-inactive-thread-exception? _%exn113871%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn113867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113867%_))
            (let ((_%e113869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113867%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113869%_)
                  (macro-inactive-thread-exception-arguments _%e113869%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e113869%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113867%_)
                (macro-inactive-thread-exception-arguments _%exn113867%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn113867%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn113861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113861%_))
            (let ((_%e113864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113861%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e113864%_)
                  (macro-inactive-thread-exception-procedure _%e113864%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e113864%_ '())))))
            (if (macro-inactive-thread-exception? _%exn113861%_)
                (macro-inactive-thread-exception-procedure _%exn113861%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn113861%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn113857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113857%_))
            (let ((_%e113859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113857%_ 'exception))))
              (macro-initialized-thread-exception? _%e113859%_))
            (macro-initialized-thread-exception? _%exn113857%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn113853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113853%_))
            (let ((_%e113855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113853%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113855%_)
                  (macro-initialized-thread-exception-arguments _%e113855%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e113855%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113853%_)
                (macro-initialized-thread-exception-arguments _%exn113853%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn113853%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn113847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113847%_))
            (let ((_%e113850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113847%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e113850%_)
                  (macro-initialized-thread-exception-procedure _%e113850%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e113850%_ '())))))
            (if (macro-initialized-thread-exception? _%exn113847%_)
                (macro-initialized-thread-exception-procedure _%exn113847%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn113847%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn113843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113843%_))
            (let ((_%e113845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113843%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e113845%_))
            (macro-invalid-hash-number-exception? _%exn113843%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn113839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113839%_))
            (let ((_%e113841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113839%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113841%_)
                  (macro-invalid-hash-number-exception-arguments _%e113841%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e113841%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113839%_)
                (macro-invalid-hash-number-exception-arguments _%exn113839%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn113839%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn113833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113833%_))
            (let ((_%e113836%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113833%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e113836%_)
                  (macro-invalid-hash-number-exception-procedure _%e113836%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e113836%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn113833%_)
                (macro-invalid-hash-number-exception-procedure _%exn113833%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn113833%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn113829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113829%_))
            (let ((_%e113831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113829%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e113831%_))
            (macro-invalid-utf8-encoding-exception? _%exn113829%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn113825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113825%_))
            (let ((_%e113827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113825%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113827%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e113827%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e113827%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113825%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn113825%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn113825%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn113819%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113819%_))
            (let ((_%e113822%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113819%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e113822%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e113822%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e113822%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn113819%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn113819%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn113819%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn113815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113815%_))
            (let ((_%e113817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113815%_ 'exception))))
              (macro-join-timeout-exception? _%e113817%_))
            (macro-join-timeout-exception? _%exn113815%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn113811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113811%_))
            (let ((_%e113813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113811%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113813%_)
                  (macro-join-timeout-exception-arguments _%e113813%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e113813%_ '())))))
            (if (macro-join-timeout-exception? _%exn113811%_)
                (macro-join-timeout-exception-arguments _%exn113811%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn113811%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn113805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113805%_))
            (let ((_%e113808%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113805%_ 'exception))))
              (if (macro-join-timeout-exception? _%e113808%_)
                  (macro-join-timeout-exception-procedure _%e113808%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e113808%_ '())))))
            (if (macro-join-timeout-exception? _%exn113805%_)
                (macro-join-timeout-exception-procedure _%exn113805%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn113805%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn113801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113801%_))
            (let ((_%e113803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113801%_ 'exception))))
              (macro-keyword-expected-exception? _%e113803%_))
            (macro-keyword-expected-exception? _%exn113801%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn113797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113797%_))
            (let ((_%e113799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113797%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113799%_)
                  (macro-keyword-expected-exception-arguments _%e113799%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e113799%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113797%_)
                (macro-keyword-expected-exception-arguments _%exn113797%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn113797%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn113791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113791%_))
            (let ((_%e113794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113791%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e113794%_)
                  (macro-keyword-expected-exception-procedure _%e113794%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e113794%_ '())))))
            (if (macro-keyword-expected-exception? _%exn113791%_)
                (macro-keyword-expected-exception-procedure _%exn113791%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn113791%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn113787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113787%_))
            (let ((_%e113789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113787%_ 'exception))))
              (macro-length-mismatch-exception? _%e113789%_))
            (macro-length-mismatch-exception? _%exn113787%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn113783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113783%_))
            (let ((_%e113785%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113783%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113785%_)
                  (macro-length-mismatch-exception-arg-id _%e113785%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e113785%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113783%_)
                (macro-length-mismatch-exception-arg-id _%exn113783%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn113783%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn113779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113779%_))
            (let ((_%e113781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113779%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113781%_)
                  (macro-length-mismatch-exception-arguments _%e113781%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e113781%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113779%_)
                (macro-length-mismatch-exception-arguments _%exn113779%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn113779%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn113773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113773%_))
            (let ((_%e113776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113773%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e113776%_)
                  (macro-length-mismatch-exception-procedure _%e113776%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e113776%_ '())))))
            (if (macro-length-mismatch-exception? _%exn113773%_)
                (macro-length-mismatch-exception-procedure _%exn113773%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn113773%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn113769%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113769%_))
            (let ((_%e113771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113769%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e113771%_))
            (macro-mailbox-receive-timeout-exception? _%exn113769%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn113765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113765%_))
            (let ((_%e113767%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113765%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113767%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e113767%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e113767%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113765%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn113765%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn113765%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn113759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113759%_))
            (let ((_%e113762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113759%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e113762%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e113762%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e113762%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn113759%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn113759%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn113759%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn113755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113755%_))
            (let ((_%e113757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113755%_ 'exception))))
              (macro-module-not-found-exception? _%e113757%_))
            (macro-module-not-found-exception? _%exn113755%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn113751%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113751%_))
            (let ((_%e113753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113751%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113753%_)
                  (macro-module-not-found-exception-arguments _%e113753%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e113753%_ '())))))
            (if (macro-module-not-found-exception? _%exn113751%_)
                (macro-module-not-found-exception-arguments _%exn113751%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn113751%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn113745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113745%_))
            (let ((_%e113748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113745%_ 'exception))))
              (if (macro-module-not-found-exception? _%e113748%_)
                  (macro-module-not-found-exception-procedure _%e113748%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e113748%_ '())))))
            (if (macro-module-not-found-exception? _%exn113745%_)
                (macro-module-not-found-exception-procedure _%exn113745%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn113745%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn113739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113739%_))
            (let ((_%e113742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113739%_ 'exception))))
              (macro-multiple-c-return-exception? _%e113742%_))
            (macro-multiple-c-return-exception? _%exn113739%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn113735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113735%_))
            (let ((_%e113737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113735%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e113737%_))
            (macro-no-such-file-or-directory-exception? _%exn113735%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn113731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113731%_))
            (let ((_%e113733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113731%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113733%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e113733%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e113733%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113731%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn113731%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn113731%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn113725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113725%_))
            (let ((_%e113728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113725%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e113728%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e113728%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e113728%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn113725%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn113725%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn113725%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn113721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113721%_))
            (let ((_%e113723%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113721%_ 'exception))))
              (macro-noncontinuable-exception? _%e113723%_))
            (macro-noncontinuable-exception? _%exn113721%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn113715%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113715%_))
            (let ((_%e113718%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113715%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e113718%_)
                  (macro-noncontinuable-exception-reason _%e113718%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e113718%_ '())))))
            (if (macro-noncontinuable-exception? _%exn113715%_)
                (macro-noncontinuable-exception-reason _%exn113715%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn113715%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn113711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113711%_))
            (let ((_%e113713%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113711%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e113713%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn113711%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn113707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113707%_))
            (let ((_%e113709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113707%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113709%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e113709%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e113709%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113707%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn113707%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn113707%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn113701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113701%_))
            (let ((_%e113704%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113701%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e113704%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e113704%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e113704%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn113701%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn113701%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn113701%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn113697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113697%_))
            (let ((_%e113699%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113697%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e113699%_))
            (macro-nonprocedure-operator-exception? _%exn113697%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn113693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113693%_))
            (let ((_%e113695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113693%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113695%_)
                  (macro-nonprocedure-operator-exception-arguments _%e113695%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e113695%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113693%_)
                (macro-nonprocedure-operator-exception-arguments _%exn113693%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn113693%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn113689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113689%_))
            (let ((_%e113691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113689%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113691%_)
                  (macro-nonprocedure-operator-exception-code _%e113691%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e113691%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113689%_)
                (macro-nonprocedure-operator-exception-code _%exn113689%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn113689%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn113685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113685%_))
            (let ((_%e113687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113685%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113687%_)
                  (macro-nonprocedure-operator-exception-operator _%e113687%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e113687%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113685%_)
                (macro-nonprocedure-operator-exception-operator _%exn113685%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn113685%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn113679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113679%_))
            (let ((_%e113682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113679%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e113682%_)
                  (macro-nonprocedure-operator-exception-rte _%e113682%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e113682%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn113679%_)
                (macro-nonprocedure-operator-exception-rte _%exn113679%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn113679%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn113675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113675%_))
            (let ((_%e113677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113675%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e113677%_))
            (macro-not-in-compilation-context-exception? _%exn113675%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn113671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113671%_))
            (let ((_%e113673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113671%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113673%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e113673%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e113673%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113671%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn113671%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn113671%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn113665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113665%_))
            (let ((_%e113668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113665%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e113668%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e113668%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e113668%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn113665%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn113665%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn113665%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn113661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113661%_))
            (let ((_%e113663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113661%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e113663%_))
            (macro-number-of-arguments-limit-exception? _%exn113661%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn113657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113657%_))
            (let ((_%e113659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113657%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113659%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e113659%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e113659%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113657%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn113657%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn113657%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn113651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113651%_))
            (let ((_%e113654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113651%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e113654%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e113654%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e113654%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn113651%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn113651%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn113651%_ '())))))))
    (define os-exception?
      (lambda (_%exn113647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113647%_))
            (let ((_%e113649%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113647%_ 'exception))))
              (macro-os-exception? _%e113649%_))
            (macro-os-exception? _%exn113647%_))))
    (define os-exception-arguments
      (lambda (_%exn113643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113643%_))
            (let ((_%e113645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113643%_ 'exception))))
              (if (macro-os-exception? _%e113645%_)
                  (macro-os-exception-arguments _%e113645%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e113645%_ '())))))
            (if (macro-os-exception? _%exn113643%_)
                (macro-os-exception-arguments _%exn113643%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn113643%_ '())))))))
    (define os-exception-code
      (lambda (_%exn113639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113639%_))
            (let ((_%e113641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113639%_ 'exception))))
              (if (macro-os-exception? _%e113641%_)
                  (macro-os-exception-code _%e113641%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e113641%_ '())))))
            (if (macro-os-exception? _%exn113639%_)
                (macro-os-exception-code _%exn113639%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn113639%_ '())))))))
    (define os-exception-message
      (lambda (_%exn113635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113635%_))
            (let ((_%e113637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113635%_ 'exception))))
              (if (macro-os-exception? _%e113637%_)
                  (macro-os-exception-message _%e113637%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e113637%_ '())))))
            (if (macro-os-exception? _%exn113635%_)
                (macro-os-exception-message _%exn113635%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn113635%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn113629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113629%_))
            (let ((_%e113632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113629%_ 'exception))))
              (if (macro-os-exception? _%e113632%_)
                  (macro-os-exception-procedure _%e113632%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e113632%_ '())))))
            (if (macro-os-exception? _%exn113629%_)
                (macro-os-exception-procedure _%exn113629%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn113629%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn113625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113625%_))
            (let ((_%e113627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113625%_ 'exception))))
              (macro-permission-denied-exception? _%e113627%_))
            (macro-permission-denied-exception? _%exn113625%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn113621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113621%_))
            (let ((_%e113623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113621%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113623%_)
                  (macro-permission-denied-exception-arguments _%e113623%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e113623%_ '())))))
            (if (macro-permission-denied-exception? _%exn113621%_)
                (macro-permission-denied-exception-arguments _%exn113621%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn113621%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn113615%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113615%_))
            (let ((_%e113618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113615%_ 'exception))))
              (if (macro-permission-denied-exception? _%e113618%_)
                  (macro-permission-denied-exception-procedure _%e113618%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e113618%_ '())))))
            (if (macro-permission-denied-exception? _%exn113615%_)
                (macro-permission-denied-exception-procedure _%exn113615%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn113615%_ '())))))))
    (define range-exception?
      (lambda (_%exn113611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113611%_))
            (let ((_%e113613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113611%_ 'exception))))
              (macro-range-exception? _%e113613%_))
            (macro-range-exception? _%exn113611%_))))
    (define range-exception-arg-id
      (lambda (_%exn113607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113607%_))
            (let ((_%e113609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113607%_ 'exception))))
              (if (macro-range-exception? _%e113609%_)
                  (macro-range-exception-arg-id _%e113609%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e113609%_ '())))))
            (if (macro-range-exception? _%exn113607%_)
                (macro-range-exception-arg-id _%exn113607%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn113607%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn113603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113603%_))
            (let ((_%e113605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113603%_ 'exception))))
              (if (macro-range-exception? _%e113605%_)
                  (macro-range-exception-arguments _%e113605%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e113605%_ '())))))
            (if (macro-range-exception? _%exn113603%_)
                (macro-range-exception-arguments _%exn113603%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn113603%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn113597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113597%_))
            (let ((_%e113600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113597%_ 'exception))))
              (if (macro-range-exception? _%e113600%_)
                  (macro-range-exception-procedure _%e113600%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e113600%_ '())))))
            (if (macro-range-exception? _%exn113597%_)
                (macro-range-exception-procedure _%exn113597%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn113597%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn113593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113593%_))
            (let ((_%e113595%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113593%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e113595%_))
            (macro-rpc-remote-error-exception? _%exn113593%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn113589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113589%_))
            (let ((_%e113591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113589%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113591%_)
                  (macro-rpc-remote-error-exception-arguments _%e113591%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e113591%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113589%_)
                (macro-rpc-remote-error-exception-arguments _%exn113589%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn113589%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn113585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113585%_))
            (let ((_%e113587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113585%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113587%_)
                  (macro-rpc-remote-error-exception-message _%e113587%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e113587%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113585%_)
                (macro-rpc-remote-error-exception-message _%exn113585%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn113585%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn113579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113579%_))
            (let ((_%e113582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113579%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e113582%_)
                  (macro-rpc-remote-error-exception-procedure _%e113582%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e113582%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn113579%_)
                (macro-rpc-remote-error-exception-procedure _%exn113579%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn113579%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn113575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113575%_))
            (let ((_%e113577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113575%_ 'exception))))
              (macro-scheduler-exception? _%e113577%_))
            (macro-scheduler-exception? _%exn113575%_))))
    (define scheduler-exception-reason
      (lambda (_%exn113569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113569%_))
            (let ((_%e113572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113569%_ 'exception))))
              (if (macro-scheduler-exception? _%e113572%_)
                  (macro-scheduler-exception-reason _%e113572%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e113572%_ '())))))
            (if (macro-scheduler-exception? _%exn113569%_)
                (macro-scheduler-exception-reason _%exn113569%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn113569%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn113565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113565%_))
            (let ((_%e113567%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113565%_ 'exception))))
              (macro-sfun-conversion-exception? _%e113567%_))
            (macro-sfun-conversion-exception? _%exn113565%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn113561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113561%_))
            (let ((_%e113563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113561%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113563%_)
                  (macro-sfun-conversion-exception-arguments _%e113563%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e113563%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113561%_)
                (macro-sfun-conversion-exception-arguments _%exn113561%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn113561%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn113557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113557%_))
            (let ((_%e113559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113557%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113559%_)
                  (macro-sfun-conversion-exception-code _%e113559%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e113559%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113557%_)
                (macro-sfun-conversion-exception-code _%exn113557%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn113557%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn113553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113553%_))
            (let ((_%e113555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113553%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113555%_)
                  (macro-sfun-conversion-exception-message _%e113555%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e113555%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113553%_)
                (macro-sfun-conversion-exception-message _%exn113553%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn113553%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn113547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113547%_))
            (let ((_%e113550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113547%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e113550%_)
                  (macro-sfun-conversion-exception-procedure _%e113550%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e113550%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn113547%_)
                (macro-sfun-conversion-exception-procedure _%exn113547%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn113547%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn113541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113541%_))
            (let ((_%e113544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113541%_ 'exception))))
              (macro-stack-overflow-exception? _%e113544%_))
            (macro-stack-overflow-exception? _%exn113541%_))))
    (define started-thread-exception?
      (lambda (_%exn113537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113537%_))
            (let ((_%e113539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113537%_ 'exception))))
              (macro-started-thread-exception? _%e113539%_))
            (macro-started-thread-exception? _%exn113537%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn113533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113533%_))
            (let ((_%e113535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113533%_ 'exception))))
              (if (macro-started-thread-exception? _%e113535%_)
                  (macro-started-thread-exception-arguments _%e113535%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e113535%_ '())))))
            (if (macro-started-thread-exception? _%exn113533%_)
                (macro-started-thread-exception-arguments _%exn113533%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn113533%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn113527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113527%_))
            (let ((_%e113530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113527%_ 'exception))))
              (if (macro-started-thread-exception? _%e113530%_)
                  (macro-started-thread-exception-procedure _%e113530%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e113530%_ '())))))
            (if (macro-started-thread-exception? _%exn113527%_)
                (macro-started-thread-exception-procedure _%exn113527%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn113527%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn113523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113523%_))
            (let ((_%e113525%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113523%_ 'exception))))
              (macro-terminated-thread-exception? _%e113525%_))
            (macro-terminated-thread-exception? _%exn113523%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn113519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113519%_))
            (let ((_%e113521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113519%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113521%_)
                  (macro-terminated-thread-exception-arguments _%e113521%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e113521%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113519%_)
                (macro-terminated-thread-exception-arguments _%exn113519%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn113519%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn113513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113513%_))
            (let ((_%e113516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113513%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e113516%_)
                  (macro-terminated-thread-exception-procedure _%e113516%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e113516%_ '())))))
            (if (macro-terminated-thread-exception? _%exn113513%_)
                (macro-terminated-thread-exception-procedure _%exn113513%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn113513%_ '())))))))
    (define type-exception?
      (lambda (_%exn113509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113509%_))
            (let ((_%e113511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113509%_ 'exception))))
              (macro-type-exception? _%e113511%_))
            (macro-type-exception? _%exn113509%_))))
    (define type-exception-arg-id
      (lambda (_%exn113505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113505%_))
            (let ((_%e113507%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113505%_ 'exception))))
              (if (macro-type-exception? _%e113507%_)
                  (macro-type-exception-arg-id _%e113507%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e113507%_ '())))))
            (if (macro-type-exception? _%exn113505%_)
                (macro-type-exception-arg-id _%exn113505%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn113505%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn113501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113501%_))
            (let ((_%e113503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113501%_ 'exception))))
              (if (macro-type-exception? _%e113503%_)
                  (macro-type-exception-arguments _%e113503%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e113503%_ '())))))
            (if (macro-type-exception? _%exn113501%_)
                (macro-type-exception-arguments _%exn113501%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn113501%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn113497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113497%_))
            (let ((_%e113499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113497%_ 'exception))))
              (if (macro-type-exception? _%e113499%_)
                  (macro-type-exception-procedure _%e113499%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e113499%_ '())))))
            (if (macro-type-exception? _%exn113497%_)
                (macro-type-exception-procedure _%exn113497%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn113497%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn113491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113491%_))
            (let ((_%e113494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113491%_ 'exception))))
              (if (macro-type-exception? _%e113494%_)
                  (macro-type-exception-type-id _%e113494%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e113494%_ '())))))
            (if (macro-type-exception? _%exn113491%_)
                (macro-type-exception-type-id _%exn113491%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn113491%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn113487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113487%_))
            (let ((_%e113489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113487%_ 'exception))))
              (macro-unbound-global-exception? _%e113489%_))
            (macro-unbound-global-exception? _%exn113487%_))))
    (define unbound-global-exception-code
      (lambda (_%exn113483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113483%_))
            (let ((_%e113485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113483%_ 'exception))))
              (if (macro-unbound-global-exception? _%e113485%_)
                  (macro-unbound-global-exception-code _%e113485%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e113485%_ '())))))
            (if (macro-unbound-global-exception? _%exn113483%_)
                (macro-unbound-global-exception-code _%exn113483%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn113483%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn113479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113479%_))
            (let ((_%e113481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113479%_ 'exception))))
              (if (macro-unbound-global-exception? _%e113481%_)
                  (macro-unbound-global-exception-rte _%e113481%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e113481%_ '())))))
            (if (macro-unbound-global-exception? _%exn113479%_)
                (macro-unbound-global-exception-rte _%exn113479%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn113479%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn113473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113473%_))
            (let ((_%e113476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113473%_ 'exception))))
              (if (macro-unbound-global-exception? _%e113476%_)
                  (macro-unbound-global-exception-variable _%e113476%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e113476%_ '())))))
            (if (macro-unbound-global-exception? _%exn113473%_)
                (macro-unbound-global-exception-variable _%exn113473%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn113473%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn113469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113469%_))
            (let ((_%e113471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113469%_ 'exception))))
              (macro-unbound-key-exception? _%e113471%_))
            (macro-unbound-key-exception? _%exn113469%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn113465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113465%_))
            (let ((_%e113467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113465%_ 'exception))))
              (if (macro-unbound-key-exception? _%e113467%_)
                  (macro-unbound-key-exception-arguments _%e113467%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e113467%_ '())))))
            (if (macro-unbound-key-exception? _%exn113465%_)
                (macro-unbound-key-exception-arguments _%exn113465%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn113465%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn113459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113459%_))
            (let ((_%e113462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113459%_ 'exception))))
              (if (macro-unbound-key-exception? _%e113462%_)
                  (macro-unbound-key-exception-procedure _%e113462%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e113462%_ '())))))
            (if (macro-unbound-key-exception? _%exn113459%_)
                (macro-unbound-key-exception-procedure _%exn113459%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn113459%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn113455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113455%_))
            (let ((_%e113457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113455%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e113457%_))
            (macro-unbound-os-environment-variable-exception? _%exn113455%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn113451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113451%_))
            (let ((_%e113453%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113451%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e113453%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e113453%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e113453%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn113451%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn113451%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn113451%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn113445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113445%_))
            (let ((_%e113448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113445%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e113448%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e113448%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e113448%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn113445%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn113445%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn113445%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn113441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113441%_))
            (let ((_%e113443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113441%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e113443%_))
            (macro-unbound-serial-number-exception? _%exn113441%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn113437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113437%_))
            (let ((_%e113439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113437%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e113439%_)
                  (macro-unbound-serial-number-exception-arguments _%e113439%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e113439%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn113437%_)
                (macro-unbound-serial-number-exception-arguments _%exn113437%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn113437%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn113431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113431%_))
            (let ((_%e113434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113431%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e113434%_)
                  (macro-unbound-serial-number-exception-procedure _%e113434%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e113434%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn113431%_)
                (macro-unbound-serial-number-exception-procedure _%exn113431%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn113431%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn113427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113427%_))
            (let ((_%e113429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113427%_ 'exception))))
              (macro-uncaught-exception? _%e113429%_))
            (macro-uncaught-exception? _%exn113427%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn113423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113423%_))
            (let ((_%e113425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113423%_ 'exception))))
              (if (macro-uncaught-exception? _%e113425%_)
                  (macro-uncaught-exception-arguments _%e113425%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e113425%_ '())))))
            (if (macro-uncaught-exception? _%exn113423%_)
                (macro-uncaught-exception-arguments _%exn113423%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn113423%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn113419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113419%_))
            (let ((_%e113421%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113419%_ 'exception))))
              (if (macro-uncaught-exception? _%e113421%_)
                  (macro-uncaught-exception-procedure _%e113421%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e113421%_ '())))))
            (if (macro-uncaught-exception? _%exn113419%_)
                (macro-uncaught-exception-procedure _%exn113419%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn113419%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn113413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113413%_))
            (let ((_%e113416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113413%_ 'exception))))
              (if (macro-uncaught-exception? _%e113416%_)
                  (macro-uncaught-exception-reason _%e113416%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e113416%_ '())))))
            (if (macro-uncaught-exception? _%exn113413%_)
                (macro-uncaught-exception-reason _%exn113413%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn113413%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn113409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113409%_))
            (let ((_%e113411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113409%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e113411%_))
            (macro-uninitialized-thread-exception? _%exn113409%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn113405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113405%_))
            (let ((_%e113407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113405%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e113407%_)
                  (macro-uninitialized-thread-exception-arguments _%e113407%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e113407%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn113405%_)
                (macro-uninitialized-thread-exception-arguments _%exn113405%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn113405%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn113399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113399%_))
            (let ((_%e113402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113399%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e113402%_)
                  (macro-uninitialized-thread-exception-procedure _%e113402%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e113402%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn113399%_)
                (macro-uninitialized-thread-exception-procedure _%exn113399%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn113399%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn113395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113395%_))
            (let ((_%e113397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113395%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e113397%_))
            (macro-unknown-keyword-argument-exception? _%exn113395%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn113391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113391%_))
            (let ((_%e113393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113391%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e113393%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e113393%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e113393%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn113391%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn113391%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn113391%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn113385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113385%_))
            (let ((_%e113388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113385%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e113388%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e113388%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e113388%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn113385%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn113385%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn113385%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn113381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113381%_))
            (let ((_%e113383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113381%_ 'exception))))
              (macro-unterminated-process-exception? _%e113383%_))
            (macro-unterminated-process-exception? _%exn113381%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn113377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113377%_))
            (let ((_%e113379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113377%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e113379%_)
                  (macro-unterminated-process-exception-arguments _%e113379%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e113379%_ '())))))
            (if (macro-unterminated-process-exception? _%exn113377%_)
                (macro-unterminated-process-exception-arguments _%exn113377%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn113377%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn113371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113371%_))
            (let ((_%e113374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113371%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e113374%_)
                  (macro-unterminated-process-exception-procedure _%e113374%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e113374%_ '())))))
            (if (macro-unterminated-process-exception? _%exn113371%_)
                (macro-unterminated-process-exception-procedure _%exn113371%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn113371%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn113367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113367%_))
            (let ((_%e113369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113367%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e113369%_))
            (macro-wrong-number-of-arguments-exception? _%exn113367%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn113363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113363%_))
            (let ((_%e113365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113363%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e113365%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e113365%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e113365%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn113363%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn113363%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn113363%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn113357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113357%_))
            (let ((_%e113360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113357%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e113360%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e113360%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e113360%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn113357%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn113357%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn113357%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn113353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113353%_))
            (let ((_%e113355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113353%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e113355%_))
            (macro-wrong-number-of-values-exception? _%exn113353%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn113349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113349%_))
            (let ((_%e113351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113349%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e113351%_)
                  (macro-wrong-number-of-values-exception-code _%e113351%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e113351%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn113349%_)
                (macro-wrong-number-of-values-exception-code _%exn113349%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn113349%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn113345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113345%_))
            (let ((_%e113347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113345%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e113347%_)
                  (macro-wrong-number-of-values-exception-rte _%e113347%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e113347%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn113345%_)
                (macro-wrong-number-of-values-exception-rte _%exn113345%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn113345%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn113339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113339%_))
            (let ((_%e113342%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113339%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e113342%_)
                  (macro-wrong-number-of-values-exception-vals _%e113342%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e113342%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn113339%_)
                (macro-wrong-number-of-values-exception-vals _%exn113339%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn113339%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn113333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn113333%_))
            (let ((_%e113336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn113333%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e113336%_))
            (macro-wrong-processor-c-return-exception? _%exn113333%_))))))
