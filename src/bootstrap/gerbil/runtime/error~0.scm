(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1770744574)
  (begin
    (define Exception::t
      (let ((__tmp139978 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp139978
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args139896%_
        (apply make-instance Exception::t _%$args139896%_)))
    (define StackTrace::t
      (let ((__tmp139979 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp139979
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args139893%_
        (apply make-instance StackTrace::t _%$args139893%_)))
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
      (let ((__tmp139980 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp139980
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args139890%_ (apply make-instance Error::t _%$args139890%_)))
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
      (let ((__tmp139981 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp139981
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args139887%_
        (apply make-instance ContractViolation::t _%$args139887%_)))
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
      (let ((__tmp139982 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp139982
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args139884%_
        (apply make-instance RuntimeException::t _%$args139884%_)))
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
      (lambda (_%exn139879%_ _%continue139880%_)
        (let ((_%exn139882%_ (wrap-runtime-exception _%exn139879%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn139882%_ _%continue139880%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn139875%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn139875%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn139875%_ 'continuation))
                '#!void
                (let ((__tmp139983
                       (lambda (_%cont139877%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn139875%_
                            'continuation
                            _%cont139877%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp139983)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn139875%_))))
    (define error
      (lambda (_%message139872%_ . _%irritants139873%_)
        (raise (let ((__obj139975
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj139975
                  _%message139872%_
                  'irritants:
                  _%irritants139873%_)
                 __obj139975))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords139847%_
               _%ctx139842139848%_
               _%contract-expr139843139849%_
               _%value139844139850%_
               _%message139851%_)
        (let* ((_%ctx139853%_
                (if (eq? _%ctx139842139848%_ absent-value)
                    '#f
                    _%ctx139842139848%_))
               (_%contract-expr139855%_
                (if (eq? _%contract-expr139843139849%_ absent-value)
                    '#f
                    _%contract-expr139843139849%_))
               (_%value139857%_
                (if (eq? _%value139844139850%_ absent-value)
                    '#f
                    _%value139844139850%_)))
          (raise (let ((__obj139976
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj139976
                    _%message139851%_
                    'where:
                    _%ctx139853%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr139855%_
                                (cons 'value: (cons _%value139857%_ '())))))
                   __obj139976)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords139862%_ . _%args139863%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords139862%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords139862%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords139862%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords139862%_
                  'value:
                  absent-value))
               _%args139863%_)))
    (define __raise-contract-violation-error
      (lambda _%args139845139869%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args139845139869%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler139816%_ _%thunk139817%_)
        (let* ((_%handler139820%_ _%handler139816%_)
               (_%thunk139828%_ _%thunk139817%_)
               (__tmp139984
                (lambda (_%exn139837%_)
                  (let ((_%exn139839%_ (wrap-runtime-exception _%exn139837%_)))
                    (declare (not safe))
                    (_%handler139820%_ _%exn139839%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp139984 _%thunk139828%_))))
    (define with-exception-handler
      (lambda (_%handler137851%_ _%thunk137852%_)
        (if (procedure? _%handler137851%_)
            (let ((_%handler137856%_ _%handler137851%_))
              (if (procedure? _%thunk137852%_)
                  (let ((_%thunk137866%_ _%thunk137852%_))
                    (__with-exception-handler
                     _%handler137856%_
                     _%thunk137866%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk137852%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler137851%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler139758%_ _%thunk139759%_)
        (let* ((_%handler139762%_ _%handler139758%_)
               (_%thunk139770%_ _%thunk139759%_)
               (__tmp139985
                (lambda (_%cont139779%_)
                  (let* ((_%handler139783%_
                          (lambda (_%exn139781%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont139779%_
                               _%handler139762%_
                               _%exn139781%_))))
                         (_%thunk139786%_ _%thunk139770%_)
                         (_%handler139791%_ _%handler139783%_)
                         (_%thunk139806%_ _%thunk139786%_))
                    (__with-exception-handler
                     _%handler139791%_
                     _%thunk139806%_)))))
          (declare (not safe))
          (##continuation-capture __tmp139985))))
    (define with-catch
      (lambda (_%handler137996%_ _%thunk137997%_)
        (if (procedure? _%handler137996%_)
            (let ((_%handler138001%_ _%handler137996%_))
              (if (procedure? _%thunk137997%_)
                  (let ((_%thunk138011%_ _%thunk137997%_))
                    (__with-catch _%handler138001%_ _%thunk138011%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk137997%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler137996%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn139745%_)
        (if (or (heap-overflow-exception? _%exn139745%_)
                (stack-overflow-exception? _%exn139745%_))
            _%exn139745%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn139745%_))
                _%exn139745%_
                (if (macro-exception? _%exn139745%_)
                    (let ((_%rte139753%_
                           (let ((__obj139977
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj139977
                                _%exn139745%_
                                '2
                                '#f
                                '#f))
                             __obj139977)))
                      (let ((__tmp139986
                             (lambda (_%cont139755%_)
                               (let ((__tmp139987
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont139755%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte139753%_
                                  'continuation
                                  __tmp139987)))))
                        (declare (not safe))
                        (##continuation-capture __tmp139986))
                      _%rte139753%_)
                    _%exn139745%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj139740%_)
        (let ((_%$e139742%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj139740%_))))
          (if _%$e139742%_ _%$e139742%_ (error-exception? _%obj139740%_)))))
    (define error-message
      (lambda (_%obj139699%_)
        (let ((_%$e139735%_
               (let* ((_%obj139701%_ _%obj139699%_)
                      (_%slot139704%_ 'message)
                      (_%E139707%_ false)
                      (_%slot139712%_ _%slot139704%_)
                      (_%E139725%_ _%E139707%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj139701%_ _%slot139712%_ _%E139725%_))))
          (if _%$e139735%_
              _%$e139735%_
              (if (error-exception? _%obj139699%_)
                  (error-exception-message _%obj139699%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj139694%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj139694%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj139694%_ 'irritants))
            (if (error-exception? _%obj139694%_)
                (error-exception-parameters _%obj139694%_)
                '#f))))
    (define error-trace
      (lambda (_%obj139692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj139692%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj139692%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e139653%_ _%port139654%_)
        (let ((_%$e139676%_
               (let* ((_%obj139656%_ _%e139653%_)
                      (_%id139659%_ 'display-exception)
                      (_%id139664%_ _%id139659%_))
                 (declare (not safe))
                 (__method-ref _%obj139656%_ _%id139664%_))))
          (if _%$e139676%_
              ((lambda (_%f139679%_) (_%f139679%_ _%e139653%_ _%port139654%_))
               _%$e139676%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e139653%_ _%port139654%_))))))
    (define display-exception__0
      (lambda (_%e139685%_)
        (let ((_%port139687%_ (current-error-port)))
          (display-exception__% _%e139685%_ _%port139687%_))))
    (define display-exception
      (lambda _g139988_
        (let ((_g139989_ (let () (declare (not safe)) (##length _g139988_))))
          (cond ((let () (declare (not safe)) (##fx= _g139989_ 1))
                 (apply display-exception__0 _g139988_))
                ((let () (declare (not safe)) (##fx= _g139989_ 2))
                 (apply display-exception__% _g139988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g139988_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self139631%_ _%message139632%_ . _%rest139633%_)
        (let* ((_%self139636%_ _%self139631%_)
               (_%message139650%_
                (if (string? _%message139632%_)
                    _%message139632%_
                    (call-with-output-string
                     '""
                     (lambda (_%g139645139647%_)
                       (display _%message139632%_ _%g139645139647%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self139636%_ 'message _%message139650%_))
          (apply class-instance-init! _%self139636%_ _%rest139633%_))))
    (define Error:::init!::specialize
      (lambda (__klass139898 __method-table139899)
        (let ((__message139900
               (let ((__slot139901
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139898 'message))))
                 (if __slot139901
                     __slot139901
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self139631%_ _%message139632%_ . _%rest139633%_)
            (let* ((_%self139636%_ _%self139631%_)
                   (_%message139650%_
                    (if (string? _%message139632%_)
                        _%message139632%_
                        (call-with-output-string
                         '""
                         (lambda (_%g139645139647%_)
                           (display _%message139632%_ _%g139645139647%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self139636%_
                 _%message139650%_
                 __message139900
                 '#f
                 '#f))
              (apply class-instance-init! _%self139636%_ _%rest139633%_))))))
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
      (lambda (_%self139336%_ _%port139337%_)
        (let ((_%self139340%_ _%self139336%_))
          (let ((_%tmp-port139350%_ (open-output-string))
                (_%display-error-newline139351%_
                 (> (output-port-column _%port139337%_) '0)))
            (fix-port-width! _%tmp-port139350%_)
            (let ((__tmp139990
                   (lambda ()
                     (if _%display-error-newline139351%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e139354%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self139340%_ 'where))))
                       (if _%$e139354%_ (display _%$e139354%_) (display '"?")))
                     (let ((__tmp139991
                            (let ((__tmp139992
                                   (let ((_%obj139358%_ _%self139340%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj139358%_))
                                         (let ((_%obj139363%_ _%obj139358%_))
                                           (declare (not safe))
                                           (__object-class _%obj139363%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj139358%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp139992))))
                       (declare (not safe))
                       (display* '" [" __tmp139991 '"]: "))
                     (let ((__tmp139993
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self139340%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp139993))
                     (let ((_%irritants139378%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self139340%_ 'irritants))))
                       (if (null? _%irritants139378%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj139380%_)
                                (if (u8vector? _%obj139380%_)
                                    (let ((__tmp139994
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj139380%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp139994))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj139380%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants139378%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont139381139383%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self139340%_
                                   'continuation))))
                           (if _%cont139381139383%_
                               (let ((_%cont139385%_ _%cont139381139383%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont139385%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp139990
               current-output-port
               _%tmp-port139350%_))
            (let ((__tmp139995 (get-output-string _%tmp-port139350%_)))
              (declare (not safe))
              (##write-string __tmp139995 _%port139337%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass139902 __method-table139903)
        (let ((__where139904
               (let ((__slot139908
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139902 'where))))
                 (if __slot139908
                     __slot139908
                     (error '"Unknown slot" 'where))))
              (__irritants139905
               (let ((__slot139909
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139902 'irritants))))
                 (if __slot139909
                     __slot139909
                     (error '"Unknown slot" 'irritants))))
              (__message139906
               (let ((__slot139910
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139902 'message))))
                 (if __slot139910
                     __slot139910
                     (error '"Unknown slot" 'message))))
              (__continuation139907
               (let ((__slot139911
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139902 'continuation))))
                 (if __slot139911
                     __slot139911
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self139336%_ _%port139337%_)
            (let ((_%self139340%_ _%self139336%_))
              (let ((_%tmp-port139350%_ (open-output-string))
                    (_%display-error-newline139351%_
                     (> (output-port-column _%port139337%_) '0)))
                (fix-port-width! _%tmp-port139350%_)
                (let ((__tmp139996
                       (lambda ()
                         (if _%display-error-newline139351%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e139354%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self139340%_
                                   __where139904
                                   '#f
                                   '#f))))
                           (if _%$e139354%_
                               (display _%$e139354%_)
                               (display '"?")))
                         (let ((__tmp139997
                                (let ((__tmp139998
                                       (let ((_%obj139358%_ _%self139340%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj139358%_))
                                             (let ((_%obj139363%_
                                                    _%obj139358%_))
                                               (declare (not safe))
                                               (__object-class _%obj139363%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj139358%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp139998))))
                           (declare (not safe))
                           (display* '" [" __tmp139997 '"]: "))
                         (let ((__tmp139999
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self139340%_
                                   __message139906
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp139999))
                         (let ((_%irritants139378%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self139340%_
                                   __irritants139905
                                   '#f
                                   '#f))))
                           (if (null? _%irritants139378%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj139380%_)
                                    (if (u8vector? _%obj139380%_)
                                        (let ((__tmp140000
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj139380%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp140000))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj139380%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants139378%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont139381139383%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self139340%_
                                       __continuation139907
                                       '#f
                                       '#f))))
                               (if _%cont139381139383%_
                                   (let ((_%cont139385%_ _%cont139381139383%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont139385%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp139996
                   current-output-port
                   _%tmp-port139350%_))
                (let ((__tmp140001 (get-output-string _%tmp-port139350%_)))
                  (declare (not safe))
                  (##write-string __tmp140001 _%port139337%_))))))))
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
      (lambda (_%self139193%_ _%port139194%_)
        (let* ((_%self139197%_ _%self139193%_)
               (_%tmp-port139207%_ (open-output-string)))
          (fix-port-width! _%tmp-port139207%_)
          (let ((__tmp140002
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self139197%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp140002 _%tmp-port139207%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont139208139210%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self139197%_ 'continuation))))
                (if _%cont139208139210%_
                    (let ((_%cont139212%_ _%cont139208139210%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port139207%_)
                      (newline _%tmp-port139207%_)
                      (display-continuation-backtrace
                       _%cont139212%_
                       _%tmp-port139207%_))
                    '#f))
              '#!void)
          (let ((__tmp140003 (get-output-string _%tmp-port139207%_)))
            (declare (not safe))
            (##write-string __tmp140003 _%port139194%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass139912 __method-table139913)
        (let ((__exception139914
               (let ((__slot139916
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139912 'exception))))
                 (if __slot139916
                     __slot139916
                     (error '"Unknown slot" 'exception))))
              (__continuation139915
               (let ((__slot139917
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass139912 'continuation))))
                 (if __slot139917
                     __slot139917
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self139193%_ _%port139194%_)
            (let* ((_%self139197%_ _%self139193%_)
                   (_%tmp-port139207%_ (open-output-string)))
              (fix-port-width! _%tmp-port139207%_)
              (let ((__tmp140004
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self139197%_
                        __exception139914
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp140004 _%tmp-port139207%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont139208139210%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self139197%_
                            __continuation139915
                            '#f
                            '#f))))
                    (if _%cont139208139210%_
                        (let ((_%cont139212%_ _%cont139208139210%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port139207%_)
                          (newline _%tmp-port139207%_)
                          (display-continuation-backtrace
                           _%cont139212%_
                           _%tmp-port139207%_))
                        '#f))
                  '#!void)
              (let ((__tmp140005 (get-output-string _%tmp-port139207%_)))
                (declare (not safe))
                (##write-string __tmp140005 _%port139194%_)))))))
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
      (lambda (_%port139065%_)
        (if (macro-character-port? _%port139065%_)
            (let ((_%old-width139067%_
                   (macro-character-port-output-width _%port139065%_)))
              (macro-character-port-output-width-set!
               _%port139065%_
               (lambda (_%port139069%_) '256))
              _%old-width139067%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port139062%_ _%old-width139063%_)
        (if (macro-character-port? _%port139062%_)
            (macro-character-port-output-width-set!
             _%port139062%_
             _%old-width139063%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e139060%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e139060%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn139054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139054%_))
            (let ((_%e139057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139054%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e139057%_))
            (macro-abandoned-mutex-exception? _%exn139054%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn139050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139050%_))
            (let ((_%e139052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139050%_ 'exception))))
              (macro-cfun-conversion-exception? _%e139052%_))
            (macro-cfun-conversion-exception? _%exn139050%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn139046%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139046%_))
            (let ((_%e139048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139046%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e139048%_)
                  (macro-cfun-conversion-exception-arguments _%e139048%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e139048%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn139046%_)
                (macro-cfun-conversion-exception-arguments _%exn139046%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn139046%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn139042%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139042%_))
            (let ((_%e139044%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139042%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e139044%_)
                  (macro-cfun-conversion-exception-code _%e139044%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e139044%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn139042%_)
                (macro-cfun-conversion-exception-code _%exn139042%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn139042%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn139038%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139038%_))
            (let ((_%e139040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139038%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e139040%_)
                  (macro-cfun-conversion-exception-message _%e139040%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e139040%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn139038%_)
                (macro-cfun-conversion-exception-message _%exn139038%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn139038%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn139032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139032%_))
            (let ((_%e139035%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139032%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e139035%_)
                  (macro-cfun-conversion-exception-procedure _%e139035%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e139035%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn139032%_)
                (macro-cfun-conversion-exception-procedure _%exn139032%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn139032%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn139028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139028%_))
            (let ((_%e139030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139028%_ 'exception))))
              (macro-datum-parsing-exception? _%e139030%_))
            (macro-datum-parsing-exception? _%exn139028%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn139024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139024%_))
            (let ((_%e139026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139024%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e139026%_)
                  (macro-datum-parsing-exception-kind _%e139026%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e139026%_ '())))))
            (if (macro-datum-parsing-exception? _%exn139024%_)
                (macro-datum-parsing-exception-kind _%exn139024%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn139024%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn139020%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139020%_))
            (let ((_%e139022%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139020%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e139022%_)
                  (macro-datum-parsing-exception-parameters _%e139022%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e139022%_ '())))))
            (if (macro-datum-parsing-exception? _%exn139020%_)
                (macro-datum-parsing-exception-parameters _%exn139020%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn139020%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn139014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139014%_))
            (let ((_%e139017%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139014%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e139017%_)
                  (macro-datum-parsing-exception-readenv _%e139017%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e139017%_ '())))))
            (if (macro-datum-parsing-exception? _%exn139014%_)
                (macro-datum-parsing-exception-readenv _%exn139014%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn139014%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn139008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139008%_))
            (let ((_%e139011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139008%_ 'exception))))
              (macro-deadlock-exception? _%e139011%_))
            (macro-deadlock-exception? _%exn139008%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn139004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139004%_))
            (let ((_%e139006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139004%_ 'exception))))
              (macro-divide-by-zero-exception? _%e139006%_))
            (macro-divide-by-zero-exception? _%exn139004%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn139000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn139000%_))
            (let ((_%e139002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn139000%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e139002%_)
                  (macro-divide-by-zero-exception-arguments _%e139002%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e139002%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn139000%_)
                (macro-divide-by-zero-exception-arguments _%exn139000%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn139000%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn138994%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138994%_))
            (let ((_%e138997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138994%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e138997%_)
                  (macro-divide-by-zero-exception-procedure _%e138997%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e138997%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn138994%_)
                (macro-divide-by-zero-exception-procedure _%exn138994%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn138994%_ '())))))))
    (define error-exception?
      (lambda (_%exn138990%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138990%_))
            (let ((_%e138992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138990%_ 'exception))))
              (macro-error-exception? _%e138992%_))
            (macro-error-exception? _%exn138990%_))))
    (define error-exception-message
      (lambda (_%exn138986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138986%_))
            (let ((_%e138988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138986%_ 'exception))))
              (if (macro-error-exception? _%e138988%_)
                  (macro-error-exception-message _%e138988%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e138988%_ '())))))
            (if (macro-error-exception? _%exn138986%_)
                (macro-error-exception-message _%exn138986%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn138986%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn138980%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138980%_))
            (let ((_%e138983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138980%_ 'exception))))
              (if (macro-error-exception? _%e138983%_)
                  (macro-error-exception-parameters _%e138983%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e138983%_ '())))))
            (if (macro-error-exception? _%exn138980%_)
                (macro-error-exception-parameters _%exn138980%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn138980%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn138976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138976%_))
            (let ((_%e138978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138976%_ 'exception))))
              (macro-expression-parsing-exception? _%e138978%_))
            (macro-expression-parsing-exception? _%exn138976%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn138972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138972%_))
            (let ((_%e138974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138972%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e138974%_)
                  (macro-expression-parsing-exception-kind _%e138974%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e138974%_ '())))))
            (if (macro-expression-parsing-exception? _%exn138972%_)
                (macro-expression-parsing-exception-kind _%exn138972%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn138972%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn138968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138968%_))
            (let ((_%e138970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138968%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e138970%_)
                  (macro-expression-parsing-exception-parameters _%e138970%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e138970%_ '())))))
            (if (macro-expression-parsing-exception? _%exn138968%_)
                (macro-expression-parsing-exception-parameters _%exn138968%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn138968%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn138962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138962%_))
            (let ((_%e138965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138962%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e138965%_)
                  (macro-expression-parsing-exception-source _%e138965%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e138965%_ '())))))
            (if (macro-expression-parsing-exception? _%exn138962%_)
                (macro-expression-parsing-exception-source _%exn138962%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn138962%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn138958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138958%_))
            (let ((_%e138960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138958%_ 'exception))))
              (macro-file-exists-exception? _%e138960%_))
            (macro-file-exists-exception? _%exn138958%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn138954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138954%_))
            (let ((_%e138956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138954%_ 'exception))))
              (if (macro-file-exists-exception? _%e138956%_)
                  (macro-file-exists-exception-arguments _%e138956%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e138956%_ '())))))
            (if (macro-file-exists-exception? _%exn138954%_)
                (macro-file-exists-exception-arguments _%exn138954%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn138954%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn138948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138948%_))
            (let ((_%e138951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138948%_ 'exception))))
              (if (macro-file-exists-exception? _%e138951%_)
                  (macro-file-exists-exception-procedure _%e138951%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e138951%_ '())))))
            (if (macro-file-exists-exception? _%exn138948%_)
                (macro-file-exists-exception-procedure _%exn138948%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn138948%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn138944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138944%_))
            (let ((_%e138946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138944%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e138946%_))
            (macro-fixnum-overflow-exception? _%exn138944%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn138940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138940%_))
            (let ((_%e138942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138940%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e138942%_)
                  (macro-fixnum-overflow-exception-arguments _%e138942%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e138942%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn138940%_)
                (macro-fixnum-overflow-exception-arguments _%exn138940%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn138940%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn138934%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138934%_))
            (let ((_%e138937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138934%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e138937%_)
                  (macro-fixnum-overflow-exception-procedure _%e138937%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e138937%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn138934%_)
                (macro-fixnum-overflow-exception-procedure _%exn138934%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn138934%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn138928%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138928%_))
            (let ((_%e138931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138928%_ 'exception))))
              (macro-heap-overflow-exception? _%e138931%_))
            (macro-heap-overflow-exception? _%exn138928%_))))
    (define inactive-thread-exception?
      (lambda (_%exn138924%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138924%_))
            (let ((_%e138926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138924%_ 'exception))))
              (macro-inactive-thread-exception? _%e138926%_))
            (macro-inactive-thread-exception? _%exn138924%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn138920%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138920%_))
            (let ((_%e138922%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138920%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e138922%_)
                  (macro-inactive-thread-exception-arguments _%e138922%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e138922%_ '())))))
            (if (macro-inactive-thread-exception? _%exn138920%_)
                (macro-inactive-thread-exception-arguments _%exn138920%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn138920%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn138914%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138914%_))
            (let ((_%e138917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138914%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e138917%_)
                  (macro-inactive-thread-exception-procedure _%e138917%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e138917%_ '())))))
            (if (macro-inactive-thread-exception? _%exn138914%_)
                (macro-inactive-thread-exception-procedure _%exn138914%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn138914%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn138910%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138910%_))
            (let ((_%e138912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138910%_ 'exception))))
              (macro-initialized-thread-exception? _%e138912%_))
            (macro-initialized-thread-exception? _%exn138910%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn138906%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138906%_))
            (let ((_%e138908%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138906%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e138908%_)
                  (macro-initialized-thread-exception-arguments _%e138908%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e138908%_ '())))))
            (if (macro-initialized-thread-exception? _%exn138906%_)
                (macro-initialized-thread-exception-arguments _%exn138906%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn138906%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn138900%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138900%_))
            (let ((_%e138903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138900%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e138903%_)
                  (macro-initialized-thread-exception-procedure _%e138903%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e138903%_ '())))))
            (if (macro-initialized-thread-exception? _%exn138900%_)
                (macro-initialized-thread-exception-procedure _%exn138900%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn138900%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn138896%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138896%_))
            (let ((_%e138898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138896%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e138898%_))
            (macro-invalid-hash-number-exception? _%exn138896%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn138892%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138892%_))
            (let ((_%e138894%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138892%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e138894%_)
                  (macro-invalid-hash-number-exception-arguments _%e138894%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e138894%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn138892%_)
                (macro-invalid-hash-number-exception-arguments _%exn138892%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn138892%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn138886%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138886%_))
            (let ((_%e138889%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138886%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e138889%_)
                  (macro-invalid-hash-number-exception-procedure _%e138889%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e138889%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn138886%_)
                (macro-invalid-hash-number-exception-procedure _%exn138886%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn138886%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn138882%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138882%_))
            (let ((_%e138884%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138882%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e138884%_))
            (macro-invalid-utf8-encoding-exception? _%exn138882%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn138878%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138878%_))
            (let ((_%e138880%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138878%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e138880%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e138880%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e138880%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn138878%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn138878%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn138878%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn138872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138872%_))
            (let ((_%e138875%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138872%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e138875%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e138875%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e138875%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn138872%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn138872%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn138872%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn138868%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138868%_))
            (let ((_%e138870%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138868%_ 'exception))))
              (macro-join-timeout-exception? _%e138870%_))
            (macro-join-timeout-exception? _%exn138868%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn138864%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138864%_))
            (let ((_%e138866%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138864%_ 'exception))))
              (if (macro-join-timeout-exception? _%e138866%_)
                  (macro-join-timeout-exception-arguments _%e138866%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e138866%_ '())))))
            (if (macro-join-timeout-exception? _%exn138864%_)
                (macro-join-timeout-exception-arguments _%exn138864%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn138864%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn138858%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138858%_))
            (let ((_%e138861%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138858%_ 'exception))))
              (if (macro-join-timeout-exception? _%e138861%_)
                  (macro-join-timeout-exception-procedure _%e138861%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e138861%_ '())))))
            (if (macro-join-timeout-exception? _%exn138858%_)
                (macro-join-timeout-exception-procedure _%exn138858%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn138858%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn138854%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138854%_))
            (let ((_%e138856%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138854%_ 'exception))))
              (macro-keyword-expected-exception? _%e138856%_))
            (macro-keyword-expected-exception? _%exn138854%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn138850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138850%_))
            (let ((_%e138852%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138850%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e138852%_)
                  (macro-keyword-expected-exception-arguments _%e138852%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e138852%_ '())))))
            (if (macro-keyword-expected-exception? _%exn138850%_)
                (macro-keyword-expected-exception-arguments _%exn138850%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn138850%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn138844%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138844%_))
            (let ((_%e138847%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138844%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e138847%_)
                  (macro-keyword-expected-exception-procedure _%e138847%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e138847%_ '())))))
            (if (macro-keyword-expected-exception? _%exn138844%_)
                (macro-keyword-expected-exception-procedure _%exn138844%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn138844%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn138840%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138840%_))
            (let ((_%e138842%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138840%_ 'exception))))
              (macro-length-mismatch-exception? _%e138842%_))
            (macro-length-mismatch-exception? _%exn138840%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn138836%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138836%_))
            (let ((_%e138838%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138836%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e138838%_)
                  (macro-length-mismatch-exception-arg-id _%e138838%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e138838%_ '())))))
            (if (macro-length-mismatch-exception? _%exn138836%_)
                (macro-length-mismatch-exception-arg-id _%exn138836%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn138836%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn138832%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138832%_))
            (let ((_%e138834%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138832%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e138834%_)
                  (macro-length-mismatch-exception-arguments _%e138834%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e138834%_ '())))))
            (if (macro-length-mismatch-exception? _%exn138832%_)
                (macro-length-mismatch-exception-arguments _%exn138832%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn138832%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn138826%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138826%_))
            (let ((_%e138829%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138826%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e138829%_)
                  (macro-length-mismatch-exception-procedure _%e138829%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e138829%_ '())))))
            (if (macro-length-mismatch-exception? _%exn138826%_)
                (macro-length-mismatch-exception-procedure _%exn138826%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn138826%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn138822%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138822%_))
            (let ((_%e138824%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138822%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e138824%_))
            (macro-mailbox-receive-timeout-exception? _%exn138822%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn138818%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138818%_))
            (let ((_%e138820%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138818%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e138820%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e138820%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e138820%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn138818%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn138818%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn138818%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn138812%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138812%_))
            (let ((_%e138815%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138812%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e138815%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e138815%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e138815%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn138812%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn138812%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn138812%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn138808%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138808%_))
            (let ((_%e138810%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138808%_ 'exception))))
              (macro-module-not-found-exception? _%e138810%_))
            (macro-module-not-found-exception? _%exn138808%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn138804%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138804%_))
            (let ((_%e138806%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138804%_ 'exception))))
              (if (macro-module-not-found-exception? _%e138806%_)
                  (macro-module-not-found-exception-arguments _%e138806%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e138806%_ '())))))
            (if (macro-module-not-found-exception? _%exn138804%_)
                (macro-module-not-found-exception-arguments _%exn138804%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn138804%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn138798%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138798%_))
            (let ((_%e138801%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138798%_ 'exception))))
              (if (macro-module-not-found-exception? _%e138801%_)
                  (macro-module-not-found-exception-procedure _%e138801%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e138801%_ '())))))
            (if (macro-module-not-found-exception? _%exn138798%_)
                (macro-module-not-found-exception-procedure _%exn138798%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn138798%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn138792%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138792%_))
            (let ((_%e138795%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138792%_ 'exception))))
              (macro-multiple-c-return-exception? _%e138795%_))
            (macro-multiple-c-return-exception? _%exn138792%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn138788%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138788%_))
            (let ((_%e138790%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138788%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e138790%_))
            (macro-no-such-file-or-directory-exception? _%exn138788%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn138784%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138784%_))
            (let ((_%e138786%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138784%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e138786%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e138786%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e138786%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn138784%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn138784%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn138784%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn138778%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138778%_))
            (let ((_%e138781%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138778%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e138781%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e138781%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e138781%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn138778%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn138778%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn138778%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn138774%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138774%_))
            (let ((_%e138776%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138774%_ 'exception))))
              (macro-noncontinuable-exception? _%e138776%_))
            (macro-noncontinuable-exception? _%exn138774%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn138768%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138768%_))
            (let ((_%e138771%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138768%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e138771%_)
                  (macro-noncontinuable-exception-reason _%e138771%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e138771%_ '())))))
            (if (macro-noncontinuable-exception? _%exn138768%_)
                (macro-noncontinuable-exception-reason _%exn138768%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn138768%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn138764%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138764%_))
            (let ((_%e138766%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138764%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e138766%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn138764%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn138760%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138760%_))
            (let ((_%e138762%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138760%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e138762%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e138762%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e138762%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn138760%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn138760%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn138760%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn138754%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138754%_))
            (let ((_%e138757%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138754%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e138757%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e138757%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e138757%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn138754%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn138754%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn138754%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn138750%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138750%_))
            (let ((_%e138752%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138750%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e138752%_))
            (macro-nonprocedure-operator-exception? _%exn138750%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn138746%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138746%_))
            (let ((_%e138748%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138746%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e138748%_)
                  (macro-nonprocedure-operator-exception-arguments _%e138748%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e138748%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn138746%_)
                (macro-nonprocedure-operator-exception-arguments _%exn138746%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn138746%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn138742%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138742%_))
            (let ((_%e138744%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138742%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e138744%_)
                  (macro-nonprocedure-operator-exception-code _%e138744%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e138744%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn138742%_)
                (macro-nonprocedure-operator-exception-code _%exn138742%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn138742%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn138738%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138738%_))
            (let ((_%e138740%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138738%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e138740%_)
                  (macro-nonprocedure-operator-exception-operator _%e138740%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e138740%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn138738%_)
                (macro-nonprocedure-operator-exception-operator _%exn138738%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn138738%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn138732%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138732%_))
            (let ((_%e138735%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138732%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e138735%_)
                  (macro-nonprocedure-operator-exception-rte _%e138735%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e138735%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn138732%_)
                (macro-nonprocedure-operator-exception-rte _%exn138732%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn138732%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn138728%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138728%_))
            (let ((_%e138730%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138728%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e138730%_))
            (macro-not-in-compilation-context-exception? _%exn138728%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn138724%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138724%_))
            (let ((_%e138726%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138724%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e138726%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e138726%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e138726%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn138724%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn138724%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn138724%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn138718%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138718%_))
            (let ((_%e138721%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138718%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e138721%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e138721%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e138721%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn138718%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn138718%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn138718%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn138714%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138714%_))
            (let ((_%e138716%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138714%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e138716%_))
            (macro-number-of-arguments-limit-exception? _%exn138714%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn138710%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138710%_))
            (let ((_%e138712%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138710%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e138712%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e138712%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e138712%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn138710%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn138710%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn138710%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn138704%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138704%_))
            (let ((_%e138707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138704%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e138707%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e138707%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e138707%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn138704%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn138704%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn138704%_ '())))))))
    (define os-exception?
      (lambda (_%exn138700%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138700%_))
            (let ((_%e138702%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138700%_ 'exception))))
              (macro-os-exception? _%e138702%_))
            (macro-os-exception? _%exn138700%_))))
    (define os-exception-arguments
      (lambda (_%exn138696%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138696%_))
            (let ((_%e138698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138696%_ 'exception))))
              (if (macro-os-exception? _%e138698%_)
                  (macro-os-exception-arguments _%e138698%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e138698%_ '())))))
            (if (macro-os-exception? _%exn138696%_)
                (macro-os-exception-arguments _%exn138696%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn138696%_ '())))))))
    (define os-exception-code
      (lambda (_%exn138692%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138692%_))
            (let ((_%e138694%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138692%_ 'exception))))
              (if (macro-os-exception? _%e138694%_)
                  (macro-os-exception-code _%e138694%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e138694%_ '())))))
            (if (macro-os-exception? _%exn138692%_)
                (macro-os-exception-code _%exn138692%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn138692%_ '())))))))
    (define os-exception-message
      (lambda (_%exn138688%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138688%_))
            (let ((_%e138690%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138688%_ 'exception))))
              (if (macro-os-exception? _%e138690%_)
                  (macro-os-exception-message _%e138690%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e138690%_ '())))))
            (if (macro-os-exception? _%exn138688%_)
                (macro-os-exception-message _%exn138688%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn138688%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn138682%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138682%_))
            (let ((_%e138685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138682%_ 'exception))))
              (if (macro-os-exception? _%e138685%_)
                  (macro-os-exception-procedure _%e138685%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e138685%_ '())))))
            (if (macro-os-exception? _%exn138682%_)
                (macro-os-exception-procedure _%exn138682%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn138682%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn138678%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138678%_))
            (let ((_%e138680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138678%_ 'exception))))
              (macro-permission-denied-exception? _%e138680%_))
            (macro-permission-denied-exception? _%exn138678%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn138674%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138674%_))
            (let ((_%e138676%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138674%_ 'exception))))
              (if (macro-permission-denied-exception? _%e138676%_)
                  (macro-permission-denied-exception-arguments _%e138676%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e138676%_ '())))))
            (if (macro-permission-denied-exception? _%exn138674%_)
                (macro-permission-denied-exception-arguments _%exn138674%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn138674%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn138668%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138668%_))
            (let ((_%e138671%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138668%_ 'exception))))
              (if (macro-permission-denied-exception? _%e138671%_)
                  (macro-permission-denied-exception-procedure _%e138671%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e138671%_ '())))))
            (if (macro-permission-denied-exception? _%exn138668%_)
                (macro-permission-denied-exception-procedure _%exn138668%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn138668%_ '())))))))
    (define range-exception?
      (lambda (_%exn138664%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138664%_))
            (let ((_%e138666%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138664%_ 'exception))))
              (macro-range-exception? _%e138666%_))
            (macro-range-exception? _%exn138664%_))))
    (define range-exception-arg-id
      (lambda (_%exn138660%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138660%_))
            (let ((_%e138662%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138660%_ 'exception))))
              (if (macro-range-exception? _%e138662%_)
                  (macro-range-exception-arg-id _%e138662%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e138662%_ '())))))
            (if (macro-range-exception? _%exn138660%_)
                (macro-range-exception-arg-id _%exn138660%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn138660%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn138656%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138656%_))
            (let ((_%e138658%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138656%_ 'exception))))
              (if (macro-range-exception? _%e138658%_)
                  (macro-range-exception-arguments _%e138658%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e138658%_ '())))))
            (if (macro-range-exception? _%exn138656%_)
                (macro-range-exception-arguments _%exn138656%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn138656%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn138650%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138650%_))
            (let ((_%e138653%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138650%_ 'exception))))
              (if (macro-range-exception? _%e138653%_)
                  (macro-range-exception-procedure _%e138653%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e138653%_ '())))))
            (if (macro-range-exception? _%exn138650%_)
                (macro-range-exception-procedure _%exn138650%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn138650%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn138646%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138646%_))
            (let ((_%e138648%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138646%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e138648%_))
            (macro-rpc-remote-error-exception? _%exn138646%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn138642%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138642%_))
            (let ((_%e138644%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138642%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e138644%_)
                  (macro-rpc-remote-error-exception-arguments _%e138644%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e138644%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn138642%_)
                (macro-rpc-remote-error-exception-arguments _%exn138642%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn138642%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn138638%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138638%_))
            (let ((_%e138640%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138638%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e138640%_)
                  (macro-rpc-remote-error-exception-message _%e138640%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e138640%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn138638%_)
                (macro-rpc-remote-error-exception-message _%exn138638%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn138638%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn138632%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138632%_))
            (let ((_%e138635%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138632%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e138635%_)
                  (macro-rpc-remote-error-exception-procedure _%e138635%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e138635%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn138632%_)
                (macro-rpc-remote-error-exception-procedure _%exn138632%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn138632%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn138628%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138628%_))
            (let ((_%e138630%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138628%_ 'exception))))
              (macro-scheduler-exception? _%e138630%_))
            (macro-scheduler-exception? _%exn138628%_))))
    (define scheduler-exception-reason
      (lambda (_%exn138622%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138622%_))
            (let ((_%e138625%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138622%_ 'exception))))
              (if (macro-scheduler-exception? _%e138625%_)
                  (macro-scheduler-exception-reason _%e138625%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e138625%_ '())))))
            (if (macro-scheduler-exception? _%exn138622%_)
                (macro-scheduler-exception-reason _%exn138622%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn138622%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn138618%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138618%_))
            (let ((_%e138620%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138618%_ 'exception))))
              (macro-sfun-conversion-exception? _%e138620%_))
            (macro-sfun-conversion-exception? _%exn138618%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn138614%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138614%_))
            (let ((_%e138616%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138614%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e138616%_)
                  (macro-sfun-conversion-exception-arguments _%e138616%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e138616%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn138614%_)
                (macro-sfun-conversion-exception-arguments _%exn138614%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn138614%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn138610%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138610%_))
            (let ((_%e138612%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138610%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e138612%_)
                  (macro-sfun-conversion-exception-code _%e138612%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e138612%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn138610%_)
                (macro-sfun-conversion-exception-code _%exn138610%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn138610%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn138606%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138606%_))
            (let ((_%e138608%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138606%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e138608%_)
                  (macro-sfun-conversion-exception-message _%e138608%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e138608%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn138606%_)
                (macro-sfun-conversion-exception-message _%exn138606%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn138606%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn138600%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138600%_))
            (let ((_%e138603%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138600%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e138603%_)
                  (macro-sfun-conversion-exception-procedure _%e138603%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e138603%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn138600%_)
                (macro-sfun-conversion-exception-procedure _%exn138600%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn138600%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn138594%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138594%_))
            (let ((_%e138597%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138594%_ 'exception))))
              (macro-stack-overflow-exception? _%e138597%_))
            (macro-stack-overflow-exception? _%exn138594%_))))
    (define started-thread-exception?
      (lambda (_%exn138590%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138590%_))
            (let ((_%e138592%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138590%_ 'exception))))
              (macro-started-thread-exception? _%e138592%_))
            (macro-started-thread-exception? _%exn138590%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn138586%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138586%_))
            (let ((_%e138588%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138586%_ 'exception))))
              (if (macro-started-thread-exception? _%e138588%_)
                  (macro-started-thread-exception-arguments _%e138588%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e138588%_ '())))))
            (if (macro-started-thread-exception? _%exn138586%_)
                (macro-started-thread-exception-arguments _%exn138586%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn138586%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn138580%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138580%_))
            (let ((_%e138583%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138580%_ 'exception))))
              (if (macro-started-thread-exception? _%e138583%_)
                  (macro-started-thread-exception-procedure _%e138583%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e138583%_ '())))))
            (if (macro-started-thread-exception? _%exn138580%_)
                (macro-started-thread-exception-procedure _%exn138580%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn138580%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn138576%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138576%_))
            (let ((_%e138578%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138576%_ 'exception))))
              (macro-terminated-thread-exception? _%e138578%_))
            (macro-terminated-thread-exception? _%exn138576%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn138572%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138572%_))
            (let ((_%e138574%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138572%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e138574%_)
                  (macro-terminated-thread-exception-arguments _%e138574%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e138574%_ '())))))
            (if (macro-terminated-thread-exception? _%exn138572%_)
                (macro-terminated-thread-exception-arguments _%exn138572%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn138572%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn138566%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138566%_))
            (let ((_%e138569%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138566%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e138569%_)
                  (macro-terminated-thread-exception-procedure _%e138569%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e138569%_ '())))))
            (if (macro-terminated-thread-exception? _%exn138566%_)
                (macro-terminated-thread-exception-procedure _%exn138566%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn138566%_ '())))))))
    (define type-exception?
      (lambda (_%exn138562%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138562%_))
            (let ((_%e138564%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138562%_ 'exception))))
              (macro-type-exception? _%e138564%_))
            (macro-type-exception? _%exn138562%_))))
    (define type-exception-arg-id
      (lambda (_%exn138558%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138558%_))
            (let ((_%e138560%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138558%_ 'exception))))
              (if (macro-type-exception? _%e138560%_)
                  (macro-type-exception-arg-id _%e138560%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e138560%_ '())))))
            (if (macro-type-exception? _%exn138558%_)
                (macro-type-exception-arg-id _%exn138558%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn138558%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn138554%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138554%_))
            (let ((_%e138556%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138554%_ 'exception))))
              (if (macro-type-exception? _%e138556%_)
                  (macro-type-exception-arguments _%e138556%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e138556%_ '())))))
            (if (macro-type-exception? _%exn138554%_)
                (macro-type-exception-arguments _%exn138554%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn138554%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn138550%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138550%_))
            (let ((_%e138552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138550%_ 'exception))))
              (if (macro-type-exception? _%e138552%_)
                  (macro-type-exception-procedure _%e138552%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e138552%_ '())))))
            (if (macro-type-exception? _%exn138550%_)
                (macro-type-exception-procedure _%exn138550%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn138550%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn138544%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138544%_))
            (let ((_%e138547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138544%_ 'exception))))
              (if (macro-type-exception? _%e138547%_)
                  (macro-type-exception-type-id _%e138547%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e138547%_ '())))))
            (if (macro-type-exception? _%exn138544%_)
                (macro-type-exception-type-id _%exn138544%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn138544%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn138540%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138540%_))
            (let ((_%e138542%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138540%_ 'exception))))
              (macro-unbound-global-exception? _%e138542%_))
            (macro-unbound-global-exception? _%exn138540%_))))
    (define unbound-global-exception-code
      (lambda (_%exn138536%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138536%_))
            (let ((_%e138538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138536%_ 'exception))))
              (if (macro-unbound-global-exception? _%e138538%_)
                  (macro-unbound-global-exception-code _%e138538%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e138538%_ '())))))
            (if (macro-unbound-global-exception? _%exn138536%_)
                (macro-unbound-global-exception-code _%exn138536%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn138536%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn138532%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138532%_))
            (let ((_%e138534%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138532%_ 'exception))))
              (if (macro-unbound-global-exception? _%e138534%_)
                  (macro-unbound-global-exception-rte _%e138534%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e138534%_ '())))))
            (if (macro-unbound-global-exception? _%exn138532%_)
                (macro-unbound-global-exception-rte _%exn138532%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn138532%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn138526%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138526%_))
            (let ((_%e138529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138526%_ 'exception))))
              (if (macro-unbound-global-exception? _%e138529%_)
                  (macro-unbound-global-exception-variable _%e138529%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e138529%_ '())))))
            (if (macro-unbound-global-exception? _%exn138526%_)
                (macro-unbound-global-exception-variable _%exn138526%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn138526%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn138522%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138522%_))
            (let ((_%e138524%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138522%_ 'exception))))
              (macro-unbound-key-exception? _%e138524%_))
            (macro-unbound-key-exception? _%exn138522%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn138518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138518%_))
            (let ((_%e138520%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138518%_ 'exception))))
              (if (macro-unbound-key-exception? _%e138520%_)
                  (macro-unbound-key-exception-arguments _%e138520%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e138520%_ '())))))
            (if (macro-unbound-key-exception? _%exn138518%_)
                (macro-unbound-key-exception-arguments _%exn138518%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn138518%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn138512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138512%_))
            (let ((_%e138515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138512%_ 'exception))))
              (if (macro-unbound-key-exception? _%e138515%_)
                  (macro-unbound-key-exception-procedure _%e138515%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e138515%_ '())))))
            (if (macro-unbound-key-exception? _%exn138512%_)
                (macro-unbound-key-exception-procedure _%exn138512%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn138512%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn138508%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138508%_))
            (let ((_%e138510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138508%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e138510%_))
            (macro-unbound-os-environment-variable-exception? _%exn138508%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn138504%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138504%_))
            (let ((_%e138506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138504%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e138506%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e138506%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e138506%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn138504%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn138504%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn138504%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn138498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138498%_))
            (let ((_%e138501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138498%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e138501%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e138501%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e138501%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn138498%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn138498%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn138498%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn138494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138494%_))
            (let ((_%e138496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138494%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e138496%_))
            (macro-unbound-serial-number-exception? _%exn138494%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn138490%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138490%_))
            (let ((_%e138492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138490%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e138492%_)
                  (macro-unbound-serial-number-exception-arguments _%e138492%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e138492%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn138490%_)
                (macro-unbound-serial-number-exception-arguments _%exn138490%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn138490%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn138484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138484%_))
            (let ((_%e138487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138484%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e138487%_)
                  (macro-unbound-serial-number-exception-procedure _%e138487%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e138487%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn138484%_)
                (macro-unbound-serial-number-exception-procedure _%exn138484%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn138484%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn138480%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138480%_))
            (let ((_%e138482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138480%_ 'exception))))
              (macro-uncaught-exception? _%e138482%_))
            (macro-uncaught-exception? _%exn138480%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn138476%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138476%_))
            (let ((_%e138478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138476%_ 'exception))))
              (if (macro-uncaught-exception? _%e138478%_)
                  (macro-uncaught-exception-arguments _%e138478%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e138478%_ '())))))
            (if (macro-uncaught-exception? _%exn138476%_)
                (macro-uncaught-exception-arguments _%exn138476%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn138476%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn138472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138472%_))
            (let ((_%e138474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138472%_ 'exception))))
              (if (macro-uncaught-exception? _%e138474%_)
                  (macro-uncaught-exception-procedure _%e138474%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e138474%_ '())))))
            (if (macro-uncaught-exception? _%exn138472%_)
                (macro-uncaught-exception-procedure _%exn138472%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn138472%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn138466%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138466%_))
            (let ((_%e138469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138466%_ 'exception))))
              (if (macro-uncaught-exception? _%e138469%_)
                  (macro-uncaught-exception-reason _%e138469%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e138469%_ '())))))
            (if (macro-uncaught-exception? _%exn138466%_)
                (macro-uncaught-exception-reason _%exn138466%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn138466%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn138462%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138462%_))
            (let ((_%e138464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138462%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e138464%_))
            (macro-uninitialized-thread-exception? _%exn138462%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn138458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138458%_))
            (let ((_%e138460%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138458%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e138460%_)
                  (macro-uninitialized-thread-exception-arguments _%e138460%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e138460%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn138458%_)
                (macro-uninitialized-thread-exception-arguments _%exn138458%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn138458%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn138452%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138452%_))
            (let ((_%e138455%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138452%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e138455%_)
                  (macro-uninitialized-thread-exception-procedure _%e138455%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e138455%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn138452%_)
                (macro-uninitialized-thread-exception-procedure _%exn138452%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn138452%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn138448%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138448%_))
            (let ((_%e138450%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138448%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e138450%_))
            (macro-unknown-keyword-argument-exception? _%exn138448%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn138444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138444%_))
            (let ((_%e138446%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138444%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e138446%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e138446%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e138446%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn138444%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn138444%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn138444%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn138438%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138438%_))
            (let ((_%e138441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138438%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e138441%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e138441%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e138441%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn138438%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn138438%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn138438%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn138434%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138434%_))
            (let ((_%e138436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138434%_ 'exception))))
              (macro-unterminated-process-exception? _%e138436%_))
            (macro-unterminated-process-exception? _%exn138434%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn138430%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138430%_))
            (let ((_%e138432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138430%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e138432%_)
                  (macro-unterminated-process-exception-arguments _%e138432%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e138432%_ '())))))
            (if (macro-unterminated-process-exception? _%exn138430%_)
                (macro-unterminated-process-exception-arguments _%exn138430%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn138430%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn138424%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138424%_))
            (let ((_%e138427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138424%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e138427%_)
                  (macro-unterminated-process-exception-procedure _%e138427%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e138427%_ '())))))
            (if (macro-unterminated-process-exception? _%exn138424%_)
                (macro-unterminated-process-exception-procedure _%exn138424%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn138424%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn138420%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138420%_))
            (let ((_%e138422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138420%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e138422%_))
            (macro-wrong-number-of-arguments-exception? _%exn138420%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn138416%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138416%_))
            (let ((_%e138418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138416%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e138418%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e138418%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e138418%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn138416%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn138416%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn138416%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn138410%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138410%_))
            (let ((_%e138413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138410%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e138413%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e138413%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e138413%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn138410%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn138410%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn138410%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn138406%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138406%_))
            (let ((_%e138408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138406%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e138408%_))
            (macro-wrong-number-of-values-exception? _%exn138406%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn138402%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138402%_))
            (let ((_%e138404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138402%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e138404%_)
                  (macro-wrong-number-of-values-exception-code _%e138404%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e138404%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn138402%_)
                (macro-wrong-number-of-values-exception-code _%exn138402%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn138402%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn138398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138398%_))
            (let ((_%e138400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138398%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e138400%_)
                  (macro-wrong-number-of-values-exception-rte _%e138400%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e138400%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn138398%_)
                (macro-wrong-number-of-values-exception-rte _%exn138398%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn138398%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn138392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138392%_))
            (let ((_%e138395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138392%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e138395%_)
                  (macro-wrong-number-of-values-exception-vals _%e138395%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e138395%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn138392%_)
                (macro-wrong-number-of-values-exception-vals _%exn138392%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn138392%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn138386%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn138386%_))
            (let ((_%e138389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn138386%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e138389%_))
            (macro-wrong-processor-c-return-exception? _%exn138386%_))))))
