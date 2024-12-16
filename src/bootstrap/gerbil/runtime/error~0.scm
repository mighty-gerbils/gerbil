(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1734357960)
  (begin
    (define Exception::t
      (let ((__tmp105013 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp105013
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104983%_
        (apply make-instance Exception::t _%$args104983%_)))
    (define StackTrace::t
      (let ((__tmp105014 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp105014
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104980%_
        (apply make-instance StackTrace::t _%$args104980%_)))
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
      (let ((__tmp105015 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp105015
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104977%_ (apply make-instance Error::t _%$args104977%_)))
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
      (let ((__tmp105016 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp105016
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104974%_
        (apply make-instance ContractViolation::t _%$args104974%_)))
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
      (let ((__tmp105017 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp105017
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104971%_
        (apply make-instance RuntimeException::t _%$args104971%_)))
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
      (lambda (_%exn104966%_ _%continue104967%_)
        (let ((_%exn104969%_ (wrap-runtime-exception _%exn104966%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104969%_ _%continue104967%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104962%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104962%_ 'continuation))
                '#!void
                (let ((__tmp105018
                       (lambda (_%cont104964%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104962%_
                            'continuation
                            _%cont104964%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp105018)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104962%_))))
    (define error
      (lambda (_%message104959%_ . _%irritants104960%_)
        (raise (let ((__obj105010
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj105010
                  _%message104959%_
                  'irritants:
                  _%irritants104960%_)
                 __obj105010))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104931%_
               _%ctx104926104932%_
               _%contract-expr104927104934%_
               _%value104928104936%_
               _%message104938%_)
        (let* ((_%ctx104940%_
                (if (eq? _%ctx104926104932%_ absent-value)
                    '#f
                    _%ctx104926104932%_))
               (_%contract-expr104942%_
                (if (eq? _%contract-expr104927104934%_ absent-value)
                    '#f
                    _%contract-expr104927104934%_))
               (_%value104944%_
                (if (eq? _%value104928104936%_ absent-value)
                    '#f
                    _%value104928104936%_)))
          (raise (let ((__obj105011
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj105011
                    _%message104938%_
                    'where:
                    _%ctx104940%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104942%_
                                (cons 'value: (cons _%value104944%_ '())))))
                   __obj105011)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104949%_ . _%args104950%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104949%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104949%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104949%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104949%_
                  'value:
                  absent-value))
               _%args104950%_)))
    (define __raise-contract-violation-error
      (lambda _%args104929104956%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104929104956%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104900%_ _%thunk104901%_)
        (if (procedure? _%handler104900%_)
            (let ((_%handler104905%_ _%handler104900%_))
              (if (procedure? _%thunk104901%_)
                  (let ((_%thunk104915%_ _%thunk104901%_))
                    (__with-exception-handler
                     _%handler104905%_
                     _%thunk104915%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104901%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104900%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler104875%_ _%thunk104876%_)
        (let* ((_%handler104879%_ _%handler104875%_)
               (_%thunk104887%_ _%thunk104876%_)
               (__tmp105019
                (lambda (_%exn104896%_)
                  (let ((_%exn104898%_ (wrap-runtime-exception _%exn104896%_)))
                    (declare (not safe))
                    (_%handler104879%_ _%exn104898%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp105019 _%thunk104887%_))))
    (define with-catch
      (lambda (_%handler104850%_ _%thunk104851%_)
        (if (procedure? _%handler104850%_)
            (let ((_%handler104855%_ _%handler104850%_))
              (if (procedure? _%thunk104851%_)
                  (let ((_%thunk104865%_ _%thunk104851%_))
                    (__with-catch _%handler104855%_ _%thunk104865%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104851%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler104850%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler104825%_ _%thunk104826%_)
        (let* ((_%handler104829%_ _%handler104825%_)
               (_%thunk104837%_ _%thunk104826%_)
               (__tmp105020
                (lambda (_%cont104846%_)
                  (__with-exception-handler
                   (lambda (_%exn104848%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont104846%_
                        _%handler104829%_
                        _%exn104848%_)))
                   _%thunk104837%_))))
          (declare (not safe))
          (##continuation-capture __tmp105020))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn104812%_)
        (if (or (heap-overflow-exception? _%exn104812%_)
                (stack-overflow-exception? _%exn104812%_))
            _%exn104812%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn104812%_))
                _%exn104812%_
                (if (macro-exception? _%exn104812%_)
                    (let ((_%rte104820%_
                           (let ((__obj105012
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj105012
                                _%exn104812%_
                                '2
                                '#f
                                '#f))
                             __obj105012)))
                      (let ((__tmp105021
                             (lambda (_%cont104822%_)
                               (let ((__tmp105022
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont104822%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte104820%_
                                  'continuation
                                  __tmp105022)))))
                        (declare (not safe))
                        (##continuation-capture __tmp105021))
                      _%rte104820%_)
                    _%exn104812%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj104807%_)
        (let ((_%$e104809%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj104807%_))))
          (if _%$e104809%_ _%$e104809%_ (error-exception? _%obj104807%_)))))
    (define error-message
      (lambda (_%obj104800%_)
        (let ((_%$e104802%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj104800%_ 'message false))))
          (if _%$e104802%_
              _%$e104802%_
              (if (error-exception? _%obj104800%_)
                  (error-exception-message _%obj104800%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj104795%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104795%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104795%_ 'irritants))
            (if (error-exception? _%obj104795%_)
                (error-exception-parameters _%obj104795%_)
                '#f))))
    (define error-trace
      (lambda (_%obj104793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj104793%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj104793%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e104774%_ _%port104775%_)
        (let ((_%$e104777%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e104774%_ 'display-exception))))
          (if _%$e104777%_
              ((lambda (_%f104780%_) (_%f104780%_ _%e104774%_ _%port104775%_))
               _%$e104777%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e104774%_ _%port104775%_))))))
    (define display-exception__0
      (lambda (_%e104786%_)
        (let ((_%port104788%_ (current-error-port)))
          (display-exception__% _%e104786%_ _%port104788%_))))
    (define display-exception
      (lambda _g105024_
        (let ((_g105023_ (let () (declare (not safe)) (##length _g105024_))))
          (cond ((let () (declare (not safe)) (##fx= _g105023_ 1))
                 (apply display-exception__0 _g105024_))
                ((let () (declare (not safe)) (##fx= _g105023_ 2))
                 (apply display-exception__% _g105024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g105024_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self103143104750%_ _%message104752%_ . _%rest104753%_)
        (let* ((_%self104755%_ _%self103143104750%_)
               (_%self104757%_ _%self104755%_)
               (_%message104771%_
                (if (string? _%message104752%_)
                    _%message104752%_
                    (call-with-output-string
                     '""
                     (lambda (_%g104766104768%_)
                       (display _%message104752%_ _%g104766104768%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self104757%_ 'message _%message104771%_))
          (apply class-instance-init! _%self104757%_ _%rest104753%_))))
    (define Error:::init!::specialize
      (lambda (__klass104985 __method-table104986)
        (let ((__message104987
               (let ((__slot104988
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104985 'message))))
                 (if __slot104988
                     __slot104988
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self103143104750%_ _%message104752%_ . _%rest104753%_)
            (let* ((_%self104755%_ _%self103143104750%_)
                   (_%self104757%_ _%self104755%_)
                   (_%message104771%_
                    (if (string? _%message104752%_)
                        _%message104752%_
                        (call-with-output-string
                         '""
                         (lambda (_%g104766104768%_)
                           (display _%message104752%_ _%g104766104768%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self104757%_
                 _%message104771%_
                 __message104987
                 '#f
                 '#f))
              (apply class-instance-init! _%self104757%_ _%rest104753%_))))))
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
      (lambda (_%self103144104472%_ _%port104474%_)
        (let* ((_%self104476%_ _%self103144104472%_)
               (_%self104478%_ _%self104476%_))
          (let ((_%tmp-port104488%_ (open-output-string))
                (_%display-error-newline104489%_
                 (> (output-port-column _%port104474%_) '0)))
            (fix-port-width! _%tmp-port104488%_)
            (let ((__tmp105025
                   (lambda ()
                     (if _%display-error-newline104489%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e104492%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104478%_ 'where))))
                       (if _%$e104492%_ (display _%$e104492%_) (display '"?")))
                     (let ((__tmp105026
                            (let ((__tmp105027
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self104478%_))))
                              (declare (not safe))
                              (##type-name __tmp105027))))
                       (declare (not safe))
                       (display* '" [" __tmp105026 '"]: "))
                     (let ((__tmp105028
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104478%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp105028))
                     (let ((_%irritants104496%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self104478%_ 'irritants))))
                       (if (null? _%irritants104496%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj104498%_)
                                (if (u8vector? _%obj104498%_)
                                    (let ((__tmp105029
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj104498%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp105029))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj104498%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants104496%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont104499104501%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self104478%_
                                   'continuation))))
                           (if _%cont104499104501%_
                               (let ((_%cont104504%_ _%cont104499104501%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont104504%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp105025
               current-output-port
               _%tmp-port104488%_))
            (let ((__tmp105030 (get-output-string _%tmp-port104488%_)))
              (declare (not safe))
              (##write-string __tmp105030 _%port104474%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104989 __method-table104990)
        (let ((__message104991
               (let ((__slot104995
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104989 'message))))
                 (if __slot104995
                     __slot104995
                     (error '"Unknown slot" 'message))))
              (__where104992
               (let ((__slot104996
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104989 'where))))
                 (if __slot104996
                     __slot104996
                     (error '"Unknown slot" 'where))))
              (__irritants104993
               (let ((__slot104997
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104989 'irritants))))
                 (if __slot104997
                     __slot104997
                     (error '"Unknown slot" 'irritants))))
              (__continuation104994
               (let ((__slot104998
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104989 'continuation))))
                 (if __slot104998
                     __slot104998
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self103144104472%_ _%port104474%_)
            (let* ((_%self104476%_ _%self103144104472%_)
                   (_%self104478%_ _%self104476%_))
              (let ((_%tmp-port104488%_ (open-output-string))
                    (_%display-error-newline104489%_
                     (> (output-port-column _%port104474%_) '0)))
                (fix-port-width! _%tmp-port104488%_)
                (let ((__tmp105031
                       (lambda ()
                         (if _%display-error-newline104489%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e104492%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104478%_
                                   __where104992
                                   '#f
                                   '#f))))
                           (if _%$e104492%_
                               (display _%$e104492%_)
                               (display '"?")))
                         (let ((__tmp105032
                                (let ((__tmp105033
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self104478%_))))
                                  (declare (not safe))
                                  (##type-name __tmp105033))))
                           (declare (not safe))
                           (display* '" [" __tmp105032 '"]: "))
                         (let ((__tmp105034
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104478%_
                                   __message104991
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp105034))
                         (let ((_%irritants104496%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self104478%_
                                   __irritants104993
                                   '#f
                                   '#f))))
                           (if (null? _%irritants104496%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj104498%_)
                                    (if (u8vector? _%obj104498%_)
                                        (let ((__tmp105035
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj104498%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp105035))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj104498%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants104496%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont104499104501%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self104478%_
                                       __continuation104994
                                       '#f
                                       '#f))))
                               (if _%cont104499104501%_
                                   (let ((_%cont104504%_ _%cont104499104501%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont104504%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp105031
                   current-output-port
                   _%tmp-port104488%_))
                (let ((__tmp105036 (get-output-string _%tmp-port104488%_)))
                  (declare (not safe))
                  (##write-string __tmp105036 _%port104474%_))))))))
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
      (lambda (_%self103145104326%_ _%port104328%_)
        (let* ((_%self104330%_ _%self103145104326%_)
               (_%self104332%_ _%self104330%_)
               (_%tmp-port104342%_ (open-output-string)))
          (fix-port-width! _%tmp-port104342%_)
          (let ((__tmp105037
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self104332%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp105037 _%tmp-port104342%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont104343104345%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self104332%_ 'continuation))))
                (if _%cont104343104345%_
                    (let ((_%cont104348%_ _%cont104343104345%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port104342%_)
                      (newline _%tmp-port104342%_)
                      (display-continuation-backtrace
                       _%cont104348%_
                       _%tmp-port104342%_))
                    '#f))
              '#!void)
          (let ((__tmp105038 (get-output-string _%tmp-port104342%_)))
            (declare (not safe))
            (##write-string __tmp105038 _%port104328%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104999 __method-table105000)
        (let ((__continuation105001
               (let ((__slot105003
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104999 'continuation))))
                 (if __slot105003
                     __slot105003
                     (error '"Unknown slot" 'continuation))))
              (__exception105002
               (let ((__slot105004
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104999 'exception))))
                 (if __slot105004
                     __slot105004
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self103145104326%_ _%port104328%_)
            (let* ((_%self104330%_ _%self103145104326%_)
                   (_%self104332%_ _%self104330%_)
                   (_%tmp-port104342%_ (open-output-string)))
              (fix-port-width! _%tmp-port104342%_)
              (let ((__tmp105039
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self104332%_
                        __exception105002
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp105039 _%tmp-port104342%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont104343104345%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self104332%_
                            __continuation105001
                            '#f
                            '#f))))
                    (if _%cont104343104345%_
                        (let ((_%cont104348%_ _%cont104343104345%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port104342%_)
                          (newline _%tmp-port104342%_)
                          (display-continuation-backtrace
                           _%cont104348%_
                           _%tmp-port104342%_))
                        '#f))
                  '#!void)
              (let ((__tmp105040 (get-output-string _%tmp-port104342%_)))
                (declare (not safe))
                (##write-string __tmp105040 _%port104328%_)))))))
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
      (lambda (_%port104198%_)
        (if (macro-character-port? _%port104198%_)
            (let ((_%old-width104200%_
                   (macro-character-port-output-width _%port104198%_)))
              (macro-character-port-output-width-set!
               _%port104198%_
               (lambda (_%port104202%_) '256))
              _%old-width104200%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port104195%_ _%old-width104196%_)
        (if (macro-character-port? _%port104195%_)
            (macro-character-port-output-width-set!
             _%port104195%_
             _%old-width104196%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e104193%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e104193%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn104187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104187%_))
            (let ((_%e104190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104187%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e104190%_))
            (macro-abandoned-mutex-exception? _%exn104187%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn104183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104183%_))
            (let ((_%e104185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104183%_ 'exception))))
              (macro-cfun-conversion-exception? _%e104185%_))
            (macro-cfun-conversion-exception? _%exn104183%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn104179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104179%_))
            (let ((_%e104181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104179%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104181%_)
                  (macro-cfun-conversion-exception-arguments _%e104181%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e104181%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104179%_)
                (macro-cfun-conversion-exception-arguments _%exn104179%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn104179%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn104175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104175%_))
            (let ((_%e104177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104175%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104177%_)
                  (macro-cfun-conversion-exception-code _%e104177%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e104177%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104175%_)
                (macro-cfun-conversion-exception-code _%exn104175%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn104175%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn104171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104171%_))
            (let ((_%e104173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104171%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104173%_)
                  (macro-cfun-conversion-exception-message _%e104173%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e104173%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104171%_)
                (macro-cfun-conversion-exception-message _%exn104171%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn104171%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn104165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104165%_))
            (let ((_%e104168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104165%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e104168%_)
                  (macro-cfun-conversion-exception-procedure _%e104168%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e104168%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn104165%_)
                (macro-cfun-conversion-exception-procedure _%exn104165%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn104165%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn104161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104161%_))
            (let ((_%e104163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104161%_ 'exception))))
              (macro-datum-parsing-exception? _%e104163%_))
            (macro-datum-parsing-exception? _%exn104161%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn104157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104157%_))
            (let ((_%e104159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104157%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104159%_)
                  (macro-datum-parsing-exception-kind _%e104159%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e104159%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104157%_)
                (macro-datum-parsing-exception-kind _%exn104157%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn104157%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn104153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104153%_))
            (let ((_%e104155%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104153%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104155%_)
                  (macro-datum-parsing-exception-parameters _%e104155%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e104155%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104153%_)
                (macro-datum-parsing-exception-parameters _%exn104153%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn104153%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn104147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104147%_))
            (let ((_%e104150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104147%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e104150%_)
                  (macro-datum-parsing-exception-readenv _%e104150%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e104150%_ '())))))
            (if (macro-datum-parsing-exception? _%exn104147%_)
                (macro-datum-parsing-exception-readenv _%exn104147%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn104147%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn104141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104141%_))
            (let ((_%e104144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104141%_ 'exception))))
              (macro-deadlock-exception? _%e104144%_))
            (macro-deadlock-exception? _%exn104141%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn104137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104137%_))
            (let ((_%e104139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104137%_ 'exception))))
              (macro-divide-by-zero-exception? _%e104139%_))
            (macro-divide-by-zero-exception? _%exn104137%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn104133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104133%_))
            (let ((_%e104135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104133%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104135%_)
                  (macro-divide-by-zero-exception-arguments _%e104135%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e104135%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104133%_)
                (macro-divide-by-zero-exception-arguments _%exn104133%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn104133%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn104127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104127%_))
            (let ((_%e104130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104127%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e104130%_)
                  (macro-divide-by-zero-exception-procedure _%e104130%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e104130%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn104127%_)
                (macro-divide-by-zero-exception-procedure _%exn104127%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn104127%_ '())))))))
    (define error-exception?
      (lambda (_%exn104123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104123%_))
            (let ((_%e104125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104123%_ 'exception))))
              (macro-error-exception? _%e104125%_))
            (macro-error-exception? _%exn104123%_))))
    (define error-exception-message
      (lambda (_%exn104119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104119%_))
            (let ((_%e104121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104119%_ 'exception))))
              (if (macro-error-exception? _%e104121%_)
                  (macro-error-exception-message _%e104121%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e104121%_ '())))))
            (if (macro-error-exception? _%exn104119%_)
                (macro-error-exception-message _%exn104119%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn104119%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn104113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104113%_))
            (let ((_%e104116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104113%_ 'exception))))
              (if (macro-error-exception? _%e104116%_)
                  (macro-error-exception-parameters _%e104116%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e104116%_ '())))))
            (if (macro-error-exception? _%exn104113%_)
                (macro-error-exception-parameters _%exn104113%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn104113%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn104109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104109%_))
            (let ((_%e104111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104109%_ 'exception))))
              (macro-expression-parsing-exception? _%e104111%_))
            (macro-expression-parsing-exception? _%exn104109%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn104105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104105%_))
            (let ((_%e104107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104105%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104107%_)
                  (macro-expression-parsing-exception-kind _%e104107%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e104107%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104105%_)
                (macro-expression-parsing-exception-kind _%exn104105%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn104105%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn104101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104101%_))
            (let ((_%e104103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104101%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104103%_)
                  (macro-expression-parsing-exception-parameters _%e104103%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e104103%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104101%_)
                (macro-expression-parsing-exception-parameters _%exn104101%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn104101%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn104095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104095%_))
            (let ((_%e104098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104095%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e104098%_)
                  (macro-expression-parsing-exception-source _%e104098%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e104098%_ '())))))
            (if (macro-expression-parsing-exception? _%exn104095%_)
                (macro-expression-parsing-exception-source _%exn104095%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn104095%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn104091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104091%_))
            (let ((_%e104093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104091%_ 'exception))))
              (macro-file-exists-exception? _%e104093%_))
            (macro-file-exists-exception? _%exn104091%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn104087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104087%_))
            (let ((_%e104089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104087%_ 'exception))))
              (if (macro-file-exists-exception? _%e104089%_)
                  (macro-file-exists-exception-arguments _%e104089%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e104089%_ '())))))
            (if (macro-file-exists-exception? _%exn104087%_)
                (macro-file-exists-exception-arguments _%exn104087%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn104087%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn104081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104081%_))
            (let ((_%e104084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104081%_ 'exception))))
              (if (macro-file-exists-exception? _%e104084%_)
                  (macro-file-exists-exception-procedure _%e104084%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e104084%_ '())))))
            (if (macro-file-exists-exception? _%exn104081%_)
                (macro-file-exists-exception-procedure _%exn104081%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn104081%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn104077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104077%_))
            (let ((_%e104079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104077%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e104079%_))
            (macro-fixnum-overflow-exception? _%exn104077%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn104073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104073%_))
            (let ((_%e104075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104073%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e104075%_)
                  (macro-fixnum-overflow-exception-arguments _%e104075%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e104075%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn104073%_)
                (macro-fixnum-overflow-exception-arguments _%exn104073%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn104073%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn104067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104067%_))
            (let ((_%e104070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104067%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e104070%_)
                  (macro-fixnum-overflow-exception-procedure _%e104070%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e104070%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn104067%_)
                (macro-fixnum-overflow-exception-procedure _%exn104067%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn104067%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn104061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104061%_))
            (let ((_%e104064%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104061%_ 'exception))))
              (macro-heap-overflow-exception? _%e104064%_))
            (macro-heap-overflow-exception? _%exn104061%_))))
    (define inactive-thread-exception?
      (lambda (_%exn104057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104057%_))
            (let ((_%e104059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104057%_ 'exception))))
              (macro-inactive-thread-exception? _%e104059%_))
            (macro-inactive-thread-exception? _%exn104057%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn104053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104053%_))
            (let ((_%e104055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104053%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e104055%_)
                  (macro-inactive-thread-exception-arguments _%e104055%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e104055%_ '())))))
            (if (macro-inactive-thread-exception? _%exn104053%_)
                (macro-inactive-thread-exception-arguments _%exn104053%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn104053%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn104047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104047%_))
            (let ((_%e104050%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104047%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e104050%_)
                  (macro-inactive-thread-exception-procedure _%e104050%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e104050%_ '())))))
            (if (macro-inactive-thread-exception? _%exn104047%_)
                (macro-inactive-thread-exception-procedure _%exn104047%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn104047%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn104043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104043%_))
            (let ((_%e104045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104043%_ 'exception))))
              (macro-initialized-thread-exception? _%e104045%_))
            (macro-initialized-thread-exception? _%exn104043%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn104039%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104039%_))
            (let ((_%e104041%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104039%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e104041%_)
                  (macro-initialized-thread-exception-arguments _%e104041%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e104041%_ '())))))
            (if (macro-initialized-thread-exception? _%exn104039%_)
                (macro-initialized-thread-exception-arguments _%exn104039%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn104039%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn104033%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104033%_))
            (let ((_%e104036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104033%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e104036%_)
                  (macro-initialized-thread-exception-procedure _%e104036%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e104036%_ '())))))
            (if (macro-initialized-thread-exception? _%exn104033%_)
                (macro-initialized-thread-exception-procedure _%exn104033%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn104033%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn104029%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104029%_))
            (let ((_%e104031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104029%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e104031%_))
            (macro-invalid-hash-number-exception? _%exn104029%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn104025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104025%_))
            (let ((_%e104027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104025%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e104027%_)
                  (macro-invalid-hash-number-exception-arguments _%e104027%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e104027%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn104025%_)
                (macro-invalid-hash-number-exception-arguments _%exn104025%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn104025%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn104019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104019%_))
            (let ((_%e104022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104019%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e104022%_)
                  (macro-invalid-hash-number-exception-procedure _%e104022%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e104022%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn104019%_)
                (macro-invalid-hash-number-exception-procedure _%exn104019%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn104019%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn104015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104015%_))
            (let ((_%e104017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104015%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e104017%_))
            (macro-invalid-utf8-encoding-exception? _%exn104015%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn104011%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104011%_))
            (let ((_%e104013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104011%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e104013%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e104013%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e104013%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn104011%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn104011%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn104011%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn104005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104005%_))
            (let ((_%e104008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104005%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e104008%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e104008%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e104008%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn104005%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn104005%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn104005%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn104001%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn104001%_))
            (let ((_%e104003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn104001%_ 'exception))))
              (macro-join-timeout-exception? _%e104003%_))
            (macro-join-timeout-exception? _%exn104001%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103997%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103997%_))
            (let ((_%e103999%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103997%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103999%_)
                  (macro-join-timeout-exception-arguments _%e103999%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103999%_ '())))))
            (if (macro-join-timeout-exception? _%exn103997%_)
                (macro-join-timeout-exception-arguments _%exn103997%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103997%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103991%_))
            (let ((_%e103994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103991%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103994%_)
                  (macro-join-timeout-exception-procedure _%e103994%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103994%_ '())))))
            (if (macro-join-timeout-exception? _%exn103991%_)
                (macro-join-timeout-exception-procedure _%exn103991%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103991%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103987%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103987%_))
            (let ((_%e103989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103987%_ 'exception))))
              (macro-keyword-expected-exception? _%e103989%_))
            (macro-keyword-expected-exception? _%exn103987%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103983%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103983%_))
            (let ((_%e103985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103983%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103985%_)
                  (macro-keyword-expected-exception-arguments _%e103985%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103985%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103983%_)
                (macro-keyword-expected-exception-arguments _%exn103983%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103983%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103977%_))
            (let ((_%e103980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103977%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103980%_)
                  (macro-keyword-expected-exception-procedure _%e103980%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103980%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103977%_)
                (macro-keyword-expected-exception-procedure _%exn103977%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103977%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103973%_))
            (let ((_%e103975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103973%_ 'exception))))
              (macro-length-mismatch-exception? _%e103975%_))
            (macro-length-mismatch-exception? _%exn103973%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103969%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103969%_))
            (let ((_%e103971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103969%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103971%_)
                  (macro-length-mismatch-exception-arg-id _%e103971%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103971%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103969%_)
                (macro-length-mismatch-exception-arg-id _%exn103969%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103969%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103965%_))
            (let ((_%e103967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103965%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103967%_)
                  (macro-length-mismatch-exception-arguments _%e103967%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103967%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103965%_)
                (macro-length-mismatch-exception-arguments _%exn103965%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103965%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103959%_))
            (let ((_%e103962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103959%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103962%_)
                  (macro-length-mismatch-exception-procedure _%e103962%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103962%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103959%_)
                (macro-length-mismatch-exception-procedure _%exn103959%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103959%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103955%_))
            (let ((_%e103957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103955%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103957%_))
            (macro-mailbox-receive-timeout-exception? _%exn103955%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103951%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103951%_))
            (let ((_%e103953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103951%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103953%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103953%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103953%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103951%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103951%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103951%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103945%_))
            (let ((_%e103948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103945%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103948%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103948%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103948%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103945%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103945%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103945%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103941%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103941%_))
            (let ((_%e103943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103941%_ 'exception))))
              (macro-module-not-found-exception? _%e103943%_))
            (macro-module-not-found-exception? _%exn103941%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103937%_))
            (let ((_%e103939%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103937%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103939%_)
                  (macro-module-not-found-exception-arguments _%e103939%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103939%_ '())))))
            (if (macro-module-not-found-exception? _%exn103937%_)
                (macro-module-not-found-exception-arguments _%exn103937%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103937%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103931%_))
            (let ((_%e103934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103931%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103934%_)
                  (macro-module-not-found-exception-procedure _%e103934%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103934%_ '())))))
            (if (macro-module-not-found-exception? _%exn103931%_)
                (macro-module-not-found-exception-procedure _%exn103931%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103931%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103925%_))
            (let ((_%e103928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103925%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103928%_))
            (macro-multiple-c-return-exception? _%exn103925%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103921%_))
            (let ((_%e103923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103921%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103923%_))
            (macro-no-such-file-or-directory-exception? _%exn103921%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103917%_))
            (let ((_%e103919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103917%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103919%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103919%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103919%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103917%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103917%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103917%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103911%_))
            (let ((_%e103914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103911%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103914%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103914%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103914%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103911%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103911%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103911%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103907%_))
            (let ((_%e103909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103907%_ 'exception))))
              (macro-noncontinuable-exception? _%e103909%_))
            (macro-noncontinuable-exception? _%exn103907%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103901%_))
            (let ((_%e103904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103901%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103904%_)
                  (macro-noncontinuable-exception-reason _%e103904%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103904%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103901%_)
                (macro-noncontinuable-exception-reason _%exn103901%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103901%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103897%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103897%_))
            (let ((_%e103899%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103897%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103899%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103897%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103893%_))
            (let ((_%e103895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103893%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103895%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103895%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103895%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103893%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103893%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103893%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103887%_))
            (let ((_%e103890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103887%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103890%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103890%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103890%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103887%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103887%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103887%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103883%_))
            (let ((_%e103885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103883%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103885%_))
            (macro-nonprocedure-operator-exception? _%exn103883%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn103879%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103879%_))
            (let ((_%e103881%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103879%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103881%_)
                  (macro-nonprocedure-operator-exception-arguments _%e103881%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e103881%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103879%_)
                (macro-nonprocedure-operator-exception-arguments _%exn103879%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn103879%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn103875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103875%_))
            (let ((_%e103877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103875%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103877%_)
                  (macro-nonprocedure-operator-exception-code _%e103877%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e103877%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103875%_)
                (macro-nonprocedure-operator-exception-code _%exn103875%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn103875%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn103871%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103871%_))
            (let ((_%e103873%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103871%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103873%_)
                  (macro-nonprocedure-operator-exception-operator _%e103873%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e103873%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103871%_)
                (macro-nonprocedure-operator-exception-operator _%exn103871%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn103871%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn103865%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103865%_))
            (let ((_%e103868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103865%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e103868%_)
                  (macro-nonprocedure-operator-exception-rte _%e103868%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e103868%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn103865%_)
                (macro-nonprocedure-operator-exception-rte _%exn103865%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn103865%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn103861%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103861%_))
            (let ((_%e103863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103861%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e103863%_))
            (macro-not-in-compilation-context-exception? _%exn103861%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn103857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103857%_))
            (let ((_%e103859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103857%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103859%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e103859%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e103859%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103857%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn103857%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn103857%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn103851%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103851%_))
            (let ((_%e103854%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103851%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e103854%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e103854%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e103854%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn103851%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn103851%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn103851%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn103847%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103847%_))
            (let ((_%e103849%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103847%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e103849%_))
            (macro-number-of-arguments-limit-exception? _%exn103847%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn103843%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103843%_))
            (let ((_%e103845%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103843%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103845%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e103845%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e103845%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103843%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn103843%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn103843%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn103837%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103837%_))
            (let ((_%e103840%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103837%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e103840%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e103840%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e103840%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn103837%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn103837%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn103837%_ '())))))))
    (define os-exception?
      (lambda (_%exn103833%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103833%_))
            (let ((_%e103835%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103833%_ 'exception))))
              (macro-os-exception? _%e103835%_))
            (macro-os-exception? _%exn103833%_))))
    (define os-exception-arguments
      (lambda (_%exn103829%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103829%_))
            (let ((_%e103831%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103829%_ 'exception))))
              (if (macro-os-exception? _%e103831%_)
                  (macro-os-exception-arguments _%e103831%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e103831%_ '())))))
            (if (macro-os-exception? _%exn103829%_)
                (macro-os-exception-arguments _%exn103829%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn103829%_ '())))))))
    (define os-exception-code
      (lambda (_%exn103825%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103825%_))
            (let ((_%e103827%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103825%_ 'exception))))
              (if (macro-os-exception? _%e103827%_)
                  (macro-os-exception-code _%e103827%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e103827%_ '())))))
            (if (macro-os-exception? _%exn103825%_)
                (macro-os-exception-code _%exn103825%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn103825%_ '())))))))
    (define os-exception-message
      (lambda (_%exn103821%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103821%_))
            (let ((_%e103823%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103821%_ 'exception))))
              (if (macro-os-exception? _%e103823%_)
                  (macro-os-exception-message _%e103823%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e103823%_ '())))))
            (if (macro-os-exception? _%exn103821%_)
                (macro-os-exception-message _%exn103821%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn103821%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn103815%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103815%_))
            (let ((_%e103818%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103815%_ 'exception))))
              (if (macro-os-exception? _%e103818%_)
                  (macro-os-exception-procedure _%e103818%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e103818%_ '())))))
            (if (macro-os-exception? _%exn103815%_)
                (macro-os-exception-procedure _%exn103815%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn103815%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn103811%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103811%_))
            (let ((_%e103813%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103811%_ 'exception))))
              (macro-permission-denied-exception? _%e103813%_))
            (macro-permission-denied-exception? _%exn103811%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn103807%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103807%_))
            (let ((_%e103809%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103807%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103809%_)
                  (macro-permission-denied-exception-arguments _%e103809%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e103809%_ '())))))
            (if (macro-permission-denied-exception? _%exn103807%_)
                (macro-permission-denied-exception-arguments _%exn103807%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn103807%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn103801%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103801%_))
            (let ((_%e103804%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103801%_ 'exception))))
              (if (macro-permission-denied-exception? _%e103804%_)
                  (macro-permission-denied-exception-procedure _%e103804%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e103804%_ '())))))
            (if (macro-permission-denied-exception? _%exn103801%_)
                (macro-permission-denied-exception-procedure _%exn103801%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn103801%_ '())))))))
    (define range-exception?
      (lambda (_%exn103797%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103797%_))
            (let ((_%e103799%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103797%_ 'exception))))
              (macro-range-exception? _%e103799%_))
            (macro-range-exception? _%exn103797%_))))
    (define range-exception-arg-id
      (lambda (_%exn103793%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103793%_))
            (let ((_%e103795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103793%_ 'exception))))
              (if (macro-range-exception? _%e103795%_)
                  (macro-range-exception-arg-id _%e103795%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e103795%_ '())))))
            (if (macro-range-exception? _%exn103793%_)
                (macro-range-exception-arg-id _%exn103793%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn103793%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn103789%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103789%_))
            (let ((_%e103791%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103789%_ 'exception))))
              (if (macro-range-exception? _%e103791%_)
                  (macro-range-exception-arguments _%e103791%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e103791%_ '())))))
            (if (macro-range-exception? _%exn103789%_)
                (macro-range-exception-arguments _%exn103789%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn103789%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn103783%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103783%_))
            (let ((_%e103786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103783%_ 'exception))))
              (if (macro-range-exception? _%e103786%_)
                  (macro-range-exception-procedure _%e103786%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e103786%_ '())))))
            (if (macro-range-exception? _%exn103783%_)
                (macro-range-exception-procedure _%exn103783%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn103783%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn103779%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103779%_))
            (let ((_%e103781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103779%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e103781%_))
            (macro-rpc-remote-error-exception? _%exn103779%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn103775%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103775%_))
            (let ((_%e103777%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103775%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103777%_)
                  (macro-rpc-remote-error-exception-arguments _%e103777%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e103777%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103775%_)
                (macro-rpc-remote-error-exception-arguments _%exn103775%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn103775%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn103771%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103771%_))
            (let ((_%e103773%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103771%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103773%_)
                  (macro-rpc-remote-error-exception-message _%e103773%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e103773%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103771%_)
                (macro-rpc-remote-error-exception-message _%exn103771%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn103771%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn103765%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103765%_))
            (let ((_%e103768%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103765%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e103768%_)
                  (macro-rpc-remote-error-exception-procedure _%e103768%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e103768%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn103765%_)
                (macro-rpc-remote-error-exception-procedure _%exn103765%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn103765%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn103761%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103761%_))
            (let ((_%e103763%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103761%_ 'exception))))
              (macro-scheduler-exception? _%e103763%_))
            (macro-scheduler-exception? _%exn103761%_))))
    (define scheduler-exception-reason
      (lambda (_%exn103755%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103755%_))
            (let ((_%e103758%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103755%_ 'exception))))
              (if (macro-scheduler-exception? _%e103758%_)
                  (macro-scheduler-exception-reason _%e103758%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e103758%_ '())))))
            (if (macro-scheduler-exception? _%exn103755%_)
                (macro-scheduler-exception-reason _%exn103755%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn103755%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn103751%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103751%_))
            (let ((_%e103753%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103751%_ 'exception))))
              (macro-sfun-conversion-exception? _%e103753%_))
            (macro-sfun-conversion-exception? _%exn103751%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn103747%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103747%_))
            (let ((_%e103749%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103747%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103749%_)
                  (macro-sfun-conversion-exception-arguments _%e103749%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e103749%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103747%_)
                (macro-sfun-conversion-exception-arguments _%exn103747%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn103747%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn103743%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103743%_))
            (let ((_%e103745%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103743%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103745%_)
                  (macro-sfun-conversion-exception-code _%e103745%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e103745%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103743%_)
                (macro-sfun-conversion-exception-code _%exn103743%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn103743%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn103739%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103739%_))
            (let ((_%e103741%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103739%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103741%_)
                  (macro-sfun-conversion-exception-message _%e103741%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e103741%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103739%_)
                (macro-sfun-conversion-exception-message _%exn103739%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn103739%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn103733%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103733%_))
            (let ((_%e103736%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103733%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e103736%_)
                  (macro-sfun-conversion-exception-procedure _%e103736%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e103736%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn103733%_)
                (macro-sfun-conversion-exception-procedure _%exn103733%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn103733%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn103727%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103727%_))
            (let ((_%e103730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103727%_ 'exception))))
              (macro-stack-overflow-exception? _%e103730%_))
            (macro-stack-overflow-exception? _%exn103727%_))))
    (define started-thread-exception?
      (lambda (_%exn103723%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103723%_))
            (let ((_%e103725%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103723%_ 'exception))))
              (macro-started-thread-exception? _%e103725%_))
            (macro-started-thread-exception? _%exn103723%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn103719%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103719%_))
            (let ((_%e103721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103719%_ 'exception))))
              (if (macro-started-thread-exception? _%e103721%_)
                  (macro-started-thread-exception-arguments _%e103721%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e103721%_ '())))))
            (if (macro-started-thread-exception? _%exn103719%_)
                (macro-started-thread-exception-arguments _%exn103719%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn103719%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn103713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103713%_))
            (let ((_%e103716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103713%_ 'exception))))
              (if (macro-started-thread-exception? _%e103716%_)
                  (macro-started-thread-exception-procedure _%e103716%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e103716%_ '())))))
            (if (macro-started-thread-exception? _%exn103713%_)
                (macro-started-thread-exception-procedure _%exn103713%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn103713%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn103709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103709%_))
            (let ((_%e103711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103709%_ 'exception))))
              (macro-terminated-thread-exception? _%e103711%_))
            (macro-terminated-thread-exception? _%exn103709%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn103705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103705%_))
            (let ((_%e103707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103705%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103707%_)
                  (macro-terminated-thread-exception-arguments _%e103707%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e103707%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103705%_)
                (macro-terminated-thread-exception-arguments _%exn103705%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn103705%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn103699%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103699%_))
            (let ((_%e103702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103699%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e103702%_)
                  (macro-terminated-thread-exception-procedure _%e103702%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e103702%_ '())))))
            (if (macro-terminated-thread-exception? _%exn103699%_)
                (macro-terminated-thread-exception-procedure _%exn103699%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn103699%_ '())))))))
    (define type-exception?
      (lambda (_%exn103695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103695%_))
            (let ((_%e103697%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103695%_ 'exception))))
              (macro-type-exception? _%e103697%_))
            (macro-type-exception? _%exn103695%_))))
    (define type-exception-arg-id
      (lambda (_%exn103691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103691%_))
            (let ((_%e103693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103691%_ 'exception))))
              (if (macro-type-exception? _%e103693%_)
                  (macro-type-exception-arg-id _%e103693%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e103693%_ '())))))
            (if (macro-type-exception? _%exn103691%_)
                (macro-type-exception-arg-id _%exn103691%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn103691%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn103687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103687%_))
            (let ((_%e103689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103687%_ 'exception))))
              (if (macro-type-exception? _%e103689%_)
                  (macro-type-exception-arguments _%e103689%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e103689%_ '())))))
            (if (macro-type-exception? _%exn103687%_)
                (macro-type-exception-arguments _%exn103687%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn103687%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn103683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103683%_))
            (let ((_%e103685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103683%_ 'exception))))
              (if (macro-type-exception? _%e103685%_)
                  (macro-type-exception-procedure _%e103685%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e103685%_ '())))))
            (if (macro-type-exception? _%exn103683%_)
                (macro-type-exception-procedure _%exn103683%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn103683%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn103677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103677%_))
            (let ((_%e103680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103677%_ 'exception))))
              (if (macro-type-exception? _%e103680%_)
                  (macro-type-exception-type-id _%e103680%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e103680%_ '())))))
            (if (macro-type-exception? _%exn103677%_)
                (macro-type-exception-type-id _%exn103677%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn103677%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn103673%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103673%_))
            (let ((_%e103675%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103673%_ 'exception))))
              (macro-unbound-global-exception? _%e103675%_))
            (macro-unbound-global-exception? _%exn103673%_))))
    (define unbound-global-exception-code
      (lambda (_%exn103669%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103669%_))
            (let ((_%e103671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103669%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103671%_)
                  (macro-unbound-global-exception-code _%e103671%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e103671%_ '())))))
            (if (macro-unbound-global-exception? _%exn103669%_)
                (macro-unbound-global-exception-code _%exn103669%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn103669%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn103665%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103665%_))
            (let ((_%e103667%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103665%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103667%_)
                  (macro-unbound-global-exception-rte _%e103667%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e103667%_ '())))))
            (if (macro-unbound-global-exception? _%exn103665%_)
                (macro-unbound-global-exception-rte _%exn103665%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn103665%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn103659%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103659%_))
            (let ((_%e103662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103659%_ 'exception))))
              (if (macro-unbound-global-exception? _%e103662%_)
                  (macro-unbound-global-exception-variable _%e103662%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e103662%_ '())))))
            (if (macro-unbound-global-exception? _%exn103659%_)
                (macro-unbound-global-exception-variable _%exn103659%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn103659%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn103655%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103655%_))
            (let ((_%e103657%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103655%_ 'exception))))
              (macro-unbound-key-exception? _%e103657%_))
            (macro-unbound-key-exception? _%exn103655%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn103651%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103651%_))
            (let ((_%e103653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103651%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103653%_)
                  (macro-unbound-key-exception-arguments _%e103653%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e103653%_ '())))))
            (if (macro-unbound-key-exception? _%exn103651%_)
                (macro-unbound-key-exception-arguments _%exn103651%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn103651%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn103645%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103645%_))
            (let ((_%e103648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103645%_ 'exception))))
              (if (macro-unbound-key-exception? _%e103648%_)
                  (macro-unbound-key-exception-procedure _%e103648%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e103648%_ '())))))
            (if (macro-unbound-key-exception? _%exn103645%_)
                (macro-unbound-key-exception-procedure _%exn103645%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn103645%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn103641%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103641%_))
            (let ((_%e103643%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103641%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e103643%_))
            (macro-unbound-os-environment-variable-exception? _%exn103641%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn103637%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103637%_))
            (let ((_%e103639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103637%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103639%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e103639%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e103639%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103637%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn103637%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn103637%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn103631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103631%_))
            (let ((_%e103634%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103631%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e103634%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e103634%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e103634%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn103631%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn103631%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn103631%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn103627%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103627%_))
            (let ((_%e103629%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103627%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e103629%_))
            (macro-unbound-serial-number-exception? _%exn103627%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn103623%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103623%_))
            (let ((_%e103625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103623%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103625%_)
                  (macro-unbound-serial-number-exception-arguments _%e103625%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e103625%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103623%_)
                (macro-unbound-serial-number-exception-arguments _%exn103623%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn103623%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn103617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103617%_))
            (let ((_%e103620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103617%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e103620%_)
                  (macro-unbound-serial-number-exception-procedure _%e103620%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e103620%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn103617%_)
                (macro-unbound-serial-number-exception-procedure _%exn103617%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn103617%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn103613%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103613%_))
            (let ((_%e103615%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103613%_ 'exception))))
              (macro-uncaught-exception? _%e103615%_))
            (macro-uncaught-exception? _%exn103613%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn103609%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103609%_))
            (let ((_%e103611%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103609%_ 'exception))))
              (if (macro-uncaught-exception? _%e103611%_)
                  (macro-uncaught-exception-arguments _%e103611%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e103611%_ '())))))
            (if (macro-uncaught-exception? _%exn103609%_)
                (macro-uncaught-exception-arguments _%exn103609%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn103609%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn103605%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103605%_))
            (let ((_%e103607%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103605%_ 'exception))))
              (if (macro-uncaught-exception? _%e103607%_)
                  (macro-uncaught-exception-procedure _%e103607%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e103607%_ '())))))
            (if (macro-uncaught-exception? _%exn103605%_)
                (macro-uncaught-exception-procedure _%exn103605%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn103605%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn103599%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103599%_))
            (let ((_%e103602%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103599%_ 'exception))))
              (if (macro-uncaught-exception? _%e103602%_)
                  (macro-uncaught-exception-reason _%e103602%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e103602%_ '())))))
            (if (macro-uncaught-exception? _%exn103599%_)
                (macro-uncaught-exception-reason _%exn103599%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn103599%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn103595%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103595%_))
            (let ((_%e103597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103595%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e103597%_))
            (macro-uninitialized-thread-exception? _%exn103595%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn103591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103591%_))
            (let ((_%e103593%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103591%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103593%_)
                  (macro-uninitialized-thread-exception-arguments _%e103593%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e103593%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103591%_)
                (macro-uninitialized-thread-exception-arguments _%exn103591%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn103591%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn103585%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103585%_))
            (let ((_%e103588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103585%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e103588%_)
                  (macro-uninitialized-thread-exception-procedure _%e103588%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e103588%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn103585%_)
                (macro-uninitialized-thread-exception-procedure _%exn103585%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn103585%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn103581%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103581%_))
            (let ((_%e103583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103581%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e103583%_))
            (macro-unknown-keyword-argument-exception? _%exn103581%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn103577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103577%_))
            (let ((_%e103579%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103577%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103579%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e103579%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e103579%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103577%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn103577%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn103577%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn103571%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103571%_))
            (let ((_%e103574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103571%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e103574%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e103574%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e103574%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn103571%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn103571%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn103571%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn103567%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103567%_))
            (let ((_%e103569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103567%_ 'exception))))
              (macro-unterminated-process-exception? _%e103569%_))
            (macro-unterminated-process-exception? _%exn103567%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn103563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103563%_))
            (let ((_%e103565%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103563%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103565%_)
                  (macro-unterminated-process-exception-arguments _%e103565%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e103565%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103563%_)
                (macro-unterminated-process-exception-arguments _%exn103563%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn103563%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn103557%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103557%_))
            (let ((_%e103560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103557%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e103560%_)
                  (macro-unterminated-process-exception-procedure _%e103560%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e103560%_ '())))))
            (if (macro-unterminated-process-exception? _%exn103557%_)
                (macro-unterminated-process-exception-procedure _%exn103557%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn103557%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn103553%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103553%_))
            (let ((_%e103555%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103553%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e103555%_))
            (macro-wrong-number-of-arguments-exception? _%exn103553%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn103549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103549%_))
            (let ((_%e103551%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103549%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103551%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e103551%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e103551%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103549%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn103549%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn103549%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn103543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103543%_))
            (let ((_%e103546%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103543%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e103546%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e103546%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e103546%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn103543%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn103543%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn103543%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn103539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103539%_))
            (let ((_%e103541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103539%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e103541%_))
            (macro-wrong-number-of-values-exception? _%exn103539%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn103535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103535%_))
            (let ((_%e103537%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103535%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103537%_)
                  (macro-wrong-number-of-values-exception-code _%e103537%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e103537%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103535%_)
                (macro-wrong-number-of-values-exception-code _%exn103535%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn103535%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn103531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103531%_))
            (let ((_%e103533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103531%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103533%_)
                  (macro-wrong-number-of-values-exception-rte _%e103533%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e103533%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103531%_)
                (macro-wrong-number-of-values-exception-rte _%exn103531%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn103531%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn103525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103525%_))
            (let ((_%e103528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103525%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e103528%_)
                  (macro-wrong-number-of-values-exception-vals _%e103528%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e103528%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn103525%_)
                (macro-wrong-number-of-values-exception-vals _%exn103525%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn103525%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn103519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103519%_))
            (let ((_%e103522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103519%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e103522%_))
            (macro-wrong-processor-c-return-exception? _%exn103519%_))))))
