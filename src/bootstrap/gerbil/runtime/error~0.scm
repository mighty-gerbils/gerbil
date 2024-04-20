(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1713454409)
  (begin
    (define Exception::t
      (let ((__tmp102733 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp102733
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args102703%_
        (apply make-instance Exception::t _%$args102703%_)))
    (define StackTrace::t
      (let ((__tmp102734 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp102734
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args102700%_
        (apply make-instance StackTrace::t _%$args102700%_)))
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
      (let ((__tmp102735 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp102735
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args102697%_ (apply make-instance Error::t _%$args102697%_)))
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
      (let ((__tmp102736 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp102736
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args102694%_
        (apply make-instance ContractViolation::t _%$args102694%_)))
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
      (let ((__tmp102737 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp102737
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args102691%_
        (apply make-instance RuntimeException::t _%$args102691%_)))
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
      (lambda (_%exn102686%_ _%continue102687%_)
        (let ((_%exn102689%_ (wrap-runtime-exception _%exn102686%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn102689%_ _%continue102687%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn102682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn102682%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn102682%_ 'continuation))
                '#!void
                (let ((__tmp102738
                       (lambda (_%cont102684%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn102682%_
                            'continuation
                            _%cont102684%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp102738)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn102682%_))))
    (define error
      (lambda (_%message102679%_ . _%irritants102680%_)
        (raise (let ((__obj102730
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj102730
                  _%message102679%_
                  'irritants:
                  _%irritants102680%_)
                 __obj102730))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords102651%_
               _%ctx102646102652%_
               _%contract-expr102647102654%_
               _%value102648102656%_
               _%message102658%_)
        (let* ((_%ctx102660%_
                (if (eq? _%ctx102646102652%_ absent-value)
                    '#f
                    _%ctx102646102652%_))
               (_%contract-expr102662%_
                (if (eq? _%contract-expr102647102654%_ absent-value)
                    '#f
                    _%contract-expr102647102654%_))
               (_%value102664%_
                (if (eq? _%value102648102656%_ absent-value)
                    '#f
                    _%value102648102656%_)))
          (raise (let ((__obj102731
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj102731
                    _%message102658%_
                    'where:
                    _%ctx102660%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr102662%_
                                (cons 'value: (cons _%value102664%_ '())))))
                   __obj102731)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords102669%_ . _%args102670%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords102669%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102669%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102669%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102669%_
                  'value:
                  absent-value))
               _%args102670%_)))
    (define __raise-contract-violation-error
      (lambda _%args102649102676%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args102649102676%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler102620%_ _%thunk102621%_)
        (if (procedure? _%handler102620%_)
            (let ((_%handler102625%_ _%handler102620%_))
              (if (procedure? _%thunk102621%_)
                  (let ((_%thunk102635%_ _%thunk102621%_))
                    (__with-exception-handler
                     _%handler102625%_
                     _%thunk102635%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102621%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler102620%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler102595%_ _%thunk102596%_)
        (let* ((_%handler102599%_ _%handler102595%_)
               (_%thunk102607%_ _%thunk102596%_)
               (__tmp102739
                (lambda (_%exn102616%_)
                  (let ((_%exn102618%_ (wrap-runtime-exception _%exn102616%_)))
                    (declare (not safe))
                    (_%handler102599%_ _%exn102618%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp102739 _%thunk102607%_))))
    (define with-catch
      (lambda (_%handler102570%_ _%thunk102571%_)
        (if (procedure? _%handler102570%_)
            (let ((_%handler102575%_ _%handler102570%_))
              (if (procedure? _%thunk102571%_)
                  (let ((_%thunk102585%_ _%thunk102571%_))
                    (__with-catch _%handler102575%_ _%thunk102585%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102571%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler102570%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler102545%_ _%thunk102546%_)
        (let* ((_%handler102549%_ _%handler102545%_)
               (_%thunk102557%_ _%thunk102546%_)
               (__tmp102740
                (lambda (_%cont102566%_)
                  (__with-exception-handler
                   (lambda (_%exn102568%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont102566%_
                        _%handler102549%_
                        _%exn102568%_)))
                   _%thunk102557%_))))
          (declare (not safe))
          (##continuation-capture __tmp102740))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn102532%_)
        (if (or (heap-overflow-exception? _%exn102532%_)
                (stack-overflow-exception? _%exn102532%_))
            _%exn102532%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn102532%_))
                _%exn102532%_
                (if (macro-exception? _%exn102532%_)
                    (let ((_%rte102540%_
                           (let ((__obj102732
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj102732
                                _%exn102532%_
                                '2
                                '#f
                                '#f))
                             __obj102732)))
                      (let ((__tmp102741
                             (lambda (_%cont102542%_)
                               (let ((__tmp102742
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont102542%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte102540%_
                                  'continuation
                                  __tmp102742)))))
                        (declare (not safe))
                        (##continuation-capture __tmp102741))
                      _%rte102540%_)
                    _%exn102532%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj102527%_)
        (let ((_%$e102529%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj102527%_))))
          (if _%$e102529%_ _%$e102529%_ (error-exception? _%obj102527%_)))))
    (define error-message
      (lambda (_%obj102520%_)
        (let ((_%$e102522%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj102520%_ 'message false))))
          (if _%$e102522%_
              _%$e102522%_
              (if (error-exception? _%obj102520%_)
                  (error-exception-message _%obj102520%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj102515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102515%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102515%_ 'irritants))
            (if (error-exception? _%obj102515%_)
                (error-exception-parameters _%obj102515%_)
                '#f))))
    (define error-trace
      (lambda (_%obj102513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102513%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102513%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e102494%_ _%port102495%_)
        (let ((_%$e102497%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e102494%_ 'display-exception))))
          (if _%$e102497%_
              ((lambda (_%f102500%_) (_%f102500%_ _%e102494%_ _%port102495%_))
               _%$e102497%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e102494%_ _%port102495%_))))))
    (define display-exception__0
      (lambda (_%e102506%_)
        (let ((_%port102508%_ (current-error-port)))
          (display-exception__% _%e102506%_ _%port102508%_))))
    (define display-exception
      (lambda _g102744_
        (let ((_g102743_ (let () (declare (not safe)) (##length _g102744_))))
          (cond ((let () (declare (not safe)) (##fx= _g102743_ 1))
                 (apply display-exception__0 _g102744_))
                ((let () (declare (not safe)) (##fx= _g102743_ 2))
                 (apply display-exception__% _g102744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g102744_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self100863102470%_ _%message102472%_ . _%rest102473%_)
        (let* ((_%self102475%_ _%self100863102470%_)
               (_%self102477%_ _%self102475%_)
               (_%message102491%_
                (if (string? _%message102472%_)
                    _%message102472%_
                    (call-with-output-string
                     '""
                     (lambda (_%g102486102488%_)
                       (display _%message102472%_ _%g102486102488%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self102477%_ 'message _%message102491%_))
          (apply class-instance-init! _%self102477%_ _%rest102473%_))))
    (define Error:::init!::specialize
      (lambda (__klass102705 __method-table102706)
        (let ((__message102707
               (let ((__slot102708
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102705 'message))))
                 (if __slot102708
                     __slot102708
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self100863102470%_ _%message102472%_ . _%rest102473%_)
            (let* ((_%self102475%_ _%self100863102470%_)
                   (_%self102477%_ _%self102475%_)
                   (_%message102491%_
                    (if (string? _%message102472%_)
                        _%message102472%_
                        (call-with-output-string
                         '""
                         (lambda (_%g102486102488%_)
                           (display _%message102472%_ _%g102486102488%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self102477%_
                 _%message102491%_
                 __message102707
                 '#f
                 '#f))
              (apply class-instance-init! _%self102477%_ _%rest102473%_))))))
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
      (lambda (_%self100864102192%_ _%port102194%_)
        (let* ((_%self102196%_ _%self100864102192%_)
               (_%self102198%_ _%self102196%_))
          (let ((_%tmp-port102208%_ (open-output-string))
                (_%display-error-newline102209%_
                 (> (output-port-column _%port102194%_) '0)))
            (fix-port-width! _%tmp-port102208%_)
            (let ((__tmp102745
                   (lambda ()
                     (if _%display-error-newline102209%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e102212%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self102198%_ 'where))))
                       (if _%$e102212%_ (display _%$e102212%_) (display '"?")))
                     (let ((__tmp102746
                            (let ((__tmp102747
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self102198%_))))
                              (declare (not safe))
                              (##type-name __tmp102747))))
                       (declare (not safe))
                       (display* '" [" __tmp102746 '"]: "))
                     (let ((__tmp102748
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self102198%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp102748))
                     (let ((_%irritants102216%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self102198%_ 'irritants))))
                       (if (null? _%irritants102216%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj102218%_)
                                (if (u8vector? _%obj102218%_)
                                    (let ((__tmp102749
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj102218%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp102749))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj102218%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants102216%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont102219102221%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self102198%_
                                   'continuation))))
                           (if _%cont102219102221%_
                               (let ((_%cont102224%_ _%cont102219102221%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont102224%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp102745
               current-output-port
               _%tmp-port102208%_))
            (let ((__tmp102750 (get-output-string _%tmp-port102208%_)))
              (declare (not safe))
              (##write-string __tmp102750 _%port102194%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass102709 __method-table102710)
        (let ((__continuation102711
               (let ((__slot102715
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102709 'continuation))))
                 (if __slot102715
                     __slot102715
                     (error '"Unknown slot" 'continuation))))
              (__message102712
               (let ((__slot102716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102709 'message))))
                 (if __slot102716
                     __slot102716
                     (error '"Unknown slot" 'message))))
              (__irritants102713
               (let ((__slot102717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102709 'irritants))))
                 (if __slot102717
                     __slot102717
                     (error '"Unknown slot" 'irritants))))
              (__where102714
               (let ((__slot102718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102709 'where))))
                 (if __slot102718
                     __slot102718
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self100864102192%_ _%port102194%_)
            (let* ((_%self102196%_ _%self100864102192%_)
                   (_%self102198%_ _%self102196%_))
              (let ((_%tmp-port102208%_ (open-output-string))
                    (_%display-error-newline102209%_
                     (> (output-port-column _%port102194%_) '0)))
                (fix-port-width! _%tmp-port102208%_)
                (let ((__tmp102751
                       (lambda ()
                         (if _%display-error-newline102209%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e102212%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self102198%_
                                   __where102714
                                   '#f
                                   '#f))))
                           (if _%$e102212%_
                               (display _%$e102212%_)
                               (display '"?")))
                         (let ((__tmp102752
                                (let ((__tmp102753
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self102198%_))))
                                  (declare (not safe))
                                  (##type-name __tmp102753))))
                           (declare (not safe))
                           (display* '" [" __tmp102752 '"]: "))
                         (let ((__tmp102754
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self102198%_
                                   __message102712
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp102754))
                         (let ((_%irritants102216%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self102198%_
                                   __irritants102713
                                   '#f
                                   '#f))))
                           (if (null? _%irritants102216%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj102218%_)
                                    (if (u8vector? _%obj102218%_)
                                        (let ((__tmp102755
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj102218%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp102755))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj102218%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants102216%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont102219102221%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self102198%_
                                       __continuation102711
                                       '#f
                                       '#f))))
                               (if _%cont102219102221%_
                                   (let ((_%cont102224%_ _%cont102219102221%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont102224%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp102751
                   current-output-port
                   _%tmp-port102208%_))
                (let ((__tmp102756 (get-output-string _%tmp-port102208%_)))
                  (declare (not safe))
                  (##write-string __tmp102756 _%port102194%_))))))))
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
      (lambda (_%self100865102046%_ _%port102048%_)
        (let* ((_%self102050%_ _%self100865102046%_)
               (_%self102052%_ _%self102050%_)
               (_%tmp-port102062%_ (open-output-string)))
          (fix-port-width! _%tmp-port102062%_)
          (let ((__tmp102757
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self102052%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp102757 _%tmp-port102062%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont102063102065%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self102052%_ 'continuation))))
                (if _%cont102063102065%_
                    (let ((_%cont102068%_ _%cont102063102065%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port102062%_)
                      (newline _%tmp-port102062%_)
                      (display-continuation-backtrace
                       _%cont102068%_
                       _%tmp-port102062%_))
                    '#f))
              '#!void)
          (let ((__tmp102758 (get-output-string _%tmp-port102062%_)))
            (declare (not safe))
            (##write-string __tmp102758 _%port102048%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass102719 __method-table102720)
        (let ((__exception102721
               (let ((__slot102723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102719 'exception))))
                 (if __slot102723
                     __slot102723
                     (error '"Unknown slot" 'exception))))
              (__continuation102722
               (let ((__slot102724
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass102719 'continuation))))
                 (if __slot102724
                     __slot102724
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self100865102046%_ _%port102048%_)
            (let* ((_%self102050%_ _%self100865102046%_)
                   (_%self102052%_ _%self102050%_)
                   (_%tmp-port102062%_ (open-output-string)))
              (fix-port-width! _%tmp-port102062%_)
              (let ((__tmp102759
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self102052%_
                        __exception102721
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp102759 _%tmp-port102062%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont102063102065%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self102052%_
                            __continuation102722
                            '#f
                            '#f))))
                    (if _%cont102063102065%_
                        (let ((_%cont102068%_ _%cont102063102065%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port102062%_)
                          (newline _%tmp-port102062%_)
                          (display-continuation-backtrace
                           _%cont102068%_
                           _%tmp-port102062%_))
                        '#f))
                  '#!void)
              (let ((__tmp102760 (get-output-string _%tmp-port102062%_)))
                (declare (not safe))
                (##write-string __tmp102760 _%port102048%_)))))))
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
      (lambda (_%port101918%_)
        (if (macro-character-port? _%port101918%_)
            (let ((_%old-width101920%_
                   (macro-character-port-output-width _%port101918%_)))
              (macro-character-port-output-width-set!
               _%port101918%_
               (lambda (_%port101922%_) '256))
              _%old-width101920%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port101915%_ _%old-width101916%_)
        (if (macro-character-port? _%port101915%_)
            (macro-character-port-output-width-set!
             _%port101915%_
             _%old-width101916%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e101913%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e101913%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn101907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101907%_))
            (let ((_%e101910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101907%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e101910%_))
            (macro-abandoned-mutex-exception? _%exn101907%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn101903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101903%_))
            (let ((_%e101905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101903%_ 'exception))))
              (macro-cfun-conversion-exception? _%e101905%_))
            (macro-cfun-conversion-exception? _%exn101903%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn101899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101899%_))
            (let ((_%e101901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101899%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101901%_)
                  (macro-cfun-conversion-exception-arguments _%e101901%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e101901%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101899%_)
                (macro-cfun-conversion-exception-arguments _%exn101899%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn101899%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn101895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101895%_))
            (let ((_%e101897%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101895%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101897%_)
                  (macro-cfun-conversion-exception-code _%e101897%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e101897%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101895%_)
                (macro-cfun-conversion-exception-code _%exn101895%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn101895%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn101891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101891%_))
            (let ((_%e101893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101891%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101893%_)
                  (macro-cfun-conversion-exception-message _%e101893%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e101893%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101891%_)
                (macro-cfun-conversion-exception-message _%exn101891%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn101891%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn101885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101885%_))
            (let ((_%e101888%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101885%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e101888%_)
                  (macro-cfun-conversion-exception-procedure _%e101888%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e101888%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn101885%_)
                (macro-cfun-conversion-exception-procedure _%exn101885%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn101885%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn101881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101881%_))
            (let ((_%e101883%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101881%_ 'exception))))
              (macro-datum-parsing-exception? _%e101883%_))
            (macro-datum-parsing-exception? _%exn101881%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn101877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101877%_))
            (let ((_%e101879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101877%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101879%_)
                  (macro-datum-parsing-exception-kind _%e101879%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e101879%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101877%_)
                (macro-datum-parsing-exception-kind _%exn101877%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn101877%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn101873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101873%_))
            (let ((_%e101875%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101873%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101875%_)
                  (macro-datum-parsing-exception-parameters _%e101875%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e101875%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101873%_)
                (macro-datum-parsing-exception-parameters _%exn101873%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn101873%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn101867%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101867%_))
            (let ((_%e101870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101867%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e101870%_)
                  (macro-datum-parsing-exception-readenv _%e101870%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e101870%_ '())))))
            (if (macro-datum-parsing-exception? _%exn101867%_)
                (macro-datum-parsing-exception-readenv _%exn101867%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn101867%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn101861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101861%_))
            (let ((_%e101864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101861%_ 'exception))))
              (macro-deadlock-exception? _%e101864%_))
            (macro-deadlock-exception? _%exn101861%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn101857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101857%_))
            (let ((_%e101859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101857%_ 'exception))))
              (macro-divide-by-zero-exception? _%e101859%_))
            (macro-divide-by-zero-exception? _%exn101857%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn101853%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101853%_))
            (let ((_%e101855%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101853%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101855%_)
                  (macro-divide-by-zero-exception-arguments _%e101855%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e101855%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101853%_)
                (macro-divide-by-zero-exception-arguments _%exn101853%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn101853%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn101847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101847%_))
            (let ((_%e101850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101847%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e101850%_)
                  (macro-divide-by-zero-exception-procedure _%e101850%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e101850%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn101847%_)
                (macro-divide-by-zero-exception-procedure _%exn101847%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn101847%_ '())))))))
    (define error-exception?
      (lambda (_%exn101843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101843%_))
            (let ((_%e101845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101843%_ 'exception))))
              (macro-error-exception? _%e101845%_))
            (macro-error-exception? _%exn101843%_))))
    (define error-exception-message
      (lambda (_%exn101839%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101839%_))
            (let ((_%e101841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101839%_ 'exception))))
              (if (macro-error-exception? _%e101841%_)
                  (macro-error-exception-message _%e101841%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e101841%_ '())))))
            (if (macro-error-exception? _%exn101839%_)
                (macro-error-exception-message _%exn101839%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn101839%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn101833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101833%_))
            (let ((_%e101836%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101833%_ 'exception))))
              (if (macro-error-exception? _%e101836%_)
                  (macro-error-exception-parameters _%e101836%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e101836%_ '())))))
            (if (macro-error-exception? _%exn101833%_)
                (macro-error-exception-parameters _%exn101833%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn101833%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn101829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101829%_))
            (let ((_%e101831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101829%_ 'exception))))
              (macro-expression-parsing-exception? _%e101831%_))
            (macro-expression-parsing-exception? _%exn101829%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn101825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101825%_))
            (let ((_%e101827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101825%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101827%_)
                  (macro-expression-parsing-exception-kind _%e101827%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e101827%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101825%_)
                (macro-expression-parsing-exception-kind _%exn101825%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn101825%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn101821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101821%_))
            (let ((_%e101823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101821%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101823%_)
                  (macro-expression-parsing-exception-parameters _%e101823%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e101823%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101821%_)
                (macro-expression-parsing-exception-parameters _%exn101821%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn101821%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn101815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101815%_))
            (let ((_%e101818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101815%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e101818%_)
                  (macro-expression-parsing-exception-source _%e101818%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e101818%_ '())))))
            (if (macro-expression-parsing-exception? _%exn101815%_)
                (macro-expression-parsing-exception-source _%exn101815%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn101815%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn101811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101811%_))
            (let ((_%e101813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101811%_ 'exception))))
              (macro-file-exists-exception? _%e101813%_))
            (macro-file-exists-exception? _%exn101811%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn101807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101807%_))
            (let ((_%e101809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101807%_ 'exception))))
              (if (macro-file-exists-exception? _%e101809%_)
                  (macro-file-exists-exception-arguments _%e101809%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e101809%_ '())))))
            (if (macro-file-exists-exception? _%exn101807%_)
                (macro-file-exists-exception-arguments _%exn101807%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn101807%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn101801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101801%_))
            (let ((_%e101804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101801%_ 'exception))))
              (if (macro-file-exists-exception? _%e101804%_)
                  (macro-file-exists-exception-procedure _%e101804%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e101804%_ '())))))
            (if (macro-file-exists-exception? _%exn101801%_)
                (macro-file-exists-exception-procedure _%exn101801%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn101801%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn101797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101797%_))
            (let ((_%e101799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101797%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e101799%_))
            (macro-fixnum-overflow-exception? _%exn101797%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn101793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101793%_))
            (let ((_%e101795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101793%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101795%_)
                  (macro-fixnum-overflow-exception-arguments _%e101795%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e101795%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101793%_)
                (macro-fixnum-overflow-exception-arguments _%exn101793%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn101793%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn101787%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101787%_))
            (let ((_%e101790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101787%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e101790%_)
                  (macro-fixnum-overflow-exception-procedure _%e101790%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e101790%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn101787%_)
                (macro-fixnum-overflow-exception-procedure _%exn101787%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn101787%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn101781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101781%_))
            (let ((_%e101784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101781%_ 'exception))))
              (macro-heap-overflow-exception? _%e101784%_))
            (macro-heap-overflow-exception? _%exn101781%_))))
    (define inactive-thread-exception?
      (lambda (_%exn101777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101777%_))
            (let ((_%e101779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101777%_ 'exception))))
              (macro-inactive-thread-exception? _%e101779%_))
            (macro-inactive-thread-exception? _%exn101777%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn101773%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101773%_))
            (let ((_%e101775%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101773%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101775%_)
                  (macro-inactive-thread-exception-arguments _%e101775%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e101775%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101773%_)
                (macro-inactive-thread-exception-arguments _%exn101773%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn101773%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn101767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101767%_))
            (let ((_%e101770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101767%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e101770%_)
                  (macro-inactive-thread-exception-procedure _%e101770%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e101770%_ '())))))
            (if (macro-inactive-thread-exception? _%exn101767%_)
                (macro-inactive-thread-exception-procedure _%exn101767%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn101767%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn101763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101763%_))
            (let ((_%e101765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101763%_ 'exception))))
              (macro-initialized-thread-exception? _%e101765%_))
            (macro-initialized-thread-exception? _%exn101763%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn101759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101759%_))
            (let ((_%e101761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101759%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101761%_)
                  (macro-initialized-thread-exception-arguments _%e101761%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e101761%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101759%_)
                (macro-initialized-thread-exception-arguments _%exn101759%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn101759%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn101753%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101753%_))
            (let ((_%e101756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101753%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e101756%_)
                  (macro-initialized-thread-exception-procedure _%e101756%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e101756%_ '())))))
            (if (macro-initialized-thread-exception? _%exn101753%_)
                (macro-initialized-thread-exception-procedure _%exn101753%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn101753%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn101749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101749%_))
            (let ((_%e101751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101749%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e101751%_))
            (macro-invalid-hash-number-exception? _%exn101749%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn101745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101745%_))
            (let ((_%e101747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101745%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101747%_)
                  (macro-invalid-hash-number-exception-arguments _%e101747%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e101747%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101745%_)
                (macro-invalid-hash-number-exception-arguments _%exn101745%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn101745%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn101739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101739%_))
            (let ((_%e101742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101739%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e101742%_)
                  (macro-invalid-hash-number-exception-procedure _%e101742%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e101742%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn101739%_)
                (macro-invalid-hash-number-exception-procedure _%exn101739%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn101739%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn101735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101735%_))
            (let ((_%e101737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101735%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e101737%_))
            (macro-invalid-utf8-encoding-exception? _%exn101735%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn101731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101731%_))
            (let ((_%e101733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101731%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101733%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e101733%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e101733%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101731%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn101731%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn101731%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn101725%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101725%_))
            (let ((_%e101728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101725%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e101728%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e101728%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e101728%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn101725%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn101725%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn101725%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn101721%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101721%_))
            (let ((_%e101723%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101721%_ 'exception))))
              (macro-join-timeout-exception? _%e101723%_))
            (macro-join-timeout-exception? _%exn101721%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn101717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101717%_))
            (let ((_%e101719%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101717%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101719%_)
                  (macro-join-timeout-exception-arguments _%e101719%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e101719%_ '())))))
            (if (macro-join-timeout-exception? _%exn101717%_)
                (macro-join-timeout-exception-arguments _%exn101717%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn101717%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn101711%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101711%_))
            (let ((_%e101714%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101711%_ 'exception))))
              (if (macro-join-timeout-exception? _%e101714%_)
                  (macro-join-timeout-exception-procedure _%e101714%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e101714%_ '())))))
            (if (macro-join-timeout-exception? _%exn101711%_)
                (macro-join-timeout-exception-procedure _%exn101711%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn101711%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn101707%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101707%_))
            (let ((_%e101709%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101707%_ 'exception))))
              (macro-keyword-expected-exception? _%e101709%_))
            (macro-keyword-expected-exception? _%exn101707%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn101703%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101703%_))
            (let ((_%e101705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101703%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101705%_)
                  (macro-keyword-expected-exception-arguments _%e101705%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e101705%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101703%_)
                (macro-keyword-expected-exception-arguments _%exn101703%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn101703%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn101697%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101697%_))
            (let ((_%e101700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101697%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e101700%_)
                  (macro-keyword-expected-exception-procedure _%e101700%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e101700%_ '())))))
            (if (macro-keyword-expected-exception? _%exn101697%_)
                (macro-keyword-expected-exception-procedure _%exn101697%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn101697%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn101693%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101693%_))
            (let ((_%e101695%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101693%_ 'exception))))
              (macro-length-mismatch-exception? _%e101695%_))
            (macro-length-mismatch-exception? _%exn101693%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn101689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101689%_))
            (let ((_%e101691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101689%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101691%_)
                  (macro-length-mismatch-exception-arg-id _%e101691%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e101691%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101689%_)
                (macro-length-mismatch-exception-arg-id _%exn101689%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn101689%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn101685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101685%_))
            (let ((_%e101687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101685%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101687%_)
                  (macro-length-mismatch-exception-arguments _%e101687%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e101687%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101685%_)
                (macro-length-mismatch-exception-arguments _%exn101685%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn101685%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn101679%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101679%_))
            (let ((_%e101682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101679%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101682%_)
                  (macro-length-mismatch-exception-procedure _%e101682%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e101682%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101679%_)
                (macro-length-mismatch-exception-procedure _%exn101679%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn101679%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn101675%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101675%_))
            (let ((_%e101677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101675%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e101677%_))
            (macro-mailbox-receive-timeout-exception? _%exn101675%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn101671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101671%_))
            (let ((_%e101673%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101671%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101673%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e101673%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e101673%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101671%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn101671%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn101671%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn101665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101665%_))
            (let ((_%e101668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101665%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101668%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e101668%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e101668%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101665%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn101665%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn101665%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn101661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101661%_))
            (let ((_%e101663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101661%_ 'exception))))
              (macro-module-not-found-exception? _%e101663%_))
            (macro-module-not-found-exception? _%exn101661%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn101657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101657%_))
            (let ((_%e101659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101657%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101659%_)
                  (macro-module-not-found-exception-arguments _%e101659%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e101659%_ '())))))
            (if (macro-module-not-found-exception? _%exn101657%_)
                (macro-module-not-found-exception-arguments _%exn101657%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn101657%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn101651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101651%_))
            (let ((_%e101654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101651%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101654%_)
                  (macro-module-not-found-exception-procedure _%e101654%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e101654%_ '())))))
            (if (macro-module-not-found-exception? _%exn101651%_)
                (macro-module-not-found-exception-procedure _%exn101651%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn101651%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn101645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101645%_))
            (let ((_%e101648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101645%_ 'exception))))
              (macro-multiple-c-return-exception? _%e101648%_))
            (macro-multiple-c-return-exception? _%exn101645%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn101641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101641%_))
            (let ((_%e101643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101641%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e101643%_))
            (macro-no-such-file-or-directory-exception? _%exn101641%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn101637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101637%_))
            (let ((_%e101639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101637%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101639%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e101639%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e101639%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101637%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn101637%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn101637%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn101631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101631%_))
            (let ((_%e101634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101631%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101634%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e101634%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e101634%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101631%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn101631%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn101631%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn101627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101627%_))
            (let ((_%e101629%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101627%_ 'exception))))
              (macro-noncontinuable-exception? _%e101629%_))
            (macro-noncontinuable-exception? _%exn101627%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn101621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101621%_))
            (let ((_%e101624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101621%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e101624%_)
                  (macro-noncontinuable-exception-reason _%e101624%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e101624%_ '())))))
            (if (macro-noncontinuable-exception? _%exn101621%_)
                (macro-noncontinuable-exception-reason _%exn101621%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn101621%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn101617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101617%_))
            (let ((_%e101619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101617%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e101619%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn101617%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn101613%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101613%_))
            (let ((_%e101615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101613%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101615%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e101615%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e101615%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101613%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn101613%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn101613%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn101607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101607%_))
            (let ((_%e101610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101607%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101610%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e101610%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e101610%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101607%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn101607%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn101607%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn101603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101603%_))
            (let ((_%e101605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101603%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e101605%_))
            (macro-nonprocedure-operator-exception? _%exn101603%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn101599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101599%_))
            (let ((_%e101601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101599%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101601%_)
                  (macro-nonprocedure-operator-exception-arguments _%e101601%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e101601%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101599%_)
                (macro-nonprocedure-operator-exception-arguments _%exn101599%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn101599%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn101595%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101595%_))
            (let ((_%e101597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101595%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101597%_)
                  (macro-nonprocedure-operator-exception-code _%e101597%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e101597%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101595%_)
                (macro-nonprocedure-operator-exception-code _%exn101595%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn101595%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn101591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101591%_))
            (let ((_%e101593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101591%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101593%_)
                  (macro-nonprocedure-operator-exception-operator _%e101593%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e101593%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101591%_)
                (macro-nonprocedure-operator-exception-operator _%exn101591%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn101591%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn101585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101585%_))
            (let ((_%e101588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101585%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101588%_)
                  (macro-nonprocedure-operator-exception-rte _%e101588%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e101588%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101585%_)
                (macro-nonprocedure-operator-exception-rte _%exn101585%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn101585%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn101581%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101581%_))
            (let ((_%e101583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101581%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e101583%_))
            (macro-not-in-compilation-context-exception? _%exn101581%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn101577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101577%_))
            (let ((_%e101579%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101577%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101579%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e101579%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e101579%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101577%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn101577%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn101577%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn101571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101571%_))
            (let ((_%e101574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101571%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101574%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e101574%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e101574%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101571%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn101571%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn101571%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn101567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101567%_))
            (let ((_%e101569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101567%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e101569%_))
            (macro-number-of-arguments-limit-exception? _%exn101567%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn101563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101563%_))
            (let ((_%e101565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101563%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101565%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e101565%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e101565%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101563%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn101563%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn101563%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn101557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101557%_))
            (let ((_%e101560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101557%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101560%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e101560%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e101560%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101557%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn101557%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn101557%_ '())))))))
    (define os-exception?
      (lambda (_%exn101553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101553%_))
            (let ((_%e101555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101553%_ 'exception))))
              (macro-os-exception? _%e101555%_))
            (macro-os-exception? _%exn101553%_))))
    (define os-exception-arguments
      (lambda (_%exn101549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101549%_))
            (let ((_%e101551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101549%_ 'exception))))
              (if (macro-os-exception? _%e101551%_)
                  (macro-os-exception-arguments _%e101551%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e101551%_ '())))))
            (if (macro-os-exception? _%exn101549%_)
                (macro-os-exception-arguments _%exn101549%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn101549%_ '())))))))
    (define os-exception-code
      (lambda (_%exn101545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101545%_))
            (let ((_%e101547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101545%_ 'exception))))
              (if (macro-os-exception? _%e101547%_)
                  (macro-os-exception-code _%e101547%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e101547%_ '())))))
            (if (macro-os-exception? _%exn101545%_)
                (macro-os-exception-code _%exn101545%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn101545%_ '())))))))
    (define os-exception-message
      (lambda (_%exn101541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101541%_))
            (let ((_%e101543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101541%_ 'exception))))
              (if (macro-os-exception? _%e101543%_)
                  (macro-os-exception-message _%e101543%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e101543%_ '())))))
            (if (macro-os-exception? _%exn101541%_)
                (macro-os-exception-message _%exn101541%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn101541%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn101535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101535%_))
            (let ((_%e101538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101535%_ 'exception))))
              (if (macro-os-exception? _%e101538%_)
                  (macro-os-exception-procedure _%e101538%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e101538%_ '())))))
            (if (macro-os-exception? _%exn101535%_)
                (macro-os-exception-procedure _%exn101535%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn101535%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn101531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101531%_))
            (let ((_%e101533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101531%_ 'exception))))
              (macro-permission-denied-exception? _%e101533%_))
            (macro-permission-denied-exception? _%exn101531%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn101527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101527%_))
            (let ((_%e101529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101527%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101529%_)
                  (macro-permission-denied-exception-arguments _%e101529%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e101529%_ '())))))
            (if (macro-permission-denied-exception? _%exn101527%_)
                (macro-permission-denied-exception-arguments _%exn101527%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn101527%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn101521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101521%_))
            (let ((_%e101524%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101521%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101524%_)
                  (macro-permission-denied-exception-procedure _%e101524%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e101524%_ '())))))
            (if (macro-permission-denied-exception? _%exn101521%_)
                (macro-permission-denied-exception-procedure _%exn101521%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn101521%_ '())))))))
    (define range-exception?
      (lambda (_%exn101517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101517%_))
            (let ((_%e101519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101517%_ 'exception))))
              (macro-range-exception? _%e101519%_))
            (macro-range-exception? _%exn101517%_))))
    (define range-exception-arg-id
      (lambda (_%exn101513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101513%_))
            (let ((_%e101515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101513%_ 'exception))))
              (if (macro-range-exception? _%e101515%_)
                  (macro-range-exception-arg-id _%e101515%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e101515%_ '())))))
            (if (macro-range-exception? _%exn101513%_)
                (macro-range-exception-arg-id _%exn101513%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn101513%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn101509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101509%_))
            (let ((_%e101511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101509%_ 'exception))))
              (if (macro-range-exception? _%e101511%_)
                  (macro-range-exception-arguments _%e101511%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e101511%_ '())))))
            (if (macro-range-exception? _%exn101509%_)
                (macro-range-exception-arguments _%exn101509%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn101509%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn101503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101503%_))
            (let ((_%e101506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101503%_ 'exception))))
              (if (macro-range-exception? _%e101506%_)
                  (macro-range-exception-procedure _%e101506%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e101506%_ '())))))
            (if (macro-range-exception? _%exn101503%_)
                (macro-range-exception-procedure _%exn101503%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn101503%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn101499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101499%_))
            (let ((_%e101501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101499%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e101501%_))
            (macro-rpc-remote-error-exception? _%exn101499%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn101495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101495%_))
            (let ((_%e101497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101495%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101497%_)
                  (macro-rpc-remote-error-exception-arguments _%e101497%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e101497%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101495%_)
                (macro-rpc-remote-error-exception-arguments _%exn101495%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn101495%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn101491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101491%_))
            (let ((_%e101493%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101491%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101493%_)
                  (macro-rpc-remote-error-exception-message _%e101493%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e101493%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101491%_)
                (macro-rpc-remote-error-exception-message _%exn101491%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn101491%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn101485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101485%_))
            (let ((_%e101488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101485%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101488%_)
                  (macro-rpc-remote-error-exception-procedure _%e101488%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e101488%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101485%_)
                (macro-rpc-remote-error-exception-procedure _%exn101485%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn101485%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn101481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101481%_))
            (let ((_%e101483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101481%_ 'exception))))
              (macro-scheduler-exception? _%e101483%_))
            (macro-scheduler-exception? _%exn101481%_))))
    (define scheduler-exception-reason
      (lambda (_%exn101475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101475%_))
            (let ((_%e101478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101475%_ 'exception))))
              (if (macro-scheduler-exception? _%e101478%_)
                  (macro-scheduler-exception-reason _%e101478%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e101478%_ '())))))
            (if (macro-scheduler-exception? _%exn101475%_)
                (macro-scheduler-exception-reason _%exn101475%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn101475%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn101471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101471%_))
            (let ((_%e101473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101471%_ 'exception))))
              (macro-sfun-conversion-exception? _%e101473%_))
            (macro-sfun-conversion-exception? _%exn101471%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn101467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101467%_))
            (let ((_%e101469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101467%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101469%_)
                  (macro-sfun-conversion-exception-arguments _%e101469%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e101469%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101467%_)
                (macro-sfun-conversion-exception-arguments _%exn101467%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn101467%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn101463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101463%_))
            (let ((_%e101465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101463%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101465%_)
                  (macro-sfun-conversion-exception-code _%e101465%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e101465%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101463%_)
                (macro-sfun-conversion-exception-code _%exn101463%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn101463%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn101459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101459%_))
            (let ((_%e101461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101459%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101461%_)
                  (macro-sfun-conversion-exception-message _%e101461%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e101461%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101459%_)
                (macro-sfun-conversion-exception-message _%exn101459%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn101459%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn101453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101453%_))
            (let ((_%e101456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101453%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101456%_)
                  (macro-sfun-conversion-exception-procedure _%e101456%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e101456%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101453%_)
                (macro-sfun-conversion-exception-procedure _%exn101453%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn101453%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn101447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101447%_))
            (let ((_%e101450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101447%_ 'exception))))
              (macro-stack-overflow-exception? _%e101450%_))
            (macro-stack-overflow-exception? _%exn101447%_))))
    (define started-thread-exception?
      (lambda (_%exn101443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101443%_))
            (let ((_%e101445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101443%_ 'exception))))
              (macro-started-thread-exception? _%e101445%_))
            (macro-started-thread-exception? _%exn101443%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn101439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101439%_))
            (let ((_%e101441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101439%_ 'exception))))
              (if (macro-started-thread-exception? _%e101441%_)
                  (macro-started-thread-exception-arguments _%e101441%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e101441%_ '())))))
            (if (macro-started-thread-exception? _%exn101439%_)
                (macro-started-thread-exception-arguments _%exn101439%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn101439%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn101433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101433%_))
            (let ((_%e101436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101433%_ 'exception))))
              (if (macro-started-thread-exception? _%e101436%_)
                  (macro-started-thread-exception-procedure _%e101436%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e101436%_ '())))))
            (if (macro-started-thread-exception? _%exn101433%_)
                (macro-started-thread-exception-procedure _%exn101433%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn101433%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn101429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101429%_))
            (let ((_%e101431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101429%_ 'exception))))
              (macro-terminated-thread-exception? _%e101431%_))
            (macro-terminated-thread-exception? _%exn101429%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn101425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101425%_))
            (let ((_%e101427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101425%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101427%_)
                  (macro-terminated-thread-exception-arguments _%e101427%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e101427%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101425%_)
                (macro-terminated-thread-exception-arguments _%exn101425%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn101425%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn101419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101419%_))
            (let ((_%e101422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101419%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101422%_)
                  (macro-terminated-thread-exception-procedure _%e101422%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e101422%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101419%_)
                (macro-terminated-thread-exception-procedure _%exn101419%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn101419%_ '())))))))
    (define type-exception?
      (lambda (_%exn101415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101415%_))
            (let ((_%e101417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101415%_ 'exception))))
              (macro-type-exception? _%e101417%_))
            (macro-type-exception? _%exn101415%_))))
    (define type-exception-arg-id
      (lambda (_%exn101411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101411%_))
            (let ((_%e101413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101411%_ 'exception))))
              (if (macro-type-exception? _%e101413%_)
                  (macro-type-exception-arg-id _%e101413%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e101413%_ '())))))
            (if (macro-type-exception? _%exn101411%_)
                (macro-type-exception-arg-id _%exn101411%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn101411%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn101407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101407%_))
            (let ((_%e101409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101407%_ 'exception))))
              (if (macro-type-exception? _%e101409%_)
                  (macro-type-exception-arguments _%e101409%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e101409%_ '())))))
            (if (macro-type-exception? _%exn101407%_)
                (macro-type-exception-arguments _%exn101407%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn101407%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn101403%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101403%_))
            (let ((_%e101405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101403%_ 'exception))))
              (if (macro-type-exception? _%e101405%_)
                  (macro-type-exception-procedure _%e101405%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e101405%_ '())))))
            (if (macro-type-exception? _%exn101403%_)
                (macro-type-exception-procedure _%exn101403%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn101403%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn101397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101397%_))
            (let ((_%e101400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101397%_ 'exception))))
              (if (macro-type-exception? _%e101400%_)
                  (macro-type-exception-type-id _%e101400%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e101400%_ '())))))
            (if (macro-type-exception? _%exn101397%_)
                (macro-type-exception-type-id _%exn101397%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn101397%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn101393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101393%_))
            (let ((_%e101395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101393%_ 'exception))))
              (macro-unbound-global-exception? _%e101395%_))
            (macro-unbound-global-exception? _%exn101393%_))))
    (define unbound-global-exception-code
      (lambda (_%exn101389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101389%_))
            (let ((_%e101391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101389%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101391%_)
                  (macro-unbound-global-exception-code _%e101391%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e101391%_ '())))))
            (if (macro-unbound-global-exception? _%exn101389%_)
                (macro-unbound-global-exception-code _%exn101389%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn101389%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn101385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101385%_))
            (let ((_%e101387%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101385%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101387%_)
                  (macro-unbound-global-exception-rte _%e101387%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e101387%_ '())))))
            (if (macro-unbound-global-exception? _%exn101385%_)
                (macro-unbound-global-exception-rte _%exn101385%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn101385%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn101379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101379%_))
            (let ((_%e101382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101379%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101382%_)
                  (macro-unbound-global-exception-variable _%e101382%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e101382%_ '())))))
            (if (macro-unbound-global-exception? _%exn101379%_)
                (macro-unbound-global-exception-variable _%exn101379%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn101379%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn101375%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101375%_))
            (let ((_%e101377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101375%_ 'exception))))
              (macro-unbound-key-exception? _%e101377%_))
            (macro-unbound-key-exception? _%exn101375%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn101371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101371%_))
            (let ((_%e101373%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101371%_ 'exception))))
              (if (macro-unbound-key-exception? _%e101373%_)
                  (macro-unbound-key-exception-arguments _%e101373%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e101373%_ '())))))
            (if (macro-unbound-key-exception? _%exn101371%_)
                (macro-unbound-key-exception-arguments _%exn101371%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn101371%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn101365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101365%_))
            (let ((_%e101368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101365%_ 'exception))))
              (if (macro-unbound-key-exception? _%e101368%_)
                  (macro-unbound-key-exception-procedure _%e101368%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e101368%_ '())))))
            (if (macro-unbound-key-exception? _%exn101365%_)
                (macro-unbound-key-exception-procedure _%exn101365%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn101365%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn101361%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101361%_))
            (let ((_%e101363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101361%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e101363%_))
            (macro-unbound-os-environment-variable-exception? _%exn101361%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn101357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101357%_))
            (let ((_%e101359%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101357%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e101359%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e101359%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e101359%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn101357%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn101357%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn101357%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn101351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101351%_))
            (let ((_%e101354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101351%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e101354%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e101354%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e101354%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn101351%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn101351%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn101351%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn101347%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101347%_))
            (let ((_%e101349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101347%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e101349%_))
            (macro-unbound-serial-number-exception? _%exn101347%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn101343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101343%_))
            (let ((_%e101345%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101343%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e101345%_)
                  (macro-unbound-serial-number-exception-arguments _%e101345%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e101345%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn101343%_)
                (macro-unbound-serial-number-exception-arguments _%exn101343%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn101343%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn101337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101337%_))
            (let ((_%e101340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101337%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e101340%_)
                  (macro-unbound-serial-number-exception-procedure _%e101340%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e101340%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn101337%_)
                (macro-unbound-serial-number-exception-procedure _%exn101337%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn101337%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn101333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101333%_))
            (let ((_%e101335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101333%_ 'exception))))
              (macro-uncaught-exception? _%e101335%_))
            (macro-uncaught-exception? _%exn101333%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn101329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101329%_))
            (let ((_%e101331%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101329%_ 'exception))))
              (if (macro-uncaught-exception? _%e101331%_)
                  (macro-uncaught-exception-arguments _%e101331%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e101331%_ '())))))
            (if (macro-uncaught-exception? _%exn101329%_)
                (macro-uncaught-exception-arguments _%exn101329%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn101329%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn101325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101325%_))
            (let ((_%e101327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101325%_ 'exception))))
              (if (macro-uncaught-exception? _%e101327%_)
                  (macro-uncaught-exception-procedure _%e101327%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e101327%_ '())))))
            (if (macro-uncaught-exception? _%exn101325%_)
                (macro-uncaught-exception-procedure _%exn101325%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn101325%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn101319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101319%_))
            (let ((_%e101322%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101319%_ 'exception))))
              (if (macro-uncaught-exception? _%e101322%_)
                  (macro-uncaught-exception-reason _%e101322%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e101322%_ '())))))
            (if (macro-uncaught-exception? _%exn101319%_)
                (macro-uncaught-exception-reason _%exn101319%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn101319%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn101315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101315%_))
            (let ((_%e101317%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101315%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e101317%_))
            (macro-uninitialized-thread-exception? _%exn101315%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn101311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101311%_))
            (let ((_%e101313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101311%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e101313%_)
                  (macro-uninitialized-thread-exception-arguments _%e101313%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e101313%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn101311%_)
                (macro-uninitialized-thread-exception-arguments _%exn101311%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn101311%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn101305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101305%_))
            (let ((_%e101308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101305%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e101308%_)
                  (macro-uninitialized-thread-exception-procedure _%e101308%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e101308%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn101305%_)
                (macro-uninitialized-thread-exception-procedure _%exn101305%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn101305%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn101301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101301%_))
            (let ((_%e101303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101301%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e101303%_))
            (macro-unknown-keyword-argument-exception? _%exn101301%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn101297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101297%_))
            (let ((_%e101299%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101297%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e101299%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e101299%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e101299%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn101297%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn101297%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn101297%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn101291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101291%_))
            (let ((_%e101294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101291%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e101294%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e101294%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e101294%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn101291%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn101291%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn101291%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn101287%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101287%_))
            (let ((_%e101289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101287%_ 'exception))))
              (macro-unterminated-process-exception? _%e101289%_))
            (macro-unterminated-process-exception? _%exn101287%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn101283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101283%_))
            (let ((_%e101285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101283%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e101285%_)
                  (macro-unterminated-process-exception-arguments _%e101285%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e101285%_ '())))))
            (if (macro-unterminated-process-exception? _%exn101283%_)
                (macro-unterminated-process-exception-arguments _%exn101283%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn101283%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn101277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101277%_))
            (let ((_%e101280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101277%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e101280%_)
                  (macro-unterminated-process-exception-procedure _%e101280%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e101280%_ '())))))
            (if (macro-unterminated-process-exception? _%exn101277%_)
                (macro-unterminated-process-exception-procedure _%exn101277%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn101277%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn101273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101273%_))
            (let ((_%e101275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101273%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e101275%_))
            (macro-wrong-number-of-arguments-exception? _%exn101273%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn101269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101269%_))
            (let ((_%e101271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101269%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e101271%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e101271%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e101271%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn101269%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn101269%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn101269%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn101263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101263%_))
            (let ((_%e101266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101263%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e101266%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e101266%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e101266%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn101263%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn101263%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn101263%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn101259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101259%_))
            (let ((_%e101261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101259%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e101261%_))
            (macro-wrong-number-of-values-exception? _%exn101259%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn101255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101255%_))
            (let ((_%e101257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101255%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e101257%_)
                  (macro-wrong-number-of-values-exception-code _%e101257%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e101257%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn101255%_)
                (macro-wrong-number-of-values-exception-code _%exn101255%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn101255%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn101251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101251%_))
            (let ((_%e101253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101251%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e101253%_)
                  (macro-wrong-number-of-values-exception-rte _%e101253%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e101253%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn101251%_)
                (macro-wrong-number-of-values-exception-rte _%exn101251%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn101251%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn101245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101245%_))
            (let ((_%e101248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101245%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e101248%_)
                  (macro-wrong-number-of-values-exception-vals _%e101248%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e101248%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn101245%_)
                (macro-wrong-number-of-values-exception-vals _%exn101245%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn101245%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn101239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101239%_))
            (let ((_%e101242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101239%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e101242%_))
            (macro-wrong-processor-c-return-exception? _%exn101239%_))))))
