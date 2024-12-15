(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1734280445)
  (begin
    (define Exception::t
      (let ((__tmp104914 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104914
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104884%_
        (apply make-instance Exception::t _%$args104884%_)))
    (define StackTrace::t
      (let ((__tmp104915 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104915
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104881%_
        (apply make-instance StackTrace::t _%$args104881%_)))
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
      (let ((__tmp104916 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104916
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104878%_ (apply make-instance Error::t _%$args104878%_)))
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
      (let ((__tmp104917 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104917
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104875%_
        (apply make-instance ContractViolation::t _%$args104875%_)))
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
      (let ((__tmp104918 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104918
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104872%_
        (apply make-instance RuntimeException::t _%$args104872%_)))
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
      (lambda (_%exn104867%_ _%continue104868%_)
        (let ((_%exn104870%_ (wrap-runtime-exception _%exn104867%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104870%_ _%continue104868%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104863%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104863%_ 'continuation))
                '#!void
                (let ((__tmp104919
                       (lambda (_%cont104865%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104863%_
                            'continuation
                            _%cont104865%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104919)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104863%_))))
    (define error
      (lambda (_%message104860%_ . _%irritants104861%_)
        (raise (let ((__obj104911
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104911
                  _%message104860%_
                  'irritants:
                  _%irritants104861%_)
                 __obj104911))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104832%_
               _%ctx104827104833%_
               _%contract-expr104828104835%_
               _%value104829104837%_
               _%message104839%_)
        (let* ((_%ctx104841%_
                (if (eq? _%ctx104827104833%_ absent-value)
                    '#f
                    _%ctx104827104833%_))
               (_%contract-expr104843%_
                (if (eq? _%contract-expr104828104835%_ absent-value)
                    '#f
                    _%contract-expr104828104835%_))
               (_%value104845%_
                (if (eq? _%value104829104837%_ absent-value)
                    '#f
                    _%value104829104837%_)))
          (raise (let ((__obj104912
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104912
                    _%message104839%_
                    'where:
                    _%ctx104841%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104843%_
                                (cons 'value: (cons _%value104845%_ '())))))
                   __obj104912)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104850%_ . _%args104851%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104850%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104850%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104850%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104850%_
                  'value:
                  absent-value))
               _%args104851%_)))
    (define __raise-contract-violation-error
      (lambda _%args104830104857%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104830104857%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104801%_ _%thunk104802%_)
        (if (procedure? _%handler104801%_)
            (let ((_%handler104806%_ _%handler104801%_))
              (if (procedure? _%thunk104802%_)
                  (let ((_%thunk104816%_ _%thunk104802%_))
                    (__with-exception-handler
                     _%handler104806%_
                     _%thunk104816%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104802%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104801%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler104776%_ _%thunk104777%_)
        (let* ((_%handler104780%_ _%handler104776%_)
               (_%thunk104788%_ _%thunk104777%_)
               (__tmp104920
                (lambda (_%exn104797%_)
                  (let ((_%exn104799%_ (wrap-runtime-exception _%exn104797%_)))
                    (declare (not safe))
                    (_%handler104780%_ _%exn104799%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104920 _%thunk104788%_))))
    (define with-catch
      (lambda (_%handler104751%_ _%thunk104752%_)
        (if (procedure? _%handler104751%_)
            (let ((_%handler104756%_ _%handler104751%_))
              (if (procedure? _%thunk104752%_)
                  (let ((_%thunk104766%_ _%thunk104752%_))
                    (__with-catch _%handler104756%_ _%thunk104766%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104752%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler104751%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler104726%_ _%thunk104727%_)
        (let* ((_%handler104730%_ _%handler104726%_)
               (_%thunk104738%_ _%thunk104727%_)
               (__tmp104921
                (lambda (_%cont104747%_)
                  (__with-exception-handler
                   (lambda (_%exn104749%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont104747%_
                        _%handler104730%_
                        _%exn104749%_)))
                   _%thunk104738%_))))
          (declare (not safe))
          (##continuation-capture __tmp104921))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn104713%_)
        (if (or (heap-overflow-exception? _%exn104713%_)
                (stack-overflow-exception? _%exn104713%_))
            _%exn104713%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn104713%_))
                _%exn104713%_
                (if (macro-exception? _%exn104713%_)
                    (let ((_%rte104721%_
                           (let ((__obj104913
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104913
                                _%exn104713%_
                                '2
                                '#f
                                '#f))
                             __obj104913)))
                      (let ((__tmp104922
                             (lambda (_%cont104723%_)
                               (let ((__tmp104923
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont104723%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte104721%_
                                  'continuation
                                  __tmp104923)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104922))
                      _%rte104721%_)
                    _%exn104713%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj104708%_)
        (let ((_%$e104710%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj104708%_))))
          (if _%$e104710%_ _%$e104710%_ (error-exception? _%obj104708%_)))))
    (define error-message
      (lambda (_%obj104701%_)
        (let ((_%$e104703%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj104701%_ 'message false))))
          (if _%$e104703%_
              _%$e104703%_
              (if (error-exception? _%obj104701%_)
                  (error-exception-message _%obj104701%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj104696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104696%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104696%_ 'irritants))
            (if (error-exception? _%obj104696%_)
                (error-exception-parameters _%obj104696%_)
                '#f))))
    (define error-trace
      (lambda (_%obj104694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104694%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104694%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e104675%_ _%port104676%_)
        (let ((_%$e104678%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e104675%_ 'display-exception))))
          (if _%$e104678%_
              ((lambda (_%f104681%_) (_%f104681%_ _%e104675%_ _%port104676%_))
               _%$e104678%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e104675%_ _%port104676%_))))))
    (define display-exception__0
      (lambda (_%e104687%_)
        (let ((_%port104689%_ (current-error-port)))
          (display-exception__% _%e104687%_ _%port104689%_))))
    (define display-exception
      (lambda _g104925_
        (let ((_g104924_ (let () (declare (not safe)) (##length _g104925_))))
          (cond ((let () (declare (not safe)) (##fx= _g104924_ 1))
                 (apply display-exception__0 _g104925_))
                ((let () (declare (not safe)) (##fx= _g104924_ 2))
                 (apply display-exception__% _g104925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104925_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self103044104651%_ _%message104653%_ . _%rest104654%_)
        (let* ((_%self104656%_ _%self103044104651%_)
               (_%self104658%_ _%self104656%_)
               (_%message104672%_
                (if (string? _%message104653%_)
                    _%message104653%_
                    (call-with-output-string
                     '""
                     (lambda (_%g104667104669%_)
                       (display _%message104653%_ _%g104667104669%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self104658%_ 'message _%message104672%_))
          (apply class-instance-init! _%self104658%_ _%rest104654%_))))
    (define Error:::init!::specialize
      (lambda (__klass104886 __method-table104887)
        (let ((__message104888
               (let ((__slot104889
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104886 'message))))
                 (if __slot104889
                     __slot104889
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103044104651%_ _%message104653%_ . _%rest104654%_)
            (let* ((_%self104656%_ _%self103044104651%_)
                   (_%self104658%_ _%self104656%_)
                   (_%message104672%_
                    (if (string? _%message104653%_)
                        _%message104653%_
                        (call-with-output-string
                         '""
                         (lambda (_%g104667104669%_)
                           (display _%message104653%_ _%g104667104669%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self104658%_
                 _%message104672%_
                 __message104888
                 '#f
                 '#f))
              (apply class-instance-init! _%self104658%_ _%rest104654%_))))))
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
      (lambda (_%self103045104373%_ _%port104375%_)
        (let* ((_%self104377%_ _%self103045104373%_)
               (_%self104379%_ _%self104377%_))
          (let ((_%tmp-port104389%_ (open-output-string))
                (_%display-error-newline104390%_
                 (> (output-port-column _%port104375%_) '0)))
            (fix-port-width! _%tmp-port104389%_)
            (let ((__tmp104926
                   (lambda ()
                     (if _%display-error-newline104390%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e104393%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104379%_ 'where))))
                       (if _%$e104393%_ (display _%$e104393%_) (display '"?")))
                     (let ((__tmp104927
                            (let ((__tmp104928
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self104379%_))))
                              (declare (not safe))
                              (##type-name __tmp104928))))
                       (declare (not safe))
                       (display* '" [" __tmp104927 '"]: "))
                     (let ((__tmp104929
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104379%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104929))
                     (let ((_%irritants104397%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104379%_ 'irritants))))
                       (if (null? _%irritants104397%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj104399%_)
                                (if (u8vector? _%obj104399%_)
                                    (let ((__tmp104930
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj104399%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104930))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj104399%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants104397%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont104400104402%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self104379%_
                                   'continuation))))
                           (if _%cont104400104402%_
                               (let ((_%cont104405%_ _%cont104400104402%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont104405%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104926
               current-output-port
               _%tmp-port104389%_))
            (let ((__tmp104931 (get-output-string _%tmp-port104389%_)))
              (declare (not safe))
              (##write-string __tmp104931 _%port104375%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104890 __method-table104891)
        (let ((__continuation104892
               (let ((__slot104896
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104890 'continuation))))
                 (if __slot104896
                     __slot104896
                     (error '"Unknown slot" 'continuation))))
              (__message104893
               (let ((__slot104897
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104890 'message))))
                 (if __slot104897
                     __slot104897
                     (error '"Unknown slot" 'message))))
              (__where104894
               (let ((__slot104898
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104890 'where))))
                 (if __slot104898
                     __slot104898
                     (error '"Unknown slot" 'where))))
              (__irritants104895
               (let ((__slot104899
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104890 'irritants))))
                 (if __slot104899
                     __slot104899
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self103045104373%_ _%port104375%_)
            (let* ((_%self104377%_ _%self103045104373%_)
                   (_%self104379%_ _%self104377%_))
              (let ((_%tmp-port104389%_ (open-output-string))
                    (_%display-error-newline104390%_
                     (> (output-port-column _%port104375%_) '0)))
                (fix-port-width! _%tmp-port104389%_)
                (let ((__tmp104932
                       (lambda ()
                         (if _%display-error-newline104390%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e104393%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104379%_
                                   __where104894
                                   '#f
                                   '#f))))
                           (if _%$e104393%_
                               (display _%$e104393%_)
                               (display '"?")))
                         (let ((__tmp104933
                                (let ((__tmp104934
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self104379%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104934))))
                           (declare (not safe))
                           (display* '" [" __tmp104933 '"]: "))
                         (let ((__tmp104935
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104379%_
                                   __message104893
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104935))
                         (let ((_%irritants104397%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104379%_
                                   __irritants104895
                                   '#f
                                   '#f))))
                           (if (null? _%irritants104397%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj104399%_)
                                    (if (u8vector? _%obj104399%_)
                                        (let ((__tmp104936
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj104399%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104936))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj104399%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants104397%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont104400104402%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self104379%_
                                       __continuation104892
                                       '#f
                                       '#f))))
                               (if _%cont104400104402%_
                                   (let ((_%cont104405%_ _%cont104400104402%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont104405%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104932
                   current-output-port
                   _%tmp-port104389%_))
                (let ((__tmp104937 (get-output-string _%tmp-port104389%_)))
                  (declare (not safe))
                  (##write-string __tmp104937 _%port104375%_))))))))
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
      (lambda (_%self103046104227%_ _%port104229%_)
        (let* ((_%self104231%_ _%self103046104227%_)
               (_%self104233%_ _%self104231%_)
               (_%tmp-port104243%_ (open-output-string)))
          (fix-port-width! _%tmp-port104243%_)
          (let ((__tmp104938
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self104233%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104938 _%tmp-port104243%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont104244104246%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self104233%_ 'continuation))))
                (if _%cont104244104246%_
                    (let ((_%cont104249%_ _%cont104244104246%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port104243%_)
                      (newline _%tmp-port104243%_)
                      (display-continuation-backtrace
                       _%cont104249%_
                       _%tmp-port104243%_))
                    '#f))
              '#!void)
          (let ((__tmp104939 (get-output-string _%tmp-port104243%_)))
            (declare (not safe))
            (##write-string __tmp104939 _%port104229%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104900 __method-table104901)
        (let ((__continuation104902
               (let ((__slot104904
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104900 'continuation))))
                 (if __slot104904
                     __slot104904
                     (error '"Unknown slot" 'continuation))))
              (__exception104903
               (let ((__slot104905
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104900 'exception))))
                 (if __slot104905
                     __slot104905
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self103046104227%_ _%port104229%_)
            (let* ((_%self104231%_ _%self103046104227%_)
                   (_%self104233%_ _%self104231%_)
                   (_%tmp-port104243%_ (open-output-string)))
              (fix-port-width! _%tmp-port104243%_)
              (let ((__tmp104940
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self104233%_
                        __exception104903
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104940 _%tmp-port104243%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont104244104246%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self104233%_
                            __continuation104902
                            '#f
                            '#f))))
                    (if _%cont104244104246%_
                        (let ((_%cont104249%_ _%cont104244104246%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port104243%_)
                          (newline _%tmp-port104243%_)
                          (display-continuation-backtrace
                           _%cont104249%_
                           _%tmp-port104243%_))
                        '#f))
                  '#!void)
              (let ((__tmp104941 (get-output-string _%tmp-port104243%_)))
                (declare (not safe))
                (##write-string __tmp104941 _%port104229%_)))))))
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
      (lambda (_%port104099%_)
        (if (macro-character-port? _%port104099%_)
            (let ((_%old-width104101%_
                   (macro-character-port-output-width _%port104099%_)))
              (macro-character-port-output-width-set!
               _%port104099%_
               (lambda (_%port104103%_) '256))
              _%old-width104101%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port104096%_ _%old-width104097%_)
        (if (macro-character-port? _%port104096%_)
            (macro-character-port-output-width-set!
             _%port104096%_
             _%old-width104097%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e104094%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e104094%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn104088%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104088%_))
            (let ((_%e104091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104088%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e104091%_))
            (macro-abandoned-mutex-exception? _%exn104088%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn104084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104084%_))
            (let ((_%e104086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104084%_ 'exception))))
              (macro-cfun-conversion-exception? _%e104086%_))
            (macro-cfun-conversion-exception? _%exn104084%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn104080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104080%_))
            (let ((_%e104082%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104080%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104082%_)
                  (macro-cfun-conversion-exception-arguments _%e104082%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e104082%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104080%_)
                (macro-cfun-conversion-exception-arguments _%exn104080%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn104080%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn104076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104076%_))
            (let ((_%e104078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104076%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104078%_)
                  (macro-cfun-conversion-exception-code _%e104078%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e104078%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104076%_)
                (macro-cfun-conversion-exception-code _%exn104076%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn104076%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn104072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104072%_))
            (let ((_%e104074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104072%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104074%_)
                  (macro-cfun-conversion-exception-message _%e104074%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e104074%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104072%_)
                (macro-cfun-conversion-exception-message _%exn104072%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn104072%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn104066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104066%_))
            (let ((_%e104069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104066%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104069%_)
                  (macro-cfun-conversion-exception-procedure _%e104069%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e104069%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104066%_)
                (macro-cfun-conversion-exception-procedure _%exn104066%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn104066%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn104062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104062%_))
            (let ((_%e104064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104062%_ 'exception))))
              (macro-datum-parsing-exception? _%e104064%_))
            (macro-datum-parsing-exception? _%exn104062%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn104058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104058%_))
            (let ((_%e104060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104058%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104060%_)
                  (macro-datum-parsing-exception-kind _%e104060%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e104060%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104058%_)
                (macro-datum-parsing-exception-kind _%exn104058%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn104058%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn104054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104054%_))
            (let ((_%e104056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104054%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104056%_)
                  (macro-datum-parsing-exception-parameters _%e104056%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e104056%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104054%_)
                (macro-datum-parsing-exception-parameters _%exn104054%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn104054%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn104048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104048%_))
            (let ((_%e104051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104048%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104051%_)
                  (macro-datum-parsing-exception-readenv _%e104051%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e104051%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104048%_)
                (macro-datum-parsing-exception-readenv _%exn104048%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn104048%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn104042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104042%_))
            (let ((_%e104045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104042%_ 'exception))))
              (macro-deadlock-exception? _%e104045%_))
            (macro-deadlock-exception? _%exn104042%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn104038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104038%_))
            (let ((_%e104040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104038%_ 'exception))))
              (macro-divide-by-zero-exception? _%e104040%_))
            (macro-divide-by-zero-exception? _%exn104038%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn104034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104034%_))
            (let ((_%e104036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104034%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104036%_)
                  (macro-divide-by-zero-exception-arguments _%e104036%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e104036%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104034%_)
                (macro-divide-by-zero-exception-arguments _%exn104034%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn104034%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn104028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104028%_))
            (let ((_%e104031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104028%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104031%_)
                  (macro-divide-by-zero-exception-procedure _%e104031%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e104031%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104028%_)
                (macro-divide-by-zero-exception-procedure _%exn104028%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn104028%_ '())))))))
    (define error-exception?
      (lambda (_%exn104024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104024%_))
            (let ((_%e104026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104024%_ 'exception))))
              (macro-error-exception? _%e104026%_))
            (macro-error-exception? _%exn104024%_))))
    (define error-exception-message
      (lambda (_%exn104020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104020%_))
            (let ((_%e104022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104020%_ 'exception))))
              (if (macro-error-exception? _%e104022%_)
                  (macro-error-exception-message _%e104022%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e104022%_ '())))))
            (if (macro-error-exception? _%exn104020%_)
                (macro-error-exception-message _%exn104020%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn104020%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn104014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104014%_))
            (let ((_%e104017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104014%_ 'exception))))
              (if (macro-error-exception? _%e104017%_)
                  (macro-error-exception-parameters _%e104017%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e104017%_ '())))))
            (if (macro-error-exception? _%exn104014%_)
                (macro-error-exception-parameters _%exn104014%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn104014%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn104010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104010%_))
            (let ((_%e104012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104010%_ 'exception))))
              (macro-expression-parsing-exception? _%e104012%_))
            (macro-expression-parsing-exception? _%exn104010%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn104006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104006%_))
            (let ((_%e104008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104006%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104008%_)
                  (macro-expression-parsing-exception-kind _%e104008%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e104008%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104006%_)
                (macro-expression-parsing-exception-kind _%exn104006%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn104006%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn104002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104002%_))
            (let ((_%e104004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104002%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104004%_)
                  (macro-expression-parsing-exception-parameters _%e104004%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e104004%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104002%_)
                (macro-expression-parsing-exception-parameters _%exn104002%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn104002%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn103996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103996%_))
            (let ((_%e103999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103996%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103999%_)
                  (macro-expression-parsing-exception-source _%e103999%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e103999%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103996%_)
                (macro-expression-parsing-exception-source _%exn103996%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn103996%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn103992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103992%_))
            (let ((_%e103994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103992%_ 'exception))))
              (macro-file-exists-exception? _%e103994%_))
            (macro-file-exists-exception? _%exn103992%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn103988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103988%_))
            (let ((_%e103990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103988%_ 'exception))))
              (if (macro-file-exists-exception? _%e103990%_)
                  (macro-file-exists-exception-arguments _%e103990%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e103990%_ '())))))
            (if (macro-file-exists-exception? _%exn103988%_)
                (macro-file-exists-exception-arguments _%exn103988%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn103988%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn103982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103982%_))
            (let ((_%e103985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103982%_ 'exception))))
              (if (macro-file-exists-exception? _%e103985%_)
                  (macro-file-exists-exception-procedure _%e103985%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e103985%_ '())))))
            (if (macro-file-exists-exception? _%exn103982%_)
                (macro-file-exists-exception-procedure _%exn103982%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn103982%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn103978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103978%_))
            (let ((_%e103980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103978%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e103980%_))
            (macro-fixnum-overflow-exception? _%exn103978%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn103974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103974%_))
            (let ((_%e103976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103974%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103976%_)
                  (macro-fixnum-overflow-exception-arguments _%e103976%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e103976%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103974%_)
                (macro-fixnum-overflow-exception-arguments _%exn103974%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn103974%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn103968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103968%_))
            (let ((_%e103971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103968%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103971%_)
                  (macro-fixnum-overflow-exception-procedure _%e103971%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e103971%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103968%_)
                (macro-fixnum-overflow-exception-procedure _%exn103968%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn103968%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn103962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103962%_))
            (let ((_%e103965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103962%_ 'exception))))
              (macro-heap-overflow-exception? _%e103965%_))
            (macro-heap-overflow-exception? _%exn103962%_))))
    (define inactive-thread-exception?
      (lambda (_%exn103958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103958%_))
            (let ((_%e103960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103958%_ 'exception))))
              (macro-inactive-thread-exception? _%e103960%_))
            (macro-inactive-thread-exception? _%exn103958%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn103954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103954%_))
            (let ((_%e103956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103954%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103956%_)
                  (macro-inactive-thread-exception-arguments _%e103956%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e103956%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103954%_)
                (macro-inactive-thread-exception-arguments _%exn103954%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn103954%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn103948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103948%_))
            (let ((_%e103951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103948%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103951%_)
                  (macro-inactive-thread-exception-procedure _%e103951%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e103951%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103948%_)
                (macro-inactive-thread-exception-procedure _%exn103948%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn103948%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103944%_))
            (let ((_%e103946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103944%_ 'exception))))
              (macro-initialized-thread-exception? _%e103946%_))
            (macro-initialized-thread-exception? _%exn103944%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103940%_))
            (let ((_%e103942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103940%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103942%_)
                  (macro-initialized-thread-exception-arguments _%e103942%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103942%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103940%_)
                (macro-initialized-thread-exception-arguments _%exn103940%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103940%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103934%_))
            (let ((_%e103937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103934%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103937%_)
                  (macro-initialized-thread-exception-procedure _%e103937%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103937%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103934%_)
                (macro-initialized-thread-exception-procedure _%exn103934%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103934%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103930%_))
            (let ((_%e103932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103930%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103932%_))
            (macro-invalid-hash-number-exception? _%exn103930%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103926%_))
            (let ((_%e103928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103926%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103928%_)
                  (macro-invalid-hash-number-exception-arguments _%e103928%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103928%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103926%_)
                (macro-invalid-hash-number-exception-arguments _%exn103926%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103926%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103920%_))
            (let ((_%e103923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103920%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103923%_)
                  (macro-invalid-hash-number-exception-procedure _%e103923%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103923%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103920%_)
                (macro-invalid-hash-number-exception-procedure _%exn103920%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103920%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103916%_))
            (let ((_%e103918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103916%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103918%_))
            (macro-invalid-utf8-encoding-exception? _%exn103916%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103912%_))
            (let ((_%e103914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103912%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103914%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103914%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103914%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103912%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103912%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103912%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103906%_))
            (let ((_%e103909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103906%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103909%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103909%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103909%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103906%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103906%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103906%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103902%_))
            (let ((_%e103904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103902%_ 'exception))))
              (macro-join-timeout-exception? _%e103904%_))
            (macro-join-timeout-exception? _%exn103902%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103898%_))
            (let ((_%e103900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103898%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103900%_)
                  (macro-join-timeout-exception-arguments _%e103900%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103900%_ '())))))
            (if (macro-join-timeout-exception? _%exn103898%_)
                (macro-join-timeout-exception-arguments _%exn103898%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103898%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103892%_))
            (let ((_%e103895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103892%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103895%_)
                  (macro-join-timeout-exception-procedure _%e103895%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103895%_ '())))))
            (if (macro-join-timeout-exception? _%exn103892%_)
                (macro-join-timeout-exception-procedure _%exn103892%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103892%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103888%_))
            (let ((_%e103890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103888%_ 'exception))))
              (macro-keyword-expected-exception? _%e103890%_))
            (macro-keyword-expected-exception? _%exn103888%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103884%_))
            (let ((_%e103886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103884%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103886%_)
                  (macro-keyword-expected-exception-arguments _%e103886%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103886%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103884%_)
                (macro-keyword-expected-exception-arguments _%exn103884%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103884%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103878%_))
            (let ((_%e103881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103878%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103881%_)
                  (macro-keyword-expected-exception-procedure _%e103881%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103881%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103878%_)
                (macro-keyword-expected-exception-procedure _%exn103878%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103878%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103874%_))
            (let ((_%e103876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103874%_ 'exception))))
              (macro-length-mismatch-exception? _%e103876%_))
            (macro-length-mismatch-exception? _%exn103874%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103870%_))
            (let ((_%e103872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103870%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103872%_)
                  (macro-length-mismatch-exception-arg-id _%e103872%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103872%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103870%_)
                (macro-length-mismatch-exception-arg-id _%exn103870%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103870%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103866%_))
            (let ((_%e103868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103866%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103868%_)
                  (macro-length-mismatch-exception-arguments _%e103868%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103868%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103866%_)
                (macro-length-mismatch-exception-arguments _%exn103866%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103866%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103860%_))
            (let ((_%e103863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103860%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103863%_)
                  (macro-length-mismatch-exception-procedure _%e103863%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103863%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103860%_)
                (macro-length-mismatch-exception-procedure _%exn103860%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103860%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103856%_))
            (let ((_%e103858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103856%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103858%_))
            (macro-mailbox-receive-timeout-exception? _%exn103856%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103852%_))
            (let ((_%e103854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103852%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103854%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103854%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103854%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103852%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103852%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103852%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103846%_))
            (let ((_%e103849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103846%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103849%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103849%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103849%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103846%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103846%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103846%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103842%_))
            (let ((_%e103844%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103842%_ 'exception))))
              (macro-module-not-found-exception? _%e103844%_))
            (macro-module-not-found-exception? _%exn103842%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103838%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103838%_))
            (let ((_%e103840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103838%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103840%_)
                  (macro-module-not-found-exception-arguments _%e103840%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103840%_ '())))))
            (if (macro-module-not-found-exception? _%exn103838%_)
                (macro-module-not-found-exception-arguments _%exn103838%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103838%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103832%_))
            (let ((_%e103835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103832%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103835%_)
                  (macro-module-not-found-exception-procedure _%e103835%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103835%_ '())))))
            (if (macro-module-not-found-exception? _%exn103832%_)
                (macro-module-not-found-exception-procedure _%exn103832%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103832%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103826%_))
            (let ((_%e103829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103826%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103829%_))
            (macro-multiple-c-return-exception? _%exn103826%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103822%_))
            (let ((_%e103824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103822%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103824%_))
            (macro-no-such-file-or-directory-exception? _%exn103822%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103818%_))
            (let ((_%e103820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103818%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103820%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103820%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103820%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103818%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103818%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103818%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103812%_))
            (let ((_%e103815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103812%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103815%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103815%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103815%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103812%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103812%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103812%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103808%_))
            (let ((_%e103810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103808%_ 'exception))))
              (macro-noncontinuable-exception? _%e103810%_))
            (macro-noncontinuable-exception? _%exn103808%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103802%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103802%_))
            (let ((_%e103805%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103802%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103805%_)
                  (macro-noncontinuable-exception-reason _%e103805%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103805%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103802%_)
                (macro-noncontinuable-exception-reason _%exn103802%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103802%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103798%_))
            (let ((_%e103800%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103798%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103800%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103798%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103794%_))
            (let ((_%e103796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103794%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103796%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103796%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103796%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103794%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103794%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103794%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103788%_))
            (let ((_%e103791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103788%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103791%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103791%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103791%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103788%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103788%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103788%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103784%_))
            (let ((_%e103786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103784%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103786%_))
            (macro-nonprocedure-operator-exception? _%exn103784%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn103780%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103780%_))
            (let ((_%e103782%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103780%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103782%_)
                  (macro-nonprocedure-operator-exception-arguments _%e103782%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e103782%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103780%_)
                (macro-nonprocedure-operator-exception-arguments _%exn103780%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn103780%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn103776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103776%_))
            (let ((_%e103778%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103776%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103778%_)
                  (macro-nonprocedure-operator-exception-code _%e103778%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e103778%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103776%_)
                (macro-nonprocedure-operator-exception-code _%exn103776%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn103776%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn103772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103772%_))
            (let ((_%e103774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103772%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103774%_)
                  (macro-nonprocedure-operator-exception-operator _%e103774%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e103774%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103772%_)
                (macro-nonprocedure-operator-exception-operator _%exn103772%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn103772%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn103766%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103766%_))
            (let ((_%e103769%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103766%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103769%_)
                  (macro-nonprocedure-operator-exception-rte _%e103769%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e103769%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103766%_)
                (macro-nonprocedure-operator-exception-rte _%exn103766%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn103766%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn103762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103762%_))
            (let ((_%e103764%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103762%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e103764%_))
            (macro-not-in-compilation-context-exception? _%exn103762%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn103758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103758%_))
            (let ((_%e103760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103758%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103760%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e103760%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e103760%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103758%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn103758%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn103758%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn103752%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103752%_))
            (let ((_%e103755%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103752%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103755%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e103755%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e103755%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103752%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn103752%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn103752%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn103748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103748%_))
            (let ((_%e103750%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103748%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e103750%_))
            (macro-number-of-arguments-limit-exception? _%exn103748%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn103744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103744%_))
            (let ((_%e103746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103744%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103746%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e103746%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e103746%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103744%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn103744%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn103744%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn103738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103738%_))
            (let ((_%e103741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103738%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103741%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e103741%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e103741%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103738%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn103738%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn103738%_ '())))))))
    (define os-exception?
      (lambda (_%exn103734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103734%_))
            (let ((_%e103736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103734%_ 'exception))))
              (macro-os-exception? _%e103736%_))
            (macro-os-exception? _%exn103734%_))))
    (define os-exception-arguments
      (lambda (_%exn103730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103730%_))
            (let ((_%e103732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103730%_ 'exception))))
              (if (macro-os-exception? _%e103732%_)
                  (macro-os-exception-arguments _%e103732%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e103732%_ '())))))
            (if (macro-os-exception? _%exn103730%_)
                (macro-os-exception-arguments _%exn103730%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn103730%_ '())))))))
    (define os-exception-code
      (lambda (_%exn103726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103726%_))
            (let ((_%e103728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103726%_ 'exception))))
              (if (macro-os-exception? _%e103728%_)
                  (macro-os-exception-code _%e103728%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e103728%_ '())))))
            (if (macro-os-exception? _%exn103726%_)
                (macro-os-exception-code _%exn103726%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn103726%_ '())))))))
    (define os-exception-message
      (lambda (_%exn103722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103722%_))
            (let ((_%e103724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103722%_ 'exception))))
              (if (macro-os-exception? _%e103724%_)
                  (macro-os-exception-message _%e103724%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e103724%_ '())))))
            (if (macro-os-exception? _%exn103722%_)
                (macro-os-exception-message _%exn103722%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn103722%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn103716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103716%_))
            (let ((_%e103719%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103716%_ 'exception))))
              (if (macro-os-exception? _%e103719%_)
                  (macro-os-exception-procedure _%e103719%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e103719%_ '())))))
            (if (macro-os-exception? _%exn103716%_)
                (macro-os-exception-procedure _%exn103716%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn103716%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn103712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103712%_))
            (let ((_%e103714%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103712%_ 'exception))))
              (macro-permission-denied-exception? _%e103714%_))
            (macro-permission-denied-exception? _%exn103712%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn103708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103708%_))
            (let ((_%e103710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103708%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103710%_)
                  (macro-permission-denied-exception-arguments _%e103710%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e103710%_ '())))))
            (if (macro-permission-denied-exception? _%exn103708%_)
                (macro-permission-denied-exception-arguments _%exn103708%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn103708%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn103702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103702%_))
            (let ((_%e103705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103702%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103705%_)
                  (macro-permission-denied-exception-procedure _%e103705%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e103705%_ '())))))
            (if (macro-permission-denied-exception? _%exn103702%_)
                (macro-permission-denied-exception-procedure _%exn103702%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn103702%_ '())))))))
    (define range-exception?
      (lambda (_%exn103698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103698%_))
            (let ((_%e103700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103698%_ 'exception))))
              (macro-range-exception? _%e103700%_))
            (macro-range-exception? _%exn103698%_))))
    (define range-exception-arg-id
      (lambda (_%exn103694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103694%_))
            (let ((_%e103696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103694%_ 'exception))))
              (if (macro-range-exception? _%e103696%_)
                  (macro-range-exception-arg-id _%e103696%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e103696%_ '())))))
            (if (macro-range-exception? _%exn103694%_)
                (macro-range-exception-arg-id _%exn103694%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn103694%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn103690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103690%_))
            (let ((_%e103692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103690%_ 'exception))))
              (if (macro-range-exception? _%e103692%_)
                  (macro-range-exception-arguments _%e103692%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e103692%_ '())))))
            (if (macro-range-exception? _%exn103690%_)
                (macro-range-exception-arguments _%exn103690%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn103690%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn103684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103684%_))
            (let ((_%e103687%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103684%_ 'exception))))
              (if (macro-range-exception? _%e103687%_)
                  (macro-range-exception-procedure _%e103687%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e103687%_ '())))))
            (if (macro-range-exception? _%exn103684%_)
                (macro-range-exception-procedure _%exn103684%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn103684%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn103680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103680%_))
            (let ((_%e103682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103680%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e103682%_))
            (macro-rpc-remote-error-exception? _%exn103680%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn103676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103676%_))
            (let ((_%e103678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103676%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103678%_)
                  (macro-rpc-remote-error-exception-arguments _%e103678%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e103678%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103676%_)
                (macro-rpc-remote-error-exception-arguments _%exn103676%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn103676%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn103672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103672%_))
            (let ((_%e103674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103672%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103674%_)
                  (macro-rpc-remote-error-exception-message _%e103674%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e103674%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103672%_)
                (macro-rpc-remote-error-exception-message _%exn103672%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn103672%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn103666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103666%_))
            (let ((_%e103669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103666%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103669%_)
                  (macro-rpc-remote-error-exception-procedure _%e103669%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e103669%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103666%_)
                (macro-rpc-remote-error-exception-procedure _%exn103666%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn103666%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn103662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103662%_))
            (let ((_%e103664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103662%_ 'exception))))
              (macro-scheduler-exception? _%e103664%_))
            (macro-scheduler-exception? _%exn103662%_))))
    (define scheduler-exception-reason
      (lambda (_%exn103656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103656%_))
            (let ((_%e103659%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103656%_ 'exception))))
              (if (macro-scheduler-exception? _%e103659%_)
                  (macro-scheduler-exception-reason _%e103659%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e103659%_ '())))))
            (if (macro-scheduler-exception? _%exn103656%_)
                (macro-scheduler-exception-reason _%exn103656%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn103656%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn103652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103652%_))
            (let ((_%e103654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103652%_ 'exception))))
              (macro-sfun-conversion-exception? _%e103654%_))
            (macro-sfun-conversion-exception? _%exn103652%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn103648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103648%_))
            (let ((_%e103650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103648%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103650%_)
                  (macro-sfun-conversion-exception-arguments _%e103650%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e103650%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103648%_)
                (macro-sfun-conversion-exception-arguments _%exn103648%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn103648%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn103644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103644%_))
            (let ((_%e103646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103644%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103646%_)
                  (macro-sfun-conversion-exception-code _%e103646%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e103646%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103644%_)
                (macro-sfun-conversion-exception-code _%exn103644%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn103644%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn103640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103640%_))
            (let ((_%e103642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103640%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103642%_)
                  (macro-sfun-conversion-exception-message _%e103642%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e103642%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103640%_)
                (macro-sfun-conversion-exception-message _%exn103640%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn103640%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn103634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103634%_))
            (let ((_%e103637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103634%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103637%_)
                  (macro-sfun-conversion-exception-procedure _%e103637%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e103637%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103634%_)
                (macro-sfun-conversion-exception-procedure _%exn103634%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn103634%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn103628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103628%_))
            (let ((_%e103631%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103628%_ 'exception))))
              (macro-stack-overflow-exception? _%e103631%_))
            (macro-stack-overflow-exception? _%exn103628%_))))
    (define started-thread-exception?
      (lambda (_%exn103624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103624%_))
            (let ((_%e103626%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103624%_ 'exception))))
              (macro-started-thread-exception? _%e103626%_))
            (macro-started-thread-exception? _%exn103624%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn103620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103620%_))
            (let ((_%e103622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103620%_ 'exception))))
              (if (macro-started-thread-exception? _%e103622%_)
                  (macro-started-thread-exception-arguments _%e103622%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e103622%_ '())))))
            (if (macro-started-thread-exception? _%exn103620%_)
                (macro-started-thread-exception-arguments _%exn103620%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn103620%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn103614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103614%_))
            (let ((_%e103617%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103614%_ 'exception))))
              (if (macro-started-thread-exception? _%e103617%_)
                  (macro-started-thread-exception-procedure _%e103617%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e103617%_ '())))))
            (if (macro-started-thread-exception? _%exn103614%_)
                (macro-started-thread-exception-procedure _%exn103614%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn103614%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn103610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103610%_))
            (let ((_%e103612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103610%_ 'exception))))
              (macro-terminated-thread-exception? _%e103612%_))
            (macro-terminated-thread-exception? _%exn103610%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn103606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103606%_))
            (let ((_%e103608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103606%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103608%_)
                  (macro-terminated-thread-exception-arguments _%e103608%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e103608%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103606%_)
                (macro-terminated-thread-exception-arguments _%exn103606%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn103606%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn103600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103600%_))
            (let ((_%e103603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103600%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103603%_)
                  (macro-terminated-thread-exception-procedure _%e103603%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e103603%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103600%_)
                (macro-terminated-thread-exception-procedure _%exn103600%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn103600%_ '())))))))
    (define type-exception?
      (lambda (_%exn103596%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103596%_))
            (let ((_%e103598%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103596%_ 'exception))))
              (macro-type-exception? _%e103598%_))
            (macro-type-exception? _%exn103596%_))))
    (define type-exception-arg-id
      (lambda (_%exn103592%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103592%_))
            (let ((_%e103594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103592%_ 'exception))))
              (if (macro-type-exception? _%e103594%_)
                  (macro-type-exception-arg-id _%e103594%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e103594%_ '())))))
            (if (macro-type-exception? _%exn103592%_)
                (macro-type-exception-arg-id _%exn103592%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn103592%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn103588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103588%_))
            (let ((_%e103590%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103588%_ 'exception))))
              (if (macro-type-exception? _%e103590%_)
                  (macro-type-exception-arguments _%e103590%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e103590%_ '())))))
            (if (macro-type-exception? _%exn103588%_)
                (macro-type-exception-arguments _%exn103588%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn103588%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn103584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103584%_))
            (let ((_%e103586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103584%_ 'exception))))
              (if (macro-type-exception? _%e103586%_)
                  (macro-type-exception-procedure _%e103586%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e103586%_ '())))))
            (if (macro-type-exception? _%exn103584%_)
                (macro-type-exception-procedure _%exn103584%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn103584%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn103578%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103578%_))
            (let ((_%e103581%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103578%_ 'exception))))
              (if (macro-type-exception? _%e103581%_)
                  (macro-type-exception-type-id _%e103581%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e103581%_ '())))))
            (if (macro-type-exception? _%exn103578%_)
                (macro-type-exception-type-id _%exn103578%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn103578%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn103574%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103574%_))
            (let ((_%e103576%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103574%_ 'exception))))
              (macro-unbound-global-exception? _%e103576%_))
            (macro-unbound-global-exception? _%exn103574%_))))
    (define unbound-global-exception-code
      (lambda (_%exn103570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103570%_))
            (let ((_%e103572%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103570%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103572%_)
                  (macro-unbound-global-exception-code _%e103572%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e103572%_ '())))))
            (if (macro-unbound-global-exception? _%exn103570%_)
                (macro-unbound-global-exception-code _%exn103570%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn103570%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn103566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103566%_))
            (let ((_%e103568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103566%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103568%_)
                  (macro-unbound-global-exception-rte _%e103568%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e103568%_ '())))))
            (if (macro-unbound-global-exception? _%exn103566%_)
                (macro-unbound-global-exception-rte _%exn103566%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn103566%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn103560%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103560%_))
            (let ((_%e103563%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103560%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103563%_)
                  (macro-unbound-global-exception-variable _%e103563%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e103563%_ '())))))
            (if (macro-unbound-global-exception? _%exn103560%_)
                (macro-unbound-global-exception-variable _%exn103560%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn103560%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn103556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103556%_))
            (let ((_%e103558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103556%_ 'exception))))
              (macro-unbound-key-exception? _%e103558%_))
            (macro-unbound-key-exception? _%exn103556%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn103552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103552%_))
            (let ((_%e103554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103552%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103554%_)
                  (macro-unbound-key-exception-arguments _%e103554%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e103554%_ '())))))
            (if (macro-unbound-key-exception? _%exn103552%_)
                (macro-unbound-key-exception-arguments _%exn103552%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn103552%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn103546%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103546%_))
            (let ((_%e103549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103546%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103549%_)
                  (macro-unbound-key-exception-procedure _%e103549%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e103549%_ '())))))
            (if (macro-unbound-key-exception? _%exn103546%_)
                (macro-unbound-key-exception-procedure _%exn103546%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn103546%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn103542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103542%_))
            (let ((_%e103544%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103542%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e103544%_))
            (macro-unbound-os-environment-variable-exception? _%exn103542%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn103538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103538%_))
            (let ((_%e103540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103538%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103540%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e103540%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e103540%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103538%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn103538%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn103538%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn103532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103532%_))
            (let ((_%e103535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103532%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103535%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e103535%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e103535%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103532%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn103532%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn103532%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn103528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103528%_))
            (let ((_%e103530%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103528%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e103530%_))
            (macro-unbound-serial-number-exception? _%exn103528%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn103524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103524%_))
            (let ((_%e103526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103524%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103526%_)
                  (macro-unbound-serial-number-exception-arguments _%e103526%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e103526%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103524%_)
                (macro-unbound-serial-number-exception-arguments _%exn103524%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn103524%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn103518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103518%_))
            (let ((_%e103521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103518%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103521%_)
                  (macro-unbound-serial-number-exception-procedure _%e103521%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e103521%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103518%_)
                (macro-unbound-serial-number-exception-procedure _%exn103518%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn103518%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn103514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103514%_))
            (let ((_%e103516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103514%_ 'exception))))
              (macro-uncaught-exception? _%e103516%_))
            (macro-uncaught-exception? _%exn103514%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn103510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103510%_))
            (let ((_%e103512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103510%_ 'exception))))
              (if (macro-uncaught-exception? _%e103512%_)
                  (macro-uncaught-exception-arguments _%e103512%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e103512%_ '())))))
            (if (macro-uncaught-exception? _%exn103510%_)
                (macro-uncaught-exception-arguments _%exn103510%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn103510%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn103506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103506%_))
            (let ((_%e103508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103506%_ 'exception))))
              (if (macro-uncaught-exception? _%e103508%_)
                  (macro-uncaught-exception-procedure _%e103508%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e103508%_ '())))))
            (if (macro-uncaught-exception? _%exn103506%_)
                (macro-uncaught-exception-procedure _%exn103506%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn103506%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn103500%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103500%_))
            (let ((_%e103503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103500%_ 'exception))))
              (if (macro-uncaught-exception? _%e103503%_)
                  (macro-uncaught-exception-reason _%e103503%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e103503%_ '())))))
            (if (macro-uncaught-exception? _%exn103500%_)
                (macro-uncaught-exception-reason _%exn103500%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn103500%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn103496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103496%_))
            (let ((_%e103498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103496%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e103498%_))
            (macro-uninitialized-thread-exception? _%exn103496%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn103492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103492%_))
            (let ((_%e103494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103492%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103494%_)
                  (macro-uninitialized-thread-exception-arguments _%e103494%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e103494%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103492%_)
                (macro-uninitialized-thread-exception-arguments _%exn103492%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn103492%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn103486%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103486%_))
            (let ((_%e103489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103486%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103489%_)
                  (macro-uninitialized-thread-exception-procedure _%e103489%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e103489%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103486%_)
                (macro-uninitialized-thread-exception-procedure _%exn103486%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn103486%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn103482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103482%_))
            (let ((_%e103484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103482%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e103484%_))
            (macro-unknown-keyword-argument-exception? _%exn103482%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn103478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103478%_))
            (let ((_%e103480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103478%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103480%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e103480%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e103480%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103478%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn103478%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn103478%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn103472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103472%_))
            (let ((_%e103475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103472%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103475%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e103475%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e103475%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103472%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn103472%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn103472%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn103468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103468%_))
            (let ((_%e103470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103468%_ 'exception))))
              (macro-unterminated-process-exception? _%e103470%_))
            (macro-unterminated-process-exception? _%exn103468%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn103464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103464%_))
            (let ((_%e103466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103464%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103466%_)
                  (macro-unterminated-process-exception-arguments _%e103466%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e103466%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103464%_)
                (macro-unterminated-process-exception-arguments _%exn103464%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn103464%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn103458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103458%_))
            (let ((_%e103461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103458%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103461%_)
                  (macro-unterminated-process-exception-procedure _%e103461%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e103461%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103458%_)
                (macro-unterminated-process-exception-procedure _%exn103458%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn103458%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn103454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103454%_))
            (let ((_%e103456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103454%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e103456%_))
            (macro-wrong-number-of-arguments-exception? _%exn103454%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn103450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103450%_))
            (let ((_%e103452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103450%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103452%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e103452%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e103452%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103450%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn103450%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn103450%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn103444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103444%_))
            (let ((_%e103447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103444%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103447%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e103447%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e103447%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103444%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn103444%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn103444%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn103440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103440%_))
            (let ((_%e103442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103440%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e103442%_))
            (macro-wrong-number-of-values-exception? _%exn103440%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn103436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103436%_))
            (let ((_%e103438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103436%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103438%_)
                  (macro-wrong-number-of-values-exception-code _%e103438%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e103438%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103436%_)
                (macro-wrong-number-of-values-exception-code _%exn103436%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn103436%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn103432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103432%_))
            (let ((_%e103434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103432%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103434%_)
                  (macro-wrong-number-of-values-exception-rte _%e103434%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e103434%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103432%_)
                (macro-wrong-number-of-values-exception-rte _%exn103432%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn103432%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn103426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103426%_))
            (let ((_%e103429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103426%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103429%_)
                  (macro-wrong-number-of-values-exception-vals _%e103429%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e103429%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103426%_)
                (macro-wrong-number-of-values-exception-vals _%exn103426%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn103426%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn103420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103420%_))
            (let ((_%e103423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103420%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e103423%_))
            (macro-wrong-processor-c-return-exception? _%exn103420%_))))))
