(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1734215268)
  (begin
    (define Exception::t
      (let ((__tmp104130 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp104130
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args104100%_
        (apply make-instance Exception::t _%$args104100%_)))
    (define StackTrace::t
      (let ((__tmp104131 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp104131
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args104097%_
        (apply make-instance StackTrace::t _%$args104097%_)))
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
      (let ((__tmp104132 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp104132
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args104094%_ (apply make-instance Error::t _%$args104094%_)))
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
      (let ((__tmp104133 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp104133
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args104091%_
        (apply make-instance ContractViolation::t _%$args104091%_)))
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
      (let ((__tmp104134 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp104134
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args104088%_
        (apply make-instance RuntimeException::t _%$args104088%_)))
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
      (lambda (_%exn104083%_ _%continue104084%_)
        (let ((_%exn104086%_ (wrap-runtime-exception _%exn104083%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn104086%_ _%continue104084%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn104079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn104079%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn104079%_ 'continuation))
                '#!void
                (let ((__tmp104135
                       (lambda (_%cont104081%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn104079%_
                            'continuation
                            _%cont104081%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp104135)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn104079%_))))
    (define error
      (lambda (_%message104076%_ . _%irritants104077%_)
        (raise (let ((__obj104127
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj104127
                  _%message104076%_
                  'irritants:
                  _%irritants104077%_)
                 __obj104127))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords104048%_
               _%ctx104043104049%_
               _%contract-expr104044104051%_
               _%value104045104053%_
               _%message104055%_)
        (let* ((_%ctx104057%_
                (if (eq? _%ctx104043104049%_ absent-value)
                    '#f
                    _%ctx104043104049%_))
               (_%contract-expr104059%_
                (if (eq? _%contract-expr104044104051%_ absent-value)
                    '#f
                    _%contract-expr104044104051%_))
               (_%value104061%_
                (if (eq? _%value104045104053%_ absent-value)
                    '#f
                    _%value104045104053%_)))
          (raise (let ((__obj104128
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj104128
                    _%message104055%_
                    'where:
                    _%ctx104057%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr104059%_
                                (cons 'value: (cons _%value104061%_ '())))))
                   __obj104128)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords104066%_ . _%args104067%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords104066%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104066%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104066%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords104066%_
                  'value:
                  absent-value))
               _%args104067%_)))
    (define __raise-contract-violation-error
      (lambda _%args104046104073%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args104046104073%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler104017%_ _%thunk104018%_)
        (if (procedure? _%handler104017%_)
            (let ((_%handler104022%_ _%handler104017%_))
              (if (procedure? _%thunk104018%_)
                  (let ((_%thunk104032%_ _%thunk104018%_))
                    (__with-exception-handler
                     _%handler104022%_
                     _%thunk104032%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104018%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler104017%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler103992%_ _%thunk103993%_)
        (let* ((_%handler103996%_ _%handler103992%_)
               (_%thunk104004%_ _%thunk103993%_)
               (__tmp104136
                (lambda (_%exn104013%_)
                  (let ((_%exn104015%_ (wrap-runtime-exception _%exn104013%_)))
                    (declare (not safe))
                    (_%handler103996%_ _%exn104015%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp104136 _%thunk104004%_))))
    (define with-catch
      (lambda (_%handler103967%_ _%thunk103968%_)
        (if (procedure? _%handler103967%_)
            (let ((_%handler103972%_ _%handler103967%_))
              (if (procedure? _%thunk103968%_)
                  (let ((_%thunk103982%_ _%thunk103968%_))
                    (__with-catch _%handler103972%_ _%thunk103982%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk103968%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler103967%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler103942%_ _%thunk103943%_)
        (let* ((_%handler103946%_ _%handler103942%_)
               (_%thunk103954%_ _%thunk103943%_)
               (__tmp104137
                (lambda (_%cont103963%_)
                  (__with-exception-handler
                   (lambda (_%exn103965%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont103963%_
                        _%handler103946%_
                        _%exn103965%_)))
                   _%thunk103954%_))))
          (declare (not safe))
          (##continuation-capture __tmp104137))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn103929%_)
        (if (or (heap-overflow-exception? _%exn103929%_)
                (stack-overflow-exception? _%exn103929%_))
            _%exn103929%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn103929%_))
                _%exn103929%_
                (if (macro-exception? _%exn103929%_)
                    (let ((_%rte103937%_
                           (let ((__obj104129
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj104129
                                _%exn103929%_
                                '2
                                '#f
                                '#f))
                             __obj104129)))
                      (let ((__tmp104138
                             (lambda (_%cont103939%_)
                               (let ((__tmp104139
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont103939%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte103937%_
                                  'continuation
                                  __tmp104139)))))
                        (declare (not safe))
                        (##continuation-capture __tmp104138))
                      _%rte103937%_)
                    _%exn103929%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj103924%_)
        (let ((_%$e103926%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj103924%_))))
          (if _%$e103926%_ _%$e103926%_ (error-exception? _%obj103924%_)))))
    (define error-message
      (lambda (_%obj103917%_)
        (let ((_%$e103919%_
               (let ()
                 (declare (not safe))
                 (__slot-ref__% _%obj103917%_ 'message false))))
          (if _%$e103919%_
              _%$e103919%_
              (if (error-exception? _%obj103917%_)
                  (error-exception-message _%obj103917%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj103912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj103912%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj103912%_ 'irritants))
            (if (error-exception? _%obj103912%_)
                (error-exception-parameters _%obj103912%_)
                '#f))))
    (define error-trace
      (lambda (_%obj103910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj103910%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj103910%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e103891%_ _%port103892%_)
        (let ((_%$e103894%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e103891%_ 'display-exception))))
          (if _%$e103894%_
              ((lambda (_%f103897%_) (_%f103897%_ _%e103891%_ _%port103892%_))
               _%$e103894%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e103891%_ _%port103892%_))))))
    (define display-exception__0
      (lambda (_%e103903%_)
        (let ((_%port103905%_ (current-error-port)))
          (display-exception__% _%e103903%_ _%port103905%_))))
    (define display-exception
      (lambda _g104141_
        (let ((_g104140_ (let () (declare (not safe)) (##length _g104141_))))
          (cond ((let () (declare (not safe)) (##fx= _g104140_ 1))
                 (apply display-exception__0 _g104141_))
                ((let () (declare (not safe)) (##fx= _g104140_ 2))
                 (apply display-exception__% _g104141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g104141_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self102260103867%_ _%message103869%_ . _%rest103870%_)
        (let* ((_%self103872%_ _%self102260103867%_)
               (_%self103874%_ _%self103872%_)
               (_%message103888%_
                (if (string? _%message103869%_)
                    _%message103869%_
                    (call-with-output-string
                     '""
                     (lambda (_%g103883103885%_)
                       (display _%message103869%_ _%g103883103885%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self103874%_ 'message _%message103888%_))
          (apply class-instance-init! _%self103874%_ _%rest103870%_))))
    (define Error:::init!::specialize
      (lambda (__klass104102 __method-table104103)
        (let ((__message104104
               (let ((__slot104105
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104102 'message))))
                 (if __slot104105
                     __slot104105
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self102260103867%_ _%message103869%_ . _%rest103870%_)
            (let* ((_%self103872%_ _%self102260103867%_)
                   (_%self103874%_ _%self103872%_)
                   (_%message103888%_
                    (if (string? _%message103869%_)
                        _%message103869%_
                        (call-with-output-string
                         '""
                         (lambda (_%g103883103885%_)
                           (display _%message103869%_ _%g103883103885%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self103874%_
                 _%message103888%_
                 __message104104
                 '#f
                 '#f))
              (apply class-instance-init! _%self103874%_ _%rest103870%_))))))
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
      (lambda (_%self102261103589%_ _%port103591%_)
        (let* ((_%self103593%_ _%self102261103589%_)
               (_%self103595%_ _%self103593%_))
          (let ((_%tmp-port103605%_ (open-output-string))
                (_%display-error-newline103606%_
                 (> (output-port-column _%port103591%_) '0)))
            (fix-port-width! _%tmp-port103605%_)
            (let ((__tmp104142
                   (lambda ()
                     (if _%display-error-newline103606%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e103609%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103595%_ 'where))))
                       (if _%$e103609%_ (display _%$e103609%_) (display '"?")))
                     (let ((__tmp104143
                            (let ((__tmp104144
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self103595%_))))
                              (declare (not safe))
                              (##type-name __tmp104144))))
                       (declare (not safe))
                       (display* '" [" __tmp104143 '"]: "))
                     (let ((__tmp104145
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103595%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp104145))
                     (let ((_%irritants103613%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self103595%_ 'irritants))))
                       (if (null? _%irritants103613%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj103615%_)
                                (if (u8vector? _%obj103615%_)
                                    (let ((__tmp104146
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj103615%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp104146))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj103615%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants103613%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont103616103618%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self103595%_
                                   'continuation))))
                           (if _%cont103616103618%_
                               (let ((_%cont103621%_ _%cont103616103618%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont103621%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp104142
               current-output-port
               _%tmp-port103605%_))
            (let ((__tmp104147 (get-output-string _%tmp-port103605%_)))
              (declare (not safe))
              (##write-string __tmp104147 _%port103591%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass104106 __method-table104107)
        (let ((__irritants104108
               (let ((__slot104112
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104106 'irritants))))
                 (if __slot104112
                     __slot104112
                     (error '"Unknown slot" 'irritants))))
              (__continuation104109
               (let ((__slot104113
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104106 'continuation))))
                 (if __slot104113
                     __slot104113
                     (error '"Unknown slot" 'continuation))))
              (__message104110
               (let ((__slot104114
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104106 'message))))
                 (if __slot104114
                     __slot104114
                     (error '"Unknown slot" 'message))))
              (__where104111
               (let ((__slot104115
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104106 'where))))
                 (if __slot104115
                     __slot104115
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self102261103589%_ _%port103591%_)
            (let* ((_%self103593%_ _%self102261103589%_)
                   (_%self103595%_ _%self103593%_))
              (let ((_%tmp-port103605%_ (open-output-string))
                    (_%display-error-newline103606%_
                     (> (output-port-column _%port103591%_) '0)))
                (fix-port-width! _%tmp-port103605%_)
                (let ((__tmp104148
                       (lambda ()
                         (if _%display-error-newline103606%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e103609%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103595%_
                                   __where104111
                                   '#f
                                   '#f))))
                           (if _%$e103609%_
                               (display _%$e103609%_)
                               (display '"?")))
                         (let ((__tmp104149
                                (let ((__tmp104150
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self103595%_))))
                                  (declare (not safe))
                                  (##type-name __tmp104150))))
                           (declare (not safe))
                           (display* '" [" __tmp104149 '"]: "))
                         (let ((__tmp104151
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103595%_
                                   __message104110
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp104151))
                         (let ((_%irritants103613%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self103595%_
                                   __irritants104108
                                   '#f
                                   '#f))))
                           (if (null? _%irritants103613%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj103615%_)
                                    (if (u8vector? _%obj103615%_)
                                        (let ((__tmp104152
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj103615%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp104152))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj103615%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants103613%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont103616103618%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self103595%_
                                       __continuation104109
                                       '#f
                                       '#f))))
                               (if _%cont103616103618%_
                                   (let ((_%cont103621%_ _%cont103616103618%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont103621%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp104148
                   current-output-port
                   _%tmp-port103605%_))
                (let ((__tmp104153 (get-output-string _%tmp-port103605%_)))
                  (declare (not safe))
                  (##write-string __tmp104153 _%port103591%_))))))))
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
      (lambda (_%self102262103443%_ _%port103445%_)
        (let* ((_%self103447%_ _%self102262103443%_)
               (_%self103449%_ _%self103447%_)
               (_%tmp-port103459%_ (open-output-string)))
          (fix-port-width! _%tmp-port103459%_)
          (let ((__tmp104154
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self103449%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp104154 _%tmp-port103459%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont103460103462%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self103449%_ 'continuation))))
                (if _%cont103460103462%_
                    (let ((_%cont103465%_ _%cont103460103462%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port103459%_)
                      (newline _%tmp-port103459%_)
                      (display-continuation-backtrace
                       _%cont103465%_
                       _%tmp-port103459%_))
                    '#f))
              '#!void)
          (let ((__tmp104155 (get-output-string _%tmp-port103459%_)))
            (declare (not safe))
            (##write-string __tmp104155 _%port103445%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass104116 __method-table104117)
        (let ((__continuation104118
               (let ((__slot104120
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104116 'continuation))))
                 (if __slot104120
                     __slot104120
                     (error '"Unknown slot" 'continuation))))
              (__exception104119
               (let ((__slot104121
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass104116 'exception))))
                 (if __slot104121
                     __slot104121
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self102262103443%_ _%port103445%_)
            (let* ((_%self103447%_ _%self102262103443%_)
                   (_%self103449%_ _%self103447%_)
                   (_%tmp-port103459%_ (open-output-string)))
              (fix-port-width! _%tmp-port103459%_)
              (let ((__tmp104156
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self103449%_
                        __exception104119
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp104156 _%tmp-port103459%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont103460103462%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self103449%_
                            __continuation104118
                            '#f
                            '#f))))
                    (if _%cont103460103462%_
                        (let ((_%cont103465%_ _%cont103460103462%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port103459%_)
                          (newline _%tmp-port103459%_)
                          (display-continuation-backtrace
                           _%cont103465%_
                           _%tmp-port103459%_))
                        '#f))
                  '#!void)
              (let ((__tmp104157 (get-output-string _%tmp-port103459%_)))
                (declare (not safe))
                (##write-string __tmp104157 _%port103445%_)))))))
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
      (lambda (_%port103315%_)
        (if (macro-character-port? _%port103315%_)
            (let ((_%old-width103317%_
                   (macro-character-port-output-width _%port103315%_)))
              (macro-character-port-output-width-set!
               _%port103315%_
               (lambda (_%port103319%_) '256))
              _%old-width103317%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port103312%_ _%old-width103313%_)
        (if (macro-character-port? _%port103312%_)
            (macro-character-port-output-width-set!
             _%port103312%_
             _%old-width103313%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e103310%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e103310%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn103304%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103304%_))
            (let ((_%e103307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103304%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e103307%_))
            (macro-abandoned-mutex-exception? _%exn103304%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn103300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103300%_))
            (let ((_%e103302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103300%_ 'exception))))
              (macro-cfun-conversion-exception? _%e103302%_))
            (macro-cfun-conversion-exception? _%exn103300%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn103296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103296%_))
            (let ((_%e103298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103296%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103298%_)
                  (macro-cfun-conversion-exception-arguments _%e103298%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e103298%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103296%_)
                (macro-cfun-conversion-exception-arguments _%exn103296%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn103296%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn103292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103292%_))
            (let ((_%e103294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103292%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103294%_)
                  (macro-cfun-conversion-exception-code _%e103294%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e103294%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103292%_)
                (macro-cfun-conversion-exception-code _%exn103292%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn103292%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn103288%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103288%_))
            (let ((_%e103290%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103288%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103290%_)
                  (macro-cfun-conversion-exception-message _%e103290%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e103290%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103288%_)
                (macro-cfun-conversion-exception-message _%exn103288%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn103288%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn103282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103282%_))
            (let ((_%e103285%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103282%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e103285%_)
                  (macro-cfun-conversion-exception-procedure _%e103285%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e103285%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn103282%_)
                (macro-cfun-conversion-exception-procedure _%exn103282%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn103282%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn103278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103278%_))
            (let ((_%e103280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103278%_ 'exception))))
              (macro-datum-parsing-exception? _%e103280%_))
            (macro-datum-parsing-exception? _%exn103278%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn103274%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103274%_))
            (let ((_%e103276%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103274%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103276%_)
                  (macro-datum-parsing-exception-kind _%e103276%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e103276%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103274%_)
                (macro-datum-parsing-exception-kind _%exn103274%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn103274%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn103270%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103270%_))
            (let ((_%e103272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103270%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103272%_)
                  (macro-datum-parsing-exception-parameters _%e103272%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e103272%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103270%_)
                (macro-datum-parsing-exception-parameters _%exn103270%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn103270%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn103264%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103264%_))
            (let ((_%e103267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103264%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e103267%_)
                  (macro-datum-parsing-exception-readenv _%e103267%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e103267%_ '())))))
            (if (macro-datum-parsing-exception? _%exn103264%_)
                (macro-datum-parsing-exception-readenv _%exn103264%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn103264%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn103258%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103258%_))
            (let ((_%e103261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103258%_ 'exception))))
              (macro-deadlock-exception? _%e103261%_))
            (macro-deadlock-exception? _%exn103258%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn103254%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103254%_))
            (let ((_%e103256%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103254%_ 'exception))))
              (macro-divide-by-zero-exception? _%e103256%_))
            (macro-divide-by-zero-exception? _%exn103254%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn103250%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103250%_))
            (let ((_%e103252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103250%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e103252%_)
                  (macro-divide-by-zero-exception-arguments _%e103252%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e103252%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn103250%_)
                (macro-divide-by-zero-exception-arguments _%exn103250%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn103250%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn103244%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103244%_))
            (let ((_%e103247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103244%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e103247%_)
                  (macro-divide-by-zero-exception-procedure _%e103247%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e103247%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn103244%_)
                (macro-divide-by-zero-exception-procedure _%exn103244%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn103244%_ '())))))))
    (define error-exception?
      (lambda (_%exn103240%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103240%_))
            (let ((_%e103242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103240%_ 'exception))))
              (macro-error-exception? _%e103242%_))
            (macro-error-exception? _%exn103240%_))))
    (define error-exception-message
      (lambda (_%exn103236%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103236%_))
            (let ((_%e103238%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103236%_ 'exception))))
              (if (macro-error-exception? _%e103238%_)
                  (macro-error-exception-message _%e103238%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e103238%_ '())))))
            (if (macro-error-exception? _%exn103236%_)
                (macro-error-exception-message _%exn103236%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn103236%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn103230%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103230%_))
            (let ((_%e103233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103230%_ 'exception))))
              (if (macro-error-exception? _%e103233%_)
                  (macro-error-exception-parameters _%e103233%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e103233%_ '())))))
            (if (macro-error-exception? _%exn103230%_)
                (macro-error-exception-parameters _%exn103230%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn103230%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn103226%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103226%_))
            (let ((_%e103228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103226%_ 'exception))))
              (macro-expression-parsing-exception? _%e103228%_))
            (macro-expression-parsing-exception? _%exn103226%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn103222%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103222%_))
            (let ((_%e103224%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103222%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103224%_)
                  (macro-expression-parsing-exception-kind _%e103224%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e103224%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103222%_)
                (macro-expression-parsing-exception-kind _%exn103222%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn103222%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn103218%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103218%_))
            (let ((_%e103220%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103218%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103220%_)
                  (macro-expression-parsing-exception-parameters _%e103220%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e103220%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103218%_)
                (macro-expression-parsing-exception-parameters _%exn103218%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn103218%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn103212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103212%_))
            (let ((_%e103215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103212%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e103215%_)
                  (macro-expression-parsing-exception-source _%e103215%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e103215%_ '())))))
            (if (macro-expression-parsing-exception? _%exn103212%_)
                (macro-expression-parsing-exception-source _%exn103212%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn103212%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn103208%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103208%_))
            (let ((_%e103210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103208%_ 'exception))))
              (macro-file-exists-exception? _%e103210%_))
            (macro-file-exists-exception? _%exn103208%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn103204%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103204%_))
            (let ((_%e103206%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103204%_ 'exception))))
              (if (macro-file-exists-exception? _%e103206%_)
                  (macro-file-exists-exception-arguments _%e103206%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e103206%_ '())))))
            (if (macro-file-exists-exception? _%exn103204%_)
                (macro-file-exists-exception-arguments _%exn103204%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn103204%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn103198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103198%_))
            (let ((_%e103201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103198%_ 'exception))))
              (if (macro-file-exists-exception? _%e103201%_)
                  (macro-file-exists-exception-procedure _%e103201%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e103201%_ '())))))
            (if (macro-file-exists-exception? _%exn103198%_)
                (macro-file-exists-exception-procedure _%exn103198%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn103198%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn103194%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103194%_))
            (let ((_%e103196%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103194%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e103196%_))
            (macro-fixnum-overflow-exception? _%exn103194%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn103190%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103190%_))
            (let ((_%e103192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103190%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103192%_)
                  (macro-fixnum-overflow-exception-arguments _%e103192%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e103192%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103190%_)
                (macro-fixnum-overflow-exception-arguments _%exn103190%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn103190%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn103184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103184%_))
            (let ((_%e103187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103184%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e103187%_)
                  (macro-fixnum-overflow-exception-procedure _%e103187%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e103187%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn103184%_)
                (macro-fixnum-overflow-exception-procedure _%exn103184%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn103184%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn103178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103178%_))
            (let ((_%e103181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103178%_ 'exception))))
              (macro-heap-overflow-exception? _%e103181%_))
            (macro-heap-overflow-exception? _%exn103178%_))))
    (define inactive-thread-exception?
      (lambda (_%exn103174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103174%_))
            (let ((_%e103176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103174%_ 'exception))))
              (macro-inactive-thread-exception? _%e103176%_))
            (macro-inactive-thread-exception? _%exn103174%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn103170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103170%_))
            (let ((_%e103172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103170%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103172%_)
                  (macro-inactive-thread-exception-arguments _%e103172%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e103172%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103170%_)
                (macro-inactive-thread-exception-arguments _%exn103170%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn103170%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn103164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103164%_))
            (let ((_%e103167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103164%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e103167%_)
                  (macro-inactive-thread-exception-procedure _%e103167%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e103167%_ '())))))
            (if (macro-inactive-thread-exception? _%exn103164%_)
                (macro-inactive-thread-exception-procedure _%exn103164%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn103164%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn103160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103160%_))
            (let ((_%e103162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103160%_ 'exception))))
              (macro-initialized-thread-exception? _%e103162%_))
            (macro-initialized-thread-exception? _%exn103160%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn103156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103156%_))
            (let ((_%e103158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103156%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103158%_)
                  (macro-initialized-thread-exception-arguments _%e103158%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e103158%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103156%_)
                (macro-initialized-thread-exception-arguments _%exn103156%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn103156%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn103150%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103150%_))
            (let ((_%e103153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103150%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e103153%_)
                  (macro-initialized-thread-exception-procedure _%e103153%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e103153%_ '())))))
            (if (macro-initialized-thread-exception? _%exn103150%_)
                (macro-initialized-thread-exception-procedure _%exn103150%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn103150%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn103146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103146%_))
            (let ((_%e103148%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103146%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e103148%_))
            (macro-invalid-hash-number-exception? _%exn103146%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn103142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103142%_))
            (let ((_%e103144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103142%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103144%_)
                  (macro-invalid-hash-number-exception-arguments _%e103144%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e103144%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103142%_)
                (macro-invalid-hash-number-exception-arguments _%exn103142%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn103142%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn103136%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103136%_))
            (let ((_%e103139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103136%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e103139%_)
                  (macro-invalid-hash-number-exception-procedure _%e103139%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e103139%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn103136%_)
                (macro-invalid-hash-number-exception-procedure _%exn103136%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn103136%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn103132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103132%_))
            (let ((_%e103134%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103132%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e103134%_))
            (macro-invalid-utf8-encoding-exception? _%exn103132%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn103128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103128%_))
            (let ((_%e103130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103128%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103130%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e103130%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e103130%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103128%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn103128%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn103128%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn103122%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103122%_))
            (let ((_%e103125%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103122%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e103125%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e103125%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e103125%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn103122%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn103122%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn103122%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn103118%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103118%_))
            (let ((_%e103120%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103118%_ 'exception))))
              (macro-join-timeout-exception? _%e103120%_))
            (macro-join-timeout-exception? _%exn103118%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn103114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103114%_))
            (let ((_%e103116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103114%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103116%_)
                  (macro-join-timeout-exception-arguments _%e103116%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e103116%_ '())))))
            (if (macro-join-timeout-exception? _%exn103114%_)
                (macro-join-timeout-exception-arguments _%exn103114%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn103114%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn103108%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103108%_))
            (let ((_%e103111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103108%_ 'exception))))
              (if (macro-join-timeout-exception? _%e103111%_)
                  (macro-join-timeout-exception-procedure _%e103111%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e103111%_ '())))))
            (if (macro-join-timeout-exception? _%exn103108%_)
                (macro-join-timeout-exception-procedure _%exn103108%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn103108%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn103104%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103104%_))
            (let ((_%e103106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103104%_ 'exception))))
              (macro-keyword-expected-exception? _%e103106%_))
            (macro-keyword-expected-exception? _%exn103104%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn103100%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103100%_))
            (let ((_%e103102%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103100%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103102%_)
                  (macro-keyword-expected-exception-arguments _%e103102%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e103102%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103100%_)
                (macro-keyword-expected-exception-arguments _%exn103100%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn103100%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn103094%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103094%_))
            (let ((_%e103097%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103094%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e103097%_)
                  (macro-keyword-expected-exception-procedure _%e103097%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e103097%_ '())))))
            (if (macro-keyword-expected-exception? _%exn103094%_)
                (macro-keyword-expected-exception-procedure _%exn103094%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn103094%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn103090%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103090%_))
            (let ((_%e103092%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103090%_ 'exception))))
              (macro-length-mismatch-exception? _%e103092%_))
            (macro-length-mismatch-exception? _%exn103090%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn103086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103086%_))
            (let ((_%e103088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103086%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103088%_)
                  (macro-length-mismatch-exception-arg-id _%e103088%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e103088%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103086%_)
                (macro-length-mismatch-exception-arg-id _%exn103086%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn103086%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn103082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103082%_))
            (let ((_%e103084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103082%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103084%_)
                  (macro-length-mismatch-exception-arguments _%e103084%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e103084%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103082%_)
                (macro-length-mismatch-exception-arguments _%exn103082%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn103082%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn103076%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103076%_))
            (let ((_%e103079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103076%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e103079%_)
                  (macro-length-mismatch-exception-procedure _%e103079%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e103079%_ '())))))
            (if (macro-length-mismatch-exception? _%exn103076%_)
                (macro-length-mismatch-exception-procedure _%exn103076%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn103076%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn103072%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103072%_))
            (let ((_%e103074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103072%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e103074%_))
            (macro-mailbox-receive-timeout-exception? _%exn103072%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn103068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103068%_))
            (let ((_%e103070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103068%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103070%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e103070%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e103070%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103068%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn103068%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn103068%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn103062%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103062%_))
            (let ((_%e103065%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103062%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e103065%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e103065%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e103065%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn103062%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn103062%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn103062%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn103058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103058%_))
            (let ((_%e103060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103058%_ 'exception))))
              (macro-module-not-found-exception? _%e103060%_))
            (macro-module-not-found-exception? _%exn103058%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn103054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103054%_))
            (let ((_%e103056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103054%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103056%_)
                  (macro-module-not-found-exception-arguments _%e103056%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e103056%_ '())))))
            (if (macro-module-not-found-exception? _%exn103054%_)
                (macro-module-not-found-exception-arguments _%exn103054%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn103054%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn103048%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103048%_))
            (let ((_%e103051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103048%_ 'exception))))
              (if (macro-module-not-found-exception? _%e103051%_)
                  (macro-module-not-found-exception-procedure _%e103051%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e103051%_ '())))))
            (if (macro-module-not-found-exception? _%exn103048%_)
                (macro-module-not-found-exception-procedure _%exn103048%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn103048%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn103042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103042%_))
            (let ((_%e103045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103042%_ 'exception))))
              (macro-multiple-c-return-exception? _%e103045%_))
            (macro-multiple-c-return-exception? _%exn103042%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn103038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103038%_))
            (let ((_%e103040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103038%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e103040%_))
            (macro-no-such-file-or-directory-exception? _%exn103038%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn103034%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103034%_))
            (let ((_%e103036%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103034%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103036%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e103036%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e103036%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103034%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn103034%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn103034%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn103028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103028%_))
            (let ((_%e103031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103028%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e103031%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e103031%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e103031%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn103028%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn103028%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn103028%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn103024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103024%_))
            (let ((_%e103026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103024%_ 'exception))))
              (macro-noncontinuable-exception? _%e103026%_))
            (macro-noncontinuable-exception? _%exn103024%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn103018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103018%_))
            (let ((_%e103021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103018%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e103021%_)
                  (macro-noncontinuable-exception-reason _%e103021%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e103021%_ '())))))
            (if (macro-noncontinuable-exception? _%exn103018%_)
                (macro-noncontinuable-exception-reason _%exn103018%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn103018%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn103014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103014%_))
            (let ((_%e103016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103014%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e103016%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn103014%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn103010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103010%_))
            (let ((_%e103012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103010%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103012%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e103012%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e103012%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103010%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn103010%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn103010%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn103004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103004%_))
            (let ((_%e103007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103004%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e103007%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e103007%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e103007%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn103004%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn103004%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn103004%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn103000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn103000%_))
            (let ((_%e103002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn103000%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e103002%_))
            (macro-nonprocedure-operator-exception? _%exn103000%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn102996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102996%_))
            (let ((_%e102998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102996%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102998%_)
                  (macro-nonprocedure-operator-exception-arguments _%e102998%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e102998%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102996%_)
                (macro-nonprocedure-operator-exception-arguments _%exn102996%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn102996%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn102992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102992%_))
            (let ((_%e102994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102992%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102994%_)
                  (macro-nonprocedure-operator-exception-code _%e102994%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e102994%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102992%_)
                (macro-nonprocedure-operator-exception-code _%exn102992%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn102992%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn102988%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102988%_))
            (let ((_%e102990%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102988%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102990%_)
                  (macro-nonprocedure-operator-exception-operator _%e102990%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e102990%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102988%_)
                (macro-nonprocedure-operator-exception-operator _%exn102988%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn102988%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn102982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102982%_))
            (let ((_%e102985%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102982%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e102985%_)
                  (macro-nonprocedure-operator-exception-rte _%e102985%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e102985%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn102982%_)
                (macro-nonprocedure-operator-exception-rte _%exn102982%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn102982%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn102978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102978%_))
            (let ((_%e102980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102978%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e102980%_))
            (macro-not-in-compilation-context-exception? _%exn102978%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn102974%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102974%_))
            (let ((_%e102976%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102974%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e102976%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e102976%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e102976%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn102974%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn102974%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn102974%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn102968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102968%_))
            (let ((_%e102971%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102968%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e102971%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e102971%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e102971%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn102968%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn102968%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn102968%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn102964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102964%_))
            (let ((_%e102966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102964%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e102966%_))
            (macro-number-of-arguments-limit-exception? _%exn102964%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn102960%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102960%_))
            (let ((_%e102962%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102960%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e102962%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e102962%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e102962%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn102960%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn102960%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn102960%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn102954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102954%_))
            (let ((_%e102957%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102954%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e102957%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e102957%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e102957%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn102954%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn102954%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn102954%_ '())))))))
    (define os-exception?
      (lambda (_%exn102950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102950%_))
            (let ((_%e102952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102950%_ 'exception))))
              (macro-os-exception? _%e102952%_))
            (macro-os-exception? _%exn102950%_))))
    (define os-exception-arguments
      (lambda (_%exn102946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102946%_))
            (let ((_%e102948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102946%_ 'exception))))
              (if (macro-os-exception? _%e102948%_)
                  (macro-os-exception-arguments _%e102948%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e102948%_ '())))))
            (if (macro-os-exception? _%exn102946%_)
                (macro-os-exception-arguments _%exn102946%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn102946%_ '())))))))
    (define os-exception-code
      (lambda (_%exn102942%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102942%_))
            (let ((_%e102944%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102942%_ 'exception))))
              (if (macro-os-exception? _%e102944%_)
                  (macro-os-exception-code _%e102944%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e102944%_ '())))))
            (if (macro-os-exception? _%exn102942%_)
                (macro-os-exception-code _%exn102942%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn102942%_ '())))))))
    (define os-exception-message
      (lambda (_%exn102938%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102938%_))
            (let ((_%e102940%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102938%_ 'exception))))
              (if (macro-os-exception? _%e102940%_)
                  (macro-os-exception-message _%e102940%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e102940%_ '())))))
            (if (macro-os-exception? _%exn102938%_)
                (macro-os-exception-message _%exn102938%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn102938%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn102932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102932%_))
            (let ((_%e102935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102932%_ 'exception))))
              (if (macro-os-exception? _%e102935%_)
                  (macro-os-exception-procedure _%e102935%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e102935%_ '())))))
            (if (macro-os-exception? _%exn102932%_)
                (macro-os-exception-procedure _%exn102932%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn102932%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn102928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102928%_))
            (let ((_%e102930%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102928%_ 'exception))))
              (macro-permission-denied-exception? _%e102930%_))
            (macro-permission-denied-exception? _%exn102928%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn102924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102924%_))
            (let ((_%e102926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102924%_ 'exception))))
              (if (macro-permission-denied-exception? _%e102926%_)
                  (macro-permission-denied-exception-arguments _%e102926%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e102926%_ '())))))
            (if (macro-permission-denied-exception? _%exn102924%_)
                (macro-permission-denied-exception-arguments _%exn102924%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn102924%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn102918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102918%_))
            (let ((_%e102921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102918%_ 'exception))))
              (if (macro-permission-denied-exception? _%e102921%_)
                  (macro-permission-denied-exception-procedure _%e102921%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e102921%_ '())))))
            (if (macro-permission-denied-exception? _%exn102918%_)
                (macro-permission-denied-exception-procedure _%exn102918%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn102918%_ '())))))))
    (define range-exception?
      (lambda (_%exn102914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102914%_))
            (let ((_%e102916%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102914%_ 'exception))))
              (macro-range-exception? _%e102916%_))
            (macro-range-exception? _%exn102914%_))))
    (define range-exception-arg-id
      (lambda (_%exn102910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102910%_))
            (let ((_%e102912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102910%_ 'exception))))
              (if (macro-range-exception? _%e102912%_)
                  (macro-range-exception-arg-id _%e102912%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e102912%_ '())))))
            (if (macro-range-exception? _%exn102910%_)
                (macro-range-exception-arg-id _%exn102910%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn102910%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn102906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102906%_))
            (let ((_%e102908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102906%_ 'exception))))
              (if (macro-range-exception? _%e102908%_)
                  (macro-range-exception-arguments _%e102908%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e102908%_ '())))))
            (if (macro-range-exception? _%exn102906%_)
                (macro-range-exception-arguments _%exn102906%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn102906%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn102900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102900%_))
            (let ((_%e102903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102900%_ 'exception))))
              (if (macro-range-exception? _%e102903%_)
                  (macro-range-exception-procedure _%e102903%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e102903%_ '())))))
            (if (macro-range-exception? _%exn102900%_)
                (macro-range-exception-procedure _%exn102900%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn102900%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn102896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102896%_))
            (let ((_%e102898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102896%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e102898%_))
            (macro-rpc-remote-error-exception? _%exn102896%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn102892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102892%_))
            (let ((_%e102894%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102892%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102894%_)
                  (macro-rpc-remote-error-exception-arguments _%e102894%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e102894%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102892%_)
                (macro-rpc-remote-error-exception-arguments _%exn102892%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn102892%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn102888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102888%_))
            (let ((_%e102890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102888%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102890%_)
                  (macro-rpc-remote-error-exception-message _%e102890%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e102890%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102888%_)
                (macro-rpc-remote-error-exception-message _%exn102888%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn102888%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn102882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102882%_))
            (let ((_%e102885%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102882%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e102885%_)
                  (macro-rpc-remote-error-exception-procedure _%e102885%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e102885%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn102882%_)
                (macro-rpc-remote-error-exception-procedure _%exn102882%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn102882%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn102878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102878%_))
            (let ((_%e102880%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102878%_ 'exception))))
              (macro-scheduler-exception? _%e102880%_))
            (macro-scheduler-exception? _%exn102878%_))))
    (define scheduler-exception-reason
      (lambda (_%exn102872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102872%_))
            (let ((_%e102875%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102872%_ 'exception))))
              (if (macro-scheduler-exception? _%e102875%_)
                  (macro-scheduler-exception-reason _%e102875%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e102875%_ '())))))
            (if (macro-scheduler-exception? _%exn102872%_)
                (macro-scheduler-exception-reason _%exn102872%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn102872%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn102868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102868%_))
            (let ((_%e102870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102868%_ 'exception))))
              (macro-sfun-conversion-exception? _%e102870%_))
            (macro-sfun-conversion-exception? _%exn102868%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn102864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102864%_))
            (let ((_%e102866%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102864%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102866%_)
                  (macro-sfun-conversion-exception-arguments _%e102866%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e102866%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102864%_)
                (macro-sfun-conversion-exception-arguments _%exn102864%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn102864%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn102860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102860%_))
            (let ((_%e102862%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102860%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102862%_)
                  (macro-sfun-conversion-exception-code _%e102862%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e102862%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102860%_)
                (macro-sfun-conversion-exception-code _%exn102860%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn102860%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn102856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102856%_))
            (let ((_%e102858%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102856%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102858%_)
                  (macro-sfun-conversion-exception-message _%e102858%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e102858%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102856%_)
                (macro-sfun-conversion-exception-message _%exn102856%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn102856%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn102850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102850%_))
            (let ((_%e102853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102850%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e102853%_)
                  (macro-sfun-conversion-exception-procedure _%e102853%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e102853%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn102850%_)
                (macro-sfun-conversion-exception-procedure _%exn102850%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn102850%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn102844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102844%_))
            (let ((_%e102847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102844%_ 'exception))))
              (macro-stack-overflow-exception? _%e102847%_))
            (macro-stack-overflow-exception? _%exn102844%_))))
    (define started-thread-exception?
      (lambda (_%exn102840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102840%_))
            (let ((_%e102842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102840%_ 'exception))))
              (macro-started-thread-exception? _%e102842%_))
            (macro-started-thread-exception? _%exn102840%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn102836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102836%_))
            (let ((_%e102838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102836%_ 'exception))))
              (if (macro-started-thread-exception? _%e102838%_)
                  (macro-started-thread-exception-arguments _%e102838%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e102838%_ '())))))
            (if (macro-started-thread-exception? _%exn102836%_)
                (macro-started-thread-exception-arguments _%exn102836%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn102836%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn102830%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102830%_))
            (let ((_%e102833%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102830%_ 'exception))))
              (if (macro-started-thread-exception? _%e102833%_)
                  (macro-started-thread-exception-procedure _%e102833%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e102833%_ '())))))
            (if (macro-started-thread-exception? _%exn102830%_)
                (macro-started-thread-exception-procedure _%exn102830%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn102830%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn102826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102826%_))
            (let ((_%e102828%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102826%_ 'exception))))
              (macro-terminated-thread-exception? _%e102828%_))
            (macro-terminated-thread-exception? _%exn102826%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn102822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102822%_))
            (let ((_%e102824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102822%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e102824%_)
                  (macro-terminated-thread-exception-arguments _%e102824%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e102824%_ '())))))
            (if (macro-terminated-thread-exception? _%exn102822%_)
                (macro-terminated-thread-exception-arguments _%exn102822%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn102822%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn102816%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102816%_))
            (let ((_%e102819%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102816%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e102819%_)
                  (macro-terminated-thread-exception-procedure _%e102819%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e102819%_ '())))))
            (if (macro-terminated-thread-exception? _%exn102816%_)
                (macro-terminated-thread-exception-procedure _%exn102816%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn102816%_ '())))))))
    (define type-exception?
      (lambda (_%exn102812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102812%_))
            (let ((_%e102814%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102812%_ 'exception))))
              (macro-type-exception? _%e102814%_))
            (macro-type-exception? _%exn102812%_))))
    (define type-exception-arg-id
      (lambda (_%exn102808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102808%_))
            (let ((_%e102810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102808%_ 'exception))))
              (if (macro-type-exception? _%e102810%_)
                  (macro-type-exception-arg-id _%e102810%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e102810%_ '())))))
            (if (macro-type-exception? _%exn102808%_)
                (macro-type-exception-arg-id _%exn102808%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn102808%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn102804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102804%_))
            (let ((_%e102806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102804%_ 'exception))))
              (if (macro-type-exception? _%e102806%_)
                  (macro-type-exception-arguments _%e102806%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e102806%_ '())))))
            (if (macro-type-exception? _%exn102804%_)
                (macro-type-exception-arguments _%exn102804%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn102804%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn102800%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102800%_))
            (let ((_%e102802%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102800%_ 'exception))))
              (if (macro-type-exception? _%e102802%_)
                  (macro-type-exception-procedure _%e102802%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e102802%_ '())))))
            (if (macro-type-exception? _%exn102800%_)
                (macro-type-exception-procedure _%exn102800%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn102800%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn102794%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102794%_))
            (let ((_%e102797%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102794%_ 'exception))))
              (if (macro-type-exception? _%e102797%_)
                  (macro-type-exception-type-id _%e102797%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e102797%_ '())))))
            (if (macro-type-exception? _%exn102794%_)
                (macro-type-exception-type-id _%exn102794%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn102794%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn102790%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102790%_))
            (let ((_%e102792%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102790%_ 'exception))))
              (macro-unbound-global-exception? _%e102792%_))
            (macro-unbound-global-exception? _%exn102790%_))))
    (define unbound-global-exception-code
      (lambda (_%exn102786%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102786%_))
            (let ((_%e102788%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102786%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102788%_)
                  (macro-unbound-global-exception-code _%e102788%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e102788%_ '())))))
            (if (macro-unbound-global-exception? _%exn102786%_)
                (macro-unbound-global-exception-code _%exn102786%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn102786%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn102782%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102782%_))
            (let ((_%e102784%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102782%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102784%_)
                  (macro-unbound-global-exception-rte _%e102784%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e102784%_ '())))))
            (if (macro-unbound-global-exception? _%exn102782%_)
                (macro-unbound-global-exception-rte _%exn102782%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn102782%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn102776%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102776%_))
            (let ((_%e102779%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102776%_ 'exception))))
              (if (macro-unbound-global-exception? _%e102779%_)
                  (macro-unbound-global-exception-variable _%e102779%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e102779%_ '())))))
            (if (macro-unbound-global-exception? _%exn102776%_)
                (macro-unbound-global-exception-variable _%exn102776%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn102776%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn102772%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102772%_))
            (let ((_%e102774%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102772%_ 'exception))))
              (macro-unbound-key-exception? _%e102774%_))
            (macro-unbound-key-exception? _%exn102772%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn102768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102768%_))
            (let ((_%e102770%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102768%_ 'exception))))
              (if (macro-unbound-key-exception? _%e102770%_)
                  (macro-unbound-key-exception-arguments _%e102770%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e102770%_ '())))))
            (if (macro-unbound-key-exception? _%exn102768%_)
                (macro-unbound-key-exception-arguments _%exn102768%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn102768%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn102762%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102762%_))
            (let ((_%e102765%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102762%_ 'exception))))
              (if (macro-unbound-key-exception? _%e102765%_)
                  (macro-unbound-key-exception-procedure _%e102765%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e102765%_ '())))))
            (if (macro-unbound-key-exception? _%exn102762%_)
                (macro-unbound-key-exception-procedure _%exn102762%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn102762%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn102758%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102758%_))
            (let ((_%e102760%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102758%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e102760%_))
            (macro-unbound-os-environment-variable-exception? _%exn102758%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn102754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102754%_))
            (let ((_%e102756%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102754%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e102756%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e102756%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e102756%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn102754%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn102754%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn102754%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn102748%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102748%_))
            (let ((_%e102751%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102748%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e102751%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e102751%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e102751%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn102748%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn102748%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn102748%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn102744%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102744%_))
            (let ((_%e102746%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102744%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e102746%_))
            (macro-unbound-serial-number-exception? _%exn102744%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn102740%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102740%_))
            (let ((_%e102742%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102740%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e102742%_)
                  (macro-unbound-serial-number-exception-arguments _%e102742%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e102742%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn102740%_)
                (macro-unbound-serial-number-exception-arguments _%exn102740%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn102740%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn102734%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102734%_))
            (let ((_%e102737%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102734%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e102737%_)
                  (macro-unbound-serial-number-exception-procedure _%e102737%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e102737%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn102734%_)
                (macro-unbound-serial-number-exception-procedure _%exn102734%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn102734%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn102730%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102730%_))
            (let ((_%e102732%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102730%_ 'exception))))
              (macro-uncaught-exception? _%e102732%_))
            (macro-uncaught-exception? _%exn102730%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn102726%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102726%_))
            (let ((_%e102728%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102726%_ 'exception))))
              (if (macro-uncaught-exception? _%e102728%_)
                  (macro-uncaught-exception-arguments _%e102728%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e102728%_ '())))))
            (if (macro-uncaught-exception? _%exn102726%_)
                (macro-uncaught-exception-arguments _%exn102726%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn102726%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn102722%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102722%_))
            (let ((_%e102724%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102722%_ 'exception))))
              (if (macro-uncaught-exception? _%e102724%_)
                  (macro-uncaught-exception-procedure _%e102724%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e102724%_ '())))))
            (if (macro-uncaught-exception? _%exn102722%_)
                (macro-uncaught-exception-procedure _%exn102722%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn102722%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn102716%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102716%_))
            (let ((_%e102719%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102716%_ 'exception))))
              (if (macro-uncaught-exception? _%e102719%_)
                  (macro-uncaught-exception-reason _%e102719%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e102719%_ '())))))
            (if (macro-uncaught-exception? _%exn102716%_)
                (macro-uncaught-exception-reason _%exn102716%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn102716%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn102712%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102712%_))
            (let ((_%e102714%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102712%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e102714%_))
            (macro-uninitialized-thread-exception? _%exn102712%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn102708%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102708%_))
            (let ((_%e102710%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102708%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e102710%_)
                  (macro-uninitialized-thread-exception-arguments _%e102710%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e102710%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn102708%_)
                (macro-uninitialized-thread-exception-arguments _%exn102708%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn102708%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn102702%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102702%_))
            (let ((_%e102705%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102702%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e102705%_)
                  (macro-uninitialized-thread-exception-procedure _%e102705%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e102705%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn102702%_)
                (macro-uninitialized-thread-exception-procedure _%exn102702%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn102702%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn102698%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102698%_))
            (let ((_%e102700%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102698%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e102700%_))
            (macro-unknown-keyword-argument-exception? _%exn102698%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn102694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102694%_))
            (let ((_%e102696%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102694%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e102696%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e102696%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e102696%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn102694%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn102694%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn102694%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn102688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102688%_))
            (let ((_%e102691%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102688%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e102691%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e102691%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e102691%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn102688%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn102688%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn102688%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn102684%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102684%_))
            (let ((_%e102686%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102684%_ 'exception))))
              (macro-unterminated-process-exception? _%e102686%_))
            (macro-unterminated-process-exception? _%exn102684%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn102680%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102680%_))
            (let ((_%e102682%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102680%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e102682%_)
                  (macro-unterminated-process-exception-arguments _%e102682%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e102682%_ '())))))
            (if (macro-unterminated-process-exception? _%exn102680%_)
                (macro-unterminated-process-exception-arguments _%exn102680%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn102680%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn102674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102674%_))
            (let ((_%e102677%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102674%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e102677%_)
                  (macro-unterminated-process-exception-procedure _%e102677%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e102677%_ '())))))
            (if (macro-unterminated-process-exception? _%exn102674%_)
                (macro-unterminated-process-exception-procedure _%exn102674%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn102674%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn102670%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102670%_))
            (let ((_%e102672%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102670%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e102672%_))
            (macro-wrong-number-of-arguments-exception? _%exn102670%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn102666%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102666%_))
            (let ((_%e102668%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102666%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e102668%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e102668%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e102668%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn102666%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn102666%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn102666%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn102660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102660%_))
            (let ((_%e102663%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102660%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e102663%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e102663%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e102663%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn102660%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn102660%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn102660%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn102656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102656%_))
            (let ((_%e102658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102656%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e102658%_))
            (macro-wrong-number-of-values-exception? _%exn102656%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn102652%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102652%_))
            (let ((_%e102654%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102652%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102654%_)
                  (macro-wrong-number-of-values-exception-code _%e102654%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e102654%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102652%_)
                (macro-wrong-number-of-values-exception-code _%exn102652%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn102652%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn102648%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102648%_))
            (let ((_%e102650%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102648%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102650%_)
                  (macro-wrong-number-of-values-exception-rte _%e102650%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e102650%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102648%_)
                (macro-wrong-number-of-values-exception-rte _%exn102648%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn102648%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn102642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102642%_))
            (let ((_%e102645%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102642%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e102645%_)
                  (macro-wrong-number-of-values-exception-vals _%e102645%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e102645%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn102642%_)
                (macro-wrong-number-of-values-exception-vals _%exn102642%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn102642%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn102636%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn102636%_))
            (let ((_%e102639%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn102636%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e102639%_))
            (macro-wrong-processor-c-return-exception? _%exn102636%_))))))
