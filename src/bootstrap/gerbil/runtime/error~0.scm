(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1734225192)
  (begin
    (define Exception::t
      (let ((__tmp104924 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104924
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104894%_
        (apply make-instance Exception::t _%$args104894%_)))
    (define StackTrace::t
      (let ((__tmp104925 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104925
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104891%_
        (apply make-instance StackTrace::t _%$args104891%_)))
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
      (let ((__tmp104926 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104926
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104888%_ (apply make-instance Error::t _%$args104888%_)))
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
      (let ((__tmp104927 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104927
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104885%_
        (apply make-instance ContractViolation::t _%$args104885%_)))
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
      (let ((__tmp104928 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104928
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104882%_
        (apply make-instance RuntimeException::t _%$args104882%_)))
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
      (lambda (_%exn104877%_ _%continue104878%_)
        (let ((_%exn104880%_ (wrap-runtime-exception _%exn104877%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104880%_ _%continue104878%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104873%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104873%_ 'continuation))
                '#!void
                (let ((__tmp104929
                       (lambda (_%cont104875%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104873%_
                            'continuation
                            _%cont104875%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104929)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104873%_))))
    (define error
      (lambda (_%message104870%_ . _%irritants104871%_)
        (raise (let ((__obj104921
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104921
                  _%message104870%_
                  'irritants:
                  _%irritants104871%_)
                 __obj104921))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104842%_
               _%ctx104837104843%_
               _%contract-expr104838104845%_
               _%value104839104847%_
               _%message104849%_)
        (let* ((_%ctx104851%_
                (if (eq? _%ctx104837104843%_ absent-value)
                    '#f
                    _%ctx104837104843%_))
               (_%contract-expr104853%_
                (if (eq? _%contract-expr104838104845%_ absent-value)
                    '#f
                    _%contract-expr104838104845%_))
               (_%value104855%_
                (if (eq? _%value104839104847%_ absent-value)
                    '#f
                    _%value104839104847%_)))
          (raise (let ((__obj104922
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104922
                    _%message104849%_
                    'where:
                    _%ctx104851%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104853%_
                                (cons 'value: (cons _%value104855%_ '())))))
                   __obj104922)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104860%_ . _%args104861%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104860%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104860%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104860%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104860%_
                  'value:
                  absent-value))
               _%args104861%_)))
    (define __raise-contract-violation-error
      (lambda _%args104840104867%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104840104867%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104811%_ _%thunk104812%_)
        (if (procedure? _%handler104811%_)
            (let ((_%handler104816%_ _%handler104811%_))
              (if (procedure? _%thunk104812%_)
                  (let ((_%thunk104826%_ _%thunk104812%_))
                    (__with-exception-handler
                     _%handler104816%_
                     _%thunk104826%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104812%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104811%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler104786%_ _%thunk104787%_)
        (let* ((_%handler104790%_ _%handler104786%_)
               (_%thunk104798%_ _%thunk104787%_)
               (__tmp104930
                (lambda (_%exn104807%_)
                  (let ((_%exn104809%_ (wrap-runtime-exception _%exn104807%_)))
                    (declare (not safe))
                    (_%handler104790%_ _%exn104809%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104930 _%thunk104798%_))))
    (define with-catch
      (lambda (_%handler104761%_ _%thunk104762%_)
        (if (procedure? _%handler104761%_)
            (let ((_%handler104766%_ _%handler104761%_))
              (if (procedure? _%thunk104762%_)
                  (let ((_%thunk104776%_ _%thunk104762%_))
                    (__with-catch _%handler104766%_ _%thunk104776%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104762%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler104761%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler104736%_ _%thunk104737%_)
        (let* ((_%handler104740%_ _%handler104736%_)
               (_%thunk104748%_ _%thunk104737%_)
               (__tmp104931
                (lambda (_%cont104757%_)
                  (__with-exception-handler
                   (lambda (_%exn104759%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont104757%_
                        _%handler104740%_
                        _%exn104759%_)))
                   _%thunk104748%_))))
          (declare (not safe))
          (##continuation-capture __tmp104931))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn104723%_)
        (if (or (heap-overflow-exception? _%exn104723%_)
                (stack-overflow-exception? _%exn104723%_))
            _%exn104723%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn104723%_))
                _%exn104723%_
                (if (macro-exception? _%exn104723%_)
                    (let ((_%rte104731%_
                           (let ((__obj104923
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104923
                                _%exn104723%_
                                '2
                                '#f
                                '#f))
                             __obj104923)))
                      (let ((__tmp104932
                             (lambda (_%cont104733%_)
                               (let ((__tmp104933
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont104733%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte104731%_
                                  'continuation
                                  __tmp104933)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104932))
                      _%rte104731%_)
                    _%exn104723%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj104718%_)
        (let ((_%$e104720%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj104718%_))))
          (if _%$e104720%_ _%$e104720%_ (error-exception? _%obj104718%_)))))
    (define error-message
      (lambda (_%obj104711%_)
        (let ((_%$e104713%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj104711%_ 'message false))))
          (if _%$e104713%_
              _%$e104713%_
              (if (error-exception? _%obj104711%_)
                  (error-exception-message _%obj104711%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj104706%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104706%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104706%_ 'irritants))
            (if (error-exception? _%obj104706%_)
                (error-exception-parameters _%obj104706%_)
                '#f))))
    (define error-trace
      (lambda (_%obj104704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104704%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104704%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e104685%_ _%port104686%_)
        (let ((_%$e104688%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e104685%_ 'display-exception))))
          (if _%$e104688%_
              ((lambda (_%f104691%_) (_%f104691%_ _%e104685%_ _%port104686%_))
               _%$e104688%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e104685%_ _%port104686%_))))))
    (define display-exception__0
      (lambda (_%e104697%_)
        (let ((_%port104699%_ (current-error-port)))
          (display-exception__% _%e104697%_ _%port104699%_))))
    (define display-exception
      (lambda _g104935_
        (let ((_g104934_ (let () (declare (not safe)) (##length _g104935_))))
          (cond ((let () (declare (not safe)) (##fx= _g104934_ 1))
                 (apply display-exception__0 _g104935_))
                ((let () (declare (not safe)) (##fx= _g104934_ 2))
                 (apply display-exception__% _g104935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104935_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self103054104661%_ _%message104663%_ . _%rest104664%_)
        (let* ((_%self104666%_ _%self103054104661%_)
               (_%self104668%_ _%self104666%_)
               (_%message104682%_
                (if (string? _%message104663%_)
                    _%message104663%_
                    (call-with-output-string
                     '""
                     (lambda (_%g104677104679%_)
                       (display _%message104663%_ _%g104677104679%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self104668%_ 'message _%message104682%_))
          (apply class-instance-init! _%self104668%_ _%rest104664%_))))
    (define Error:::init!::specialize
      (lambda (__klass104896 __method-table104897)
        (let ((__message104898
               (let ((__slot104899
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104896 'message))))
                 (if __slot104899
                     __slot104899
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103054104661%_ _%message104663%_ . _%rest104664%_)
            (let* ((_%self104666%_ _%self103054104661%_)
                   (_%self104668%_ _%self104666%_)
                   (_%message104682%_
                    (if (string? _%message104663%_)
                        _%message104663%_
                        (call-with-output-string
                         '""
                         (lambda (_%g104677104679%_)
                           (display _%message104663%_ _%g104677104679%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self104668%_
                 _%message104682%_
                 __message104898
                 '#f
                 '#f))
              (apply class-instance-init! _%self104668%_ _%rest104664%_))))))
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
      (lambda (_%self103055104383%_ _%port104385%_)
        (let* ((_%self104387%_ _%self103055104383%_)
               (_%self104389%_ _%self104387%_))
          (let ((_%tmp-port104399%_ (open-output-string))
                (_%display-error-newline104400%_
                 (> (output-port-column _%port104385%_) '0)))
            (fix-port-width! _%tmp-port104399%_)
            (let ((__tmp104936
                   (lambda ()
                     (if _%display-error-newline104400%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e104403%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104389%_ 'where))))
                       (if _%$e104403%_ (display _%$e104403%_) (display '"?")))
                     (let ((__tmp104937
                            (let ((__tmp104938
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self104389%_))))
                              (declare (not safe))
                              (##type-name __tmp104938))))
                       (declare (not safe))
                       (display* '" [" __tmp104937 '"]: "))
                     (let ((__tmp104939
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104389%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104939))
                     (let ((_%irritants104407%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104389%_ 'irritants))))
                       (if (null? _%irritants104407%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj104409%_)
                                (if (u8vector? _%obj104409%_)
                                    (let ((__tmp104940
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj104409%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104940))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj104409%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants104407%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont104410104412%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self104389%_
                                   'continuation))))
                           (if _%cont104410104412%_
                               (let ((_%cont104415%_ _%cont104410104412%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont104415%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104936
               current-output-port
               _%tmp-port104399%_))
            (let ((__tmp104941 (get-output-string _%tmp-port104399%_)))
              (declare (not safe))
              (##write-string __tmp104941 _%port104385%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104900 __method-table104901)
        (let ((__continuation104902
               (let ((__slot104906
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104900 'continuation))))
                 (if __slot104906
                     __slot104906
                     (error '"Unknown slot" 'continuation))))
              (__irritants104903
               (let ((__slot104907
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104900 'irritants))))
                 (if __slot104907
                     __slot104907
                     (error '"Unknown slot" 'irritants))))
              (__message104904
               (let ((__slot104908
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104900 'message))))
                 (if __slot104908
                     __slot104908
                     (error '"Unknown slot" 'message))))
              (__where104905
               (let ((__slot104909
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104900 'where))))
                 (if __slot104909
                     __slot104909
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self103055104383%_ _%port104385%_)
            (let* ((_%self104387%_ _%self103055104383%_)
                   (_%self104389%_ _%self104387%_))
              (let ((_%tmp-port104399%_ (open-output-string))
                    (_%display-error-newline104400%_
                     (> (output-port-column _%port104385%_) '0)))
                (fix-port-width! _%tmp-port104399%_)
                (let ((__tmp104942
                       (lambda ()
                         (if _%display-error-newline104400%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e104403%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104389%_
                                   __where104905
                                   '#f
                                   '#f))))
                           (if _%$e104403%_
                               (display _%$e104403%_)
                               (display '"?")))
                         (let ((__tmp104943
                                (let ((__tmp104944
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self104389%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104944))))
                           (declare (not safe))
                           (display* '" [" __tmp104943 '"]: "))
                         (let ((__tmp104945
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104389%_
                                   __message104904
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104945))
                         (let ((_%irritants104407%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104389%_
                                   __irritants104903
                                   '#f
                                   '#f))))
                           (if (null? _%irritants104407%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj104409%_)
                                    (if (u8vector? _%obj104409%_)
                                        (let ((__tmp104946
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj104409%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104946))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj104409%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants104407%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont104410104412%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self104389%_
                                       __continuation104902
                                       '#f
                                       '#f))))
                               (if _%cont104410104412%_
                                   (let ((_%cont104415%_ _%cont104410104412%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont104415%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104942
                   current-output-port
                   _%tmp-port104399%_))
                (let ((__tmp104947 (get-output-string _%tmp-port104399%_)))
                  (declare (not safe))
                  (##write-string __tmp104947 _%port104385%_))))))))
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
      (lambda (_%self103056104237%_ _%port104239%_)
        (let* ((_%self104241%_ _%self103056104237%_)
               (_%self104243%_ _%self104241%_)
               (_%tmp-port104253%_ (open-output-string)))
          (fix-port-width! _%tmp-port104253%_)
          (let ((__tmp104948
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self104243%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104948 _%tmp-port104253%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont104254104256%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self104243%_ 'continuation))))
                (if _%cont104254104256%_
                    (let ((_%cont104259%_ _%cont104254104256%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port104253%_)
                      (newline _%tmp-port104253%_)
                      (display-continuation-backtrace
                       _%cont104259%_
                       _%tmp-port104253%_))
                    '#f))
              '#!void)
          (let ((__tmp104949 (get-output-string _%tmp-port104253%_)))
            (declare (not safe))
            (##write-string __tmp104949 _%port104239%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104910 __method-table104911)
        (let ((__continuation104912
               (let ((__slot104914
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104910 'continuation))))
                 (if __slot104914
                     __slot104914
                     (error '"Unknown slot" 'continuation))))
              (__exception104913
               (let ((__slot104915
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104910 'exception))))
                 (if __slot104915
                     __slot104915
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self103056104237%_ _%port104239%_)
            (let* ((_%self104241%_ _%self103056104237%_)
                   (_%self104243%_ _%self104241%_)
                   (_%tmp-port104253%_ (open-output-string)))
              (fix-port-width! _%tmp-port104253%_)
              (let ((__tmp104950
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self104243%_
                        __exception104913
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104950 _%tmp-port104253%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont104254104256%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self104243%_
                            __continuation104912
                            '#f
                            '#f))))
                    (if _%cont104254104256%_
                        (let ((_%cont104259%_ _%cont104254104256%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port104253%_)
                          (newline _%tmp-port104253%_)
                          (display-continuation-backtrace
                           _%cont104259%_
                           _%tmp-port104253%_))
                        '#f))
                  '#!void)
              (let ((__tmp104951 (get-output-string _%tmp-port104253%_)))
                (declare (not safe))
                (##write-string __tmp104951 _%port104239%_)))))))
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
      (lambda (_%port104109%_)
        (if (macro-character-port? _%port104109%_)
            (let ((_%old-width104111%_
                   (macro-character-port-output-width _%port104109%_)))
              (macro-character-port-output-width-set!
               _%port104109%_
               (lambda (_%port104113%_) '256))
              _%old-width104111%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port104106%_ _%old-width104107%_)
        (if (macro-character-port? _%port104106%_)
            (macro-character-port-output-width-set!
             _%port104106%_
             _%old-width104107%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e104104%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e104104%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn104098%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104098%_))
            (let ((_%e104101%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104098%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e104101%_))
            (macro-abandoned-mutex-exception? _%exn104098%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn104094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104094%_))
            (let ((_%e104096%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104094%_ 'exception))))
              (macro-cfun-conversion-exception? _%e104096%_))
            (macro-cfun-conversion-exception? _%exn104094%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn104090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104090%_))
            (let ((_%e104092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104090%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104092%_)
                  (macro-cfun-conversion-exception-arguments _%e104092%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e104092%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104090%_)
                (macro-cfun-conversion-exception-arguments _%exn104090%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn104090%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn104086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104086%_))
            (let ((_%e104088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104086%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104088%_)
                  (macro-cfun-conversion-exception-code _%e104088%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e104088%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104086%_)
                (macro-cfun-conversion-exception-code _%exn104086%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn104086%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn104082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104082%_))
            (let ((_%e104084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104082%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104084%_)
                  (macro-cfun-conversion-exception-message _%e104084%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e104084%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104082%_)
                (macro-cfun-conversion-exception-message _%exn104082%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn104082%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn104076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104076%_))
            (let ((_%e104079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104076%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104079%_)
                  (macro-cfun-conversion-exception-procedure _%e104079%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e104079%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104076%_)
                (macro-cfun-conversion-exception-procedure _%exn104076%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn104076%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn104072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104072%_))
            (let ((_%e104074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104072%_ 'exception))))
              (macro-datum-parsing-exception? _%e104074%_))
            (macro-datum-parsing-exception? _%exn104072%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn104068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104068%_))
            (let ((_%e104070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104068%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104070%_)
                  (macro-datum-parsing-exception-kind _%e104070%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e104070%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104068%_)
                (macro-datum-parsing-exception-kind _%exn104068%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn104068%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn104064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104064%_))
            (let ((_%e104066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104064%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104066%_)
                  (macro-datum-parsing-exception-parameters _%e104066%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e104066%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104064%_)
                (macro-datum-parsing-exception-parameters _%exn104064%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn104064%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn104058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104058%_))
            (let ((_%e104061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104058%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104061%_)
                  (macro-datum-parsing-exception-readenv _%e104061%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e104061%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104058%_)
                (macro-datum-parsing-exception-readenv _%exn104058%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn104058%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn104052%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104052%_))
            (let ((_%e104055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104052%_ 'exception))))
              (macro-deadlock-exception? _%e104055%_))
            (macro-deadlock-exception? _%exn104052%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn104048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104048%_))
            (let ((_%e104050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104048%_ 'exception))))
              (macro-divide-by-zero-exception? _%e104050%_))
            (macro-divide-by-zero-exception? _%exn104048%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn104044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104044%_))
            (let ((_%e104046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104044%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104046%_)
                  (macro-divide-by-zero-exception-arguments _%e104046%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e104046%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104044%_)
                (macro-divide-by-zero-exception-arguments _%exn104044%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn104044%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn104038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104038%_))
            (let ((_%e104041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104038%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104041%_)
                  (macro-divide-by-zero-exception-procedure _%e104041%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e104041%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104038%_)
                (macro-divide-by-zero-exception-procedure _%exn104038%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn104038%_ '())))))))
    (define error-exception?
      (lambda (_%exn104034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104034%_))
            (let ((_%e104036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104034%_ 'exception))))
              (macro-error-exception? _%e104036%_))
            (macro-error-exception? _%exn104034%_))))
    (define error-exception-message
      (lambda (_%exn104030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104030%_))
            (let ((_%e104032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104030%_ 'exception))))
              (if (macro-error-exception? _%e104032%_)
                  (macro-error-exception-message _%e104032%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e104032%_ '())))))
            (if (macro-error-exception? _%exn104030%_)
                (macro-error-exception-message _%exn104030%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn104030%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn104024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104024%_))
            (let ((_%e104027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104024%_ 'exception))))
              (if (macro-error-exception? _%e104027%_)
                  (macro-error-exception-parameters _%e104027%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e104027%_ '())))))
            (if (macro-error-exception? _%exn104024%_)
                (macro-error-exception-parameters _%exn104024%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn104024%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn104020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104020%_))
            (let ((_%e104022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104020%_ 'exception))))
              (macro-expression-parsing-exception? _%e104022%_))
            (macro-expression-parsing-exception? _%exn104020%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn104016%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104016%_))
            (let ((_%e104018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104016%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104018%_)
                  (macro-expression-parsing-exception-kind _%e104018%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e104018%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104016%_)
                (macro-expression-parsing-exception-kind _%exn104016%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn104016%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn104012%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104012%_))
            (let ((_%e104014%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104012%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104014%_)
                  (macro-expression-parsing-exception-parameters _%e104014%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e104014%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104012%_)
                (macro-expression-parsing-exception-parameters _%exn104012%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn104012%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn104006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104006%_))
            (let ((_%e104009%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104006%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104009%_)
                  (macro-expression-parsing-exception-source _%e104009%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e104009%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104006%_)
                (macro-expression-parsing-exception-source _%exn104006%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn104006%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn104002%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104002%_))
            (let ((_%e104004%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104002%_ 'exception))))
              (macro-file-exists-exception? _%e104004%_))
            (macro-file-exists-exception? _%exn104002%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn103998%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103998%_))
            (let ((_%e104000%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103998%_ 'exception))))
              (if (macro-file-exists-exception? _%e104000%_)
                  (macro-file-exists-exception-arguments _%e104000%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e104000%_ '())))))
            (if (macro-file-exists-exception? _%exn103998%_)
                (macro-file-exists-exception-arguments _%exn103998%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn103998%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn103992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103992%_))
            (let ((_%e103995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103992%_ 'exception))))
              (if (macro-file-exists-exception? _%e103995%_)
                  (macro-file-exists-exception-procedure _%e103995%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e103995%_ '())))))
            (if (macro-file-exists-exception? _%exn103992%_)
                (macro-file-exists-exception-procedure _%exn103992%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn103992%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn103988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103988%_))
            (let ((_%e103990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103988%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e103990%_))
            (macro-fixnum-overflow-exception? _%exn103988%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn103984%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103984%_))
            (let ((_%e103986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103984%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103986%_)
                  (macro-fixnum-overflow-exception-arguments _%e103986%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e103986%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103984%_)
                (macro-fixnum-overflow-exception-arguments _%exn103984%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn103984%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn103978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103978%_))
            (let ((_%e103981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103978%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103981%_)
                  (macro-fixnum-overflow-exception-procedure _%e103981%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e103981%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103978%_)
                (macro-fixnum-overflow-exception-procedure _%exn103978%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn103978%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn103972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103972%_))
            (let ((_%e103975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103972%_ 'exception))))
              (macro-heap-overflow-exception? _%e103975%_))
            (macro-heap-overflow-exception? _%exn103972%_))))
    (define inactive-thread-exception?
      (lambda (_%exn103968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103968%_))
            (let ((_%e103970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103968%_ 'exception))))
              (macro-inactive-thread-exception? _%e103970%_))
            (macro-inactive-thread-exception? _%exn103968%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn103964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103964%_))
            (let ((_%e103966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103964%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103966%_)
                  (macro-inactive-thread-exception-arguments _%e103966%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e103966%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103964%_)
                (macro-inactive-thread-exception-arguments _%exn103964%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn103964%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn103958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103958%_))
            (let ((_%e103961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103958%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103961%_)
                  (macro-inactive-thread-exception-procedure _%e103961%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e103961%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103958%_)
                (macro-inactive-thread-exception-procedure _%exn103958%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn103958%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103954%_))
            (let ((_%e103956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103954%_ 'exception))))
              (macro-initialized-thread-exception? _%e103956%_))
            (macro-initialized-thread-exception? _%exn103954%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103950%_))
            (let ((_%e103952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103950%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103952%_)
                  (macro-initialized-thread-exception-arguments _%e103952%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103952%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103950%_)
                (macro-initialized-thread-exception-arguments _%exn103950%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103950%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103944%_))
            (let ((_%e103947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103944%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103947%_)
                  (macro-initialized-thread-exception-procedure _%e103947%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103947%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103944%_)
                (macro-initialized-thread-exception-procedure _%exn103944%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103944%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103940%_))
            (let ((_%e103942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103940%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103942%_))
            (macro-invalid-hash-number-exception? _%exn103940%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103936%_))
            (let ((_%e103938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103936%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103938%_)
                  (macro-invalid-hash-number-exception-arguments _%e103938%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103938%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103936%_)
                (macro-invalid-hash-number-exception-arguments _%exn103936%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103936%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103930%_))
            (let ((_%e103933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103930%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103933%_)
                  (macro-invalid-hash-number-exception-procedure _%e103933%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103933%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103930%_)
                (macro-invalid-hash-number-exception-procedure _%exn103930%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103930%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103926%_))
            (let ((_%e103928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103926%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103928%_))
            (macro-invalid-utf8-encoding-exception? _%exn103926%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103922%_))
            (let ((_%e103924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103922%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103924%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103924%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103924%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103922%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103922%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103922%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103916%_))
            (let ((_%e103919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103916%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103919%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103919%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103919%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103916%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103916%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103916%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103912%_))
            (let ((_%e103914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103912%_ 'exception))))
              (macro-join-timeout-exception? _%e103914%_))
            (macro-join-timeout-exception? _%exn103912%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103908%_))
            (let ((_%e103910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103908%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103910%_)
                  (macro-join-timeout-exception-arguments _%e103910%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103910%_ '())))))
            (if (macro-join-timeout-exception? _%exn103908%_)
                (macro-join-timeout-exception-arguments _%exn103908%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103908%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103902%_))
            (let ((_%e103905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103902%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103905%_)
                  (macro-join-timeout-exception-procedure _%e103905%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103905%_ '())))))
            (if (macro-join-timeout-exception? _%exn103902%_)
                (macro-join-timeout-exception-procedure _%exn103902%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103902%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103898%_))
            (let ((_%e103900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103898%_ 'exception))))
              (macro-keyword-expected-exception? _%e103900%_))
            (macro-keyword-expected-exception? _%exn103898%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103894%_))
            (let ((_%e103896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103894%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103896%_)
                  (macro-keyword-expected-exception-arguments _%e103896%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103896%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103894%_)
                (macro-keyword-expected-exception-arguments _%exn103894%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103894%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103888%_))
            (let ((_%e103891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103888%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103891%_)
                  (macro-keyword-expected-exception-procedure _%e103891%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103891%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103888%_)
                (macro-keyword-expected-exception-procedure _%exn103888%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103888%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103884%_))
            (let ((_%e103886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103884%_ 'exception))))
              (macro-length-mismatch-exception? _%e103886%_))
            (macro-length-mismatch-exception? _%exn103884%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103880%_))
            (let ((_%e103882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103880%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103882%_)
                  (macro-length-mismatch-exception-arg-id _%e103882%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103882%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103880%_)
                (macro-length-mismatch-exception-arg-id _%exn103880%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103880%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103876%_))
            (let ((_%e103878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103876%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103878%_)
                  (macro-length-mismatch-exception-arguments _%e103878%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103878%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103876%_)
                (macro-length-mismatch-exception-arguments _%exn103876%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103876%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103870%_))
            (let ((_%e103873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103870%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103873%_)
                  (macro-length-mismatch-exception-procedure _%e103873%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103873%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103870%_)
                (macro-length-mismatch-exception-procedure _%exn103870%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103870%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103866%_))
            (let ((_%e103868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103866%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103868%_))
            (macro-mailbox-receive-timeout-exception? _%exn103866%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103862%_))
            (let ((_%e103864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103862%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103864%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103864%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103864%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103862%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103862%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103862%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103856%_))
            (let ((_%e103859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103856%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103859%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103859%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103859%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103856%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103856%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103856%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103852%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103852%_))
            (let ((_%e103854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103852%_ 'exception))))
              (macro-module-not-found-exception? _%e103854%_))
            (macro-module-not-found-exception? _%exn103852%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103848%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103848%_))
            (let ((_%e103850%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103848%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103850%_)
                  (macro-module-not-found-exception-arguments _%e103850%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103850%_ '())))))
            (if (macro-module-not-found-exception? _%exn103848%_)
                (macro-module-not-found-exception-arguments _%exn103848%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103848%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103842%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103842%_))
            (let ((_%e103845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103842%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103845%_)
                  (macro-module-not-found-exception-procedure _%e103845%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103845%_ '())))))
            (if (macro-module-not-found-exception? _%exn103842%_)
                (macro-module-not-found-exception-procedure _%exn103842%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103842%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103836%_))
            (let ((_%e103839%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103836%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103839%_))
            (macro-multiple-c-return-exception? _%exn103836%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103832%_))
            (let ((_%e103834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103832%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103834%_))
            (macro-no-such-file-or-directory-exception? _%exn103832%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103828%_))
            (let ((_%e103830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103828%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103830%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103830%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103830%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103828%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103828%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103828%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103822%_))
            (let ((_%e103825%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103822%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103825%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103825%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103825%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103822%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103822%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103822%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103818%_))
            (let ((_%e103820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103818%_ 'exception))))
              (macro-noncontinuable-exception? _%e103820%_))
            (macro-noncontinuable-exception? _%exn103818%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103812%_))
            (let ((_%e103815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103812%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103815%_)
                  (macro-noncontinuable-exception-reason _%e103815%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103815%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103812%_)
                (macro-noncontinuable-exception-reason _%exn103812%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103812%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103808%_))
            (let ((_%e103810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103808%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103810%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103808%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103804%_))
            (let ((_%e103806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103804%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103806%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103806%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103806%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103804%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103804%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103804%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103798%_))
            (let ((_%e103801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103798%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103801%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103801%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103801%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103798%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103798%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103798%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103794%_))
            (let ((_%e103796%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103794%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103796%_))
            (macro-nonprocedure-operator-exception? _%exn103794%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn103790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103790%_))
            (let ((_%e103792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103790%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103792%_)
                  (macro-nonprocedure-operator-exception-arguments _%e103792%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e103792%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103790%_)
                (macro-nonprocedure-operator-exception-arguments _%exn103790%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn103790%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn103786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103786%_))
            (let ((_%e103788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103786%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103788%_)
                  (macro-nonprocedure-operator-exception-code _%e103788%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e103788%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103786%_)
                (macro-nonprocedure-operator-exception-code _%exn103786%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn103786%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn103782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103782%_))
            (let ((_%e103784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103782%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103784%_)
                  (macro-nonprocedure-operator-exception-operator _%e103784%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e103784%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103782%_)
                (macro-nonprocedure-operator-exception-operator _%exn103782%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn103782%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn103776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103776%_))
            (let ((_%e103779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103776%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103779%_)
                  (macro-nonprocedure-operator-exception-rte _%e103779%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e103779%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103776%_)
                (macro-nonprocedure-operator-exception-rte _%exn103776%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn103776%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn103772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103772%_))
            (let ((_%e103774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103772%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e103774%_))
            (macro-not-in-compilation-context-exception? _%exn103772%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn103768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103768%_))
            (let ((_%e103770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103768%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103770%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e103770%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e103770%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103768%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn103768%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn103768%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn103762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103762%_))
            (let ((_%e103765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103762%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103765%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e103765%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e103765%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103762%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn103762%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn103762%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn103758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103758%_))
            (let ((_%e103760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103758%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e103760%_))
            (macro-number-of-arguments-limit-exception? _%exn103758%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn103754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103754%_))
            (let ((_%e103756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103754%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103756%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e103756%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e103756%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103754%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn103754%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn103754%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn103748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103748%_))
            (let ((_%e103751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103748%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103751%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e103751%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e103751%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103748%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn103748%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn103748%_ '())))))))
    (define os-exception?
      (lambda (_%exn103744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103744%_))
            (let ((_%e103746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103744%_ 'exception))))
              (macro-os-exception? _%e103746%_))
            (macro-os-exception? _%exn103744%_))))
    (define os-exception-arguments
      (lambda (_%exn103740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103740%_))
            (let ((_%e103742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103740%_ 'exception))))
              (if (macro-os-exception? _%e103742%_)
                  (macro-os-exception-arguments _%e103742%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e103742%_ '())))))
            (if (macro-os-exception? _%exn103740%_)
                (macro-os-exception-arguments _%exn103740%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn103740%_ '())))))))
    (define os-exception-code
      (lambda (_%exn103736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103736%_))
            (let ((_%e103738%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103736%_ 'exception))))
              (if (macro-os-exception? _%e103738%_)
                  (macro-os-exception-code _%e103738%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e103738%_ '())))))
            (if (macro-os-exception? _%exn103736%_)
                (macro-os-exception-code _%exn103736%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn103736%_ '())))))))
    (define os-exception-message
      (lambda (_%exn103732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103732%_))
            (let ((_%e103734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103732%_ 'exception))))
              (if (macro-os-exception? _%e103734%_)
                  (macro-os-exception-message _%e103734%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e103734%_ '())))))
            (if (macro-os-exception? _%exn103732%_)
                (macro-os-exception-message _%exn103732%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn103732%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn103726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103726%_))
            (let ((_%e103729%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103726%_ 'exception))))
              (if (macro-os-exception? _%e103729%_)
                  (macro-os-exception-procedure _%e103729%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e103729%_ '())))))
            (if (macro-os-exception? _%exn103726%_)
                (macro-os-exception-procedure _%exn103726%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn103726%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn103722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103722%_))
            (let ((_%e103724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103722%_ 'exception))))
              (macro-permission-denied-exception? _%e103724%_))
            (macro-permission-denied-exception? _%exn103722%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn103718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103718%_))
            (let ((_%e103720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103718%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103720%_)
                  (macro-permission-denied-exception-arguments _%e103720%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e103720%_ '())))))
            (if (macro-permission-denied-exception? _%exn103718%_)
                (macro-permission-denied-exception-arguments _%exn103718%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn103718%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn103712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103712%_))
            (let ((_%e103715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103712%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103715%_)
                  (macro-permission-denied-exception-procedure _%e103715%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e103715%_ '())))))
            (if (macro-permission-denied-exception? _%exn103712%_)
                (macro-permission-denied-exception-procedure _%exn103712%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn103712%_ '())))))))
    (define range-exception?
      (lambda (_%exn103708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103708%_))
            (let ((_%e103710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103708%_ 'exception))))
              (macro-range-exception? _%e103710%_))
            (macro-range-exception? _%exn103708%_))))
    (define range-exception-arg-id
      (lambda (_%exn103704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103704%_))
            (let ((_%e103706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103704%_ 'exception))))
              (if (macro-range-exception? _%e103706%_)
                  (macro-range-exception-arg-id _%e103706%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e103706%_ '())))))
            (if (macro-range-exception? _%exn103704%_)
                (macro-range-exception-arg-id _%exn103704%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn103704%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn103700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103700%_))
            (let ((_%e103702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103700%_ 'exception))))
              (if (macro-range-exception? _%e103702%_)
                  (macro-range-exception-arguments _%e103702%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e103702%_ '())))))
            (if (macro-range-exception? _%exn103700%_)
                (macro-range-exception-arguments _%exn103700%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn103700%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn103694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103694%_))
            (let ((_%e103697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103694%_ 'exception))))
              (if (macro-range-exception? _%e103697%_)
                  (macro-range-exception-procedure _%e103697%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e103697%_ '())))))
            (if (macro-range-exception? _%exn103694%_)
                (macro-range-exception-procedure _%exn103694%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn103694%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn103690%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103690%_))
            (let ((_%e103692%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103690%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e103692%_))
            (macro-rpc-remote-error-exception? _%exn103690%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn103686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103686%_))
            (let ((_%e103688%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103686%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103688%_)
                  (macro-rpc-remote-error-exception-arguments _%e103688%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e103688%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103686%_)
                (macro-rpc-remote-error-exception-arguments _%exn103686%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn103686%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn103682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103682%_))
            (let ((_%e103684%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103682%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103684%_)
                  (macro-rpc-remote-error-exception-message _%e103684%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e103684%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103682%_)
                (macro-rpc-remote-error-exception-message _%exn103682%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn103682%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn103676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103676%_))
            (let ((_%e103679%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103676%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103679%_)
                  (macro-rpc-remote-error-exception-procedure _%e103679%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e103679%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103676%_)
                (macro-rpc-remote-error-exception-procedure _%exn103676%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn103676%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn103672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103672%_))
            (let ((_%e103674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103672%_ 'exception))))
              (macro-scheduler-exception? _%e103674%_))
            (macro-scheduler-exception? _%exn103672%_))))
    (define scheduler-exception-reason
      (lambda (_%exn103666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103666%_))
            (let ((_%e103669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103666%_ 'exception))))
              (if (macro-scheduler-exception? _%e103669%_)
                  (macro-scheduler-exception-reason _%e103669%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e103669%_ '())))))
            (if (macro-scheduler-exception? _%exn103666%_)
                (macro-scheduler-exception-reason _%exn103666%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn103666%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn103662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103662%_))
            (let ((_%e103664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103662%_ 'exception))))
              (macro-sfun-conversion-exception? _%e103664%_))
            (macro-sfun-conversion-exception? _%exn103662%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn103658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103658%_))
            (let ((_%e103660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103658%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103660%_)
                  (macro-sfun-conversion-exception-arguments _%e103660%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e103660%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103658%_)
                (macro-sfun-conversion-exception-arguments _%exn103658%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn103658%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn103654%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103654%_))
            (let ((_%e103656%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103654%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103656%_)
                  (macro-sfun-conversion-exception-code _%e103656%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e103656%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103654%_)
                (macro-sfun-conversion-exception-code _%exn103654%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn103654%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn103650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103650%_))
            (let ((_%e103652%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103650%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103652%_)
                  (macro-sfun-conversion-exception-message _%e103652%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e103652%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103650%_)
                (macro-sfun-conversion-exception-message _%exn103650%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn103650%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn103644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103644%_))
            (let ((_%e103647%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103644%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103647%_)
                  (macro-sfun-conversion-exception-procedure _%e103647%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e103647%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103644%_)
                (macro-sfun-conversion-exception-procedure _%exn103644%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn103644%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn103638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103638%_))
            (let ((_%e103641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103638%_ 'exception))))
              (macro-stack-overflow-exception? _%e103641%_))
            (macro-stack-overflow-exception? _%exn103638%_))))
    (define started-thread-exception?
      (lambda (_%exn103634%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103634%_))
            (let ((_%e103636%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103634%_ 'exception))))
              (macro-started-thread-exception? _%e103636%_))
            (macro-started-thread-exception? _%exn103634%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn103630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103630%_))
            (let ((_%e103632%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103630%_ 'exception))))
              (if (macro-started-thread-exception? _%e103632%_)
                  (macro-started-thread-exception-arguments _%e103632%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e103632%_ '())))))
            (if (macro-started-thread-exception? _%exn103630%_)
                (macro-started-thread-exception-arguments _%exn103630%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn103630%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn103624%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103624%_))
            (let ((_%e103627%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103624%_ 'exception))))
              (if (macro-started-thread-exception? _%e103627%_)
                  (macro-started-thread-exception-procedure _%e103627%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e103627%_ '())))))
            (if (macro-started-thread-exception? _%exn103624%_)
                (macro-started-thread-exception-procedure _%exn103624%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn103624%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn103620%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103620%_))
            (let ((_%e103622%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103620%_ 'exception))))
              (macro-terminated-thread-exception? _%e103622%_))
            (macro-terminated-thread-exception? _%exn103620%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn103616%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103616%_))
            (let ((_%e103618%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103616%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103618%_)
                  (macro-terminated-thread-exception-arguments _%e103618%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e103618%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103616%_)
                (macro-terminated-thread-exception-arguments _%exn103616%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn103616%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn103610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103610%_))
            (let ((_%e103613%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103610%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103613%_)
                  (macro-terminated-thread-exception-procedure _%e103613%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e103613%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103610%_)
                (macro-terminated-thread-exception-procedure _%exn103610%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn103610%_ '())))))))
    (define type-exception?
      (lambda (_%exn103606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103606%_))
            (let ((_%e103608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103606%_ 'exception))))
              (macro-type-exception? _%e103608%_))
            (macro-type-exception? _%exn103606%_))))
    (define type-exception-arg-id
      (lambda (_%exn103602%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103602%_))
            (let ((_%e103604%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103602%_ 'exception))))
              (if (macro-type-exception? _%e103604%_)
                  (macro-type-exception-arg-id _%e103604%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e103604%_ '())))))
            (if (macro-type-exception? _%exn103602%_)
                (macro-type-exception-arg-id _%exn103602%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn103602%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn103598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103598%_))
            (let ((_%e103600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103598%_ 'exception))))
              (if (macro-type-exception? _%e103600%_)
                  (macro-type-exception-arguments _%e103600%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e103600%_ '())))))
            (if (macro-type-exception? _%exn103598%_)
                (macro-type-exception-arguments _%exn103598%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn103598%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn103594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103594%_))
            (let ((_%e103596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103594%_ 'exception))))
              (if (macro-type-exception? _%e103596%_)
                  (macro-type-exception-procedure _%e103596%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e103596%_ '())))))
            (if (macro-type-exception? _%exn103594%_)
                (macro-type-exception-procedure _%exn103594%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn103594%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn103588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103588%_))
            (let ((_%e103591%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103588%_ 'exception))))
              (if (macro-type-exception? _%e103591%_)
                  (macro-type-exception-type-id _%e103591%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e103591%_ '())))))
            (if (macro-type-exception? _%exn103588%_)
                (macro-type-exception-type-id _%exn103588%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn103588%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn103584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103584%_))
            (let ((_%e103586%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103584%_ 'exception))))
              (macro-unbound-global-exception? _%e103586%_))
            (macro-unbound-global-exception? _%exn103584%_))))
    (define unbound-global-exception-code
      (lambda (_%exn103580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103580%_))
            (let ((_%e103582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103580%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103582%_)
                  (macro-unbound-global-exception-code _%e103582%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e103582%_ '())))))
            (if (macro-unbound-global-exception? _%exn103580%_)
                (macro-unbound-global-exception-code _%exn103580%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn103580%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn103576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103576%_))
            (let ((_%e103578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103576%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103578%_)
                  (macro-unbound-global-exception-rte _%e103578%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e103578%_ '())))))
            (if (macro-unbound-global-exception? _%exn103576%_)
                (macro-unbound-global-exception-rte _%exn103576%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn103576%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn103570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103570%_))
            (let ((_%e103573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103570%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103573%_)
                  (macro-unbound-global-exception-variable _%e103573%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e103573%_ '())))))
            (if (macro-unbound-global-exception? _%exn103570%_)
                (macro-unbound-global-exception-variable _%exn103570%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn103570%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn103566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103566%_))
            (let ((_%e103568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103566%_ 'exception))))
              (macro-unbound-key-exception? _%e103568%_))
            (macro-unbound-key-exception? _%exn103566%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn103562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103562%_))
            (let ((_%e103564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103562%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103564%_)
                  (macro-unbound-key-exception-arguments _%e103564%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e103564%_ '())))))
            (if (macro-unbound-key-exception? _%exn103562%_)
                (macro-unbound-key-exception-arguments _%exn103562%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn103562%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn103556%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103556%_))
            (let ((_%e103559%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103556%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103559%_)
                  (macro-unbound-key-exception-procedure _%e103559%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e103559%_ '())))))
            (if (macro-unbound-key-exception? _%exn103556%_)
                (macro-unbound-key-exception-procedure _%exn103556%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn103556%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn103552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103552%_))
            (let ((_%e103554%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103552%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e103554%_))
            (macro-unbound-os-environment-variable-exception? _%exn103552%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn103548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103548%_))
            (let ((_%e103550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103548%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103550%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e103550%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e103550%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103548%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn103548%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn103548%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn103542%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103542%_))
            (let ((_%e103545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103542%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103545%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e103545%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e103545%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103542%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn103542%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn103542%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn103538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103538%_))
            (let ((_%e103540%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103538%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e103540%_))
            (macro-unbound-serial-number-exception? _%exn103538%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn103534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103534%_))
            (let ((_%e103536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103534%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103536%_)
                  (macro-unbound-serial-number-exception-arguments _%e103536%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e103536%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103534%_)
                (macro-unbound-serial-number-exception-arguments _%exn103534%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn103534%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn103528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103528%_))
            (let ((_%e103531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103528%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103531%_)
                  (macro-unbound-serial-number-exception-procedure _%e103531%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e103531%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103528%_)
                (macro-unbound-serial-number-exception-procedure _%exn103528%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn103528%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn103524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103524%_))
            (let ((_%e103526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103524%_ 'exception))))
              (macro-uncaught-exception? _%e103526%_))
            (macro-uncaught-exception? _%exn103524%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn103520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103520%_))
            (let ((_%e103522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103520%_ 'exception))))
              (if (macro-uncaught-exception? _%e103522%_)
                  (macro-uncaught-exception-arguments _%e103522%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e103522%_ '())))))
            (if (macro-uncaught-exception? _%exn103520%_)
                (macro-uncaught-exception-arguments _%exn103520%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn103520%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn103516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103516%_))
            (let ((_%e103518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103516%_ 'exception))))
              (if (macro-uncaught-exception? _%e103518%_)
                  (macro-uncaught-exception-procedure _%e103518%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e103518%_ '())))))
            (if (macro-uncaught-exception? _%exn103516%_)
                (macro-uncaught-exception-procedure _%exn103516%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn103516%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn103510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103510%_))
            (let ((_%e103513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103510%_ 'exception))))
              (if (macro-uncaught-exception? _%e103513%_)
                  (macro-uncaught-exception-reason _%e103513%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e103513%_ '())))))
            (if (macro-uncaught-exception? _%exn103510%_)
                (macro-uncaught-exception-reason _%exn103510%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn103510%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn103506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103506%_))
            (let ((_%e103508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103506%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e103508%_))
            (macro-uninitialized-thread-exception? _%exn103506%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn103502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103502%_))
            (let ((_%e103504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103502%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103504%_)
                  (macro-uninitialized-thread-exception-arguments _%e103504%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e103504%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103502%_)
                (macro-uninitialized-thread-exception-arguments _%exn103502%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn103502%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn103496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103496%_))
            (let ((_%e103499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103496%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103499%_)
                  (macro-uninitialized-thread-exception-procedure _%e103499%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e103499%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103496%_)
                (macro-uninitialized-thread-exception-procedure _%exn103496%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn103496%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn103492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103492%_))
            (let ((_%e103494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103492%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e103494%_))
            (macro-unknown-keyword-argument-exception? _%exn103492%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn103488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103488%_))
            (let ((_%e103490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103488%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103490%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e103490%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e103490%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103488%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn103488%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn103488%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn103482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103482%_))
            (let ((_%e103485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103482%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103485%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e103485%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e103485%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103482%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn103482%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn103482%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn103478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103478%_))
            (let ((_%e103480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103478%_ 'exception))))
              (macro-unterminated-process-exception? _%e103480%_))
            (macro-unterminated-process-exception? _%exn103478%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn103474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103474%_))
            (let ((_%e103476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103474%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103476%_)
                  (macro-unterminated-process-exception-arguments _%e103476%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e103476%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103474%_)
                (macro-unterminated-process-exception-arguments _%exn103474%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn103474%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn103468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103468%_))
            (let ((_%e103471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103468%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103471%_)
                  (macro-unterminated-process-exception-procedure _%e103471%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e103471%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103468%_)
                (macro-unterminated-process-exception-procedure _%exn103468%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn103468%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn103464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103464%_))
            (let ((_%e103466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103464%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e103466%_))
            (macro-wrong-number-of-arguments-exception? _%exn103464%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn103460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103460%_))
            (let ((_%e103462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103460%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103462%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e103462%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e103462%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103460%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn103460%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn103460%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn103454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103454%_))
            (let ((_%e103457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103454%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103457%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e103457%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e103457%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103454%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn103454%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn103454%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn103450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103450%_))
            (let ((_%e103452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103450%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e103452%_))
            (macro-wrong-number-of-values-exception? _%exn103450%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn103446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103446%_))
            (let ((_%e103448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103446%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103448%_)
                  (macro-wrong-number-of-values-exception-code _%e103448%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e103448%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103446%_)
                (macro-wrong-number-of-values-exception-code _%exn103446%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn103446%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn103442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103442%_))
            (let ((_%e103444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103442%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103444%_)
                  (macro-wrong-number-of-values-exception-rte _%e103444%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e103444%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103442%_)
                (macro-wrong-number-of-values-exception-rte _%exn103442%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn103442%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn103436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103436%_))
            (let ((_%e103439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103436%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103439%_)
                  (macro-wrong-number-of-values-exception-vals _%e103439%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e103439%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103436%_)
                (macro-wrong-number-of-values-exception-vals _%exn103436%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn103436%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn103430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103430%_))
            (let ((_%e103433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103430%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e103433%_))
            (macro-wrong-processor-c-return-exception? _%exn103430%_))))))
