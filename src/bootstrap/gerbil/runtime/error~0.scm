(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1742226230)
  (begin
    (define Exception::t
      (let ((__tmp104966 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104966
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104936%_
        (apply make-instance Exception::t _%$args104936%_)))
    (define StackTrace::t
      (let ((__tmp104967 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104967
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104933%_
        (apply make-instance StackTrace::t _%$args104933%_)))
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
      (let ((__tmp104968 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104968
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104930%_ (apply make-instance Error::t _%$args104930%_)))
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
      (let ((__tmp104969 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104969
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104927%_
        (apply make-instance ContractViolation::t _%$args104927%_)))
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
      (let ((__tmp104970 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104970
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104924%_
        (apply make-instance RuntimeException::t _%$args104924%_)))
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
      (lambda (_%exn104919%_ _%continue104920%_)
        (let ((_%exn104922%_ (wrap-runtime-exception _%exn104919%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104922%_ _%continue104920%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104915%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104915%_ 'continuation))
                '#!void
                (let ((__tmp104971
                       (lambda (_%cont104917%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104915%_
                            'continuation
                            _%cont104917%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104971)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104915%_))))
    (define error
      (lambda (_%message104912%_ . _%irritants104913%_)
        (raise (let ((__obj104963
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104963
                  _%message104912%_
                  'irritants:
                  _%irritants104913%_)
                 __obj104963))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104884%_
               _%ctx104879104885%_
               _%contract-expr104880104887%_
               _%value104881104889%_
               _%message104891%_)
        (let* ((_%ctx104893%_
                (if (eq? _%ctx104879104885%_ absent-value)
                    '#f
                    _%ctx104879104885%_))
               (_%contract-expr104895%_
                (if (eq? _%contract-expr104880104887%_ absent-value)
                    '#f
                    _%contract-expr104880104887%_))
               (_%value104897%_
                (if (eq? _%value104881104889%_ absent-value)
                    '#f
                    _%value104881104889%_)))
          (raise (let ((__obj104964
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104964
                    _%message104891%_
                    'where:
                    _%ctx104893%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104895%_
                                (cons 'value: (cons _%value104897%_ '())))))
                   __obj104964)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104902%_ . _%args104903%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104902%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104902%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104902%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104902%_
                  'value:
                  absent-value))
               _%args104903%_)))
    (define __raise-contract-violation-error
      (lambda _%args104882104909%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104882104909%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104853%_ _%thunk104854%_)
        (if (procedure? _%handler104853%_)
            (let ((_%handler104858%_ _%handler104853%_))
              (if (procedure? _%thunk104854%_)
                  (let ((_%thunk104868%_ _%thunk104854%_))
                    (__with-exception-handler
                     _%handler104858%_
                     _%thunk104868%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104854%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104853%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler104828%_ _%thunk104829%_)
        (let* ((_%handler104832%_ _%handler104828%_)
               (_%thunk104840%_ _%thunk104829%_)
               (__tmp104972
                (lambda (_%exn104849%_)
                  (let ((_%exn104851%_ (wrap-runtime-exception _%exn104849%_)))
                    (declare (not safe))
                    (_%handler104832%_ _%exn104851%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104972 _%thunk104840%_))))
    (define with-catch
      (lambda (_%handler104803%_ _%thunk104804%_)
        (if (procedure? _%handler104803%_)
            (let ((_%handler104808%_ _%handler104803%_))
              (if (procedure? _%thunk104804%_)
                  (let ((_%thunk104818%_ _%thunk104804%_))
                    (__with-catch _%handler104808%_ _%thunk104818%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104804%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler104803%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler104778%_ _%thunk104779%_)
        (let* ((_%handler104782%_ _%handler104778%_)
               (_%thunk104790%_ _%thunk104779%_)
               (__tmp104973
                (lambda (_%cont104799%_)
                  (__with-exception-handler
                   (lambda (_%exn104801%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont104799%_
                        _%handler104782%_
                        _%exn104801%_)))
                   _%thunk104790%_))))
          (declare (not safe))
          (##continuation-capture __tmp104973))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn104765%_)
        (if (or (heap-overflow-exception? _%exn104765%_)
                (stack-overflow-exception? _%exn104765%_))
            _%exn104765%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn104765%_))
                _%exn104765%_
                (if (macro-exception? _%exn104765%_)
                    (let ((_%rte104773%_
                           (let ((__obj104965
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104965
                                _%exn104765%_
                                '2
                                '#f
                                '#f))
                             __obj104965)))
                      (let ((__tmp104974
                             (lambda (_%cont104775%_)
                               (let ((__tmp104975
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont104775%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte104773%_
                                  'continuation
                                  __tmp104975)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104974))
                      _%rte104773%_)
                    _%exn104765%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj104760%_)
        (let ((_%$e104762%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj104760%_))))
          (if _%$e104762%_ _%$e104762%_ (error-exception? _%obj104760%_)))))
    (define error-message
      (lambda (_%obj104753%_)
        (let ((_%$e104755%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj104753%_ 'message false))))
          (if _%$e104755%_
              _%$e104755%_
              (if (error-exception? _%obj104753%_)
                  (error-exception-message _%obj104753%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj104748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104748%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104748%_ 'irritants))
            (if (error-exception? _%obj104748%_)
                (error-exception-parameters _%obj104748%_)
                '#f))))
    (define error-trace
      (lambda (_%obj104746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104746%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104746%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e104727%_ _%port104728%_)
        (let ((_%$e104730%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e104727%_ 'display-exception))))
          (if _%$e104730%_
              ((lambda (_%f104733%_) (_%f104733%_ _%e104727%_ _%port104728%_))
               _%$e104730%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e104727%_ _%port104728%_))))))
    (define display-exception__0
      (lambda (_%e104739%_)
        (let ((_%port104741%_ (current-error-port)))
          (display-exception__% _%e104739%_ _%port104741%_))))
    (define display-exception
      (lambda _g104977_
        (let ((_g104976_ (let () (declare (not safe)) (##length _g104977_))))
          (cond ((let () (declare (not safe)) (##fx= _g104976_ 1))
                 (apply display-exception__0 _g104977_))
                ((let () (declare (not safe)) (##fx= _g104976_ 2))
                 (apply display-exception__% _g104977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104977_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self103096104703%_ _%message104705%_ . _%rest104706%_)
        (let* ((_%self104708%_ _%self103096104703%_)
               (_%self104710%_ _%self104708%_)
               (_%message104724%_
                (if (string? _%message104705%_)
                    _%message104705%_
                    (call-with-output-string
                     '""
                     (lambda (_%g104719104721%_)
                       (display _%message104705%_ _%g104719104721%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self104710%_ 'message _%message104724%_))
          (apply class-instance-init! _%self104710%_ _%rest104706%_))))
    (define Error:::init!::specialize
      (lambda (__klass104938 __method-table104939)
        (let ((__message104940
               (let ((__slot104941
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104938 'message))))
                 (if __slot104941
                     __slot104941
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103096104703%_ _%message104705%_ . _%rest104706%_)
            (let* ((_%self104708%_ _%self103096104703%_)
                   (_%self104710%_ _%self104708%_)
                   (_%message104724%_
                    (if (string? _%message104705%_)
                        _%message104705%_
                        (call-with-output-string
                         '""
                         (lambda (_%g104719104721%_)
                           (display _%message104705%_ _%g104719104721%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self104710%_
                 _%message104724%_
                 __message104940
                 '#f
                 '#f))
              (apply class-instance-init! _%self104710%_ _%rest104706%_))))))
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
      (lambda (_%self103097104425%_ _%port104427%_)
        (let* ((_%self104429%_ _%self103097104425%_)
               (_%self104431%_ _%self104429%_))
          (let ((_%tmp-port104441%_ (open-output-string))
                (_%display-error-newline104442%_
                 (> (output-port-column _%port104427%_) '0)))
            (fix-port-width! _%tmp-port104441%_)
            (let ((__tmp104978
                   (lambda ()
                     (if _%display-error-newline104442%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e104445%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104431%_ 'where))))
                       (if _%$e104445%_ (display _%$e104445%_) (display '"?")))
                     (let ((__tmp104979
                            (let ((__tmp104980
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self104431%_))))
                              (declare (not safe))
                              (##type-name __tmp104980))))
                       (declare (not safe))
                       (display* '" [" __tmp104979 '"]: "))
                     (let ((__tmp104981
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104431%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104981))
                     (let ((_%irritants104449%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104431%_ 'irritants))))
                       (if (null? _%irritants104449%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj104451%_)
                                (if (u8vector? _%obj104451%_)
                                    (let ((__tmp104982
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj104451%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104982))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj104451%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants104449%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont104452104454%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self104431%_
                                   'continuation))))
                           (if _%cont104452104454%_
                               (let ((_%cont104457%_ _%cont104452104454%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont104457%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104978
               current-output-port
               _%tmp-port104441%_))
            (let ((__tmp104983 (get-output-string _%tmp-port104441%_)))
              (declare (not safe))
              (##write-string __tmp104983 _%port104427%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104942 __method-table104943)
        (let ((__continuation104944
               (let ((__slot104948
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104942 'continuation))))
                 (if __slot104948
                     __slot104948
                     (error '"Unknown slot" 'continuation))))
              (__message104945
               (let ((__slot104949
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104942 'message))))
                 (if __slot104949
                     __slot104949
                     (error '"Unknown slot" 'message))))
              (__irritants104946
               (let ((__slot104950
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104942 'irritants))))
                 (if __slot104950
                     __slot104950
                     (error '"Unknown slot" 'irritants))))
              (__where104947
               (let ((__slot104951
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104942 'where))))
                 (if __slot104951
                     __slot104951
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self103097104425%_ _%port104427%_)
            (let* ((_%self104429%_ _%self103097104425%_)
                   (_%self104431%_ _%self104429%_))
              (let ((_%tmp-port104441%_ (open-output-string))
                    (_%display-error-newline104442%_
                     (> (output-port-column _%port104427%_) '0)))
                (fix-port-width! _%tmp-port104441%_)
                (let ((__tmp104984
                       (lambda ()
                         (if _%display-error-newline104442%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e104445%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104431%_
                                   __where104947
                                   '#f
                                   '#f))))
                           (if _%$e104445%_
                               (display _%$e104445%_)
                               (display '"?")))
                         (let ((__tmp104985
                                (let ((__tmp104986
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self104431%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104986))))
                           (declare (not safe))
                           (display* '" [" __tmp104985 '"]: "))
                         (let ((__tmp104987
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104431%_
                                   __message104945
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104987))
                         (let ((_%irritants104449%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104431%_
                                   __irritants104946
                                   '#f
                                   '#f))))
                           (if (null? _%irritants104449%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj104451%_)
                                    (if (u8vector? _%obj104451%_)
                                        (let ((__tmp104988
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj104451%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104988))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj104451%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants104449%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont104452104454%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self104431%_
                                       __continuation104944
                                       '#f
                                       '#f))))
                               (if _%cont104452104454%_
                                   (let ((_%cont104457%_ _%cont104452104454%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont104457%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104984
                   current-output-port
                   _%tmp-port104441%_))
                (let ((__tmp104989 (get-output-string _%tmp-port104441%_)))
                  (declare (not safe))
                  (##write-string __tmp104989 _%port104427%_))))))))
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
      (lambda (_%self103098104279%_ _%port104281%_)
        (let* ((_%self104283%_ _%self103098104279%_)
               (_%self104285%_ _%self104283%_)
               (_%tmp-port104295%_ (open-output-string)))
          (fix-port-width! _%tmp-port104295%_)
          (let ((__tmp104990
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self104285%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104990 _%tmp-port104295%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont104296104298%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self104285%_ 'continuation))))
                (if _%cont104296104298%_
                    (let ((_%cont104301%_ _%cont104296104298%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port104295%_)
                      (newline _%tmp-port104295%_)
                      (display-continuation-backtrace
                       _%cont104301%_
                       _%tmp-port104295%_))
                    '#f))
              '#!void)
          (let ((__tmp104991 (get-output-string _%tmp-port104295%_)))
            (declare (not safe))
            (##write-string __tmp104991 _%port104281%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104952 __method-table104953)
        (let ((__continuation104954
               (let ((__slot104956
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104952 'continuation))))
                 (if __slot104956
                     __slot104956
                     (error '"Unknown slot" 'continuation))))
              (__exception104955
               (let ((__slot104957
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104952 'exception))))
                 (if __slot104957
                     __slot104957
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self103098104279%_ _%port104281%_)
            (let* ((_%self104283%_ _%self103098104279%_)
                   (_%self104285%_ _%self104283%_)
                   (_%tmp-port104295%_ (open-output-string)))
              (fix-port-width! _%tmp-port104295%_)
              (let ((__tmp104992
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self104285%_
                        __exception104955
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104992 _%tmp-port104295%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont104296104298%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self104285%_
                            __continuation104954
                            '#f
                            '#f))))
                    (if _%cont104296104298%_
                        (let ((_%cont104301%_ _%cont104296104298%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port104295%_)
                          (newline _%tmp-port104295%_)
                          (display-continuation-backtrace
                           _%cont104301%_
                           _%tmp-port104295%_))
                        '#f))
                  '#!void)
              (let ((__tmp104993 (get-output-string _%tmp-port104295%_)))
                (declare (not safe))
                (##write-string __tmp104993 _%port104281%_)))))))
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
      (lambda (_%port104151%_)
        (if (macro-character-port? _%port104151%_)
            (let ((_%old-width104153%_
                   (macro-character-port-output-width _%port104151%_)))
              (macro-character-port-output-width-set!
               _%port104151%_
               (lambda (_%port104155%_) '256))
              _%old-width104153%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port104148%_ _%old-width104149%_)
        (if (macro-character-port? _%port104148%_)
            (macro-character-port-output-width-set!
             _%port104148%_
             _%old-width104149%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e104146%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e104146%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn104140%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104140%_))
            (let ((_%e104143%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104140%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e104143%_))
            (macro-abandoned-mutex-exception? _%exn104140%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn104136%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104136%_))
            (let ((_%e104138%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104136%_ 'exception))))
              (macro-cfun-conversion-exception? _%e104138%_))
            (macro-cfun-conversion-exception? _%exn104136%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn104132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104132%_))
            (let ((_%e104134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104132%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104134%_)
                  (macro-cfun-conversion-exception-arguments _%e104134%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e104134%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104132%_)
                (macro-cfun-conversion-exception-arguments _%exn104132%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn104132%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn104128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104128%_))
            (let ((_%e104130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104128%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104130%_)
                  (macro-cfun-conversion-exception-code _%e104130%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e104130%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104128%_)
                (macro-cfun-conversion-exception-code _%exn104128%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn104128%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn104124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104124%_))
            (let ((_%e104126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104124%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104126%_)
                  (macro-cfun-conversion-exception-message _%e104126%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e104126%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104124%_)
                (macro-cfun-conversion-exception-message _%exn104124%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn104124%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn104118%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104118%_))
            (let ((_%e104121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104118%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104121%_)
                  (macro-cfun-conversion-exception-procedure _%e104121%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e104121%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104118%_)
                (macro-cfun-conversion-exception-procedure _%exn104118%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn104118%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn104114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104114%_))
            (let ((_%e104116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104114%_ 'exception))))
              (macro-datum-parsing-exception? _%e104116%_))
            (macro-datum-parsing-exception? _%exn104114%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn104110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104110%_))
            (let ((_%e104112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104110%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104112%_)
                  (macro-datum-parsing-exception-kind _%e104112%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e104112%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104110%_)
                (macro-datum-parsing-exception-kind _%exn104110%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn104110%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn104106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104106%_))
            (let ((_%e104108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104106%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104108%_)
                  (macro-datum-parsing-exception-parameters _%e104108%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e104108%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104106%_)
                (macro-datum-parsing-exception-parameters _%exn104106%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn104106%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn104100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104100%_))
            (let ((_%e104103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104100%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104103%_)
                  (macro-datum-parsing-exception-readenv _%e104103%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e104103%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104100%_)
                (macro-datum-parsing-exception-readenv _%exn104100%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn104100%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn104094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104094%_))
            (let ((_%e104097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104094%_ 'exception))))
              (macro-deadlock-exception? _%e104097%_))
            (macro-deadlock-exception? _%exn104094%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn104090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104090%_))
            (let ((_%e104092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104090%_ 'exception))))
              (macro-divide-by-zero-exception? _%e104092%_))
            (macro-divide-by-zero-exception? _%exn104090%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn104086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104086%_))
            (let ((_%e104088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104086%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104088%_)
                  (macro-divide-by-zero-exception-arguments _%e104088%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e104088%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104086%_)
                (macro-divide-by-zero-exception-arguments _%exn104086%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn104086%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn104080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104080%_))
            (let ((_%e104083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104080%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104083%_)
                  (macro-divide-by-zero-exception-procedure _%e104083%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e104083%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104080%_)
                (macro-divide-by-zero-exception-procedure _%exn104080%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn104080%_ '())))))))
    (define error-exception?
      (lambda (_%exn104076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104076%_))
            (let ((_%e104078%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104076%_ 'exception))))
              (macro-error-exception? _%e104078%_))
            (macro-error-exception? _%exn104076%_))))
    (define error-exception-message
      (lambda (_%exn104072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104072%_))
            (let ((_%e104074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104072%_ 'exception))))
              (if (macro-error-exception? _%e104074%_)
                  (macro-error-exception-message _%e104074%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e104074%_ '())))))
            (if (macro-error-exception? _%exn104072%_)
                (macro-error-exception-message _%exn104072%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn104072%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn104066%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104066%_))
            (let ((_%e104069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104066%_ 'exception))))
              (if (macro-error-exception? _%e104069%_)
                  (macro-error-exception-parameters _%e104069%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e104069%_ '())))))
            (if (macro-error-exception? _%exn104066%_)
                (macro-error-exception-parameters _%exn104066%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn104066%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn104062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104062%_))
            (let ((_%e104064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104062%_ 'exception))))
              (macro-expression-parsing-exception? _%e104064%_))
            (macro-expression-parsing-exception? _%exn104062%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn104058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104058%_))
            (let ((_%e104060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104058%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104060%_)
                  (macro-expression-parsing-exception-kind _%e104060%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e104060%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104058%_)
                (macro-expression-parsing-exception-kind _%exn104058%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn104058%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn104054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104054%_))
            (let ((_%e104056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104054%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104056%_)
                  (macro-expression-parsing-exception-parameters _%e104056%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e104056%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104054%_)
                (macro-expression-parsing-exception-parameters _%exn104054%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn104054%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn104048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104048%_))
            (let ((_%e104051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104048%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104051%_)
                  (macro-expression-parsing-exception-source _%e104051%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e104051%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104048%_)
                (macro-expression-parsing-exception-source _%exn104048%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn104048%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn104044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104044%_))
            (let ((_%e104046%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104044%_ 'exception))))
              (macro-file-exists-exception? _%e104046%_))
            (macro-file-exists-exception? _%exn104044%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn104040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104040%_))
            (let ((_%e104042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104040%_ 'exception))))
              (if (macro-file-exists-exception? _%e104042%_)
                  (macro-file-exists-exception-arguments _%e104042%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e104042%_ '())))))
            (if (macro-file-exists-exception? _%exn104040%_)
                (macro-file-exists-exception-arguments _%exn104040%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn104040%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn104034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104034%_))
            (let ((_%e104037%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104034%_ 'exception))))
              (if (macro-file-exists-exception? _%e104037%_)
                  (macro-file-exists-exception-procedure _%e104037%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e104037%_ '())))))
            (if (macro-file-exists-exception? _%exn104034%_)
                (macro-file-exists-exception-procedure _%exn104034%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn104034%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn104030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104030%_))
            (let ((_%e104032%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104030%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e104032%_))
            (macro-fixnum-overflow-exception? _%exn104030%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn104026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104026%_))
            (let ((_%e104028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104026%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e104028%_)
                  (macro-fixnum-overflow-exception-arguments _%e104028%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e104028%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn104026%_)
                (macro-fixnum-overflow-exception-arguments _%exn104026%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn104026%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn104020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104020%_))
            (let ((_%e104023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104020%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e104023%_)
                  (macro-fixnum-overflow-exception-procedure _%e104023%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e104023%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn104020%_)
                (macro-fixnum-overflow-exception-procedure _%exn104020%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn104020%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn104014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104014%_))
            (let ((_%e104017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104014%_ 'exception))))
              (macro-heap-overflow-exception? _%e104017%_))
            (macro-heap-overflow-exception? _%exn104014%_))))
    (define inactive-thread-exception?
      (lambda (_%exn104010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104010%_))
            (let ((_%e104012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104010%_ 'exception))))
              (macro-inactive-thread-exception? _%e104012%_))
            (macro-inactive-thread-exception? _%exn104010%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn104006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104006%_))
            (let ((_%e104008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104006%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e104008%_)
                  (macro-inactive-thread-exception-arguments _%e104008%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e104008%_ '())))))
            (if (macro-inactive-thread-exception? _%exn104006%_)
                (macro-inactive-thread-exception-arguments _%exn104006%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn104006%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn104000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104000%_))
            (let ((_%e104003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104000%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e104003%_)
                  (macro-inactive-thread-exception-procedure _%e104003%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e104003%_ '())))))
            (if (macro-inactive-thread-exception? _%exn104000%_)
                (macro-inactive-thread-exception-procedure _%exn104000%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn104000%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103996%_))
            (let ((_%e103998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103996%_ 'exception))))
              (macro-initialized-thread-exception? _%e103998%_))
            (macro-initialized-thread-exception? _%exn103996%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103992%_))
            (let ((_%e103994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103992%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103994%_)
                  (macro-initialized-thread-exception-arguments _%e103994%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103994%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103992%_)
                (macro-initialized-thread-exception-arguments _%exn103992%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103992%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103986%_))
            (let ((_%e103989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103986%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103989%_)
                  (macro-initialized-thread-exception-procedure _%e103989%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103989%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103986%_)
                (macro-initialized-thread-exception-procedure _%exn103986%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103986%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103982%_))
            (let ((_%e103984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103982%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103984%_))
            (macro-invalid-hash-number-exception? _%exn103982%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103978%_))
            (let ((_%e103980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103978%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103980%_)
                  (macro-invalid-hash-number-exception-arguments _%e103980%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103980%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103978%_)
                (macro-invalid-hash-number-exception-arguments _%exn103978%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103978%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103972%_))
            (let ((_%e103975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103972%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103975%_)
                  (macro-invalid-hash-number-exception-procedure _%e103975%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103975%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103972%_)
                (macro-invalid-hash-number-exception-procedure _%exn103972%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103972%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103968%_))
            (let ((_%e103970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103968%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103970%_))
            (macro-invalid-utf8-encoding-exception? _%exn103968%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103964%_))
            (let ((_%e103966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103964%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103966%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103966%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103966%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103964%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103964%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103964%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103958%_))
            (let ((_%e103961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103958%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103961%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103961%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103961%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103958%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103958%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103958%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103954%_))
            (let ((_%e103956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103954%_ 'exception))))
              (macro-join-timeout-exception? _%e103956%_))
            (macro-join-timeout-exception? _%exn103954%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103950%_))
            (let ((_%e103952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103950%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103952%_)
                  (macro-join-timeout-exception-arguments _%e103952%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103952%_ '())))))
            (if (macro-join-timeout-exception? _%exn103950%_)
                (macro-join-timeout-exception-arguments _%exn103950%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103950%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103944%_))
            (let ((_%e103947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103944%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103947%_)
                  (macro-join-timeout-exception-procedure _%e103947%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103947%_ '())))))
            (if (macro-join-timeout-exception? _%exn103944%_)
                (macro-join-timeout-exception-procedure _%exn103944%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103944%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103940%_))
            (let ((_%e103942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103940%_ 'exception))))
              (macro-keyword-expected-exception? _%e103942%_))
            (macro-keyword-expected-exception? _%exn103940%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103936%_))
            (let ((_%e103938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103936%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103938%_)
                  (macro-keyword-expected-exception-arguments _%e103938%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103938%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103936%_)
                (macro-keyword-expected-exception-arguments _%exn103936%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103936%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103930%_))
            (let ((_%e103933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103930%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103933%_)
                  (macro-keyword-expected-exception-procedure _%e103933%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103933%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103930%_)
                (macro-keyword-expected-exception-procedure _%exn103930%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103930%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103926%_))
            (let ((_%e103928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103926%_ 'exception))))
              (macro-length-mismatch-exception? _%e103928%_))
            (macro-length-mismatch-exception? _%exn103926%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103922%_))
            (let ((_%e103924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103922%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103924%_)
                  (macro-length-mismatch-exception-arg-id _%e103924%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103924%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103922%_)
                (macro-length-mismatch-exception-arg-id _%exn103922%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103922%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103918%_))
            (let ((_%e103920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103918%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103920%_)
                  (macro-length-mismatch-exception-arguments _%e103920%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103920%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103918%_)
                (macro-length-mismatch-exception-arguments _%exn103918%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103918%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103912%_))
            (let ((_%e103915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103912%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103915%_)
                  (macro-length-mismatch-exception-procedure _%e103915%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103915%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103912%_)
                (macro-length-mismatch-exception-procedure _%exn103912%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103912%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103908%_))
            (let ((_%e103910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103908%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103910%_))
            (macro-mailbox-receive-timeout-exception? _%exn103908%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103904%_))
            (let ((_%e103906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103904%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103906%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103906%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103906%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103904%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103904%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103904%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103898%_))
            (let ((_%e103901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103898%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103901%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103901%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103901%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103898%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103898%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103898%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103894%_))
            (let ((_%e103896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103894%_ 'exception))))
              (macro-module-not-found-exception? _%e103896%_))
            (macro-module-not-found-exception? _%exn103894%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103890%_))
            (let ((_%e103892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103890%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103892%_)
                  (macro-module-not-found-exception-arguments _%e103892%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103892%_ '())))))
            (if (macro-module-not-found-exception? _%exn103890%_)
                (macro-module-not-found-exception-arguments _%exn103890%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103890%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103884%_))
            (let ((_%e103887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103884%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103887%_)
                  (macro-module-not-found-exception-procedure _%e103887%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103887%_ '())))))
            (if (macro-module-not-found-exception? _%exn103884%_)
                (macro-module-not-found-exception-procedure _%exn103884%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103884%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103878%_))
            (let ((_%e103881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103878%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103881%_))
            (macro-multiple-c-return-exception? _%exn103878%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103874%_))
            (let ((_%e103876%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103874%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103876%_))
            (macro-no-such-file-or-directory-exception? _%exn103874%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103870%_))
            (let ((_%e103872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103870%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103872%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103872%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103872%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103870%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103870%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103870%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103864%_))
            (let ((_%e103867%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103864%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103867%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103867%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103867%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103864%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103864%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103864%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103860%_))
            (let ((_%e103862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103860%_ 'exception))))
              (macro-noncontinuable-exception? _%e103862%_))
            (macro-noncontinuable-exception? _%exn103860%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103854%_))
            (let ((_%e103857%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103854%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103857%_)
                  (macro-noncontinuable-exception-reason _%e103857%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103857%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103854%_)
                (macro-noncontinuable-exception-reason _%exn103854%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103854%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103850%_))
            (let ((_%e103852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103850%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103852%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103850%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103846%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103846%_))
            (let ((_%e103848%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103846%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103848%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103848%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103848%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103846%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103846%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103846%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103840%_))
            (let ((_%e103843%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103840%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103843%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103843%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103843%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103840%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103840%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103840%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103836%_))
            (let ((_%e103838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103836%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103838%_))
            (macro-nonprocedure-operator-exception? _%exn103836%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn103832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103832%_))
            (let ((_%e103834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103832%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103834%_)
                  (macro-nonprocedure-operator-exception-arguments _%e103834%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e103834%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103832%_)
                (macro-nonprocedure-operator-exception-arguments _%exn103832%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn103832%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn103828%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103828%_))
            (let ((_%e103830%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103828%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103830%_)
                  (macro-nonprocedure-operator-exception-code _%e103830%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e103830%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103828%_)
                (macro-nonprocedure-operator-exception-code _%exn103828%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn103828%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn103824%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103824%_))
            (let ((_%e103826%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103824%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103826%_)
                  (macro-nonprocedure-operator-exception-operator _%e103826%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e103826%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103824%_)
                (macro-nonprocedure-operator-exception-operator _%exn103824%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn103824%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn103818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103818%_))
            (let ((_%e103821%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103818%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103821%_)
                  (macro-nonprocedure-operator-exception-rte _%e103821%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e103821%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103818%_)
                (macro-nonprocedure-operator-exception-rte _%exn103818%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn103818%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn103814%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103814%_))
            (let ((_%e103816%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103814%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e103816%_))
            (macro-not-in-compilation-context-exception? _%exn103814%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn103810%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103810%_))
            (let ((_%e103812%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103810%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103812%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e103812%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e103812%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103810%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn103810%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn103810%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn103804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103804%_))
            (let ((_%e103807%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103804%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103807%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e103807%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e103807%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103804%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn103804%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn103804%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn103800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103800%_))
            (let ((_%e103802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103800%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e103802%_))
            (macro-number-of-arguments-limit-exception? _%exn103800%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn103796%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103796%_))
            (let ((_%e103798%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103796%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103798%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e103798%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e103798%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103796%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn103796%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn103796%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn103790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103790%_))
            (let ((_%e103793%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103790%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103793%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e103793%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e103793%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103790%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn103790%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn103790%_ '())))))))
    (define os-exception?
      (lambda (_%exn103786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103786%_))
            (let ((_%e103788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103786%_ 'exception))))
              (macro-os-exception? _%e103788%_))
            (macro-os-exception? _%exn103786%_))))
    (define os-exception-arguments
      (lambda (_%exn103782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103782%_))
            (let ((_%e103784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103782%_ 'exception))))
              (if (macro-os-exception? _%e103784%_)
                  (macro-os-exception-arguments _%e103784%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e103784%_ '())))))
            (if (macro-os-exception? _%exn103782%_)
                (macro-os-exception-arguments _%exn103782%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn103782%_ '())))))))
    (define os-exception-code
      (lambda (_%exn103778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103778%_))
            (let ((_%e103780%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103778%_ 'exception))))
              (if (macro-os-exception? _%e103780%_)
                  (macro-os-exception-code _%e103780%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e103780%_ '())))))
            (if (macro-os-exception? _%exn103778%_)
                (macro-os-exception-code _%exn103778%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn103778%_ '())))))))
    (define os-exception-message
      (lambda (_%exn103774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103774%_))
            (let ((_%e103776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103774%_ 'exception))))
              (if (macro-os-exception? _%e103776%_)
                  (macro-os-exception-message _%e103776%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e103776%_ '())))))
            (if (macro-os-exception? _%exn103774%_)
                (macro-os-exception-message _%exn103774%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn103774%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn103768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103768%_))
            (let ((_%e103771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103768%_ 'exception))))
              (if (macro-os-exception? _%e103771%_)
                  (macro-os-exception-procedure _%e103771%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e103771%_ '())))))
            (if (macro-os-exception? _%exn103768%_)
                (macro-os-exception-procedure _%exn103768%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn103768%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn103764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103764%_))
            (let ((_%e103766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103764%_ 'exception))))
              (macro-permission-denied-exception? _%e103766%_))
            (macro-permission-denied-exception? _%exn103764%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn103760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103760%_))
            (let ((_%e103762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103760%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103762%_)
                  (macro-permission-denied-exception-arguments _%e103762%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e103762%_ '())))))
            (if (macro-permission-denied-exception? _%exn103760%_)
                (macro-permission-denied-exception-arguments _%exn103760%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn103760%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn103754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103754%_))
            (let ((_%e103757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103754%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103757%_)
                  (macro-permission-denied-exception-procedure _%e103757%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e103757%_ '())))))
            (if (macro-permission-denied-exception? _%exn103754%_)
                (macro-permission-denied-exception-procedure _%exn103754%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn103754%_ '())))))))
    (define range-exception?
      (lambda (_%exn103750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103750%_))
            (let ((_%e103752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103750%_ 'exception))))
              (macro-range-exception? _%e103752%_))
            (macro-range-exception? _%exn103750%_))))
    (define range-exception-arg-id
      (lambda (_%exn103746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103746%_))
            (let ((_%e103748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103746%_ 'exception))))
              (if (macro-range-exception? _%e103748%_)
                  (macro-range-exception-arg-id _%e103748%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e103748%_ '())))))
            (if (macro-range-exception? _%exn103746%_)
                (macro-range-exception-arg-id _%exn103746%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn103746%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn103742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103742%_))
            (let ((_%e103744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103742%_ 'exception))))
              (if (macro-range-exception? _%e103744%_)
                  (macro-range-exception-arguments _%e103744%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e103744%_ '())))))
            (if (macro-range-exception? _%exn103742%_)
                (macro-range-exception-arguments _%exn103742%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn103742%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn103736%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103736%_))
            (let ((_%e103739%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103736%_ 'exception))))
              (if (macro-range-exception? _%e103739%_)
                  (macro-range-exception-procedure _%e103739%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e103739%_ '())))))
            (if (macro-range-exception? _%exn103736%_)
                (macro-range-exception-procedure _%exn103736%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn103736%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn103732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103732%_))
            (let ((_%e103734%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103732%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e103734%_))
            (macro-rpc-remote-error-exception? _%exn103732%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn103728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103728%_))
            (let ((_%e103730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103728%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103730%_)
                  (macro-rpc-remote-error-exception-arguments _%e103730%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e103730%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103728%_)
                (macro-rpc-remote-error-exception-arguments _%exn103728%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn103728%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn103724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103724%_))
            (let ((_%e103726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103724%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103726%_)
                  (macro-rpc-remote-error-exception-message _%e103726%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e103726%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103724%_)
                (macro-rpc-remote-error-exception-message _%exn103724%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn103724%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn103718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103718%_))
            (let ((_%e103721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103718%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103721%_)
                  (macro-rpc-remote-error-exception-procedure _%e103721%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e103721%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103718%_)
                (macro-rpc-remote-error-exception-procedure _%exn103718%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn103718%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn103714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103714%_))
            (let ((_%e103716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103714%_ 'exception))))
              (macro-scheduler-exception? _%e103716%_))
            (macro-scheduler-exception? _%exn103714%_))))
    (define scheduler-exception-reason
      (lambda (_%exn103708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103708%_))
            (let ((_%e103711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103708%_ 'exception))))
              (if (macro-scheduler-exception? _%e103711%_)
                  (macro-scheduler-exception-reason _%e103711%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e103711%_ '())))))
            (if (macro-scheduler-exception? _%exn103708%_)
                (macro-scheduler-exception-reason _%exn103708%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn103708%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn103704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103704%_))
            (let ((_%e103706%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103704%_ 'exception))))
              (macro-sfun-conversion-exception? _%e103706%_))
            (macro-sfun-conversion-exception? _%exn103704%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn103700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103700%_))
            (let ((_%e103702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103700%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103702%_)
                  (macro-sfun-conversion-exception-arguments _%e103702%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e103702%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103700%_)
                (macro-sfun-conversion-exception-arguments _%exn103700%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn103700%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn103696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103696%_))
            (let ((_%e103698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103696%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103698%_)
                  (macro-sfun-conversion-exception-code _%e103698%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e103698%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103696%_)
                (macro-sfun-conversion-exception-code _%exn103696%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn103696%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn103692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103692%_))
            (let ((_%e103694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103692%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103694%_)
                  (macro-sfun-conversion-exception-message _%e103694%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e103694%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103692%_)
                (macro-sfun-conversion-exception-message _%exn103692%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn103692%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn103686%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103686%_))
            (let ((_%e103689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103686%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103689%_)
                  (macro-sfun-conversion-exception-procedure _%e103689%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e103689%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103686%_)
                (macro-sfun-conversion-exception-procedure _%exn103686%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn103686%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn103680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103680%_))
            (let ((_%e103683%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103680%_ 'exception))))
              (macro-stack-overflow-exception? _%e103683%_))
            (macro-stack-overflow-exception? _%exn103680%_))))
    (define started-thread-exception?
      (lambda (_%exn103676%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103676%_))
            (let ((_%e103678%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103676%_ 'exception))))
              (macro-started-thread-exception? _%e103678%_))
            (macro-started-thread-exception? _%exn103676%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn103672%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103672%_))
            (let ((_%e103674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103672%_ 'exception))))
              (if (macro-started-thread-exception? _%e103674%_)
                  (macro-started-thread-exception-arguments _%e103674%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e103674%_ '())))))
            (if (macro-started-thread-exception? _%exn103672%_)
                (macro-started-thread-exception-arguments _%exn103672%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn103672%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn103666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103666%_))
            (let ((_%e103669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103666%_ 'exception))))
              (if (macro-started-thread-exception? _%e103669%_)
                  (macro-started-thread-exception-procedure _%e103669%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e103669%_ '())))))
            (if (macro-started-thread-exception? _%exn103666%_)
                (macro-started-thread-exception-procedure _%exn103666%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn103666%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn103662%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103662%_))
            (let ((_%e103664%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103662%_ 'exception))))
              (macro-terminated-thread-exception? _%e103664%_))
            (macro-terminated-thread-exception? _%exn103662%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn103658%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103658%_))
            (let ((_%e103660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103658%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103660%_)
                  (macro-terminated-thread-exception-arguments _%e103660%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e103660%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103658%_)
                (macro-terminated-thread-exception-arguments _%exn103658%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn103658%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn103652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103652%_))
            (let ((_%e103655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103652%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103655%_)
                  (macro-terminated-thread-exception-procedure _%e103655%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e103655%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103652%_)
                (macro-terminated-thread-exception-procedure _%exn103652%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn103652%_ '())))))))
    (define type-exception?
      (lambda (_%exn103648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103648%_))
            (let ((_%e103650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103648%_ 'exception))))
              (macro-type-exception? _%e103650%_))
            (macro-type-exception? _%exn103648%_))))
    (define type-exception-arg-id
      (lambda (_%exn103644%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103644%_))
            (let ((_%e103646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103644%_ 'exception))))
              (if (macro-type-exception? _%e103646%_)
                  (macro-type-exception-arg-id _%e103646%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e103646%_ '())))))
            (if (macro-type-exception? _%exn103644%_)
                (macro-type-exception-arg-id _%exn103644%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn103644%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn103640%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103640%_))
            (let ((_%e103642%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103640%_ 'exception))))
              (if (macro-type-exception? _%e103642%_)
                  (macro-type-exception-arguments _%e103642%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e103642%_ '())))))
            (if (macro-type-exception? _%exn103640%_)
                (macro-type-exception-arguments _%exn103640%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn103640%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn103636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103636%_))
            (let ((_%e103638%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103636%_ 'exception))))
              (if (macro-type-exception? _%e103638%_)
                  (macro-type-exception-procedure _%e103638%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e103638%_ '())))))
            (if (macro-type-exception? _%exn103636%_)
                (macro-type-exception-procedure _%exn103636%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn103636%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn103630%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103630%_))
            (let ((_%e103633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103630%_ 'exception))))
              (if (macro-type-exception? _%e103633%_)
                  (macro-type-exception-type-id _%e103633%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e103633%_ '())))))
            (if (macro-type-exception? _%exn103630%_)
                (macro-type-exception-type-id _%exn103630%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn103630%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn103626%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103626%_))
            (let ((_%e103628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103626%_ 'exception))))
              (macro-unbound-global-exception? _%e103628%_))
            (macro-unbound-global-exception? _%exn103626%_))))
    (define unbound-global-exception-code
      (lambda (_%exn103622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103622%_))
            (let ((_%e103624%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103622%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103624%_)
                  (macro-unbound-global-exception-code _%e103624%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e103624%_ '())))))
            (if (macro-unbound-global-exception? _%exn103622%_)
                (macro-unbound-global-exception-code _%exn103622%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn103622%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn103618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103618%_))
            (let ((_%e103620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103618%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103620%_)
                  (macro-unbound-global-exception-rte _%e103620%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e103620%_ '())))))
            (if (macro-unbound-global-exception? _%exn103618%_)
                (macro-unbound-global-exception-rte _%exn103618%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn103618%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn103612%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103612%_))
            (let ((_%e103615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103612%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103615%_)
                  (macro-unbound-global-exception-variable _%e103615%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e103615%_ '())))))
            (if (macro-unbound-global-exception? _%exn103612%_)
                (macro-unbound-global-exception-variable _%exn103612%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn103612%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn103608%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103608%_))
            (let ((_%e103610%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103608%_ 'exception))))
              (macro-unbound-key-exception? _%e103610%_))
            (macro-unbound-key-exception? _%exn103608%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn103604%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103604%_))
            (let ((_%e103606%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103604%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103606%_)
                  (macro-unbound-key-exception-arguments _%e103606%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e103606%_ '())))))
            (if (macro-unbound-key-exception? _%exn103604%_)
                (macro-unbound-key-exception-arguments _%exn103604%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn103604%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn103598%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103598%_))
            (let ((_%e103601%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103598%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103601%_)
                  (macro-unbound-key-exception-procedure _%e103601%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e103601%_ '())))))
            (if (macro-unbound-key-exception? _%exn103598%_)
                (macro-unbound-key-exception-procedure _%exn103598%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn103598%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn103594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103594%_))
            (let ((_%e103596%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103594%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e103596%_))
            (macro-unbound-os-environment-variable-exception? _%exn103594%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn103590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103590%_))
            (let ((_%e103592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103590%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103592%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e103592%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e103592%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103590%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn103590%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn103590%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn103584%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103584%_))
            (let ((_%e103587%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103584%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103587%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e103587%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e103587%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103584%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn103584%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn103584%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn103580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103580%_))
            (let ((_%e103582%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103580%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e103582%_))
            (macro-unbound-serial-number-exception? _%exn103580%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn103576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103576%_))
            (let ((_%e103578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103576%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103578%_)
                  (macro-unbound-serial-number-exception-arguments _%e103578%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e103578%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103576%_)
                (macro-unbound-serial-number-exception-arguments _%exn103576%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn103576%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn103570%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103570%_))
            (let ((_%e103573%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103570%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103573%_)
                  (macro-unbound-serial-number-exception-procedure _%e103573%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e103573%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103570%_)
                (macro-unbound-serial-number-exception-procedure _%exn103570%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn103570%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn103566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103566%_))
            (let ((_%e103568%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103566%_ 'exception))))
              (macro-uncaught-exception? _%e103568%_))
            (macro-uncaught-exception? _%exn103566%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn103562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103562%_))
            (let ((_%e103564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103562%_ 'exception))))
              (if (macro-uncaught-exception? _%e103564%_)
                  (macro-uncaught-exception-arguments _%e103564%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e103564%_ '())))))
            (if (macro-uncaught-exception? _%exn103562%_)
                (macro-uncaught-exception-arguments _%exn103562%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn103562%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn103558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103558%_))
            (let ((_%e103560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103558%_ 'exception))))
              (if (macro-uncaught-exception? _%e103560%_)
                  (macro-uncaught-exception-procedure _%e103560%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e103560%_ '())))))
            (if (macro-uncaught-exception? _%exn103558%_)
                (macro-uncaught-exception-procedure _%exn103558%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn103558%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn103552%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103552%_))
            (let ((_%e103555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103552%_ 'exception))))
              (if (macro-uncaught-exception? _%e103555%_)
                  (macro-uncaught-exception-reason _%e103555%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e103555%_ '())))))
            (if (macro-uncaught-exception? _%exn103552%_)
                (macro-uncaught-exception-reason _%exn103552%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn103552%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn103548%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103548%_))
            (let ((_%e103550%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103548%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e103550%_))
            (macro-uninitialized-thread-exception? _%exn103548%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn103544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103544%_))
            (let ((_%e103546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103544%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103546%_)
                  (macro-uninitialized-thread-exception-arguments _%e103546%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e103546%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103544%_)
                (macro-uninitialized-thread-exception-arguments _%exn103544%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn103544%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn103538%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103538%_))
            (let ((_%e103541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103538%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103541%_)
                  (macro-uninitialized-thread-exception-procedure _%e103541%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e103541%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103538%_)
                (macro-uninitialized-thread-exception-procedure _%exn103538%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn103538%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn103534%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103534%_))
            (let ((_%e103536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103534%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e103536%_))
            (macro-unknown-keyword-argument-exception? _%exn103534%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn103530%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103530%_))
            (let ((_%e103532%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103530%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103532%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e103532%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e103532%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103530%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn103530%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn103530%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn103524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103524%_))
            (let ((_%e103527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103524%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103527%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e103527%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e103527%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103524%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn103524%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn103524%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn103520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103520%_))
            (let ((_%e103522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103520%_ 'exception))))
              (macro-unterminated-process-exception? _%e103522%_))
            (macro-unterminated-process-exception? _%exn103520%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn103516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103516%_))
            (let ((_%e103518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103516%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103518%_)
                  (macro-unterminated-process-exception-arguments _%e103518%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e103518%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103516%_)
                (macro-unterminated-process-exception-arguments _%exn103516%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn103516%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn103510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103510%_))
            (let ((_%e103513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103510%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103513%_)
                  (macro-unterminated-process-exception-procedure _%e103513%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e103513%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103510%_)
                (macro-unterminated-process-exception-procedure _%exn103510%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn103510%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn103506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103506%_))
            (let ((_%e103508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103506%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e103508%_))
            (macro-wrong-number-of-arguments-exception? _%exn103506%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn103502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103502%_))
            (let ((_%e103504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103502%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103504%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e103504%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e103504%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103502%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn103502%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn103502%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn103496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103496%_))
            (let ((_%e103499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103496%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103499%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e103499%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e103499%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103496%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn103496%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn103496%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn103492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103492%_))
            (let ((_%e103494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103492%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e103494%_))
            (macro-wrong-number-of-values-exception? _%exn103492%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn103488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103488%_))
            (let ((_%e103490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103488%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103490%_)
                  (macro-wrong-number-of-values-exception-code _%e103490%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e103490%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103488%_)
                (macro-wrong-number-of-values-exception-code _%exn103488%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn103488%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn103484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103484%_))
            (let ((_%e103486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103484%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103486%_)
                  (macro-wrong-number-of-values-exception-rte _%e103486%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e103486%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103484%_)
                (macro-wrong-number-of-values-exception-rte _%exn103484%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn103484%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn103478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103478%_))
            (let ((_%e103481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103478%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103481%_)
                  (macro-wrong-number-of-values-exception-vals _%e103481%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e103481%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103478%_)
                (macro-wrong-number-of-values-exception-vals _%exn103478%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn103478%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn103472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103472%_))
            (let ((_%e103475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103472%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e103475%_))
            (macro-wrong-processor-c-return-exception? _%exn103472%_))))))
