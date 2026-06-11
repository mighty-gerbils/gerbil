(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1781138349)
  (begin
    (define Exception::t
      (let ((__tmp143914 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp143914 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args143832%_
        (apply make-instance Exception::t _%$args143832%_)))
    (define StackTrace::t
      (let ((__tmp143915 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp143915
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args143829%_
        (apply make-instance StackTrace::t _%$args143829%_)))
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
      (let ((__tmp143916 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp143916
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args143826%_ (apply make-instance Error::t _%$args143826%_)))
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
      (let ((__tmp143917 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp143917
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args143823%_
        (apply make-instance ContractViolation::t _%$args143823%_)))
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
      (let ((__tmp143918 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp143918
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args143820%_
        (apply make-instance RuntimeException::t _%$args143820%_)))
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
      (lambda (_%exn143815%_ _%continue143816%_)
        (let ((_%exn143818%_ (wrap-runtime-exception _%exn143815%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn143818%_ _%continue143816%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn143811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn143811%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn143811%_ 'continuation))
                '#!void
                (let ((__tmp143919
                       (lambda (_%cont143813%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn143811%_
                            'continuation
                            _%cont143813%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp143919)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn143811%_))))
    (define error
      (lambda (_%message143808%_ . _%irritants143809%_)
        (raise (let ((__obj143911
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj143911
                  _%message143808%_
                  'irritants:
                  _%irritants143809%_)
                 __obj143911))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords143783%_
               _%$%ctx143778143784%_
               _%$%contract-expr143779143785%_
               _%$%value143780143786%_
               _%message143787%_)
        (let* ((_%ctx143789%_
                (if (eq? _%$%ctx143778143784%_ absent-value)
                    '#f
                    _%$%ctx143778143784%_))
               (_%contract-expr143791%_
                (if (eq? _%$%contract-expr143779143785%_ absent-value)
                    '#f
                    _%$%contract-expr143779143785%_))
               (_%value143793%_
                (if (eq? _%$%value143780143786%_ absent-value)
                    '#f
                    _%$%value143780143786%_)))
          (raise (let ((__obj143912
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj143912
                    _%message143787%_
                    'where:
                    _%ctx143789%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr143791%_
                                (cons 'value: (cons _%value143793%_ '())))))
                   __obj143912)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords143798%_ . _%args143799%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords143798%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143798%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143798%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143798%_
                  'value:
                  absent-value))
               _%args143799%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args143781143805%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args143781143805%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler143752%_ _%thunk143753%_)
        (let* ((_%handler143756%_ _%handler143752%_)
               (_%thunk143764%_ _%thunk143753%_)
               (__tmp143920
                (lambda (_%exn143773%_)
                  (let ((_%exn143775%_ (wrap-runtime-exception _%exn143773%_)))
                    (declare (not safe))
                    (_%handler143756%_ _%exn143775%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp143920 _%thunk143764%_))))
    (define with-exception-handler
      (lambda (_%handler143727%_ _%thunk143728%_)
        (if (procedure? _%handler143727%_)
            (let ((_%handler143732%_ _%handler143727%_))
              (if (procedure? _%thunk143728%_)
                  (let ((_%thunk143742%_ _%thunk143728%_))
                    (__with-exception-handler
                     _%handler143732%_
                     _%thunk143742%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk143728%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler143727%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler143669%_ _%thunk143670%_)
        (let* ((_%handler143673%_ _%handler143669%_)
               (_%thunk143681%_ _%thunk143670%_)
               (__tmp143921
                (lambda (_%cont143690%_)
                  (let* ((_%handler143694%_
                          (lambda (_%exn143692%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont143690%_
                               _%handler143673%_
                               _%exn143692%_))))
                         (_%thunk143697%_ _%thunk143681%_)
                         (_%handler143702%_ _%handler143694%_)
                         (_%thunk143717%_ _%thunk143697%_))
                    (__with-exception-handler
                     _%handler143702%_
                     _%thunk143717%_)))))
          (declare (not safe))
          (##continuation-capture __tmp143921))))
    (define with-catch
      (lambda (_%handler143644%_ _%thunk143645%_)
        (if (procedure? _%handler143644%_)
            (let ((_%handler143649%_ _%handler143644%_))
              (if (procedure? _%thunk143645%_)
                  (let ((_%thunk143659%_ _%thunk143645%_))
                    (__with-catch _%handler143649%_ _%thunk143659%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk143645%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler143644%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn143631%_)
        (if (or (heap-overflow-exception? _%exn143631%_)
                (stack-overflow-exception? _%exn143631%_))
            _%exn143631%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn143631%_))
                _%exn143631%_
                (if (macro-exception? _%exn143631%_)
                    (let ((_%rte143639%_
                           (let ((__obj143913
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj143913
                                _%exn143631%_
                                '2
                                '#f
                                '#f))
                             __obj143913)))
                      (let ((__tmp143922
                             (lambda (_%cont143641%_)
                               (let ((__tmp143923
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont143641%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte143639%_
                                  'continuation
                                  __tmp143923)))))
                        (declare (not safe))
                        (##continuation-capture __tmp143922))
                      _%rte143639%_)
                    _%exn143631%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj143626%_)
        (let ((_%$e143628%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj143626%_))))
          (if _%$e143628%_ _%$e143628%_ (error-exception? _%obj143626%_)))))
    (define error-message
      (lambda (_%obj143585%_)
        (let ((_%$e143621%_
               (let* ((_%obj143587%_ _%obj143585%_)
                      (_%slot143590%_ 'message)
                      (_%E143593%_ false)
                      (_%slot143598%_ _%slot143590%_)
                      (_%E143611%_ _%E143593%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj143587%_ _%slot143598%_ _%E143611%_))))
          (if _%$e143621%_
              _%$e143621%_
              (if (error-exception? _%obj143585%_)
                  (error-exception-message _%obj143585%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj143580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj143580%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj143580%_ 'irritants))
            (if (error-exception? _%obj143580%_)
                (error-exception-parameters _%obj143580%_)
                '#f))))
    (define error-trace
      (lambda (_%obj143578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj143578%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj143578%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e143539%_ _%port143540%_)
        (let ((_%$e143562%_
               (let* ((_%obj143542%_ _%e143539%_)
                      (_%id143545%_ 'display-exception)
                      (_%id143550%_ _%id143545%_))
                 (declare (not safe))
                 (__method-ref _%obj143542%_ _%id143550%_))))
          (if _%$e143562%_
              (_%$e143562%_ _%e143539%_ _%port143540%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e143539%_ _%port143540%_))))))
    (define display-exception__0
      (lambda (_%e143571%_)
        (let ((_%port143573%_ (current-error-port)))
          (display-exception__% _%e143571%_ _%port143573%_))))
    (define display-exception
      (lambda _g143924_
        (let ((_g143925_ (let () (declare (not safe)) (##length _g143924_))))
          (cond ((let () (declare (not safe)) (##fx= _g143925_ 1))
                 (apply display-exception__0 _g143924_))
                ((let () (declare (not safe)) (##fx= _g143925_ 2))
                 (apply display-exception__% _g143924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g143924_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self143517%_ _%message143518%_ . _%rest143519%_)
        (let* ((_%self143522%_ _%self143517%_)
               (_%message143536%_
                (if (string? _%message143518%_)
                    _%message143518%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g143531143533%_)
                       (display _%message143518%_ _%$%g143531143533%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self143522%_ 'message _%message143536%_))
          (apply class-instance-init! _%self143522%_ _%rest143519%_))))
    (define Error:::init!::specialize
      (lambda (__klass143834 __method-table143835)
        (let ((__message143836
               (let ((__slot143837
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143834 'message))))
                 (if __slot143837
                     __slot143837
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self143517%_ _%message143518%_ . _%rest143519%_)
            (let* ((_%self143522%_ _%self143517%_)
                   (_%message143536%_
                    (if (string? _%message143518%_)
                        _%message143518%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g143531143533%_)
                           (display _%message143518%_ _%$%g143531143533%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self143522%_
                 _%message143536%_
                 __message143836
                 '#f
                 '#f))
              (apply class-instance-init! _%self143522%_ _%rest143519%_))))))
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
      (lambda (_%self143222%_ _%port143223%_)
        (let ((_%self143226%_ _%self143222%_))
          (let ((_%tmp-port143236%_ (open-output-string))
                (_%display-error-newline143237%_
                 (> (output-port-column _%port143223%_) '0)))
            (fix-port-width! _%tmp-port143236%_)
            (let ((__tmp143926
                   (lambda ()
                     (if _%display-error-newline143237%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e143240%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self143226%_ 'where))))
                       (if _%$e143240%_ (display _%$e143240%_) (display '"?")))
                     (let ((__tmp143927
                            (let ((__tmp143928
                                   (let ((_%obj143244%_ _%self143226%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj143244%_))
                                         (let ((_%obj143249%_ _%obj143244%_))
                                           (declare (not safe))
                                           (__object-class _%obj143249%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj143244%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp143928))))
                       (declare (not safe))
                       (display* '" [" __tmp143927 '"]: "))
                     (let ((__tmp143929
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self143226%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp143929))
                     (let ((_%irritants143264%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self143226%_ 'irritants))))
                       (if (null? _%irritants143264%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj143266%_)
                                (if (u8vector? _%obj143266%_)
                                    (let ((__tmp143930
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj143266%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp143930))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj143266%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants143264%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont143267143269%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self143226%_
                                   'continuation))))
                           (if _%$%cont143267143269%_
                               (let ((_%cont143271%_ _%$%cont143267143269%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont143271%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp143926
               current-output-port
               _%tmp-port143236%_))
            (let ((__tmp143931 (get-output-string _%tmp-port143236%_)))
              (declare (not safe))
              (##write-string __tmp143931 _%port143223%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass143838 __method-table143839)
        (let ((__irritants143840
               (let ((__slot143844
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143838 'irritants))))
                 (if __slot143844
                     __slot143844
                     (error '"Unknown slot" 'irritants))))
              (__message143841
               (let ((__slot143845
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143838 'message))))
                 (if __slot143845
                     __slot143845
                     (error '"Unknown slot" 'message))))
              (__where143842
               (let ((__slot143846
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143838 'where))))
                 (if __slot143846
                     __slot143846
                     (error '"Unknown slot" 'where))))
              (__continuation143843
               (let ((__slot143847
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143838 'continuation))))
                 (if __slot143847
                     __slot143847
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self143222%_ _%port143223%_)
            (let ((_%self143226%_ _%self143222%_))
              (let ((_%tmp-port143236%_ (open-output-string))
                    (_%display-error-newline143237%_
                     (> (output-port-column _%port143223%_) '0)))
                (fix-port-width! _%tmp-port143236%_)
                (let ((__tmp143932
                       (lambda ()
                         (if _%display-error-newline143237%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e143240%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self143226%_
                                   __where143842
                                   '#f
                                   '#f))))
                           (if _%$e143240%_
                               (display _%$e143240%_)
                               (display '"?")))
                         (let ((__tmp143933
                                (let ((__tmp143934
                                       (let ((_%obj143244%_ _%self143226%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj143244%_))
                                             (let ((_%obj143249%_
                                                    _%obj143244%_))
                                               (declare (not safe))
                                               (__object-class _%obj143249%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj143244%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp143934))))
                           (declare (not safe))
                           (display* '" [" __tmp143933 '"]: "))
                         (let ((__tmp143935
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self143226%_
                                   __message143841
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp143935))
                         (let ((_%irritants143264%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self143226%_
                                   __irritants143840
                                   '#f
                                   '#f))))
                           (if (null? _%irritants143264%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj143266%_)
                                    (if (u8vector? _%obj143266%_)
                                        (let ((__tmp143936
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj143266%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp143936))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj143266%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants143264%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont143267143269%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self143226%_
                                       __continuation143843
                                       '#f
                                       '#f))))
                               (if _%$%cont143267143269%_
                                   (let ((_%cont143271%_
                                          _%$%cont143267143269%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont143271%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp143932
                   current-output-port
                   _%tmp-port143236%_))
                (let ((__tmp143937 (get-output-string _%tmp-port143236%_)))
                  (declare (not safe))
                  (##write-string __tmp143937 _%port143223%_))))))))
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
      (lambda (_%self143079%_ _%port143080%_)
        (let* ((_%self143083%_ _%self143079%_)
               (_%tmp-port143093%_ (open-output-string)))
          (fix-port-width! _%tmp-port143093%_)
          (let ((__tmp143938
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self143083%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp143938 _%tmp-port143093%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont143094143096%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self143083%_ 'continuation))))
                (if _%$%cont143094143096%_
                    (let ((_%cont143098%_ _%$%cont143094143096%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port143093%_)
                      (newline _%tmp-port143093%_)
                      (display-continuation-backtrace
                       _%cont143098%_
                       _%tmp-port143093%_))
                    '#f))
              '#!void)
          (let ((__tmp143939 (get-output-string _%tmp-port143093%_)))
            (declare (not safe))
            (##write-string __tmp143939 _%port143080%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass143848 __method-table143849)
        (let ((__exception143850
               (let ((__slot143852
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143848 'exception))))
                 (if __slot143852
                     __slot143852
                     (error '"Unknown slot" 'exception))))
              (__continuation143851
               (let ((__slot143853
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass143848 'continuation))))
                 (if __slot143853
                     __slot143853
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self143079%_ _%port143080%_)
            (let* ((_%self143083%_ _%self143079%_)
                   (_%tmp-port143093%_ (open-output-string)))
              (fix-port-width! _%tmp-port143093%_)
              (let ((__tmp143940
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self143083%_
                        __exception143850
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp143940 _%tmp-port143093%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont143094143096%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self143083%_
                            __continuation143851
                            '#f
                            '#f))))
                    (if _%$%cont143094143096%_
                        (let ((_%cont143098%_ _%$%cont143094143096%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port143093%_)
                          (newline _%tmp-port143093%_)
                          (display-continuation-backtrace
                           _%cont143098%_
                           _%tmp-port143093%_))
                        '#f))
                  '#!void)
              (let ((__tmp143941 (get-output-string _%tmp-port143093%_)))
                (declare (not safe))
                (##write-string __tmp143941 _%port143080%_)))))))
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
      (lambda (_%port142951%_)
        (if (macro-character-port? _%port142951%_)
            (let ((_%old-width142953%_
                   (macro-character-port-output-width _%port142951%_)))
              (macro-character-port-output-width-set!
               _%port142951%_
               (lambda (_%port142955%_) '512))
              _%old-width142953%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port142948%_ _%old-width142949%_)
        (if (macro-character-port? _%port142948%_)
            (macro-character-port-output-width-set!
             _%port142948%_
             _%old-width142949%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e142946%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e142946%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn142940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142940%_))
            (let ((_%e142943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142940%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e142943%_))
            (macro-abandoned-mutex-exception? _%exn142940%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn142936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142936%_))
            (let ((_%e142938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142936%_ 'exception))))
              (macro-cfun-conversion-exception? _%e142938%_))
            (macro-cfun-conversion-exception? _%exn142936%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn142932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142932%_))
            (let ((_%e142934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142932%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142934%_)
                  (macro-cfun-conversion-exception-arguments _%e142934%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e142934%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142932%_)
                (macro-cfun-conversion-exception-arguments _%exn142932%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn142932%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn142928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142928%_))
            (let ((_%e142930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142928%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142930%_)
                  (macro-cfun-conversion-exception-code _%e142930%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e142930%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142928%_)
                (macro-cfun-conversion-exception-code _%exn142928%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn142928%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn142924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142924%_))
            (let ((_%e142926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142924%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142926%_)
                  (macro-cfun-conversion-exception-message _%e142926%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e142926%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142924%_)
                (macro-cfun-conversion-exception-message _%exn142924%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn142924%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn142918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142918%_))
            (let ((_%e142921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142918%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e142921%_)
                  (macro-cfun-conversion-exception-procedure _%e142921%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e142921%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn142918%_)
                (macro-cfun-conversion-exception-procedure _%exn142918%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn142918%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn142914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142914%_))
            (let ((_%e142916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142914%_ 'exception))))
              (macro-datum-parsing-exception? _%e142916%_))
            (macro-datum-parsing-exception? _%exn142914%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn142910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142910%_))
            (let ((_%e142912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142910%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142912%_)
                  (macro-datum-parsing-exception-kind _%e142912%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e142912%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142910%_)
                (macro-datum-parsing-exception-kind _%exn142910%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn142910%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn142906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142906%_))
            (let ((_%e142908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142906%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142908%_)
                  (macro-datum-parsing-exception-parameters _%e142908%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e142908%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142906%_)
                (macro-datum-parsing-exception-parameters _%exn142906%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn142906%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn142900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142900%_))
            (let ((_%e142903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142900%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e142903%_)
                  (macro-datum-parsing-exception-readenv _%e142903%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e142903%_ '())))))
            (if (macro-datum-parsing-exception? _%exn142900%_)
                (macro-datum-parsing-exception-readenv _%exn142900%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn142900%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn142894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142894%_))
            (let ((_%e142897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142894%_ 'exception))))
              (macro-deadlock-exception? _%e142897%_))
            (macro-deadlock-exception? _%exn142894%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn142890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142890%_))
            (let ((_%e142892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142890%_ 'exception))))
              (macro-divide-by-zero-exception? _%e142892%_))
            (macro-divide-by-zero-exception? _%exn142890%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn142886%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142886%_))
            (let ((_%e142888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142886%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142888%_)
                  (macro-divide-by-zero-exception-arguments _%e142888%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e142888%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142886%_)
                (macro-divide-by-zero-exception-arguments _%exn142886%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn142886%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn142880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142880%_))
            (let ((_%e142883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142880%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e142883%_)
                  (macro-divide-by-zero-exception-procedure _%e142883%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e142883%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn142880%_)
                (macro-divide-by-zero-exception-procedure _%exn142880%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn142880%_ '())))))))
    (define error-exception?
      (lambda (_%exn142876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142876%_))
            (let ((_%e142878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142876%_ 'exception))))
              (macro-error-exception? _%e142878%_))
            (macro-error-exception? _%exn142876%_))))
    (define error-exception-message
      (lambda (_%exn142872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142872%_))
            (let ((_%e142874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142872%_ 'exception))))
              (if (macro-error-exception? _%e142874%_)
                  (macro-error-exception-message _%e142874%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e142874%_ '())))))
            (if (macro-error-exception? _%exn142872%_)
                (macro-error-exception-message _%exn142872%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn142872%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn142866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142866%_))
            (let ((_%e142869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142866%_ 'exception))))
              (if (macro-error-exception? _%e142869%_)
                  (macro-error-exception-parameters _%e142869%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e142869%_ '())))))
            (if (macro-error-exception? _%exn142866%_)
                (macro-error-exception-parameters _%exn142866%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn142866%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn142862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142862%_))
            (let ((_%e142864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142862%_ 'exception))))
              (macro-expression-parsing-exception? _%e142864%_))
            (macro-expression-parsing-exception? _%exn142862%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn142858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142858%_))
            (let ((_%e142860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142858%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142860%_)
                  (macro-expression-parsing-exception-kind _%e142860%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e142860%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142858%_)
                (macro-expression-parsing-exception-kind _%exn142858%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn142858%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn142854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142854%_))
            (let ((_%e142856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142854%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142856%_)
                  (macro-expression-parsing-exception-parameters _%e142856%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e142856%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142854%_)
                (macro-expression-parsing-exception-parameters _%exn142854%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn142854%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn142848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142848%_))
            (let ((_%e142851%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142848%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e142851%_)
                  (macro-expression-parsing-exception-source _%e142851%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e142851%_ '())))))
            (if (macro-expression-parsing-exception? _%exn142848%_)
                (macro-expression-parsing-exception-source _%exn142848%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn142848%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn142844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142844%_))
            (let ((_%e142846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142844%_ 'exception))))
              (macro-file-exists-exception? _%e142846%_))
            (macro-file-exists-exception? _%exn142844%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn142840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142840%_))
            (let ((_%e142842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142840%_ 'exception))))
              (if (macro-file-exists-exception? _%e142842%_)
                  (macro-file-exists-exception-arguments _%e142842%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e142842%_ '())))))
            (if (macro-file-exists-exception? _%exn142840%_)
                (macro-file-exists-exception-arguments _%exn142840%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn142840%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn142834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142834%_))
            (let ((_%e142837%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142834%_ 'exception))))
              (if (macro-file-exists-exception? _%e142837%_)
                  (macro-file-exists-exception-procedure _%e142837%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e142837%_ '())))))
            (if (macro-file-exists-exception? _%exn142834%_)
                (macro-file-exists-exception-procedure _%exn142834%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn142834%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn142830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142830%_))
            (let ((_%e142832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142830%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e142832%_))
            (macro-fixnum-overflow-exception? _%exn142830%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn142826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142826%_))
            (let ((_%e142828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142826%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142828%_)
                  (macro-fixnum-overflow-exception-arguments _%e142828%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e142828%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142826%_)
                (macro-fixnum-overflow-exception-arguments _%exn142826%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn142826%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn142820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142820%_))
            (let ((_%e142823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142820%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e142823%_)
                  (macro-fixnum-overflow-exception-procedure _%e142823%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e142823%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn142820%_)
                (macro-fixnum-overflow-exception-procedure _%exn142820%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn142820%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn142814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142814%_))
            (let ((_%e142817%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142814%_ 'exception))))
              (macro-heap-overflow-exception? _%e142817%_))
            (macro-heap-overflow-exception? _%exn142814%_))))
    (define inactive-thread-exception?
      (lambda (_%exn142810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142810%_))
            (let ((_%e142812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142810%_ 'exception))))
              (macro-inactive-thread-exception? _%e142812%_))
            (macro-inactive-thread-exception? _%exn142810%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn142806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142806%_))
            (let ((_%e142808%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142806%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e142808%_)
                  (macro-inactive-thread-exception-arguments _%e142808%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e142808%_ '())))))
            (if (macro-inactive-thread-exception? _%exn142806%_)
                (macro-inactive-thread-exception-arguments _%exn142806%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn142806%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn142800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142800%_))
            (let ((_%e142803%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142800%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e142803%_)
                  (macro-inactive-thread-exception-procedure _%e142803%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e142803%_ '())))))
            (if (macro-inactive-thread-exception? _%exn142800%_)
                (macro-inactive-thread-exception-procedure _%exn142800%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn142800%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn142796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142796%_))
            (let ((_%e142798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142796%_ 'exception))))
              (macro-initialized-thread-exception? _%e142798%_))
            (macro-initialized-thread-exception? _%exn142796%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn142792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142792%_))
            (let ((_%e142794%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142792%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e142794%_)
                  (macro-initialized-thread-exception-arguments _%e142794%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e142794%_ '())))))
            (if (macro-initialized-thread-exception? _%exn142792%_)
                (macro-initialized-thread-exception-arguments _%exn142792%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn142792%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn142786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142786%_))
            (let ((_%e142789%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142786%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e142789%_)
                  (macro-initialized-thread-exception-procedure _%e142789%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e142789%_ '())))))
            (if (macro-initialized-thread-exception? _%exn142786%_)
                (macro-initialized-thread-exception-procedure _%exn142786%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn142786%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn142782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142782%_))
            (let ((_%e142784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142782%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e142784%_))
            (macro-invalid-hash-number-exception? _%exn142782%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn142778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142778%_))
            (let ((_%e142780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142778%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e142780%_)
                  (macro-invalid-hash-number-exception-arguments _%e142780%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e142780%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn142778%_)
                (macro-invalid-hash-number-exception-arguments _%exn142778%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn142778%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn142772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142772%_))
            (let ((_%e142775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142772%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e142775%_)
                  (macro-invalid-hash-number-exception-procedure _%e142775%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e142775%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn142772%_)
                (macro-invalid-hash-number-exception-procedure _%exn142772%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn142772%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn142768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142768%_))
            (let ((_%e142770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142768%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e142770%_))
            (macro-invalid-utf8-encoding-exception? _%exn142768%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn142764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142764%_))
            (let ((_%e142766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142764%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e142766%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e142766%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e142766%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn142764%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn142764%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn142764%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn142758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142758%_))
            (let ((_%e142761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142758%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e142761%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e142761%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e142761%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn142758%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn142758%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn142758%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn142754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142754%_))
            (let ((_%e142756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142754%_ 'exception))))
              (macro-join-timeout-exception? _%e142756%_))
            (macro-join-timeout-exception? _%exn142754%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn142750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142750%_))
            (let ((_%e142752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142750%_ 'exception))))
              (if (macro-join-timeout-exception? _%e142752%_)
                  (macro-join-timeout-exception-arguments _%e142752%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e142752%_ '())))))
            (if (macro-join-timeout-exception? _%exn142750%_)
                (macro-join-timeout-exception-arguments _%exn142750%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn142750%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn142744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142744%_))
            (let ((_%e142747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142744%_ 'exception))))
              (if (macro-join-timeout-exception? _%e142747%_)
                  (macro-join-timeout-exception-procedure _%e142747%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e142747%_ '())))))
            (if (macro-join-timeout-exception? _%exn142744%_)
                (macro-join-timeout-exception-procedure _%exn142744%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn142744%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn142740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142740%_))
            (let ((_%e142742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142740%_ 'exception))))
              (macro-keyword-expected-exception? _%e142742%_))
            (macro-keyword-expected-exception? _%exn142740%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn142736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142736%_))
            (let ((_%e142738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142736%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e142738%_)
                  (macro-keyword-expected-exception-arguments _%e142738%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e142738%_ '())))))
            (if (macro-keyword-expected-exception? _%exn142736%_)
                (macro-keyword-expected-exception-arguments _%exn142736%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn142736%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn142730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142730%_))
            (let ((_%e142733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142730%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e142733%_)
                  (macro-keyword-expected-exception-procedure _%e142733%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e142733%_ '())))))
            (if (macro-keyword-expected-exception? _%exn142730%_)
                (macro-keyword-expected-exception-procedure _%exn142730%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn142730%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn142726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142726%_))
            (let ((_%e142728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142726%_ 'exception))))
              (macro-length-mismatch-exception? _%e142728%_))
            (macro-length-mismatch-exception? _%exn142726%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn142722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142722%_))
            (let ((_%e142724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142722%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142724%_)
                  (macro-length-mismatch-exception-arg-id _%e142724%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e142724%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142722%_)
                (macro-length-mismatch-exception-arg-id _%exn142722%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn142722%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn142718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142718%_))
            (let ((_%e142720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142718%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142720%_)
                  (macro-length-mismatch-exception-arguments _%e142720%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e142720%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142718%_)
                (macro-length-mismatch-exception-arguments _%exn142718%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn142718%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn142712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142712%_))
            (let ((_%e142715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142712%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e142715%_)
                  (macro-length-mismatch-exception-procedure _%e142715%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e142715%_ '())))))
            (if (macro-length-mismatch-exception? _%exn142712%_)
                (macro-length-mismatch-exception-procedure _%exn142712%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn142712%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn142708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142708%_))
            (let ((_%e142710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142708%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e142710%_))
            (macro-mailbox-receive-timeout-exception? _%exn142708%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn142704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142704%_))
            (let ((_%e142706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142704%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e142706%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e142706%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e142706%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn142704%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn142704%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn142704%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn142698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142698%_))
            (let ((_%e142701%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142698%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e142701%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e142701%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e142701%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn142698%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn142698%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn142698%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn142694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142694%_))
            (let ((_%e142696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142694%_ 'exception))))
              (macro-module-not-found-exception? _%e142696%_))
            (macro-module-not-found-exception? _%exn142694%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn142690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142690%_))
            (let ((_%e142692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142690%_ 'exception))))
              (if (macro-module-not-found-exception? _%e142692%_)
                  (macro-module-not-found-exception-arguments _%e142692%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e142692%_ '())))))
            (if (macro-module-not-found-exception? _%exn142690%_)
                (macro-module-not-found-exception-arguments _%exn142690%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn142690%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn142684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142684%_))
            (let ((_%e142687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142684%_ 'exception))))
              (if (macro-module-not-found-exception? _%e142687%_)
                  (macro-module-not-found-exception-procedure _%e142687%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e142687%_ '())))))
            (if (macro-module-not-found-exception? _%exn142684%_)
                (macro-module-not-found-exception-procedure _%exn142684%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn142684%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn142678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142678%_))
            (let ((_%e142681%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142678%_ 'exception))))
              (macro-multiple-c-return-exception? _%e142681%_))
            (macro-multiple-c-return-exception? _%exn142678%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn142674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142674%_))
            (let ((_%e142676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142674%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e142676%_))
            (macro-no-such-file-or-directory-exception? _%exn142674%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn142670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142670%_))
            (let ((_%e142672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142670%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e142672%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e142672%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e142672%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn142670%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn142670%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn142670%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn142664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142664%_))
            (let ((_%e142667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142664%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e142667%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e142667%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e142667%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn142664%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn142664%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn142664%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn142660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142660%_))
            (let ((_%e142662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142660%_ 'exception))))
              (macro-noncontinuable-exception? _%e142662%_))
            (macro-noncontinuable-exception? _%exn142660%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn142654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142654%_))
            (let ((_%e142657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142654%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e142657%_)
                  (macro-noncontinuable-exception-reason _%e142657%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e142657%_ '())))))
            (if (macro-noncontinuable-exception? _%exn142654%_)
                (macro-noncontinuable-exception-reason _%exn142654%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn142654%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn142650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142650%_))
            (let ((_%e142652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142650%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e142652%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn142650%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn142646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142646%_))
            (let ((_%e142648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142646%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e142648%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e142648%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e142648%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn142646%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn142646%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn142646%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn142640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142640%_))
            (let ((_%e142643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142640%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e142643%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e142643%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e142643%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn142640%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn142640%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn142640%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn142636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142636%_))
            (let ((_%e142638%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142636%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e142638%_))
            (macro-nonprocedure-operator-exception? _%exn142636%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn142632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142632%_))
            (let ((_%e142634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142632%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142634%_)
                  (macro-nonprocedure-operator-exception-arguments _%e142634%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e142634%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142632%_)
                (macro-nonprocedure-operator-exception-arguments _%exn142632%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn142632%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn142628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142628%_))
            (let ((_%e142630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142628%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142630%_)
                  (macro-nonprocedure-operator-exception-code _%e142630%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e142630%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142628%_)
                (macro-nonprocedure-operator-exception-code _%exn142628%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn142628%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn142624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142624%_))
            (let ((_%e142626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142624%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142626%_)
                  (macro-nonprocedure-operator-exception-operator _%e142626%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e142626%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142624%_)
                (macro-nonprocedure-operator-exception-operator _%exn142624%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn142624%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn142618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142618%_))
            (let ((_%e142621%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142618%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e142621%_)
                  (macro-nonprocedure-operator-exception-rte _%e142621%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e142621%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn142618%_)
                (macro-nonprocedure-operator-exception-rte _%exn142618%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn142618%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn142614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142614%_))
            (let ((_%e142616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142614%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e142616%_))
            (macro-not-in-compilation-context-exception? _%exn142614%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn142610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142610%_))
            (let ((_%e142612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142610%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e142612%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e142612%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e142612%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn142610%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn142610%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn142610%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn142604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142604%_))
            (let ((_%e142607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142604%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e142607%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e142607%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e142607%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn142604%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn142604%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn142604%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn142600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142600%_))
            (let ((_%e142602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142600%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e142602%_))
            (macro-number-of-arguments-limit-exception? _%exn142600%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn142596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142596%_))
            (let ((_%e142598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142596%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e142598%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e142598%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e142598%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn142596%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn142596%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn142596%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn142590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142590%_))
            (let ((_%e142593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142590%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e142593%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e142593%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e142593%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn142590%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn142590%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn142590%_ '())))))))
    (define os-exception?
      (lambda (_%exn142586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142586%_))
            (let ((_%e142588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142586%_ 'exception))))
              (macro-os-exception? _%e142588%_))
            (macro-os-exception? _%exn142586%_))))
    (define os-exception-arguments
      (lambda (_%exn142582%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142582%_))
            (let ((_%e142584%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142582%_ 'exception))))
              (if (macro-os-exception? _%e142584%_)
                  (macro-os-exception-arguments _%e142584%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e142584%_ '())))))
            (if (macro-os-exception? _%exn142582%_)
                (macro-os-exception-arguments _%exn142582%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn142582%_ '())))))))
    (define os-exception-code
      (lambda (_%exn142578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142578%_))
            (let ((_%e142580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142578%_ 'exception))))
              (if (macro-os-exception? _%e142580%_)
                  (macro-os-exception-code _%e142580%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e142580%_ '())))))
            (if (macro-os-exception? _%exn142578%_)
                (macro-os-exception-code _%exn142578%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn142578%_ '())))))))
    (define os-exception-message
      (lambda (_%exn142574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142574%_))
            (let ((_%e142576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142574%_ 'exception))))
              (if (macro-os-exception? _%e142576%_)
                  (macro-os-exception-message _%e142576%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e142576%_ '())))))
            (if (macro-os-exception? _%exn142574%_)
                (macro-os-exception-message _%exn142574%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn142574%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn142568%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142568%_))
            (let ((_%e142571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142568%_ 'exception))))
              (if (macro-os-exception? _%e142571%_)
                  (macro-os-exception-procedure _%e142571%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e142571%_ '())))))
            (if (macro-os-exception? _%exn142568%_)
                (macro-os-exception-procedure _%exn142568%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn142568%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn142564%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142564%_))
            (let ((_%e142566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142564%_ 'exception))))
              (macro-permission-denied-exception? _%e142566%_))
            (macro-permission-denied-exception? _%exn142564%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn142560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142560%_))
            (let ((_%e142562%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142560%_ 'exception))))
              (if (macro-permission-denied-exception? _%e142562%_)
                  (macro-permission-denied-exception-arguments _%e142562%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e142562%_ '())))))
            (if (macro-permission-denied-exception? _%exn142560%_)
                (macro-permission-denied-exception-arguments _%exn142560%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn142560%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn142554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142554%_))
            (let ((_%e142557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142554%_ 'exception))))
              (if (macro-permission-denied-exception? _%e142557%_)
                  (macro-permission-denied-exception-procedure _%e142557%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e142557%_ '())))))
            (if (macro-permission-denied-exception? _%exn142554%_)
                (macro-permission-denied-exception-procedure _%exn142554%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn142554%_ '())))))))
    (define range-exception?
      (lambda (_%exn142550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142550%_))
            (let ((_%e142552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142550%_ 'exception))))
              (macro-range-exception? _%e142552%_))
            (macro-range-exception? _%exn142550%_))))
    (define range-exception-arg-id
      (lambda (_%exn142546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142546%_))
            (let ((_%e142548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142546%_ 'exception))))
              (if (macro-range-exception? _%e142548%_)
                  (macro-range-exception-arg-id _%e142548%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e142548%_ '())))))
            (if (macro-range-exception? _%exn142546%_)
                (macro-range-exception-arg-id _%exn142546%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn142546%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn142542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142542%_))
            (let ((_%e142544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142542%_ 'exception))))
              (if (macro-range-exception? _%e142544%_)
                  (macro-range-exception-arguments _%e142544%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e142544%_ '())))))
            (if (macro-range-exception? _%exn142542%_)
                (macro-range-exception-arguments _%exn142542%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn142542%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn142536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142536%_))
            (let ((_%e142539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142536%_ 'exception))))
              (if (macro-range-exception? _%e142539%_)
                  (macro-range-exception-procedure _%e142539%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e142539%_ '())))))
            (if (macro-range-exception? _%exn142536%_)
                (macro-range-exception-procedure _%exn142536%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn142536%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn142532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142532%_))
            (let ((_%e142534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142532%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e142534%_))
            (macro-rpc-remote-error-exception? _%exn142532%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn142528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142528%_))
            (let ((_%e142530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142528%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142530%_)
                  (macro-rpc-remote-error-exception-arguments _%e142530%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e142530%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142528%_)
                (macro-rpc-remote-error-exception-arguments _%exn142528%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn142528%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn142524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142524%_))
            (let ((_%e142526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142524%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142526%_)
                  (macro-rpc-remote-error-exception-message _%e142526%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e142526%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142524%_)
                (macro-rpc-remote-error-exception-message _%exn142524%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn142524%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn142518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142518%_))
            (let ((_%e142521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142518%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e142521%_)
                  (macro-rpc-remote-error-exception-procedure _%e142521%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e142521%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn142518%_)
                (macro-rpc-remote-error-exception-procedure _%exn142518%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn142518%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn142514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142514%_))
            (let ((_%e142516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142514%_ 'exception))))
              (macro-scheduler-exception? _%e142516%_))
            (macro-scheduler-exception? _%exn142514%_))))
    (define scheduler-exception-reason
      (lambda (_%exn142508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142508%_))
            (let ((_%e142511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142508%_ 'exception))))
              (if (macro-scheduler-exception? _%e142511%_)
                  (macro-scheduler-exception-reason _%e142511%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e142511%_ '())))))
            (if (macro-scheduler-exception? _%exn142508%_)
                (macro-scheduler-exception-reason _%exn142508%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn142508%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn142504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142504%_))
            (let ((_%e142506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142504%_ 'exception))))
              (macro-sfun-conversion-exception? _%e142506%_))
            (macro-sfun-conversion-exception? _%exn142504%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn142500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142500%_))
            (let ((_%e142502%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142500%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142502%_)
                  (macro-sfun-conversion-exception-arguments _%e142502%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e142502%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142500%_)
                (macro-sfun-conversion-exception-arguments _%exn142500%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn142500%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn142496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142496%_))
            (let ((_%e142498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142496%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142498%_)
                  (macro-sfun-conversion-exception-code _%e142498%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e142498%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142496%_)
                (macro-sfun-conversion-exception-code _%exn142496%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn142496%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn142492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142492%_))
            (let ((_%e142494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142492%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142494%_)
                  (macro-sfun-conversion-exception-message _%e142494%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e142494%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142492%_)
                (macro-sfun-conversion-exception-message _%exn142492%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn142492%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn142486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142486%_))
            (let ((_%e142489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142486%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e142489%_)
                  (macro-sfun-conversion-exception-procedure _%e142489%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e142489%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn142486%_)
                (macro-sfun-conversion-exception-procedure _%exn142486%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn142486%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn142480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142480%_))
            (let ((_%e142483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142480%_ 'exception))))
              (macro-stack-overflow-exception? _%e142483%_))
            (macro-stack-overflow-exception? _%exn142480%_))))
    (define started-thread-exception?
      (lambda (_%exn142476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142476%_))
            (let ((_%e142478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142476%_ 'exception))))
              (macro-started-thread-exception? _%e142478%_))
            (macro-started-thread-exception? _%exn142476%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn142472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142472%_))
            (let ((_%e142474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142472%_ 'exception))))
              (if (macro-started-thread-exception? _%e142474%_)
                  (macro-started-thread-exception-arguments _%e142474%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e142474%_ '())))))
            (if (macro-started-thread-exception? _%exn142472%_)
                (macro-started-thread-exception-arguments _%exn142472%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn142472%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn142466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142466%_))
            (let ((_%e142469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142466%_ 'exception))))
              (if (macro-started-thread-exception? _%e142469%_)
                  (macro-started-thread-exception-procedure _%e142469%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e142469%_ '())))))
            (if (macro-started-thread-exception? _%exn142466%_)
                (macro-started-thread-exception-procedure _%exn142466%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn142466%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn142462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142462%_))
            (let ((_%e142464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142462%_ 'exception))))
              (macro-terminated-thread-exception? _%e142464%_))
            (macro-terminated-thread-exception? _%exn142462%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn142458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142458%_))
            (let ((_%e142460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142458%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e142460%_)
                  (macro-terminated-thread-exception-arguments _%e142460%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e142460%_ '())))))
            (if (macro-terminated-thread-exception? _%exn142458%_)
                (macro-terminated-thread-exception-arguments _%exn142458%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn142458%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn142452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142452%_))
            (let ((_%e142455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142452%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e142455%_)
                  (macro-terminated-thread-exception-procedure _%e142455%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e142455%_ '())))))
            (if (macro-terminated-thread-exception? _%exn142452%_)
                (macro-terminated-thread-exception-procedure _%exn142452%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn142452%_ '())))))))
    (define type-exception?
      (lambda (_%exn142448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142448%_))
            (let ((_%e142450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142448%_ 'exception))))
              (macro-type-exception? _%e142450%_))
            (macro-type-exception? _%exn142448%_))))
    (define type-exception-arg-id
      (lambda (_%exn142444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142444%_))
            (let ((_%e142446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142444%_ 'exception))))
              (if (macro-type-exception? _%e142446%_)
                  (macro-type-exception-arg-id _%e142446%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e142446%_ '())))))
            (if (macro-type-exception? _%exn142444%_)
                (macro-type-exception-arg-id _%exn142444%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn142444%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn142440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142440%_))
            (let ((_%e142442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142440%_ 'exception))))
              (if (macro-type-exception? _%e142442%_)
                  (macro-type-exception-arguments _%e142442%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e142442%_ '())))))
            (if (macro-type-exception? _%exn142440%_)
                (macro-type-exception-arguments _%exn142440%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn142440%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn142436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142436%_))
            (let ((_%e142438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142436%_ 'exception))))
              (if (macro-type-exception? _%e142438%_)
                  (macro-type-exception-procedure _%e142438%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e142438%_ '())))))
            (if (macro-type-exception? _%exn142436%_)
                (macro-type-exception-procedure _%exn142436%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn142436%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn142430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142430%_))
            (let ((_%e142433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142430%_ 'exception))))
              (if (macro-type-exception? _%e142433%_)
                  (macro-type-exception-type-id _%e142433%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e142433%_ '())))))
            (if (macro-type-exception? _%exn142430%_)
                (macro-type-exception-type-id _%exn142430%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn142430%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn142426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142426%_))
            (let ((_%e142428%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142426%_ 'exception))))
              (macro-unbound-global-exception? _%e142428%_))
            (macro-unbound-global-exception? _%exn142426%_))))
    (define unbound-global-exception-code
      (lambda (_%exn142422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142422%_))
            (let ((_%e142424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142422%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142424%_)
                  (macro-unbound-global-exception-code _%e142424%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e142424%_ '())))))
            (if (macro-unbound-global-exception? _%exn142422%_)
                (macro-unbound-global-exception-code _%exn142422%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn142422%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn142418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142418%_))
            (let ((_%e142420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142418%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142420%_)
                  (macro-unbound-global-exception-rte _%e142420%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e142420%_ '())))))
            (if (macro-unbound-global-exception? _%exn142418%_)
                (macro-unbound-global-exception-rte _%exn142418%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn142418%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn142412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142412%_))
            (let ((_%e142415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142412%_ 'exception))))
              (if (macro-unbound-global-exception? _%e142415%_)
                  (macro-unbound-global-exception-variable _%e142415%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e142415%_ '())))))
            (if (macro-unbound-global-exception? _%exn142412%_)
                (macro-unbound-global-exception-variable _%exn142412%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn142412%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn142408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142408%_))
            (let ((_%e142410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142408%_ 'exception))))
              (macro-unbound-key-exception? _%e142410%_))
            (macro-unbound-key-exception? _%exn142408%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn142404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142404%_))
            (let ((_%e142406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142404%_ 'exception))))
              (if (macro-unbound-key-exception? _%e142406%_)
                  (macro-unbound-key-exception-arguments _%e142406%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e142406%_ '())))))
            (if (macro-unbound-key-exception? _%exn142404%_)
                (macro-unbound-key-exception-arguments _%exn142404%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn142404%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn142398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142398%_))
            (let ((_%e142401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142398%_ 'exception))))
              (if (macro-unbound-key-exception? _%e142401%_)
                  (macro-unbound-key-exception-procedure _%e142401%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e142401%_ '())))))
            (if (macro-unbound-key-exception? _%exn142398%_)
                (macro-unbound-key-exception-procedure _%exn142398%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn142398%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn142394%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142394%_))
            (let ((_%e142396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142394%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e142396%_))
            (macro-unbound-os-environment-variable-exception? _%exn142394%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn142390%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142390%_))
            (let ((_%e142392%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142390%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e142392%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e142392%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e142392%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn142390%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn142390%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn142390%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn142384%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142384%_))
            (let ((_%e142387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142384%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e142387%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e142387%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e142387%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn142384%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn142384%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn142384%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn142380%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142380%_))
            (let ((_%e142382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142380%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e142382%_))
            (macro-unbound-serial-number-exception? _%exn142380%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn142376%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142376%_))
            (let ((_%e142378%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142376%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e142378%_)
                  (macro-unbound-serial-number-exception-arguments _%e142378%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e142378%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn142376%_)
                (macro-unbound-serial-number-exception-arguments _%exn142376%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn142376%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn142370%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142370%_))
            (let ((_%e142373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142370%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e142373%_)
                  (macro-unbound-serial-number-exception-procedure _%e142373%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e142373%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn142370%_)
                (macro-unbound-serial-number-exception-procedure _%exn142370%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn142370%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn142366%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142366%_))
            (let ((_%e142368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142366%_ 'exception))))
              (macro-uncaught-exception? _%e142368%_))
            (macro-uncaught-exception? _%exn142366%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn142362%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142362%_))
            (let ((_%e142364%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142362%_ 'exception))))
              (if (macro-uncaught-exception? _%e142364%_)
                  (macro-uncaught-exception-arguments _%e142364%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e142364%_ '())))))
            (if (macro-uncaught-exception? _%exn142362%_)
                (macro-uncaught-exception-arguments _%exn142362%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn142362%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn142358%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142358%_))
            (let ((_%e142360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142358%_ 'exception))))
              (if (macro-uncaught-exception? _%e142360%_)
                  (macro-uncaught-exception-procedure _%e142360%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e142360%_ '())))))
            (if (macro-uncaught-exception? _%exn142358%_)
                (macro-uncaught-exception-procedure _%exn142358%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn142358%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn142352%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142352%_))
            (let ((_%e142355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142352%_ 'exception))))
              (if (macro-uncaught-exception? _%e142355%_)
                  (macro-uncaught-exception-reason _%e142355%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e142355%_ '())))))
            (if (macro-uncaught-exception? _%exn142352%_)
                (macro-uncaught-exception-reason _%exn142352%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn142352%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn142348%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142348%_))
            (let ((_%e142350%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142348%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e142350%_))
            (macro-uninitialized-thread-exception? _%exn142348%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn142344%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142344%_))
            (let ((_%e142346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142344%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e142346%_)
                  (macro-uninitialized-thread-exception-arguments _%e142346%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e142346%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn142344%_)
                (macro-uninitialized-thread-exception-arguments _%exn142344%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn142344%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn142338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142338%_))
            (let ((_%e142341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142338%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e142341%_)
                  (macro-uninitialized-thread-exception-procedure _%e142341%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e142341%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn142338%_)
                (macro-uninitialized-thread-exception-procedure _%exn142338%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn142338%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn142334%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142334%_))
            (let ((_%e142336%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142334%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e142336%_))
            (macro-unknown-keyword-argument-exception? _%exn142334%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn142330%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142330%_))
            (let ((_%e142332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142330%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e142332%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e142332%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e142332%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn142330%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn142330%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn142330%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn142324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142324%_))
            (let ((_%e142327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142324%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e142327%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e142327%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e142327%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn142324%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn142324%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn142324%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn142320%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142320%_))
            (let ((_%e142322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142320%_ 'exception))))
              (macro-unterminated-process-exception? _%e142322%_))
            (macro-unterminated-process-exception? _%exn142320%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn142316%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142316%_))
            (let ((_%e142318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142316%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e142318%_)
                  (macro-unterminated-process-exception-arguments _%e142318%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e142318%_ '())))))
            (if (macro-unterminated-process-exception? _%exn142316%_)
                (macro-unterminated-process-exception-arguments _%exn142316%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn142316%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn142310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142310%_))
            (let ((_%e142313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142310%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e142313%_)
                  (macro-unterminated-process-exception-procedure _%e142313%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e142313%_ '())))))
            (if (macro-unterminated-process-exception? _%exn142310%_)
                (macro-unterminated-process-exception-procedure _%exn142310%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn142310%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn142306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142306%_))
            (let ((_%e142308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142306%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e142308%_))
            (macro-wrong-number-of-arguments-exception? _%exn142306%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn142302%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142302%_))
            (let ((_%e142304%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142302%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e142304%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e142304%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e142304%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn142302%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn142302%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn142302%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn142296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142296%_))
            (let ((_%e142299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142296%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e142299%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e142299%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e142299%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn142296%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn142296%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn142296%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn142292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142292%_))
            (let ((_%e142294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142292%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e142294%_))
            (macro-wrong-number-of-values-exception? _%exn142292%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn142288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142288%_))
            (let ((_%e142290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142288%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e142290%_)
                  (macro-wrong-number-of-values-exception-code _%e142290%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e142290%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn142288%_)
                (macro-wrong-number-of-values-exception-code _%exn142288%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn142288%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn142284%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142284%_))
            (let ((_%e142286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142284%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e142286%_)
                  (macro-wrong-number-of-values-exception-rte _%e142286%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e142286%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn142284%_)
                (macro-wrong-number-of-values-exception-rte _%exn142284%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn142284%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn142278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142278%_))
            (let ((_%e142281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142278%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e142281%_)
                  (macro-wrong-number-of-values-exception-vals _%e142281%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e142281%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn142278%_)
                (macro-wrong-number-of-values-exception-vals _%exn142278%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn142278%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn142272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn142272%_))
            (let ((_%e142275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn142272%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e142275%_))
            (macro-wrong-processor-c-return-exception? _%exn142272%_))))))
