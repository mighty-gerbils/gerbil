(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1713000276)
  (begin
    (define Exception::t
      (let ((__tmp103036 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp103036
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args103006%_
        (apply make-instance Exception::t _%$args103006%_)))
    (define StackTrace::t
      (let ((__tmp103037 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp103037
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args103003%_
        (apply make-instance StackTrace::t _%$args103003%_)))
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
      (let ((__tmp103038 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp103038
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args103000%_ (apply make-instance Error::t _%$args103000%_)))
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
      (let ((__tmp103039 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp103039
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args102997%_
        (apply make-instance ContractViolation::t _%$args102997%_)))
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
      (let ((__tmp103040 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp103040
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args102994%_
        (apply make-instance RuntimeException::t _%$args102994%_)))
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
      (lambda (_%exn102989%_ _%continue102990%_)
        (let ((_%exn102992%_ (wrap-runtime-exception _%exn102989%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn102992%_ _%continue102990%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn102985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn102985%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn102985%_ 'continuation))
                '#!void
                (let ((__tmp103041
                       (lambda (_%cont102987%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn102985%_
                            'continuation
                            _%cont102987%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp103041)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn102985%_))))
    (define error
      (lambda (_%message102982%_ . _%irritants102983%_)
        (raise (let ((__obj103033
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj103033
                  _%message102982%_
                  'irritants:
                  _%irritants102983%_)
                 __obj103033))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords102954%_
               _%ctx102949102955%_
               _%contract-expr102950102957%_
               _%value102951102959%_
               _%message102961%_)
        (let* ((_%ctx102963%_
                (if (eq? _%ctx102949102955%_ absent-value)
                    '#f
                    _%ctx102949102955%_))
               (_%contract-expr102965%_
                (if (eq? _%contract-expr102950102957%_ absent-value)
                    '#f
                    _%contract-expr102950102957%_))
               (_%value102967%_
                (if (eq? _%value102951102959%_ absent-value)
                    '#f
                    _%value102951102959%_)))
          (raise (let ((__obj103034
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj103034
                    _%message102961%_
                    'where:
                    _%ctx102963%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr102965%_
                                (cons 'value: (cons _%value102967%_ '())))))
                   __obj103034)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords102972%_ . _%args102973%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords102972%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102972%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102972%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords102972%_
                  'value:
                  absent-value))
               _%args102973%_)))
    (define __raise-contract-violation-error
      (lambda _%args102952102979%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args102952102979%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler102923%_ _%thunk102924%_)
        (if (procedure? _%handler102923%_)
            (let ((_%handler102928%_ _%handler102923%_))
              (if (procedure? _%thunk102924%_)
                  (let ((_%thunk102938%_ _%thunk102924%_))
                    (__with-exception-handler
                     _%handler102928%_
                     _%thunk102938%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102924%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler102923%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler102898%_ _%thunk102899%_)
        (let* ((_%handler102902%_ _%handler102898%_)
               (_%thunk102910%_ _%thunk102899%_)
               (__tmp103042
                (lambda (_%exn102919%_)
                  (let ((_%exn102921%_ (wrap-runtime-exception _%exn102919%_)))
                    (declare (not safe))
                    (_%handler102902%_ _%exn102921%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp103042 _%thunk102910%_))))
    (define with-catch
      (lambda (_%handler102873%_ _%thunk102874%_)
        (if (procedure? _%handler102873%_)
            (let ((_%handler102878%_ _%handler102873%_))
              (if (procedure? _%thunk102874%_)
                  (let ((_%thunk102888%_ _%thunk102874%_))
                    (__with-catch _%handler102878%_ _%thunk102888%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk102874%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler102873%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler102848%_ _%thunk102849%_)
        (let* ((_%handler102852%_ _%handler102848%_)
               (_%thunk102860%_ _%thunk102849%_)
               (__tmp103043
                (lambda (_%cont102869%_)
                  (__with-exception-handler
                   (lambda (_%exn102871%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont102869%_
                        _%handler102852%_
                        _%exn102871%_)))
                   _%thunk102860%_))))
          (declare (not safe))
          (##continuation-capture __tmp103043))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn102835%_)
        (if (or (heap-overflow-exception? _%exn102835%_)
                (stack-overflow-exception? _%exn102835%_))
            _%exn102835%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn102835%_))
                _%exn102835%_
                (if (macro-exception? _%exn102835%_)
                    (let ((_%rte102843%_
                           (let ((__obj103035
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj103035
                                _%exn102835%_
                                '2
                                '#f
                                '#f))
                             __obj103035)))
                      (let ((__tmp103044
                             (lambda (_%cont102845%_)
                               (let ((__tmp103045
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont102845%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte102843%_
                                  'continuation
                                  __tmp103045)))))
                        (declare (not safe))
                        (##continuation-capture __tmp103044))
                      _%rte102843%_)
                    _%exn102835%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj102830%_)
        (let ((_%$e102832%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj102830%_))))
          (if _%$e102832%_ _%$e102832%_ (error-exception? _%obj102830%_)))))
    (define error-message
      (lambda (_%obj102823%_)
        (let ((_%$e102825%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj102823%_ 'message false))))
          (if _%$e102825%_
              _%$e102825%_
              (if (error-exception? _%obj102823%_)
                  (error-exception-message _%obj102823%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj102818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102818%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102818%_ 'irritants))
            (if (error-exception? _%obj102818%_)
                (error-exception-parameters _%obj102818%_)
                '#f))))
    (define error-trace
      (lambda (_%obj102816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj102816%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj102816%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e102797%_ _%port102798%_)
        (let ((_%$e102800%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e102797%_ 'display-exception))))
          (if _%$e102800%_
              ((lambda (_%f102803%_) (_%f102803%_ _%e102797%_ _%port102798%_))
               _%$e102800%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e102797%_ _%port102798%_))))))
    (define display-exception__0
      (lambda (_%e102809%_)
        (let ((_%port102811%_ (current-error-port)))
          (display-exception__% _%e102809%_ _%port102811%_))))
    (define display-exception
      (lambda _g103047_
        (let ((_g103046_ (let () (declare (not safe)) (##length _g103047_))))
          (cond ((let () (declare (not safe)) (##fx= _g103046_ 1))
                 (apply display-exception__0 _g103047_))
                ((let () (declare (not safe)) (##fx= _g103046_ 2))
                 (apply display-exception__% _g103047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g103047_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self101166102773%_ _%message102775%_ . _%rest102776%_)
        (let* ((_%self102778%_ _%self101166102773%_)
               (_%self102780%_ _%self102778%_)
               (_%message102794%_
                (if (string? _%message102775%_)
                    _%message102775%_
                    (call-with-output-string
                     '""
                     (lambda (_%g102789102791%_)
                       (display _%message102775%_ _%g102789102791%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self102780%_ 'message _%message102794%_))
          (apply class-instance-init! _%self102780%_ _%rest102776%_))))
    (define Error:::init!::specialize
      (lambda (__klass103008 __method-table103009)
        (let ((__message103010
               (let ((__slot103011
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103008 'message))))
                 (if __slot103011
                     __slot103011
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self101166102773%_ _%message102775%_ . _%rest102776%_)
            (let* ((_%self102778%_ _%self101166102773%_)
                   (_%self102780%_ _%self102778%_)
                   (_%message102794%_
                    (if (string? _%message102775%_)
                        _%message102775%_
                        (call-with-output-string
                         '""
                         (lambda (_%g102789102791%_)
                           (display _%message102775%_ _%g102789102791%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self102780%_
                 _%message102794%_
                 __message103010
                 '#f
                 '#f))
              (apply class-instance-init! _%self102780%_ _%rest102776%_))))))
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
      (lambda (_%self101167102495%_ _%port102497%_)
        (let* ((_%self102499%_ _%self101167102495%_)
               (_%self102501%_ _%self102499%_))
          (let ((_%tmp-port102511%_ (open-output-string))
                (_%display-error-newline102512%_
                 (> (output-port-column _%port102497%_) '0)))
            (fix-port-width! _%tmp-port102511%_)
            (let ((__tmp103048
                   (lambda ()
                     (if _%display-error-newline102512%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e102515%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self102501%_ 'where))))
                       (if _%$e102515%_ (display _%$e102515%_) (display '"?")))
                     (let ((__tmp103049
                            (let ((__tmp103050
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self102501%_))))
                              (declare (not safe))
                              (##type-name __tmp103050))))
                       (declare (not safe))
                       (display* '" [" __tmp103049 '"]: "))
                     (let ((__tmp103051
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self102501%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp103051))
                     (let ((_%irritants102519%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self102501%_ 'irritants))))
                       (if (null? _%irritants102519%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj102521%_)
                                (if (u8vector? _%obj102521%_)
                                    (let ((__tmp103052
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj102521%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp103052))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj102521%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants102519%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont102522102524%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self102501%_
                                   'continuation))))
                           (if _%cont102522102524%_
                               (let ((_%cont102527%_ _%cont102522102524%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont102527%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp103048
               current-output-port
               _%tmp-port102511%_))
            (let ((__tmp103053 (get-output-string _%tmp-port102511%_)))
              (declare (not safe))
              (##write-string __tmp103053 _%port102497%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass103012 __method-table103013)
        (let ((__where103014
               (let ((__slot103018
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103012 'where))))
                 (if __slot103018
                     __slot103018
                     (error '"Unknown slot" 'where))))
              (__continuation103015
               (let ((__slot103019
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103012 'continuation))))
                 (if __slot103019
                     __slot103019
                     (error '"Unknown slot" 'continuation))))
              (__irritants103016
               (let ((__slot103020
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103012 'irritants))))
                 (if __slot103020
                     __slot103020
                     (error '"Unknown slot" 'irritants))))
              (__message103017
               (let ((__slot103021
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103012 'message))))
                 (if __slot103021
                     __slot103021
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self101167102495%_ _%port102497%_)
            (let* ((_%self102499%_ _%self101167102495%_)
                   (_%self102501%_ _%self102499%_))
              (let ((_%tmp-port102511%_ (open-output-string))
                    (_%display-error-newline102512%_
                     (> (output-port-column _%port102497%_) '0)))
                (fix-port-width! _%tmp-port102511%_)
                (let ((__tmp103054
                       (lambda ()
                         (if _%display-error-newline102512%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e102515%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self102501%_
                                   __where103014
                                   '#f
                                   '#f))))
                           (if _%$e102515%_
                               (display _%$e102515%_)
                               (display '"?")))
                         (let ((__tmp103055
                                (let ((__tmp103056
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self102501%_))))
                                  (declare (not safe))
                                  (##type-name __tmp103056))))
                           (declare (not safe))
                           (display* '" [" __tmp103055 '"]: "))
                         (let ((__tmp103057
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self102501%_
                                   __message103017
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp103057))
                         (let ((_%irritants102519%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self102501%_
                                   __irritants103016
                                   '#f
                                   '#f))))
                           (if (null? _%irritants102519%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj102521%_)
                                    (if (u8vector? _%obj102521%_)
                                        (let ((__tmp103058
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj102521%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp103058))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj102521%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants102519%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont102522102524%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self102501%_
                                       __continuation103015
                                       '#f
                                       '#f))))
                               (if _%cont102522102524%_
                                   (let ((_%cont102527%_ _%cont102522102524%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont102527%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp103054
                   current-output-port
                   _%tmp-port102511%_))
                (let ((__tmp103059 (get-output-string _%tmp-port102511%_)))
                  (declare (not safe))
                  (##write-string __tmp103059 _%port102497%_))))))))
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
      (lambda (_%self101168102349%_ _%port102351%_)
        (let* ((_%self102353%_ _%self101168102349%_)
               (_%self102355%_ _%self102353%_)
               (_%tmp-port102365%_ (open-output-string)))
          (fix-port-width! _%tmp-port102365%_)
          (let ((__tmp103060
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self102355%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp103060 _%tmp-port102365%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont102366102368%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self102355%_ 'continuation))))
                (if _%cont102366102368%_
                    (let ((_%cont102371%_ _%cont102366102368%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port102365%_)
                      (newline _%tmp-port102365%_)
                      (display-continuation-backtrace
                       _%cont102371%_
                       _%tmp-port102365%_))
                    '#f))
              '#!void)
          (let ((__tmp103061 (get-output-string _%tmp-port102365%_)))
            (declare (not safe))
            (##write-string __tmp103061 _%port102351%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass103022 __method-table103023)
        (let ((__exception103024
               (let ((__slot103026
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103022 'exception))))
                 (if __slot103026
                     __slot103026
                     (error '"Unknown slot" 'exception))))
              (__continuation103025
               (let ((__slot103027
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass103022 'continuation))))
                 (if __slot103027
                     __slot103027
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self101168102349%_ _%port102351%_)
            (let* ((_%self102353%_ _%self101168102349%_)
                   (_%self102355%_ _%self102353%_)
                   (_%tmp-port102365%_ (open-output-string)))
              (fix-port-width! _%tmp-port102365%_)
              (let ((__tmp103062
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self102355%_
                        __exception103024
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp103062 _%tmp-port102365%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont102366102368%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self102355%_
                            __continuation103025
                            '#f
                            '#f))))
                    (if _%cont102366102368%_
                        (let ((_%cont102371%_ _%cont102366102368%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port102365%_)
                          (newline _%tmp-port102365%_)
                          (display-continuation-backtrace
                           _%cont102371%_
                           _%tmp-port102365%_))
                        '#f))
                  '#!void)
              (let ((__tmp103063 (get-output-string _%tmp-port102365%_)))
                (declare (not safe))
                (##write-string __tmp103063 _%port102351%_)))))))
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
      (lambda (_%port102221%_)
        (if (macro-character-port? _%port102221%_)
            (let ((_%old-width102223%_
                   (macro-character-port-output-width _%port102221%_)))
              (macro-character-port-output-width-set!
               _%port102221%_
               (lambda (_%port102225%_) '256))
              _%old-width102223%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port102218%_ _%old-width102219%_)
        (if (macro-character-port? _%port102218%_)
            (macro-character-port-output-width-set!
             _%port102218%_
             _%old-width102219%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e102216%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e102216%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn102210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102210%_))
            (let ((_%e102213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102210%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e102213%_))
            (macro-abandoned-mutex-exception? _%exn102210%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn102206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102206%_))
            (let ((_%e102208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102206%_ 'exception))))
              (macro-cfun-conversion-exception? _%e102208%_))
            (macro-cfun-conversion-exception? _%exn102206%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn102202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102202%_))
            (let ((_%e102204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102202%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e102204%_)
                  (macro-cfun-conversion-exception-arguments _%e102204%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e102204%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn102202%_)
                (macro-cfun-conversion-exception-arguments _%exn102202%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn102202%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn102198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102198%_))
            (let ((_%e102200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102198%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e102200%_)
                  (macro-cfun-conversion-exception-code _%e102200%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e102200%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn102198%_)
                (macro-cfun-conversion-exception-code _%exn102198%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn102198%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn102194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102194%_))
            (let ((_%e102196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102194%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e102196%_)
                  (macro-cfun-conversion-exception-message _%e102196%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e102196%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn102194%_)
                (macro-cfun-conversion-exception-message _%exn102194%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn102194%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn102188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102188%_))
            (let ((_%e102191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102188%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e102191%_)
                  (macro-cfun-conversion-exception-procedure _%e102191%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e102191%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn102188%_)
                (macro-cfun-conversion-exception-procedure _%exn102188%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn102188%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn102184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102184%_))
            (let ((_%e102186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102184%_ 'exception))))
              (macro-datum-parsing-exception? _%e102186%_))
            (macro-datum-parsing-exception? _%exn102184%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn102180%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102180%_))
            (let ((_%e102182%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102180%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e102182%_)
                  (macro-datum-parsing-exception-kind _%e102182%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e102182%_ '())))))
            (if (macro-datum-parsing-exception? _%exn102180%_)
                (macro-datum-parsing-exception-kind _%exn102180%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn102180%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn102176%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102176%_))
            (let ((_%e102178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102176%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e102178%_)
                  (macro-datum-parsing-exception-parameters _%e102178%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e102178%_ '())))))
            (if (macro-datum-parsing-exception? _%exn102176%_)
                (macro-datum-parsing-exception-parameters _%exn102176%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn102176%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn102170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102170%_))
            (let ((_%e102173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102170%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e102173%_)
                  (macro-datum-parsing-exception-readenv _%e102173%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e102173%_ '())))))
            (if (macro-datum-parsing-exception? _%exn102170%_)
                (macro-datum-parsing-exception-readenv _%exn102170%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn102170%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn102164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102164%_))
            (let ((_%e102167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102164%_ 'exception))))
              (macro-deadlock-exception? _%e102167%_))
            (macro-deadlock-exception? _%exn102164%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn102160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102160%_))
            (let ((_%e102162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102160%_ 'exception))))
              (macro-divide-by-zero-exception? _%e102162%_))
            (macro-divide-by-zero-exception? _%exn102160%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn102156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102156%_))
            (let ((_%e102158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102156%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e102158%_)
                  (macro-divide-by-zero-exception-arguments _%e102158%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e102158%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn102156%_)
                (macro-divide-by-zero-exception-arguments _%exn102156%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn102156%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn102150%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102150%_))
            (let ((_%e102153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102150%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e102153%_)
                  (macro-divide-by-zero-exception-procedure _%e102153%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e102153%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn102150%_)
                (macro-divide-by-zero-exception-procedure _%exn102150%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn102150%_ '())))))))
    (define error-exception?
      (lambda (_%exn102146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102146%_))
            (let ((_%e102148%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102146%_ 'exception))))
              (macro-error-exception? _%e102148%_))
            (macro-error-exception? _%exn102146%_))))
    (define error-exception-message
      (lambda (_%exn102142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102142%_))
            (let ((_%e102144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102142%_ 'exception))))
              (if (macro-error-exception? _%e102144%_)
                  (macro-error-exception-message _%e102144%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e102144%_ '())))))
            (if (macro-error-exception? _%exn102142%_)
                (macro-error-exception-message _%exn102142%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn102142%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn102136%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102136%_))
            (let ((_%e102139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102136%_ 'exception))))
              (if (macro-error-exception? _%e102139%_)
                  (macro-error-exception-parameters _%e102139%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e102139%_ '())))))
            (if (macro-error-exception? _%exn102136%_)
                (macro-error-exception-parameters _%exn102136%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn102136%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn102132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102132%_))
            (let ((_%e102134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102132%_ 'exception))))
              (macro-expression-parsing-exception? _%e102134%_))
            (macro-expression-parsing-exception? _%exn102132%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn102128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102128%_))
            (let ((_%e102130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102128%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e102130%_)
                  (macro-expression-parsing-exception-kind _%e102130%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e102130%_ '())))))
            (if (macro-expression-parsing-exception? _%exn102128%_)
                (macro-expression-parsing-exception-kind _%exn102128%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn102128%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn102124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102124%_))
            (let ((_%e102126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102124%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e102126%_)
                  (macro-expression-parsing-exception-parameters _%e102126%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e102126%_ '())))))
            (if (macro-expression-parsing-exception? _%exn102124%_)
                (macro-expression-parsing-exception-parameters _%exn102124%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn102124%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn102118%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102118%_))
            (let ((_%e102121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102118%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e102121%_)
                  (macro-expression-parsing-exception-source _%e102121%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e102121%_ '())))))
            (if (macro-expression-parsing-exception? _%exn102118%_)
                (macro-expression-parsing-exception-source _%exn102118%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn102118%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn102114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102114%_))
            (let ((_%e102116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102114%_ 'exception))))
              (macro-file-exists-exception? _%e102116%_))
            (macro-file-exists-exception? _%exn102114%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn102110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102110%_))
            (let ((_%e102112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102110%_ 'exception))))
              (if (macro-file-exists-exception? _%e102112%_)
                  (macro-file-exists-exception-arguments _%e102112%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e102112%_ '())))))
            (if (macro-file-exists-exception? _%exn102110%_)
                (macro-file-exists-exception-arguments _%exn102110%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn102110%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn102104%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102104%_))
            (let ((_%e102107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102104%_ 'exception))))
              (if (macro-file-exists-exception? _%e102107%_)
                  (macro-file-exists-exception-procedure _%e102107%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e102107%_ '())))))
            (if (macro-file-exists-exception? _%exn102104%_)
                (macro-file-exists-exception-procedure _%exn102104%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn102104%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn102100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102100%_))
            (let ((_%e102102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102100%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e102102%_))
            (macro-fixnum-overflow-exception? _%exn102100%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn102096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102096%_))
            (let ((_%e102098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102096%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e102098%_)
                  (macro-fixnum-overflow-exception-arguments _%e102098%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e102098%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn102096%_)
                (macro-fixnum-overflow-exception-arguments _%exn102096%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn102096%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn102090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102090%_))
            (let ((_%e102093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102090%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e102093%_)
                  (macro-fixnum-overflow-exception-procedure _%e102093%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e102093%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn102090%_)
                (macro-fixnum-overflow-exception-procedure _%exn102090%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn102090%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn102084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102084%_))
            (let ((_%e102087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102084%_ 'exception))))
              (macro-heap-overflow-exception? _%e102087%_))
            (macro-heap-overflow-exception? _%exn102084%_))))
    (define inactive-thread-exception?
      (lambda (_%exn102080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102080%_))
            (let ((_%e102082%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102080%_ 'exception))))
              (macro-inactive-thread-exception? _%e102082%_))
            (macro-inactive-thread-exception? _%exn102080%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn102076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102076%_))
            (let ((_%e102078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102076%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e102078%_)
                  (macro-inactive-thread-exception-arguments _%e102078%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e102078%_ '())))))
            (if (macro-inactive-thread-exception? _%exn102076%_)
                (macro-inactive-thread-exception-arguments _%exn102076%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn102076%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn102070%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102070%_))
            (let ((_%e102073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102070%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e102073%_)
                  (macro-inactive-thread-exception-procedure _%e102073%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e102073%_ '())))))
            (if (macro-inactive-thread-exception? _%exn102070%_)
                (macro-inactive-thread-exception-procedure _%exn102070%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn102070%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn102066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102066%_))
            (let ((_%e102068%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102066%_ 'exception))))
              (macro-initialized-thread-exception? _%e102068%_))
            (macro-initialized-thread-exception? _%exn102066%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn102062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102062%_))
            (let ((_%e102064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102062%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e102064%_)
                  (macro-initialized-thread-exception-arguments _%e102064%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e102064%_ '())))))
            (if (macro-initialized-thread-exception? _%exn102062%_)
                (macro-initialized-thread-exception-arguments _%exn102062%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn102062%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn102056%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102056%_))
            (let ((_%e102059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102056%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e102059%_)
                  (macro-initialized-thread-exception-procedure _%e102059%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e102059%_ '())))))
            (if (macro-initialized-thread-exception? _%exn102056%_)
                (macro-initialized-thread-exception-procedure _%exn102056%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn102056%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn102052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102052%_))
            (let ((_%e102054%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102052%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e102054%_))
            (macro-invalid-hash-number-exception? _%exn102052%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn102048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102048%_))
            (let ((_%e102050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102048%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e102050%_)
                  (macro-invalid-hash-number-exception-arguments _%e102050%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e102050%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn102048%_)
                (macro-invalid-hash-number-exception-arguments _%exn102048%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn102048%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn102042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102042%_))
            (let ((_%e102045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102042%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e102045%_)
                  (macro-invalid-hash-number-exception-procedure _%e102045%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e102045%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn102042%_)
                (macro-invalid-hash-number-exception-procedure _%exn102042%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn102042%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn102038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102038%_))
            (let ((_%e102040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102038%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e102040%_))
            (macro-invalid-utf8-encoding-exception? _%exn102038%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn102034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102034%_))
            (let ((_%e102036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102034%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e102036%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e102036%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e102036%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn102034%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn102034%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn102034%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn102028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102028%_))
            (let ((_%e102031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102028%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e102031%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e102031%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e102031%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn102028%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn102028%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn102028%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn102024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102024%_))
            (let ((_%e102026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102024%_ 'exception))))
              (macro-join-timeout-exception? _%e102026%_))
            (macro-join-timeout-exception? _%exn102024%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn102020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102020%_))
            (let ((_%e102022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102020%_ 'exception))))
              (if (macro-join-timeout-exception? _%e102022%_)
                  (macro-join-timeout-exception-arguments _%e102022%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e102022%_ '())))))
            (if (macro-join-timeout-exception? _%exn102020%_)
                (macro-join-timeout-exception-arguments _%exn102020%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn102020%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn102014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102014%_))
            (let ((_%e102017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102014%_ 'exception))))
              (if (macro-join-timeout-exception? _%e102017%_)
                  (macro-join-timeout-exception-procedure _%e102017%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e102017%_ '())))))
            (if (macro-join-timeout-exception? _%exn102014%_)
                (macro-join-timeout-exception-procedure _%exn102014%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn102014%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn102010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102010%_))
            (let ((_%e102012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102010%_ 'exception))))
              (macro-keyword-expected-exception? _%e102012%_))
            (macro-keyword-expected-exception? _%exn102010%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn102006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102006%_))
            (let ((_%e102008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102006%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e102008%_)
                  (macro-keyword-expected-exception-arguments _%e102008%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e102008%_ '())))))
            (if (macro-keyword-expected-exception? _%exn102006%_)
                (macro-keyword-expected-exception-arguments _%exn102006%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn102006%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn102000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102000%_))
            (let ((_%e102003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102000%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e102003%_)
                  (macro-keyword-expected-exception-procedure _%e102003%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e102003%_ '())))))
            (if (macro-keyword-expected-exception? _%exn102000%_)
                (macro-keyword-expected-exception-procedure _%exn102000%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn102000%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn101996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101996%_))
            (let ((_%e101998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101996%_ 'exception))))
              (macro-length-mismatch-exception? _%e101998%_))
            (macro-length-mismatch-exception? _%exn101996%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn101992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101992%_))
            (let ((_%e101994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101992%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101994%_)
                  (macro-length-mismatch-exception-arg-id _%e101994%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e101994%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101992%_)
                (macro-length-mismatch-exception-arg-id _%exn101992%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn101992%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn101988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101988%_))
            (let ((_%e101990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101988%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101990%_)
                  (macro-length-mismatch-exception-arguments _%e101990%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e101990%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101988%_)
                (macro-length-mismatch-exception-arguments _%exn101988%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn101988%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn101982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101982%_))
            (let ((_%e101985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101982%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e101985%_)
                  (macro-length-mismatch-exception-procedure _%e101985%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e101985%_ '())))))
            (if (macro-length-mismatch-exception? _%exn101982%_)
                (macro-length-mismatch-exception-procedure _%exn101982%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn101982%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn101978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101978%_))
            (let ((_%e101980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101978%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e101980%_))
            (macro-mailbox-receive-timeout-exception? _%exn101978%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn101974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101974%_))
            (let ((_%e101976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101974%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101976%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e101976%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e101976%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101974%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn101974%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn101974%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn101968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101968%_))
            (let ((_%e101971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101968%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e101971%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e101971%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e101971%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn101968%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn101968%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn101968%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn101964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101964%_))
            (let ((_%e101966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101964%_ 'exception))))
              (macro-module-not-found-exception? _%e101966%_))
            (macro-module-not-found-exception? _%exn101964%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn101960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101960%_))
            (let ((_%e101962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101960%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101962%_)
                  (macro-module-not-found-exception-arguments _%e101962%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e101962%_ '())))))
            (if (macro-module-not-found-exception? _%exn101960%_)
                (macro-module-not-found-exception-arguments _%exn101960%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn101960%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn101954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101954%_))
            (let ((_%e101957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101954%_ 'exception))))
              (if (macro-module-not-found-exception? _%e101957%_)
                  (macro-module-not-found-exception-procedure _%e101957%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e101957%_ '())))))
            (if (macro-module-not-found-exception? _%exn101954%_)
                (macro-module-not-found-exception-procedure _%exn101954%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn101954%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn101948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101948%_))
            (let ((_%e101951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101948%_ 'exception))))
              (macro-multiple-c-return-exception? _%e101951%_))
            (macro-multiple-c-return-exception? _%exn101948%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn101944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101944%_))
            (let ((_%e101946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101944%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e101946%_))
            (macro-no-such-file-or-directory-exception? _%exn101944%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn101940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101940%_))
            (let ((_%e101942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101940%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101942%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e101942%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e101942%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101940%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn101940%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn101940%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn101934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101934%_))
            (let ((_%e101937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101934%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e101937%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e101937%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e101937%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn101934%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn101934%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn101934%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn101930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101930%_))
            (let ((_%e101932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101930%_ 'exception))))
              (macro-noncontinuable-exception? _%e101932%_))
            (macro-noncontinuable-exception? _%exn101930%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn101924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101924%_))
            (let ((_%e101927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101924%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e101927%_)
                  (macro-noncontinuable-exception-reason _%e101927%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e101927%_ '())))))
            (if (macro-noncontinuable-exception? _%exn101924%_)
                (macro-noncontinuable-exception-reason _%exn101924%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn101924%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn101920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101920%_))
            (let ((_%e101922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101920%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e101922%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn101920%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn101916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101916%_))
            (let ((_%e101918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101916%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101918%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e101918%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e101918%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101916%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn101916%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn101916%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn101910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101910%_))
            (let ((_%e101913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101910%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e101913%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e101913%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e101913%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn101910%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn101910%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn101910%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn101906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101906%_))
            (let ((_%e101908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101906%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e101908%_))
            (macro-nonprocedure-operator-exception? _%exn101906%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn101902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101902%_))
            (let ((_%e101904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101902%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101904%_)
                  (macro-nonprocedure-operator-exception-arguments _%e101904%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e101904%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101902%_)
                (macro-nonprocedure-operator-exception-arguments _%exn101902%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn101902%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn101898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101898%_))
            (let ((_%e101900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101898%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101900%_)
                  (macro-nonprocedure-operator-exception-code _%e101900%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e101900%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101898%_)
                (macro-nonprocedure-operator-exception-code _%exn101898%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn101898%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn101894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101894%_))
            (let ((_%e101896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101894%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101896%_)
                  (macro-nonprocedure-operator-exception-operator _%e101896%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e101896%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101894%_)
                (macro-nonprocedure-operator-exception-operator _%exn101894%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn101894%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn101888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101888%_))
            (let ((_%e101891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101888%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e101891%_)
                  (macro-nonprocedure-operator-exception-rte _%e101891%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e101891%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn101888%_)
                (macro-nonprocedure-operator-exception-rte _%exn101888%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn101888%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn101884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101884%_))
            (let ((_%e101886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101884%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e101886%_))
            (macro-not-in-compilation-context-exception? _%exn101884%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn101880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101880%_))
            (let ((_%e101882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101880%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101882%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e101882%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e101882%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101880%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn101880%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn101880%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn101874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101874%_))
            (let ((_%e101877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101874%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e101877%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e101877%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e101877%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn101874%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn101874%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn101874%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn101870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101870%_))
            (let ((_%e101872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101870%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e101872%_))
            (macro-number-of-arguments-limit-exception? _%exn101870%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn101866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101866%_))
            (let ((_%e101868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101866%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101868%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e101868%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e101868%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101866%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn101866%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn101866%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn101860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101860%_))
            (let ((_%e101863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101860%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e101863%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e101863%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e101863%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn101860%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn101860%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn101860%_ '())))))))
    (define os-exception?
      (lambda (_%exn101856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101856%_))
            (let ((_%e101858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101856%_ 'exception))))
              (macro-os-exception? _%e101858%_))
            (macro-os-exception? _%exn101856%_))))
    (define os-exception-arguments
      (lambda (_%exn101852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101852%_))
            (let ((_%e101854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101852%_ 'exception))))
              (if (macro-os-exception? _%e101854%_)
                  (macro-os-exception-arguments _%e101854%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e101854%_ '())))))
            (if (macro-os-exception? _%exn101852%_)
                (macro-os-exception-arguments _%exn101852%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn101852%_ '())))))))
    (define os-exception-code
      (lambda (_%exn101848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101848%_))
            (let ((_%e101850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101848%_ 'exception))))
              (if (macro-os-exception? _%e101850%_)
                  (macro-os-exception-code _%e101850%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e101850%_ '())))))
            (if (macro-os-exception? _%exn101848%_)
                (macro-os-exception-code _%exn101848%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn101848%_ '())))))))
    (define os-exception-message
      (lambda (_%exn101844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101844%_))
            (let ((_%e101846%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101844%_ 'exception))))
              (if (macro-os-exception? _%e101846%_)
                  (macro-os-exception-message _%e101846%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e101846%_ '())))))
            (if (macro-os-exception? _%exn101844%_)
                (macro-os-exception-message _%exn101844%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn101844%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn101838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101838%_))
            (let ((_%e101841%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101838%_ 'exception))))
              (if (macro-os-exception? _%e101841%_)
                  (macro-os-exception-procedure _%e101841%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e101841%_ '())))))
            (if (macro-os-exception? _%exn101838%_)
                (macro-os-exception-procedure _%exn101838%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn101838%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn101834%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101834%_))
            (let ((_%e101836%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101834%_ 'exception))))
              (macro-permission-denied-exception? _%e101836%_))
            (macro-permission-denied-exception? _%exn101834%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn101830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101830%_))
            (let ((_%e101832%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101830%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101832%_)
                  (macro-permission-denied-exception-arguments _%e101832%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e101832%_ '())))))
            (if (macro-permission-denied-exception? _%exn101830%_)
                (macro-permission-denied-exception-arguments _%exn101830%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn101830%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn101824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101824%_))
            (let ((_%e101827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101824%_ 'exception))))
              (if (macro-permission-denied-exception? _%e101827%_)
                  (macro-permission-denied-exception-procedure _%e101827%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e101827%_ '())))))
            (if (macro-permission-denied-exception? _%exn101824%_)
                (macro-permission-denied-exception-procedure _%exn101824%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn101824%_ '())))))))
    (define range-exception?
      (lambda (_%exn101820%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101820%_))
            (let ((_%e101822%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101820%_ 'exception))))
              (macro-range-exception? _%e101822%_))
            (macro-range-exception? _%exn101820%_))))
    (define range-exception-arg-id
      (lambda (_%exn101816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101816%_))
            (let ((_%e101818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101816%_ 'exception))))
              (if (macro-range-exception? _%e101818%_)
                  (macro-range-exception-arg-id _%e101818%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e101818%_ '())))))
            (if (macro-range-exception? _%exn101816%_)
                (macro-range-exception-arg-id _%exn101816%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn101816%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn101812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101812%_))
            (let ((_%e101814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101812%_ 'exception))))
              (if (macro-range-exception? _%e101814%_)
                  (macro-range-exception-arguments _%e101814%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e101814%_ '())))))
            (if (macro-range-exception? _%exn101812%_)
                (macro-range-exception-arguments _%exn101812%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn101812%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn101806%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101806%_))
            (let ((_%e101809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101806%_ 'exception))))
              (if (macro-range-exception? _%e101809%_)
                  (macro-range-exception-procedure _%e101809%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e101809%_ '())))))
            (if (macro-range-exception? _%exn101806%_)
                (macro-range-exception-procedure _%exn101806%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn101806%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn101802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101802%_))
            (let ((_%e101804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101802%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e101804%_))
            (macro-rpc-remote-error-exception? _%exn101802%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn101798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101798%_))
            (let ((_%e101800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101798%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101800%_)
                  (macro-rpc-remote-error-exception-arguments _%e101800%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e101800%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101798%_)
                (macro-rpc-remote-error-exception-arguments _%exn101798%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn101798%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn101794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101794%_))
            (let ((_%e101796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101794%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101796%_)
                  (macro-rpc-remote-error-exception-message _%e101796%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e101796%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101794%_)
                (macro-rpc-remote-error-exception-message _%exn101794%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn101794%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn101788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101788%_))
            (let ((_%e101791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101788%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e101791%_)
                  (macro-rpc-remote-error-exception-procedure _%e101791%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e101791%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn101788%_)
                (macro-rpc-remote-error-exception-procedure _%exn101788%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn101788%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn101784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101784%_))
            (let ((_%e101786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101784%_ 'exception))))
              (macro-scheduler-exception? _%e101786%_))
            (macro-scheduler-exception? _%exn101784%_))))
    (define scheduler-exception-reason
      (lambda (_%exn101778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101778%_))
            (let ((_%e101781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101778%_ 'exception))))
              (if (macro-scheduler-exception? _%e101781%_)
                  (macro-scheduler-exception-reason _%e101781%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e101781%_ '())))))
            (if (macro-scheduler-exception? _%exn101778%_)
                (macro-scheduler-exception-reason _%exn101778%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn101778%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn101774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101774%_))
            (let ((_%e101776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101774%_ 'exception))))
              (macro-sfun-conversion-exception? _%e101776%_))
            (macro-sfun-conversion-exception? _%exn101774%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn101770%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101770%_))
            (let ((_%e101772%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101770%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101772%_)
                  (macro-sfun-conversion-exception-arguments _%e101772%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e101772%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101770%_)
                (macro-sfun-conversion-exception-arguments _%exn101770%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn101770%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn101766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101766%_))
            (let ((_%e101768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101766%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101768%_)
                  (macro-sfun-conversion-exception-code _%e101768%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e101768%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101766%_)
                (macro-sfun-conversion-exception-code _%exn101766%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn101766%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn101762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101762%_))
            (let ((_%e101764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101762%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101764%_)
                  (macro-sfun-conversion-exception-message _%e101764%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e101764%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101762%_)
                (macro-sfun-conversion-exception-message _%exn101762%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn101762%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn101756%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101756%_))
            (let ((_%e101759%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101756%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e101759%_)
                  (macro-sfun-conversion-exception-procedure _%e101759%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e101759%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn101756%_)
                (macro-sfun-conversion-exception-procedure _%exn101756%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn101756%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn101750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101750%_))
            (let ((_%e101753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101750%_ 'exception))))
              (macro-stack-overflow-exception? _%e101753%_))
            (macro-stack-overflow-exception? _%exn101750%_))))
    (define started-thread-exception?
      (lambda (_%exn101746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101746%_))
            (let ((_%e101748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101746%_ 'exception))))
              (macro-started-thread-exception? _%e101748%_))
            (macro-started-thread-exception? _%exn101746%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn101742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101742%_))
            (let ((_%e101744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101742%_ 'exception))))
              (if (macro-started-thread-exception? _%e101744%_)
                  (macro-started-thread-exception-arguments _%e101744%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e101744%_ '())))))
            (if (macro-started-thread-exception? _%exn101742%_)
                (macro-started-thread-exception-arguments _%exn101742%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn101742%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn101736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101736%_))
            (let ((_%e101739%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101736%_ 'exception))))
              (if (macro-started-thread-exception? _%e101739%_)
                  (macro-started-thread-exception-procedure _%e101739%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e101739%_ '())))))
            (if (macro-started-thread-exception? _%exn101736%_)
                (macro-started-thread-exception-procedure _%exn101736%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn101736%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn101732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101732%_))
            (let ((_%e101734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101732%_ 'exception))))
              (macro-terminated-thread-exception? _%e101734%_))
            (macro-terminated-thread-exception? _%exn101732%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn101728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101728%_))
            (let ((_%e101730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101728%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101730%_)
                  (macro-terminated-thread-exception-arguments _%e101730%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e101730%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101728%_)
                (macro-terminated-thread-exception-arguments _%exn101728%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn101728%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn101722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101722%_))
            (let ((_%e101725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101722%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e101725%_)
                  (macro-terminated-thread-exception-procedure _%e101725%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e101725%_ '())))))
            (if (macro-terminated-thread-exception? _%exn101722%_)
                (macro-terminated-thread-exception-procedure _%exn101722%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn101722%_ '())))))))
    (define type-exception?
      (lambda (_%exn101718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101718%_))
            (let ((_%e101720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101718%_ 'exception))))
              (macro-type-exception? _%e101720%_))
            (macro-type-exception? _%exn101718%_))))
    (define type-exception-arg-id
      (lambda (_%exn101714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101714%_))
            (let ((_%e101716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101714%_ 'exception))))
              (if (macro-type-exception? _%e101716%_)
                  (macro-type-exception-arg-id _%e101716%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e101716%_ '())))))
            (if (macro-type-exception? _%exn101714%_)
                (macro-type-exception-arg-id _%exn101714%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn101714%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn101710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101710%_))
            (let ((_%e101712%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101710%_ 'exception))))
              (if (macro-type-exception? _%e101712%_)
                  (macro-type-exception-arguments _%e101712%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e101712%_ '())))))
            (if (macro-type-exception? _%exn101710%_)
                (macro-type-exception-arguments _%exn101710%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn101710%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn101706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101706%_))
            (let ((_%e101708%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101706%_ 'exception))))
              (if (macro-type-exception? _%e101708%_)
                  (macro-type-exception-procedure _%e101708%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e101708%_ '())))))
            (if (macro-type-exception? _%exn101706%_)
                (macro-type-exception-procedure _%exn101706%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn101706%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn101700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101700%_))
            (let ((_%e101703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101700%_ 'exception))))
              (if (macro-type-exception? _%e101703%_)
                  (macro-type-exception-type-id _%e101703%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e101703%_ '())))))
            (if (macro-type-exception? _%exn101700%_)
                (macro-type-exception-type-id _%exn101700%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn101700%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn101696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101696%_))
            (let ((_%e101698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101696%_ 'exception))))
              (macro-unbound-global-exception? _%e101698%_))
            (macro-unbound-global-exception? _%exn101696%_))))
    (define unbound-global-exception-code
      (lambda (_%exn101692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101692%_))
            (let ((_%e101694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101692%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101694%_)
                  (macro-unbound-global-exception-code _%e101694%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e101694%_ '())))))
            (if (macro-unbound-global-exception? _%exn101692%_)
                (macro-unbound-global-exception-code _%exn101692%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn101692%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn101688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101688%_))
            (let ((_%e101690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101688%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101690%_)
                  (macro-unbound-global-exception-rte _%e101690%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e101690%_ '())))))
            (if (macro-unbound-global-exception? _%exn101688%_)
                (macro-unbound-global-exception-rte _%exn101688%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn101688%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn101682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101682%_))
            (let ((_%e101685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101682%_ 'exception))))
              (if (macro-unbound-global-exception? _%e101685%_)
                  (macro-unbound-global-exception-variable _%e101685%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e101685%_ '())))))
            (if (macro-unbound-global-exception? _%exn101682%_)
                (macro-unbound-global-exception-variable _%exn101682%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn101682%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn101678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101678%_))
            (let ((_%e101680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101678%_ 'exception))))
              (macro-unbound-key-exception? _%e101680%_))
            (macro-unbound-key-exception? _%exn101678%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn101674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101674%_))
            (let ((_%e101676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101674%_ 'exception))))
              (if (macro-unbound-key-exception? _%e101676%_)
                  (macro-unbound-key-exception-arguments _%e101676%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e101676%_ '())))))
            (if (macro-unbound-key-exception? _%exn101674%_)
                (macro-unbound-key-exception-arguments _%exn101674%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn101674%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn101668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101668%_))
            (let ((_%e101671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101668%_ 'exception))))
              (if (macro-unbound-key-exception? _%e101671%_)
                  (macro-unbound-key-exception-procedure _%e101671%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e101671%_ '())))))
            (if (macro-unbound-key-exception? _%exn101668%_)
                (macro-unbound-key-exception-procedure _%exn101668%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn101668%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn101664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101664%_))
            (let ((_%e101666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101664%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e101666%_))
            (macro-unbound-os-environment-variable-exception? _%exn101664%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn101660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101660%_))
            (let ((_%e101662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101660%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e101662%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e101662%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e101662%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn101660%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn101660%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn101660%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn101654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101654%_))
            (let ((_%e101657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101654%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e101657%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e101657%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e101657%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn101654%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn101654%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn101654%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn101650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101650%_))
            (let ((_%e101652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101650%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e101652%_))
            (macro-unbound-serial-number-exception? _%exn101650%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn101646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101646%_))
            (let ((_%e101648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101646%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e101648%_)
                  (macro-unbound-serial-number-exception-arguments _%e101648%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e101648%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn101646%_)
                (macro-unbound-serial-number-exception-arguments _%exn101646%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn101646%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn101640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101640%_))
            (let ((_%e101643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101640%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e101643%_)
                  (macro-unbound-serial-number-exception-procedure _%e101643%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e101643%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn101640%_)
                (macro-unbound-serial-number-exception-procedure _%exn101640%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn101640%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn101636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101636%_))
            (let ((_%e101638%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101636%_ 'exception))))
              (macro-uncaught-exception? _%e101638%_))
            (macro-uncaught-exception? _%exn101636%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn101632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101632%_))
            (let ((_%e101634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101632%_ 'exception))))
              (if (macro-uncaught-exception? _%e101634%_)
                  (macro-uncaught-exception-arguments _%e101634%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e101634%_ '())))))
            (if (macro-uncaught-exception? _%exn101632%_)
                (macro-uncaught-exception-arguments _%exn101632%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn101632%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn101628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101628%_))
            (let ((_%e101630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101628%_ 'exception))))
              (if (macro-uncaught-exception? _%e101630%_)
                  (macro-uncaught-exception-procedure _%e101630%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e101630%_ '())))))
            (if (macro-uncaught-exception? _%exn101628%_)
                (macro-uncaught-exception-procedure _%exn101628%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn101628%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn101622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101622%_))
            (let ((_%e101625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101622%_ 'exception))))
              (if (macro-uncaught-exception? _%e101625%_)
                  (macro-uncaught-exception-reason _%e101625%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e101625%_ '())))))
            (if (macro-uncaught-exception? _%exn101622%_)
                (macro-uncaught-exception-reason _%exn101622%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn101622%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn101618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101618%_))
            (let ((_%e101620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101618%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e101620%_))
            (macro-uninitialized-thread-exception? _%exn101618%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn101614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101614%_))
            (let ((_%e101616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101614%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e101616%_)
                  (macro-uninitialized-thread-exception-arguments _%e101616%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e101616%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn101614%_)
                (macro-uninitialized-thread-exception-arguments _%exn101614%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn101614%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn101608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101608%_))
            (let ((_%e101611%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101608%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e101611%_)
                  (macro-uninitialized-thread-exception-procedure _%e101611%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e101611%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn101608%_)
                (macro-uninitialized-thread-exception-procedure _%exn101608%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn101608%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn101604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101604%_))
            (let ((_%e101606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101604%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e101606%_))
            (macro-unknown-keyword-argument-exception? _%exn101604%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn101600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101600%_))
            (let ((_%e101602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101600%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e101602%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e101602%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e101602%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn101600%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn101600%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn101600%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn101594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101594%_))
            (let ((_%e101597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101594%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e101597%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e101597%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e101597%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn101594%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn101594%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn101594%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn101590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101590%_))
            (let ((_%e101592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101590%_ 'exception))))
              (macro-unterminated-process-exception? _%e101592%_))
            (macro-unterminated-process-exception? _%exn101590%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn101586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101586%_))
            (let ((_%e101588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101586%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e101588%_)
                  (macro-unterminated-process-exception-arguments _%e101588%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e101588%_ '())))))
            (if (macro-unterminated-process-exception? _%exn101586%_)
                (macro-unterminated-process-exception-arguments _%exn101586%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn101586%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn101580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101580%_))
            (let ((_%e101583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101580%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e101583%_)
                  (macro-unterminated-process-exception-procedure _%e101583%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e101583%_ '())))))
            (if (macro-unterminated-process-exception? _%exn101580%_)
                (macro-unterminated-process-exception-procedure _%exn101580%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn101580%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn101576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101576%_))
            (let ((_%e101578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101576%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e101578%_))
            (macro-wrong-number-of-arguments-exception? _%exn101576%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn101572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101572%_))
            (let ((_%e101574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101572%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e101574%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e101574%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e101574%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn101572%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn101572%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn101572%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn101566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101566%_))
            (let ((_%e101569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101566%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e101569%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e101569%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e101569%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn101566%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn101566%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn101566%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn101562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101562%_))
            (let ((_%e101564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101562%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e101564%_))
            (macro-wrong-number-of-values-exception? _%exn101562%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn101558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101558%_))
            (let ((_%e101560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101558%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e101560%_)
                  (macro-wrong-number-of-values-exception-code _%e101560%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e101560%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn101558%_)
                (macro-wrong-number-of-values-exception-code _%exn101558%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn101558%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn101554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101554%_))
            (let ((_%e101556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101554%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e101556%_)
                  (macro-wrong-number-of-values-exception-rte _%e101556%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e101556%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn101554%_)
                (macro-wrong-number-of-values-exception-rte _%exn101554%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn101554%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn101548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101548%_))
            (let ((_%e101551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101548%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e101551%_)
                  (macro-wrong-number-of-values-exception-vals _%e101551%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e101551%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn101548%_)
                (macro-wrong-number-of-values-exception-vals _%exn101548%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn101548%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn101542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn101542%_))
            (let ((_%e101545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn101542%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e101545%_))
            (macro-wrong-processor-c-return-exception? _%exn101542%_))))))
