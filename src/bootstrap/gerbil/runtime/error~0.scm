(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1742223872)
  (begin
    (define Exception::t
      (let ((__tmp104947 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104947
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104917%_
        (apply make-instance Exception::t _%$args104917%_)))
    (define StackTrace::t
      (let ((__tmp104948 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104948
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104914%_
        (apply make-instance StackTrace::t _%$args104914%_)))
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
      (let ((__tmp104949 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104949
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104911%_ (apply make-instance Error::t _%$args104911%_)))
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
      (let ((__tmp104950 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104950
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104908%_
        (apply make-instance ContractViolation::t _%$args104908%_)))
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
      (let ((__tmp104951 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104951
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104905%_
        (apply make-instance RuntimeException::t _%$args104905%_)))
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
      (lambda (_%exn104900%_ _%continue104901%_)
        (let ((_%exn104903%_ (wrap-runtime-exception _%exn104900%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104903%_ _%continue104901%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104896%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104896%_ 'continuation))
                '#!void
                (let ((__tmp104952
                       (lambda (_%cont104898%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104896%_
                            'continuation
                            _%cont104898%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104952)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104896%_))))
    (define error
      (lambda (_%message104893%_ . _%irritants104894%_)
        (raise (let ((__obj104944
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104944
                  _%message104893%_
                  'irritants:
                  _%irritants104894%_)
                 __obj104944))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104865%_
               _%ctx104860104866%_
               _%contract-expr104861104868%_
               _%value104862104870%_
               _%message104872%_)
        (let* ((_%ctx104874%_
                (if (eq? _%ctx104860104866%_ absent-value)
                    '#f
                    _%ctx104860104866%_))
               (_%contract-expr104876%_
                (if (eq? _%contract-expr104861104868%_ absent-value)
                    '#f
                    _%contract-expr104861104868%_))
               (_%value104878%_
                (if (eq? _%value104862104870%_ absent-value)
                    '#f
                    _%value104862104870%_)))
          (raise (let ((__obj104945
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104945
                    _%message104872%_
                    'where:
                    _%ctx104874%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104876%_
                                (cons 'value: (cons _%value104878%_ '())))))
                   __obj104945)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104883%_ . _%args104884%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104883%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104883%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104883%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104883%_
                  'value:
                  absent-value))
               _%args104884%_)))
    (define __raise-contract-violation-error
      (lambda _%args104863104890%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104863104890%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104834%_ _%thunk104835%_)
        (if (procedure? _%handler104834%_)
            (let ((_%handler104839%_ _%handler104834%_))
              (if (procedure? _%thunk104835%_)
                  (let ((_%thunk104849%_ _%thunk104835%_))
                    (__with-exception-handler
                     _%handler104839%_
                     _%thunk104849%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104835%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104834%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler104809%_ _%thunk104810%_)
        (let* ((_%handler104813%_ _%handler104809%_)
               (_%thunk104821%_ _%thunk104810%_)
               (__tmp104953
                (lambda (_%exn104830%_)
                  (let ((_%exn104832%_ (wrap-runtime-exception _%exn104830%_)))
                    (declare (not safe))
                    (_%handler104813%_ _%exn104832%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104953 _%thunk104821%_))))
    (define with-catch
      (lambda (_%handler104784%_ _%thunk104785%_)
        (if (procedure? _%handler104784%_)
            (let ((_%handler104789%_ _%handler104784%_))
              (if (procedure? _%thunk104785%_)
                  (let ((_%thunk104799%_ _%thunk104785%_))
                    (__with-catch _%handler104789%_ _%thunk104799%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104785%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler104784%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler104759%_ _%thunk104760%_)
        (let* ((_%handler104763%_ _%handler104759%_)
               (_%thunk104771%_ _%thunk104760%_)
               (__tmp104954
                (lambda (_%cont104780%_)
                  (__with-exception-handler
                   (lambda (_%exn104782%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont104780%_
                        _%handler104763%_
                        _%exn104782%_)))
                   _%thunk104771%_))))
          (declare (not safe))
          (##continuation-capture __tmp104954))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn104746%_)
        (if (or (heap-overflow-exception? _%exn104746%_)
                (stack-overflow-exception? _%exn104746%_))
            _%exn104746%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn104746%_))
                _%exn104746%_
                (if (macro-exception? _%exn104746%_)
                    (let ((_%rte104754%_
                           (let ((__obj104946
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104946
                                _%exn104746%_
                                '2
                                '#f
                                '#f))
                             __obj104946)))
                      (let ((__tmp104955
                             (lambda (_%cont104756%_)
                               (let ((__tmp104956
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont104756%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte104754%_
                                  'continuation
                                  __tmp104956)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104955))
                      _%rte104754%_)
                    _%exn104746%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj104741%_)
        (let ((_%$e104743%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj104741%_))))
          (if _%$e104743%_ _%$e104743%_ (error-exception? _%obj104741%_)))))
    (define error-message
      (lambda (_%obj104734%_)
        (let ((_%$e104736%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj104734%_ 'message false))))
          (if _%$e104736%_
              _%$e104736%_
              (if (error-exception? _%obj104734%_)
                  (error-exception-message _%obj104734%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj104729%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104729%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104729%_ 'irritants))
            (if (error-exception? _%obj104729%_)
                (error-exception-parameters _%obj104729%_)
                '#f))))
    (define error-trace
      (lambda (_%obj104727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104727%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104727%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e104708%_ _%port104709%_)
        (let ((_%$e104711%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e104708%_ 'display-exception))))
          (if _%$e104711%_
              ((lambda (_%f104714%_) (_%f104714%_ _%e104708%_ _%port104709%_))
               _%$e104711%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e104708%_ _%port104709%_))))))
    (define display-exception__0
      (lambda (_%e104720%_)
        (let ((_%port104722%_ (current-error-port)))
          (display-exception__% _%e104720%_ _%port104722%_))))
    (define display-exception
      (lambda _g104958_
        (let ((_g104957_ (let () (declare (not safe)) (##length _g104958_))))
          (cond ((let () (declare (not safe)) (##fx= _g104957_ 1))
                 (apply display-exception__0 _g104958_))
                ((let () (declare (not safe)) (##fx= _g104957_ 2))
                 (apply display-exception__% _g104958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104958_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self103077104684%_ _%message104686%_ . _%rest104687%_)
        (let* ((_%self104689%_ _%self103077104684%_)
               (_%self104691%_ _%self104689%_)
               (_%message104705%_
                (if (string? _%message104686%_)
                    _%message104686%_
                    (call-with-output-string
                     '""
                     (lambda (_%g104700104702%_)
                       (display _%message104686%_ _%g104700104702%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self104691%_ 'message _%message104705%_))
          (apply class-instance-init! _%self104691%_ _%rest104687%_))))
    (define Error:::init!::specialize
      (lambda (__klass104919 __method-table104920)
        (let ((__message104921
               (let ((__slot104922
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104919 'message))))
                 (if __slot104922
                     __slot104922
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103077104684%_ _%message104686%_ . _%rest104687%_)
            (let* ((_%self104689%_ _%self103077104684%_)
                   (_%self104691%_ _%self104689%_)
                   (_%message104705%_
                    (if (string? _%message104686%_)
                        _%message104686%_
                        (call-with-output-string
                         '""
                         (lambda (_%g104700104702%_)
                           (display _%message104686%_ _%g104700104702%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self104691%_
                 _%message104705%_
                 __message104921
                 '#f
                 '#f))
              (apply class-instance-init! _%self104691%_ _%rest104687%_))))))
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
      (lambda (_%self103078104406%_ _%port104408%_)
        (let* ((_%self104410%_ _%self103078104406%_)
               (_%self104412%_ _%self104410%_))
          (let ((_%tmp-port104422%_ (open-output-string))
                (_%display-error-newline104423%_
                 (> (output-port-column _%port104408%_) '0)))
            (fix-port-width! _%tmp-port104422%_)
            (let ((__tmp104959
                   (lambda ()
                     (if _%display-error-newline104423%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e104426%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104412%_ 'where))))
                       (if _%$e104426%_ (display _%$e104426%_) (display '"?")))
                     (let ((__tmp104960
                            (let ((__tmp104961
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self104412%_))))
                              (declare (not safe))
                              (##type-name __tmp104961))))
                       (declare (not safe))
                       (display* '" [" __tmp104960 '"]: "))
                     (let ((__tmp104962
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104412%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104962))
                     (let ((_%irritants104430%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104412%_ 'irritants))))
                       (if (null? _%irritants104430%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj104432%_)
                                (if (u8vector? _%obj104432%_)
                                    (let ((__tmp104963
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj104432%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104963))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj104432%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants104430%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont104433104435%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self104412%_
                                   'continuation))))
                           (if _%cont104433104435%_
                               (let ((_%cont104438%_ _%cont104433104435%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont104438%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104959
               current-output-port
               _%tmp-port104422%_))
            (let ((__tmp104964 (get-output-string _%tmp-port104422%_)))
              (declare (not safe))
              (##write-string __tmp104964 _%port104408%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104923 __method-table104924)
        (let ((__message104925
               (let ((__slot104929
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104923 'message))))
                 (if __slot104929
                     __slot104929
                     (error '"Unknown slot" 'message))))
              (__where104926
               (let ((__slot104930
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104923 'where))))
                 (if __slot104930
                     __slot104930
                     (error '"Unknown slot" 'where))))
              (__continuation104927
               (let ((__slot104931
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104923 'continuation))))
                 (if __slot104931
                     __slot104931
                     (error '"Unknown slot" 'continuation))))
              (__irritants104928
               (let ((__slot104932
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104923 'irritants))))
                 (if __slot104932
                     __slot104932
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self103078104406%_ _%port104408%_)
            (let* ((_%self104410%_ _%self103078104406%_)
                   (_%self104412%_ _%self104410%_))
              (let ((_%tmp-port104422%_ (open-output-string))
                    (_%display-error-newline104423%_
                     (> (output-port-column _%port104408%_) '0)))
                (fix-port-width! _%tmp-port104422%_)
                (let ((__tmp104965
                       (lambda ()
                         (if _%display-error-newline104423%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e104426%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104412%_
                                   __where104926
                                   '#f
                                   '#f))))
                           (if _%$e104426%_
                               (display _%$e104426%_)
                               (display '"?")))
                         (let ((__tmp104966
                                (let ((__tmp104967
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self104412%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104967))))
                           (declare (not safe))
                           (display* '" [" __tmp104966 '"]: "))
                         (let ((__tmp104968
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104412%_
                                   __message104925
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104968))
                         (let ((_%irritants104430%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104412%_
                                   __irritants104928
                                   '#f
                                   '#f))))
                           (if (null? _%irritants104430%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj104432%_)
                                    (if (u8vector? _%obj104432%_)
                                        (let ((__tmp104969
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj104432%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104969))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj104432%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants104430%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont104433104435%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self104412%_
                                       __continuation104927
                                       '#f
                                       '#f))))
                               (if _%cont104433104435%_
                                   (let ((_%cont104438%_ _%cont104433104435%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont104438%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104965
                   current-output-port
                   _%tmp-port104422%_))
                (let ((__tmp104970 (get-output-string _%tmp-port104422%_)))
                  (declare (not safe))
                  (##write-string __tmp104970 _%port104408%_))))))))
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
      (lambda (_%self103079104260%_ _%port104262%_)
        (let* ((_%self104264%_ _%self103079104260%_)
               (_%self104266%_ _%self104264%_)
               (_%tmp-port104276%_ (open-output-string)))
          (fix-port-width! _%tmp-port104276%_)
          (let ((__tmp104971
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self104266%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104971 _%tmp-port104276%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont104277104279%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self104266%_ 'continuation))))
                (if _%cont104277104279%_
                    (let ((_%cont104282%_ _%cont104277104279%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port104276%_)
                      (newline _%tmp-port104276%_)
                      (display-continuation-backtrace
                       _%cont104282%_
                       _%tmp-port104276%_))
                    '#f))
              '#!void)
          (let ((__tmp104972 (get-output-string _%tmp-port104276%_)))
            (declare (not safe))
            (##write-string __tmp104972 _%port104262%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104933 __method-table104934)
        (let ((__continuation104935
               (let ((__slot104937
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104933 'continuation))))
                 (if __slot104937
                     __slot104937
                     (error '"Unknown slot" 'continuation))))
              (__exception104936
               (let ((__slot104938
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104933 'exception))))
                 (if __slot104938
                     __slot104938
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self103079104260%_ _%port104262%_)
            (let* ((_%self104264%_ _%self103079104260%_)
                   (_%self104266%_ _%self104264%_)
                   (_%tmp-port104276%_ (open-output-string)))
              (fix-port-width! _%tmp-port104276%_)
              (let ((__tmp104973
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self104266%_
                        __exception104936
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104973 _%tmp-port104276%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont104277104279%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self104266%_
                            __continuation104935
                            '#f
                            '#f))))
                    (if _%cont104277104279%_
                        (let ((_%cont104282%_ _%cont104277104279%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port104276%_)
                          (newline _%tmp-port104276%_)
                          (display-continuation-backtrace
                           _%cont104282%_
                           _%tmp-port104276%_))
                        '#f))
                  '#!void)
              (let ((__tmp104974 (get-output-string _%tmp-port104276%_)))
                (declare (not safe))
                (##write-string __tmp104974 _%port104262%_)))))))
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
      (lambda (_%port104132%_)
        (if (macro-character-port? _%port104132%_)
            (let ((_%old-width104134%_
                   (macro-character-port-output-width _%port104132%_)))
              (macro-character-port-output-width-set!
               _%port104132%_
               (lambda (_%port104136%_) '256))
              _%old-width104134%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port104129%_ _%old-width104130%_)
        (if (macro-character-port? _%port104129%_)
            (macro-character-port-output-width-set!
             _%port104129%_
             _%old-width104130%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e104127%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e104127%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn104121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104121%_))
            (let ((_%e104124%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104121%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e104124%_))
            (macro-abandoned-mutex-exception? _%exn104121%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn104117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104117%_))
            (let ((_%e104119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104117%_ 'exception))))
              (macro-cfun-conversion-exception? _%e104119%_))
            (macro-cfun-conversion-exception? _%exn104117%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn104113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104113%_))
            (let ((_%e104115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104113%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104115%_)
                  (macro-cfun-conversion-exception-arguments _%e104115%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e104115%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104113%_)
                (macro-cfun-conversion-exception-arguments _%exn104113%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn104113%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn104109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104109%_))
            (let ((_%e104111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104109%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104111%_)
                  (macro-cfun-conversion-exception-code _%e104111%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e104111%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104109%_)
                (macro-cfun-conversion-exception-code _%exn104109%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn104109%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn104105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104105%_))
            (let ((_%e104107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104105%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104107%_)
                  (macro-cfun-conversion-exception-message _%e104107%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e104107%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104105%_)
                (macro-cfun-conversion-exception-message _%exn104105%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn104105%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn104099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104099%_))
            (let ((_%e104102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104099%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104102%_)
                  (macro-cfun-conversion-exception-procedure _%e104102%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e104102%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104099%_)
                (macro-cfun-conversion-exception-procedure _%exn104099%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn104099%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn104095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104095%_))
            (let ((_%e104097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104095%_ 'exception))))
              (macro-datum-parsing-exception? _%e104097%_))
            (macro-datum-parsing-exception? _%exn104095%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn104091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104091%_))
            (let ((_%e104093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104091%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104093%_)
                  (macro-datum-parsing-exception-kind _%e104093%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e104093%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104091%_)
                (macro-datum-parsing-exception-kind _%exn104091%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn104091%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn104087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104087%_))
            (let ((_%e104089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104087%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104089%_)
                  (macro-datum-parsing-exception-parameters _%e104089%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e104089%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104087%_)
                (macro-datum-parsing-exception-parameters _%exn104087%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn104087%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn104081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104081%_))
            (let ((_%e104084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104081%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104084%_)
                  (macro-datum-parsing-exception-readenv _%e104084%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e104084%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104081%_)
                (macro-datum-parsing-exception-readenv _%exn104081%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn104081%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn104075%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104075%_))
            (let ((_%e104078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104075%_ 'exception))))
              (macro-deadlock-exception? _%e104078%_))
            (macro-deadlock-exception? _%exn104075%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn104071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104071%_))
            (let ((_%e104073%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104071%_ 'exception))))
              (macro-divide-by-zero-exception? _%e104073%_))
            (macro-divide-by-zero-exception? _%exn104071%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn104067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104067%_))
            (let ((_%e104069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104067%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104069%_)
                  (macro-divide-by-zero-exception-arguments _%e104069%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e104069%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104067%_)
                (macro-divide-by-zero-exception-arguments _%exn104067%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn104067%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn104061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104061%_))
            (let ((_%e104064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104061%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104064%_)
                  (macro-divide-by-zero-exception-procedure _%e104064%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e104064%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104061%_)
                (macro-divide-by-zero-exception-procedure _%exn104061%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn104061%_ '())))))))
    (define error-exception?
      (lambda (_%exn104057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104057%_))
            (let ((_%e104059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104057%_ 'exception))))
              (macro-error-exception? _%e104059%_))
            (macro-error-exception? _%exn104057%_))))
    (define error-exception-message
      (lambda (_%exn104053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104053%_))
            (let ((_%e104055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104053%_ 'exception))))
              (if (macro-error-exception? _%e104055%_)
                  (macro-error-exception-message _%e104055%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e104055%_ '())))))
            (if (macro-error-exception? _%exn104053%_)
                (macro-error-exception-message _%exn104053%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn104053%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn104047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104047%_))
            (let ((_%e104050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104047%_ 'exception))))
              (if (macro-error-exception? _%e104050%_)
                  (macro-error-exception-parameters _%e104050%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e104050%_ '())))))
            (if (macro-error-exception? _%exn104047%_)
                (macro-error-exception-parameters _%exn104047%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn104047%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn104043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104043%_))
            (let ((_%e104045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104043%_ 'exception))))
              (macro-expression-parsing-exception? _%e104045%_))
            (macro-expression-parsing-exception? _%exn104043%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn104039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104039%_))
            (let ((_%e104041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104039%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104041%_)
                  (macro-expression-parsing-exception-kind _%e104041%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e104041%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104039%_)
                (macro-expression-parsing-exception-kind _%exn104039%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn104039%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn104035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104035%_))
            (let ((_%e104037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104035%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104037%_)
                  (macro-expression-parsing-exception-parameters _%e104037%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e104037%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104035%_)
                (macro-expression-parsing-exception-parameters _%exn104035%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn104035%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn104029%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104029%_))
            (let ((_%e104032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104029%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104032%_)
                  (macro-expression-parsing-exception-source _%e104032%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e104032%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104029%_)
                (macro-expression-parsing-exception-source _%exn104029%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn104029%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn104025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104025%_))
            (let ((_%e104027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104025%_ 'exception))))
              (macro-file-exists-exception? _%e104027%_))
            (macro-file-exists-exception? _%exn104025%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn104021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104021%_))
            (let ((_%e104023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104021%_ 'exception))))
              (if (macro-file-exists-exception? _%e104023%_)
                  (macro-file-exists-exception-arguments _%e104023%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e104023%_ '())))))
            (if (macro-file-exists-exception? _%exn104021%_)
                (macro-file-exists-exception-arguments _%exn104021%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn104021%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn104015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104015%_))
            (let ((_%e104018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104015%_ 'exception))))
              (if (macro-file-exists-exception? _%e104018%_)
                  (macro-file-exists-exception-procedure _%e104018%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e104018%_ '())))))
            (if (macro-file-exists-exception? _%exn104015%_)
                (macro-file-exists-exception-procedure _%exn104015%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn104015%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn104011%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104011%_))
            (let ((_%e104013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104011%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e104013%_))
            (macro-fixnum-overflow-exception? _%exn104011%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn104007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104007%_))
            (let ((_%e104009%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104007%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e104009%_)
                  (macro-fixnum-overflow-exception-arguments _%e104009%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e104009%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn104007%_)
                (macro-fixnum-overflow-exception-arguments _%exn104007%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn104007%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn104001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104001%_))
            (let ((_%e104004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104001%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e104004%_)
                  (macro-fixnum-overflow-exception-procedure _%e104004%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e104004%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn104001%_)
                (macro-fixnum-overflow-exception-procedure _%exn104001%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn104001%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn103995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103995%_))
            (let ((_%e103998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103995%_ 'exception))))
              (macro-heap-overflow-exception? _%e103998%_))
            (macro-heap-overflow-exception? _%exn103995%_))))
    (define inactive-thread-exception?
      (lambda (_%exn103991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103991%_))
            (let ((_%e103993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103991%_ 'exception))))
              (macro-inactive-thread-exception? _%e103993%_))
            (macro-inactive-thread-exception? _%exn103991%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn103987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103987%_))
            (let ((_%e103989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103987%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103989%_)
                  (macro-inactive-thread-exception-arguments _%e103989%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e103989%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103987%_)
                (macro-inactive-thread-exception-arguments _%exn103987%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn103987%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn103981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103981%_))
            (let ((_%e103984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103981%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103984%_)
                  (macro-inactive-thread-exception-procedure _%e103984%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e103984%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103981%_)
                (macro-inactive-thread-exception-procedure _%exn103981%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn103981%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103977%_))
            (let ((_%e103979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103977%_ 'exception))))
              (macro-initialized-thread-exception? _%e103979%_))
            (macro-initialized-thread-exception? _%exn103977%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103973%_))
            (let ((_%e103975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103973%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103975%_)
                  (macro-initialized-thread-exception-arguments _%e103975%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103975%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103973%_)
                (macro-initialized-thread-exception-arguments _%exn103973%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103973%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103967%_))
            (let ((_%e103970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103967%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103970%_)
                  (macro-initialized-thread-exception-procedure _%e103970%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103970%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103967%_)
                (macro-initialized-thread-exception-procedure _%exn103967%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103967%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103963%_))
            (let ((_%e103965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103963%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103965%_))
            (macro-invalid-hash-number-exception? _%exn103963%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103959%_))
            (let ((_%e103961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103959%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103961%_)
                  (macro-invalid-hash-number-exception-arguments _%e103961%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103961%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103959%_)
                (macro-invalid-hash-number-exception-arguments _%exn103959%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103959%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103953%_))
            (let ((_%e103956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103953%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103956%_)
                  (macro-invalid-hash-number-exception-procedure _%e103956%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103956%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103953%_)
                (macro-invalid-hash-number-exception-procedure _%exn103953%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103953%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103949%_))
            (let ((_%e103951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103949%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103951%_))
            (macro-invalid-utf8-encoding-exception? _%exn103949%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103945%_))
            (let ((_%e103947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103945%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103947%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103947%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103947%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103945%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103945%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103945%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103939%_))
            (let ((_%e103942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103939%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103942%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103942%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103942%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103939%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103939%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103939%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103935%_))
            (let ((_%e103937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103935%_ 'exception))))
              (macro-join-timeout-exception? _%e103937%_))
            (macro-join-timeout-exception? _%exn103935%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103931%_))
            (let ((_%e103933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103931%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103933%_)
                  (macro-join-timeout-exception-arguments _%e103933%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103933%_ '())))))
            (if (macro-join-timeout-exception? _%exn103931%_)
                (macro-join-timeout-exception-arguments _%exn103931%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103931%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103925%_))
            (let ((_%e103928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103925%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103928%_)
                  (macro-join-timeout-exception-procedure _%e103928%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103928%_ '())))))
            (if (macro-join-timeout-exception? _%exn103925%_)
                (macro-join-timeout-exception-procedure _%exn103925%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103925%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103921%_))
            (let ((_%e103923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103921%_ 'exception))))
              (macro-keyword-expected-exception? _%e103923%_))
            (macro-keyword-expected-exception? _%exn103921%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103917%_))
            (let ((_%e103919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103917%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103919%_)
                  (macro-keyword-expected-exception-arguments _%e103919%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103919%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103917%_)
                (macro-keyword-expected-exception-arguments _%exn103917%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103917%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103911%_))
            (let ((_%e103914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103911%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103914%_)
                  (macro-keyword-expected-exception-procedure _%e103914%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103914%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103911%_)
                (macro-keyword-expected-exception-procedure _%exn103911%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103911%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103907%_))
            (let ((_%e103909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103907%_ 'exception))))
              (macro-length-mismatch-exception? _%e103909%_))
            (macro-length-mismatch-exception? _%exn103907%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103903%_))
            (let ((_%e103905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103903%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103905%_)
                  (macro-length-mismatch-exception-arg-id _%e103905%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103905%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103903%_)
                (macro-length-mismatch-exception-arg-id _%exn103903%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103903%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103899%_))
            (let ((_%e103901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103899%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103901%_)
                  (macro-length-mismatch-exception-arguments _%e103901%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103901%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103899%_)
                (macro-length-mismatch-exception-arguments _%exn103899%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103899%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103893%_))
            (let ((_%e103896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103893%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103896%_)
                  (macro-length-mismatch-exception-procedure _%e103896%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103896%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103893%_)
                (macro-length-mismatch-exception-procedure _%exn103893%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103893%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103889%_))
            (let ((_%e103891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103889%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103891%_))
            (macro-mailbox-receive-timeout-exception? _%exn103889%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103885%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103885%_))
            (let ((_%e103887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103885%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103887%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103887%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103887%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103885%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103885%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103885%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103879%_))
            (let ((_%e103882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103879%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103882%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103882%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103882%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103879%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103879%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103879%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103875%_))
            (let ((_%e103877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103875%_ 'exception))))
              (macro-module-not-found-exception? _%e103877%_))
            (macro-module-not-found-exception? _%exn103875%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103871%_))
            (let ((_%e103873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103871%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103873%_)
                  (macro-module-not-found-exception-arguments _%e103873%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103873%_ '())))))
            (if (macro-module-not-found-exception? _%exn103871%_)
                (macro-module-not-found-exception-arguments _%exn103871%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103871%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103865%_))
            (let ((_%e103868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103865%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103868%_)
                  (macro-module-not-found-exception-procedure _%e103868%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103868%_ '())))))
            (if (macro-module-not-found-exception? _%exn103865%_)
                (macro-module-not-found-exception-procedure _%exn103865%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103865%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103859%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103859%_))
            (let ((_%e103862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103859%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103862%_))
            (macro-multiple-c-return-exception? _%exn103859%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103855%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103855%_))
            (let ((_%e103857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103855%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103857%_))
            (macro-no-such-file-or-directory-exception? _%exn103855%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103851%_))
            (let ((_%e103853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103851%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103853%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103853%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103853%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103851%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103851%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103851%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103845%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103845%_))
            (let ((_%e103848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103845%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103848%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103848%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103848%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103845%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103845%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103845%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103841%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103841%_))
            (let ((_%e103843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103841%_ 'exception))))
              (macro-noncontinuable-exception? _%e103843%_))
            (macro-noncontinuable-exception? _%exn103841%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103835%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103835%_))
            (let ((_%e103838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103835%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103838%_)
                  (macro-noncontinuable-exception-reason _%e103838%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103838%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103835%_)
                (macro-noncontinuable-exception-reason _%exn103835%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103835%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103831%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103831%_))
            (let ((_%e103833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103831%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103833%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103831%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103827%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103827%_))
            (let ((_%e103829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103827%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103829%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103829%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103829%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103827%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103827%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103827%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103821%_))
            (let ((_%e103824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103821%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103824%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103824%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103824%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103821%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103821%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103821%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103817%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103817%_))
            (let ((_%e103819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103817%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103819%_))
            (macro-nonprocedure-operator-exception? _%exn103817%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn103813%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103813%_))
            (let ((_%e103815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103813%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103815%_)
                  (macro-nonprocedure-operator-exception-arguments _%e103815%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e103815%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103813%_)
                (macro-nonprocedure-operator-exception-arguments _%exn103813%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn103813%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn103809%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103809%_))
            (let ((_%e103811%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103809%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103811%_)
                  (macro-nonprocedure-operator-exception-code _%e103811%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e103811%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103809%_)
                (macro-nonprocedure-operator-exception-code _%exn103809%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn103809%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn103805%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103805%_))
            (let ((_%e103807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103805%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103807%_)
                  (macro-nonprocedure-operator-exception-operator _%e103807%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e103807%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103805%_)
                (macro-nonprocedure-operator-exception-operator _%exn103805%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn103805%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn103799%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103799%_))
            (let ((_%e103802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103799%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103802%_)
                  (macro-nonprocedure-operator-exception-rte _%e103802%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e103802%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103799%_)
                (macro-nonprocedure-operator-exception-rte _%exn103799%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn103799%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn103795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103795%_))
            (let ((_%e103797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103795%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e103797%_))
            (macro-not-in-compilation-context-exception? _%exn103795%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn103791%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103791%_))
            (let ((_%e103793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103791%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103793%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e103793%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e103793%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103791%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn103791%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn103791%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn103785%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103785%_))
            (let ((_%e103788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103785%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103788%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e103788%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e103788%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103785%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn103785%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn103785%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn103781%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103781%_))
            (let ((_%e103783%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103781%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e103783%_))
            (macro-number-of-arguments-limit-exception? _%exn103781%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn103777%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103777%_))
            (let ((_%e103779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103777%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103779%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e103779%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e103779%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103777%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn103777%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn103777%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn103771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103771%_))
            (let ((_%e103774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103771%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103774%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e103774%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e103774%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103771%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn103771%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn103771%_ '())))))))
    (define os-exception?
      (lambda (_%exn103767%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103767%_))
            (let ((_%e103769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103767%_ 'exception))))
              (macro-os-exception? _%e103769%_))
            (macro-os-exception? _%exn103767%_))))
    (define os-exception-arguments
      (lambda (_%exn103763%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103763%_))
            (let ((_%e103765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103763%_ 'exception))))
              (if (macro-os-exception? _%e103765%_)
                  (macro-os-exception-arguments _%e103765%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e103765%_ '())))))
            (if (macro-os-exception? _%exn103763%_)
                (macro-os-exception-arguments _%exn103763%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn103763%_ '())))))))
    (define os-exception-code
      (lambda (_%exn103759%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103759%_))
            (let ((_%e103761%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103759%_ 'exception))))
              (if (macro-os-exception? _%e103761%_)
                  (macro-os-exception-code _%e103761%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e103761%_ '())))))
            (if (macro-os-exception? _%exn103759%_)
                (macro-os-exception-code _%exn103759%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn103759%_ '())))))))
    (define os-exception-message
      (lambda (_%exn103755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103755%_))
            (let ((_%e103757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103755%_ 'exception))))
              (if (macro-os-exception? _%e103757%_)
                  (macro-os-exception-message _%e103757%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e103757%_ '())))))
            (if (macro-os-exception? _%exn103755%_)
                (macro-os-exception-message _%exn103755%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn103755%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn103749%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103749%_))
            (let ((_%e103752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103749%_ 'exception))))
              (if (macro-os-exception? _%e103752%_)
                  (macro-os-exception-procedure _%e103752%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e103752%_ '())))))
            (if (macro-os-exception? _%exn103749%_)
                (macro-os-exception-procedure _%exn103749%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn103749%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn103745%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103745%_))
            (let ((_%e103747%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103745%_ 'exception))))
              (macro-permission-denied-exception? _%e103747%_))
            (macro-permission-denied-exception? _%exn103745%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn103741%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103741%_))
            (let ((_%e103743%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103741%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103743%_)
                  (macro-permission-denied-exception-arguments _%e103743%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e103743%_ '())))))
            (if (macro-permission-denied-exception? _%exn103741%_)
                (macro-permission-denied-exception-arguments _%exn103741%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn103741%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn103735%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103735%_))
            (let ((_%e103738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103735%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103738%_)
                  (macro-permission-denied-exception-procedure _%e103738%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e103738%_ '())))))
            (if (macro-permission-denied-exception? _%exn103735%_)
                (macro-permission-denied-exception-procedure _%exn103735%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn103735%_ '())))))))
    (define range-exception?
      (lambda (_%exn103731%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103731%_))
            (let ((_%e103733%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103731%_ 'exception))))
              (macro-range-exception? _%e103733%_))
            (macro-range-exception? _%exn103731%_))))
    (define range-exception-arg-id
      (lambda (_%exn103727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103727%_))
            (let ((_%e103729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103727%_ 'exception))))
              (if (macro-range-exception? _%e103729%_)
                  (macro-range-exception-arg-id _%e103729%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e103729%_ '())))))
            (if (macro-range-exception? _%exn103727%_)
                (macro-range-exception-arg-id _%exn103727%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn103727%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn103723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103723%_))
            (let ((_%e103725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103723%_ 'exception))))
              (if (macro-range-exception? _%e103725%_)
                  (macro-range-exception-arguments _%e103725%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e103725%_ '())))))
            (if (macro-range-exception? _%exn103723%_)
                (macro-range-exception-arguments _%exn103723%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn103723%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn103717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103717%_))
            (let ((_%e103720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103717%_ 'exception))))
              (if (macro-range-exception? _%e103720%_)
                  (macro-range-exception-procedure _%e103720%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e103720%_ '())))))
            (if (macro-range-exception? _%exn103717%_)
                (macro-range-exception-procedure _%exn103717%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn103717%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn103713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103713%_))
            (let ((_%e103715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103713%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e103715%_))
            (macro-rpc-remote-error-exception? _%exn103713%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn103709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103709%_))
            (let ((_%e103711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103709%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103711%_)
                  (macro-rpc-remote-error-exception-arguments _%e103711%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e103711%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103709%_)
                (macro-rpc-remote-error-exception-arguments _%exn103709%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn103709%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn103705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103705%_))
            (let ((_%e103707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103705%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103707%_)
                  (macro-rpc-remote-error-exception-message _%e103707%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e103707%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103705%_)
                (macro-rpc-remote-error-exception-message _%exn103705%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn103705%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn103699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103699%_))
            (let ((_%e103702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103699%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103702%_)
                  (macro-rpc-remote-error-exception-procedure _%e103702%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e103702%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103699%_)
                (macro-rpc-remote-error-exception-procedure _%exn103699%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn103699%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn103695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103695%_))
            (let ((_%e103697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103695%_ 'exception))))
              (macro-scheduler-exception? _%e103697%_))
            (macro-scheduler-exception? _%exn103695%_))))
    (define scheduler-exception-reason
      (lambda (_%exn103689%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103689%_))
            (let ((_%e103692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103689%_ 'exception))))
              (if (macro-scheduler-exception? _%e103692%_)
                  (macro-scheduler-exception-reason _%e103692%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e103692%_ '())))))
            (if (macro-scheduler-exception? _%exn103689%_)
                (macro-scheduler-exception-reason _%exn103689%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn103689%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn103685%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103685%_))
            (let ((_%e103687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103685%_ 'exception))))
              (macro-sfun-conversion-exception? _%e103687%_))
            (macro-sfun-conversion-exception? _%exn103685%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn103681%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103681%_))
            (let ((_%e103683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103681%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103683%_)
                  (macro-sfun-conversion-exception-arguments _%e103683%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e103683%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103681%_)
                (macro-sfun-conversion-exception-arguments _%exn103681%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn103681%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn103677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103677%_))
            (let ((_%e103679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103677%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103679%_)
                  (macro-sfun-conversion-exception-code _%e103679%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e103679%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103677%_)
                (macro-sfun-conversion-exception-code _%exn103677%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn103677%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn103673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103673%_))
            (let ((_%e103675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103673%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103675%_)
                  (macro-sfun-conversion-exception-message _%e103675%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e103675%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103673%_)
                (macro-sfun-conversion-exception-message _%exn103673%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn103673%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn103667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103667%_))
            (let ((_%e103670%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103667%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103670%_)
                  (macro-sfun-conversion-exception-procedure _%e103670%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e103670%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103667%_)
                (macro-sfun-conversion-exception-procedure _%exn103667%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn103667%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn103661%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103661%_))
            (let ((_%e103664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103661%_ 'exception))))
              (macro-stack-overflow-exception? _%e103664%_))
            (macro-stack-overflow-exception? _%exn103661%_))))
    (define started-thread-exception?
      (lambda (_%exn103657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103657%_))
            (let ((_%e103659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103657%_ 'exception))))
              (macro-started-thread-exception? _%e103659%_))
            (macro-started-thread-exception? _%exn103657%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn103653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103653%_))
            (let ((_%e103655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103653%_ 'exception))))
              (if (macro-started-thread-exception? _%e103655%_)
                  (macro-started-thread-exception-arguments _%e103655%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e103655%_ '())))))
            (if (macro-started-thread-exception? _%exn103653%_)
                (macro-started-thread-exception-arguments _%exn103653%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn103653%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn103647%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103647%_))
            (let ((_%e103650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103647%_ 'exception))))
              (if (macro-started-thread-exception? _%e103650%_)
                  (macro-started-thread-exception-procedure _%e103650%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e103650%_ '())))))
            (if (macro-started-thread-exception? _%exn103647%_)
                (macro-started-thread-exception-procedure _%exn103647%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn103647%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn103643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103643%_))
            (let ((_%e103645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103643%_ 'exception))))
              (macro-terminated-thread-exception? _%e103645%_))
            (macro-terminated-thread-exception? _%exn103643%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn103639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103639%_))
            (let ((_%e103641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103639%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103641%_)
                  (macro-terminated-thread-exception-arguments _%e103641%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e103641%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103639%_)
                (macro-terminated-thread-exception-arguments _%exn103639%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn103639%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn103633%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103633%_))
            (let ((_%e103636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103633%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103636%_)
                  (macro-terminated-thread-exception-procedure _%e103636%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e103636%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103633%_)
                (macro-terminated-thread-exception-procedure _%exn103633%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn103633%_ '())))))))
    (define type-exception?
      (lambda (_%exn103629%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103629%_))
            (let ((_%e103631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103629%_ 'exception))))
              (macro-type-exception? _%e103631%_))
            (macro-type-exception? _%exn103629%_))))
    (define type-exception-arg-id
      (lambda (_%exn103625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103625%_))
            (let ((_%e103627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103625%_ 'exception))))
              (if (macro-type-exception? _%e103627%_)
                  (macro-type-exception-arg-id _%e103627%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e103627%_ '())))))
            (if (macro-type-exception? _%exn103625%_)
                (macro-type-exception-arg-id _%exn103625%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn103625%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn103621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103621%_))
            (let ((_%e103623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103621%_ 'exception))))
              (if (macro-type-exception? _%e103623%_)
                  (macro-type-exception-arguments _%e103623%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e103623%_ '())))))
            (if (macro-type-exception? _%exn103621%_)
                (macro-type-exception-arguments _%exn103621%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn103621%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn103617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103617%_))
            (let ((_%e103619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103617%_ 'exception))))
              (if (macro-type-exception? _%e103619%_)
                  (macro-type-exception-procedure _%e103619%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e103619%_ '())))))
            (if (macro-type-exception? _%exn103617%_)
                (macro-type-exception-procedure _%exn103617%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn103617%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn103611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103611%_))
            (let ((_%e103614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103611%_ 'exception))))
              (if (macro-type-exception? _%e103614%_)
                  (macro-type-exception-type-id _%e103614%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e103614%_ '())))))
            (if (macro-type-exception? _%exn103611%_)
                (macro-type-exception-type-id _%exn103611%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn103611%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn103607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103607%_))
            (let ((_%e103609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103607%_ 'exception))))
              (macro-unbound-global-exception? _%e103609%_))
            (macro-unbound-global-exception? _%exn103607%_))))
    (define unbound-global-exception-code
      (lambda (_%exn103603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103603%_))
            (let ((_%e103605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103603%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103605%_)
                  (macro-unbound-global-exception-code _%e103605%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e103605%_ '())))))
            (if (macro-unbound-global-exception? _%exn103603%_)
                (macro-unbound-global-exception-code _%exn103603%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn103603%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn103599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103599%_))
            (let ((_%e103601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103599%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103601%_)
                  (macro-unbound-global-exception-rte _%e103601%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e103601%_ '())))))
            (if (macro-unbound-global-exception? _%exn103599%_)
                (macro-unbound-global-exception-rte _%exn103599%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn103599%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn103593%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103593%_))
            (let ((_%e103596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103593%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103596%_)
                  (macro-unbound-global-exception-variable _%e103596%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e103596%_ '())))))
            (if (macro-unbound-global-exception? _%exn103593%_)
                (macro-unbound-global-exception-variable _%exn103593%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn103593%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn103589%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103589%_))
            (let ((_%e103591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103589%_ 'exception))))
              (macro-unbound-key-exception? _%e103591%_))
            (macro-unbound-key-exception? _%exn103589%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn103585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103585%_))
            (let ((_%e103587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103585%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103587%_)
                  (macro-unbound-key-exception-arguments _%e103587%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e103587%_ '())))))
            (if (macro-unbound-key-exception? _%exn103585%_)
                (macro-unbound-key-exception-arguments _%exn103585%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn103585%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn103579%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103579%_))
            (let ((_%e103582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103579%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103582%_)
                  (macro-unbound-key-exception-procedure _%e103582%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e103582%_ '())))))
            (if (macro-unbound-key-exception? _%exn103579%_)
                (macro-unbound-key-exception-procedure _%exn103579%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn103579%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn103575%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103575%_))
            (let ((_%e103577%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103575%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e103577%_))
            (macro-unbound-os-environment-variable-exception? _%exn103575%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn103571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103571%_))
            (let ((_%e103573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103571%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103573%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e103573%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e103573%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103571%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn103571%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn103571%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn103565%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103565%_))
            (let ((_%e103568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103565%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103568%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e103568%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e103568%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103565%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn103565%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn103565%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn103561%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103561%_))
            (let ((_%e103563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103561%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e103563%_))
            (macro-unbound-serial-number-exception? _%exn103561%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn103557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103557%_))
            (let ((_%e103559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103557%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103559%_)
                  (macro-unbound-serial-number-exception-arguments _%e103559%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e103559%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103557%_)
                (macro-unbound-serial-number-exception-arguments _%exn103557%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn103557%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn103551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103551%_))
            (let ((_%e103554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103551%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103554%_)
                  (macro-unbound-serial-number-exception-procedure _%e103554%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e103554%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103551%_)
                (macro-unbound-serial-number-exception-procedure _%exn103551%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn103551%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn103547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103547%_))
            (let ((_%e103549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103547%_ 'exception))))
              (macro-uncaught-exception? _%e103549%_))
            (macro-uncaught-exception? _%exn103547%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn103543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103543%_))
            (let ((_%e103545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103543%_ 'exception))))
              (if (macro-uncaught-exception? _%e103545%_)
                  (macro-uncaught-exception-arguments _%e103545%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e103545%_ '())))))
            (if (macro-uncaught-exception? _%exn103543%_)
                (macro-uncaught-exception-arguments _%exn103543%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn103543%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn103539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103539%_))
            (let ((_%e103541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103539%_ 'exception))))
              (if (macro-uncaught-exception? _%e103541%_)
                  (macro-uncaught-exception-procedure _%e103541%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e103541%_ '())))))
            (if (macro-uncaught-exception? _%exn103539%_)
                (macro-uncaught-exception-procedure _%exn103539%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn103539%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn103533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103533%_))
            (let ((_%e103536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103533%_ 'exception))))
              (if (macro-uncaught-exception? _%e103536%_)
                  (macro-uncaught-exception-reason _%e103536%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e103536%_ '())))))
            (if (macro-uncaught-exception? _%exn103533%_)
                (macro-uncaught-exception-reason _%exn103533%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn103533%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn103529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103529%_))
            (let ((_%e103531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103529%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e103531%_))
            (macro-uninitialized-thread-exception? _%exn103529%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn103525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103525%_))
            (let ((_%e103527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103525%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103527%_)
                  (macro-uninitialized-thread-exception-arguments _%e103527%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e103527%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103525%_)
                (macro-uninitialized-thread-exception-arguments _%exn103525%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn103525%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn103519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103519%_))
            (let ((_%e103522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103519%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103522%_)
                  (macro-uninitialized-thread-exception-procedure _%e103522%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e103522%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103519%_)
                (macro-uninitialized-thread-exception-procedure _%exn103519%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn103519%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn103515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103515%_))
            (let ((_%e103517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103515%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e103517%_))
            (macro-unknown-keyword-argument-exception? _%exn103515%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn103511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103511%_))
            (let ((_%e103513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103511%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103513%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e103513%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e103513%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103511%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn103511%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn103511%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn103505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103505%_))
            (let ((_%e103508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103505%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103508%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e103508%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e103508%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103505%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn103505%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn103505%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn103501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103501%_))
            (let ((_%e103503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103501%_ 'exception))))
              (macro-unterminated-process-exception? _%e103503%_))
            (macro-unterminated-process-exception? _%exn103501%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn103497%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103497%_))
            (let ((_%e103499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103497%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103499%_)
                  (macro-unterminated-process-exception-arguments _%e103499%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e103499%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103497%_)
                (macro-unterminated-process-exception-arguments _%exn103497%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn103497%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn103491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103491%_))
            (let ((_%e103494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103491%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103494%_)
                  (macro-unterminated-process-exception-procedure _%e103494%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e103494%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103491%_)
                (macro-unterminated-process-exception-procedure _%exn103491%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn103491%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn103487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103487%_))
            (let ((_%e103489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103487%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e103489%_))
            (macro-wrong-number-of-arguments-exception? _%exn103487%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn103483%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103483%_))
            (let ((_%e103485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103483%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103485%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e103485%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e103485%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103483%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn103483%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn103483%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn103477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103477%_))
            (let ((_%e103480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103477%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103480%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e103480%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e103480%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103477%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn103477%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn103477%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn103473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103473%_))
            (let ((_%e103475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103473%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e103475%_))
            (macro-wrong-number-of-values-exception? _%exn103473%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn103469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103469%_))
            (let ((_%e103471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103469%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103471%_)
                  (macro-wrong-number-of-values-exception-code _%e103471%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e103471%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103469%_)
                (macro-wrong-number-of-values-exception-code _%exn103469%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn103469%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn103465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103465%_))
            (let ((_%e103467%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103465%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103467%_)
                  (macro-wrong-number-of-values-exception-rte _%e103467%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e103467%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103465%_)
                (macro-wrong-number-of-values-exception-rte _%exn103465%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn103465%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn103459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103459%_))
            (let ((_%e103462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103459%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103462%_)
                  (macro-wrong-number-of-values-exception-vals _%e103462%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e103462%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103459%_)
                (macro-wrong-number-of-values-exception-vals _%exn103459%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn103459%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn103453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103453%_))
            (let ((_%e103456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103453%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e103456%_))
            (macro-wrong-processor-c-return-exception? _%exn103453%_))))))
