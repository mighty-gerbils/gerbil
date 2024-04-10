(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1712784664)
  (begin
    (define Exception::t
      (let ((__tmp101351 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Exception::t
         'Exception
         __tmp101351
         '()
         '()
         '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args101321%_
        (apply make-instance Exception::t _%$args101321%_)))
    (define StackTrace::t
      (let ((__tmp101352 (list)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#StackTrace::t
         'StackTrace
         __tmp101352
         '(continuation)
         '()
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args101318%_
        (apply make-instance StackTrace::t _%$args101318%_)))
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
      (let ((__tmp101353 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#Error::t
         'Error
         __tmp101353
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args101315%_ (apply make-instance Error::t _%$args101315%_)))
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
      (let ((__tmp101354 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#ContractViolation::t
         'ContractViolation
         __tmp101354
         '()
         '()
         '#f)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args101312%_
        (apply make-instance ContractViolation::t _%$args101312%_)))
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
      (let ((__tmp101355 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/error#RuntimeException::t
         'RuntimeException
         __tmp101355
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args101309%_
        (apply make-instance RuntimeException::t _%$args101309%_)))
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
      (lambda (_%exn101304%_ _%continue101305%_)
        (let ((_%exn101307%_ (wrap-runtime-exception _%exn101304%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn101307%_ _%continue101305%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn101300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn101300%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn101300%_ 'continuation))
                '#!void
                (let ((__tmp101356
                       (lambda (_%cont101302%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn101300%_
                            'continuation
                            _%cont101302%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp101356)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn101300%_))))
    (define error
      (lambda (_%message101297%_ . _%irritants101298%_)
        (raise (let ((__obj101348
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj101348
                  _%message101297%_
                  'irritants:
                  _%irritants101298%_)
                 __obj101348))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords101269%_
               _%ctx101264101270%_
               _%contract-expr101265101272%_
               _%value101266101274%_
               _%message101276%_)
        (let* ((_%ctx101278%_
                (if (eq? _%ctx101264101270%_ absent-value)
                    '#f
                    _%ctx101264101270%_))
               (_%contract-expr101280%_
                (if (eq? _%contract-expr101265101272%_ absent-value)
                    '#f
                    _%contract-expr101265101272%_))
               (_%value101282%_
                (if (eq? _%value101266101274%_ absent-value)
                    '#f
                    _%value101266101274%_)))
          (raise (let ((__obj101349
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj101349
                    _%message101276%_
                    'where:
                    _%ctx101278%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr101280%_
                                (cons 'value: (cons _%value101282%_ '())))))
                   __obj101349)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords101287%_ . _%args101288%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords101287%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords101287%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords101287%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords101287%_
                  'value:
                  absent-value))
               _%args101288%_)))
    (define __raise-contract-violation-error
      (lambda _%args101267101294%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%args101267101294%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define with-exception-handler
      (lambda (_%handler101238%_ _%thunk101239%_)
        (if (procedure? _%handler101238%_)
            (let ((_%handler101243%_ _%handler101238%_))
              (if (procedure? _%thunk101239%_)
                  (let ((_%thunk101253%_ _%thunk101239%_))
                    (__with-exception-handler
                     _%handler101243%_
                     _%thunk101253%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@59.54-59.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk101239%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@59.31-59.38"
               'contract:
               'procedure?
               'value:
               _%handler101238%_)
              '#!void))))
    (define __with-exception-handler
      (lambda (_%handler101213%_ _%thunk101214%_)
        (let* ((_%handler101217%_ _%handler101213%_)
               (_%thunk101225%_ _%thunk101214%_)
               (__tmp101357
                (lambda (_%exn101234%_)
                  (let ((_%exn101236%_ (wrap-runtime-exception _%exn101234%_)))
                    (declare (not safe))
                    (_%handler101217%_ _%exn101236%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp101357 _%thunk101225%_))))
    (define with-catch
      (lambda (_%handler101188%_ _%thunk101189%_)
        (if (procedure? _%handler101188%_)
            (let ((_%handler101193%_ _%handler101188%_))
              (if (procedure? _%thunk101189%_)
                  (let ((_%thunk101203%_ _%thunk101189%_))
                    (__with-catch _%handler101193%_ _%thunk101203%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@66.42-66.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk101189%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@66.19-66.26"
               'contract:
               'procedure?
               'value:
               _%handler101188%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler101163%_ _%thunk101164%_)
        (let* ((_%handler101167%_ _%handler101163%_)
               (_%thunk101175%_ _%thunk101164%_)
               (__tmp101358
                (lambda (_%cont101184%_)
                  (__with-exception-handler
                   (lambda (_%exn101186%_)
                     (let ()
                       (declare (not safe))
                       (##continuation-graft
                        _%cont101184%_
                        _%handler101167%_
                        _%exn101186%_)))
                   _%thunk101175%_))))
          (declare (not safe))
          (##continuation-capture __tmp101358))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn101150%_)
        (if (or (heap-overflow-exception? _%exn101150%_)
                (stack-overflow-exception? _%exn101150%_))
            _%exn101150%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn101150%_))
                _%exn101150%_
                (if (macro-exception? _%exn101150%_)
                    (let ((_%rte101158%_
                           (let ((__obj101350
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj101350
                                _%exn101150%_
                                '2
                                '#f
                                '#f))
                             __obj101350)))
                      (let ((__tmp101359
                             (lambda (_%cont101160%_)
                               (let ((__tmp101360
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont101160%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte101158%_
                                  'continuation
                                  __tmp101360)))))
                        (declare (not safe))
                        (##continuation-capture __tmp101359))
                      _%rte101158%_)
                    _%exn101150%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj101145%_)
        (let ((_%$e101147%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj101145%_))))
          (if _%$e101147%_ _%$e101147%_ (error-exception? _%obj101145%_)))))
    (define error-message
      (lambda (_%obj101138%_)
        (let ((_%$e101140%_
               (let ()
                 (declare (not safe))
                 (__slot-ref _%obj101138%_ 'message false))))
          (if _%$e101140%_
              _%$e101140%_
              (if (error-exception? _%obj101138%_)
                  (error-exception-message _%obj101138%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj101133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj101133%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj101133%_ 'irritants))
            (if (error-exception? _%obj101133%_)
                (error-exception-parameters _%obj101133%_)
                '#f))))
    (define error-trace
      (lambda (_%obj101131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj101131%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj101131%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e101112%_ _%port101113%_)
        (let ((_%$e101115%_
               (let ()
                 (declare (not safe))
                 (__method-ref _%e101112%_ 'display-exception))))
          (if _%$e101115%_
              ((lambda (_%f101118%_) (_%f101118%_ _%e101112%_ _%port101113%_))
               _%$e101115%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e101112%_ _%port101113%_))))))
    (define display-exception__0
      (lambda (_%e101124%_)
        (let ((_%port101126%_ (current-error-port)))
          (display-exception__% _%e101124%_ _%port101126%_))))
    (define display-exception
      (lambda _g101362_
        (let ((_g101361_ (let () (declare (not safe)) (##length _g101362_))))
          (cond ((let () (declare (not safe)) (##fx= _g101361_ 1))
                 (apply display-exception__0 _g101362_))
                ((let () (declare (not safe)) (##fx= _g101361_ 2))
                 (apply display-exception__% _g101362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g101362_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self99481101088%_ _%message101090%_ . _%rest101091%_)
        (let* ((_%self101093%_ _%self99481101088%_)
               (_%self101095%_ _%self101093%_)
               (_%message101109%_
                (if (string? _%message101090%_)
                    _%message101090%_
                    (call-with-output-string
                     '""
                     (lambda (_%g101104101106%_)
                       (display _%message101090%_ _%g101104101106%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self101095%_ 'message _%message101109%_))
          (apply class-instance-init! _%self101095%_ _%rest101091%_))))
    (define Error:::init!::specialize
      (lambda (__klass101323 __method-table101324)
        (let ((__message101325
               (let ((__slot101326
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101323 'message))))
                 (if __slot101326
                     __slot101326
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self99481101088%_ _%message101090%_ . _%rest101091%_)
            (let* ((_%self101093%_ _%self99481101088%_)
                   (_%self101095%_ _%self101093%_)
                   (_%message101109%_
                    (if (string? _%message101090%_)
                        _%message101090%_
                        (call-with-output-string
                         '""
                         (lambda (_%g101104101106%_)
                           (display _%message101090%_ _%g101104101106%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self101095%_
                 _%message101109%_
                 __message101325
                 '#f
                 '#f))
              (apply class-instance-init! _%self101095%_ _%rest101091%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (__bind-method! Error::t ':init! Error:::init! '#f))
    (define ContractViolation:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       ContractViolation::t
       ':init!
       ContractViolation:::init!
       '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_%self99482100810%_ _%port100812%_)
        (let* ((_%self100814%_ _%self99482100810%_)
               (_%self100816%_ _%self100814%_))
          (let ((_%tmp-port100826%_ (open-output-string))
                (_%display-error-newline100827%_
                 (> (output-port-column _%port100812%_) '0)))
            (fix-port-width! _%tmp-port100826%_)
            (let ((__tmp101363
                   (lambda ()
                     (if _%display-error-newline100827%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e100830%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100816%_ 'where))))
                       (if _%$e100830%_ (display _%$e100830%_) (display '"?")))
                     (let ((__tmp101364
                            (let ((__tmp101365
                                   (let ()
                                     (declare (not safe))
                                     (object-type _%self100816%_))))
                              (declare (not safe))
                              (##type-name __tmp101365))))
                       (declare (not safe))
                       (display* '" [" __tmp101364 '"]: "))
                     (let ((__tmp101366
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100816%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp101366))
                     (let ((_%irritants100834%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self100816%_ 'irritants))))
                       (if (null? _%irritants100834%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj100836%_)
                                (if (u8vector? _%obj100836%_)
                                    (let ((__tmp101367
                                           (cons '<u8vector>
                                                 (cons (u8vector-length
                                                        _%obj100836%_)
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp101367))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj100836%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants100834%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%cont100837100839%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self100816%_
                                   'continuation))))
                           (if _%cont100837100839%_
                               (let ((_%cont100842%_ _%cont100837100839%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont100842%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (__call-with-parameters
               __tmp101363
               current-output-port
               _%tmp-port100826%_))
            (let ((__tmp101368 (get-output-string _%tmp-port100826%_)))
              (declare (not safe))
              (##write-string __tmp101368 _%port100812%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass101327 __method-table101328)
        (let ((__where101329
               (let ((__slot101333
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101327 'where))))
                 (if __slot101333
                     __slot101333
                     (error '"Unknown slot" 'where))))
              (__continuation101330
               (let ((__slot101334
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101327 'continuation))))
                 (if __slot101334
                     __slot101334
                     (error '"Unknown slot" 'continuation))))
              (__message101331
               (let ((__slot101335
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101327 'message))))
                 (if __slot101335
                     __slot101335
                     (error '"Unknown slot" 'message))))
              (__irritants101332
               (let ((__slot101336
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101327 'irritants))))
                 (if __slot101336
                     __slot101336
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self99482100810%_ _%port100812%_)
            (let* ((_%self100814%_ _%self99482100810%_)
                   (_%self100816%_ _%self100814%_))
              (let ((_%tmp-port100826%_ (open-output-string))
                    (_%display-error-newline100827%_
                     (> (output-port-column _%port100812%_) '0)))
                (fix-port-width! _%tmp-port100826%_)
                (let ((__tmp101369
                       (lambda ()
                         (if _%display-error-newline100827%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e100830%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self100816%_
                                   __where101329
                                   '#f
                                   '#f))))
                           (if _%$e100830%_
                               (display _%$e100830%_)
                               (display '"?")))
                         (let ((__tmp101370
                                (let ((__tmp101371
                                       (let ()
                                         (declare (not safe))
                                         (object-type _%self100816%_))))
                                  (declare (not safe))
                                  (##type-name __tmp101371))))
                           (declare (not safe))
                           (display* '" [" __tmp101370 '"]: "))
                         (let ((__tmp101372
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self100816%_
                                   __message101331
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp101372))
                         (let ((_%irritants100834%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self100816%_
                                   __irritants101332
                                   '#f
                                   '#f))))
                           (if (null? _%irritants100834%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj100836%_)
                                    (if (u8vector? _%obj100836%_)
                                        (let ((__tmp101373
                                               (cons '<u8vector>
                                                     (cons (u8vector-length
                                                            _%obj100836%_)
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp101373))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj100836%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants100834%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%cont100837100839%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self100816%_
                                       __continuation101330
                                       '#f
                                       '#f))))
                               (if _%cont100837100839%_
                                   (let ((_%cont100842%_ _%cont100837100839%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont100842%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (__call-with-parameters
                   __tmp101369
                   current-output-port
                   _%tmp-port100826%_))
                (let ((__tmp101374 (get-output-string _%tmp-port100826%_)))
                  (declare (not safe))
                  (##write-string __tmp101374 _%port100812%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self99483100664%_ _%port100666%_)
        (let* ((_%self100668%_ _%self99483100664%_)
               (_%self100670%_ _%self100668%_)
               (_%tmp-port100680%_ (open-output-string)))
          (fix-port-width! _%tmp-port100680%_)
          (let ((__tmp101375
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self100670%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp101375 _%tmp-port100680%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%cont100681100683%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self100670%_ 'continuation))))
                (if _%cont100681100683%_
                    (let ((_%cont100686%_ _%cont100681100683%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port100680%_)
                      (newline _%tmp-port100680%_)
                      (display-continuation-backtrace
                       _%cont100686%_
                       _%tmp-port100680%_))
                    '#f))
              '#!void)
          (let ((__tmp101376 (get-output-string _%tmp-port100680%_)))
            (declare (not safe))
            (##write-string __tmp101376 _%port100666%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass101337 __method-table101338)
        (let ((__exception101339
               (let ((__slot101341
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101337 'exception))))
                 (if __slot101341
                     __slot101341
                     (error '"Unknown slot" 'exception))))
              (__continuation101340
               (let ((__slot101342
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass101337 'continuation))))
                 (if __slot101342
                     __slot101342
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self99483100664%_ _%port100666%_)
            (let* ((_%self100668%_ _%self99483100664%_)
                   (_%self100670%_ _%self100668%_)
                   (_%tmp-port100680%_ (open-output-string)))
              (fix-port-width! _%tmp-port100680%_)
              (let ((__tmp101377
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self100670%_
                        __exception101339
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp101377 _%tmp-port100680%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%cont100681100683%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self100670%_
                            __continuation101340
                            '#f
                            '#f))))
                    (if _%cont100681100683%_
                        (let ((_%cont100686%_ _%cont100681100683%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port100680%_)
                          (newline _%tmp-port100680%_)
                          (display-continuation-backtrace
                           _%cont100686%_
                           _%tmp-port100680%_))
                        '#f))
                  '#!void)
              (let ((__tmp101378 (get-output-string _%tmp-port100680%_)))
                (declare (not safe))
                (##write-string __tmp101378 _%port100666%_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port100536%_)
        (if (macro-character-port? _%port100536%_)
            (let ((_%old-width100538%_
                   (macro-character-port-output-width _%port100536%_)))
              (macro-character-port-output-width-set!
               _%port100536%_
               (lambda (_%port100540%_) '256))
              _%old-width100538%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port100533%_ _%old-width100534%_)
        (if (macro-character-port? _%port100533%_)
            (macro-character-port-output-width-set!
             _%port100533%_
             _%old-width100534%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e100531%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e100531%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn100525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100525%_))
            (let ((_%e100528%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100525%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e100528%_))
            (macro-abandoned-mutex-exception? _%exn100525%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn100521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100521%_))
            (let ((_%e100523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100521%_ 'exception))))
              (macro-cfun-conversion-exception? _%e100523%_))
            (macro-cfun-conversion-exception? _%exn100521%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn100517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100517%_))
            (let ((_%e100519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100517%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100519%_)
                  (macro-cfun-conversion-exception-arguments _%e100519%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e100519%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100517%_)
                (macro-cfun-conversion-exception-arguments _%exn100517%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn100517%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn100513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100513%_))
            (let ((_%e100515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100513%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100515%_)
                  (macro-cfun-conversion-exception-code _%e100515%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e100515%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100513%_)
                (macro-cfun-conversion-exception-code _%exn100513%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn100513%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn100509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100509%_))
            (let ((_%e100511%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100509%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100511%_)
                  (macro-cfun-conversion-exception-message _%e100511%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e100511%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100509%_)
                (macro-cfun-conversion-exception-message _%exn100509%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn100509%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn100503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100503%_))
            (let ((_%e100506%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100503%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e100506%_)
                  (macro-cfun-conversion-exception-procedure _%e100506%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e100506%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn100503%_)
                (macro-cfun-conversion-exception-procedure _%exn100503%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn100503%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn100499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100499%_))
            (let ((_%e100501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100499%_ 'exception))))
              (macro-datum-parsing-exception? _%e100501%_))
            (macro-datum-parsing-exception? _%exn100499%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn100495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100495%_))
            (let ((_%e100497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100495%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e100497%_)
                  (macro-datum-parsing-exception-kind _%e100497%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e100497%_ '())))))
            (if (macro-datum-parsing-exception? _%exn100495%_)
                (macro-datum-parsing-exception-kind _%exn100495%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn100495%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn100491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100491%_))
            (let ((_%e100493%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100491%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e100493%_)
                  (macro-datum-parsing-exception-parameters _%e100493%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e100493%_ '())))))
            (if (macro-datum-parsing-exception? _%exn100491%_)
                (macro-datum-parsing-exception-parameters _%exn100491%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn100491%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn100485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100485%_))
            (let ((_%e100488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100485%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e100488%_)
                  (macro-datum-parsing-exception-readenv _%e100488%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e100488%_ '())))))
            (if (macro-datum-parsing-exception? _%exn100485%_)
                (macro-datum-parsing-exception-readenv _%exn100485%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn100485%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn100479%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100479%_))
            (let ((_%e100482%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100479%_ 'exception))))
              (macro-deadlock-exception? _%e100482%_))
            (macro-deadlock-exception? _%exn100479%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn100475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100475%_))
            (let ((_%e100477%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100475%_ 'exception))))
              (macro-divide-by-zero-exception? _%e100477%_))
            (macro-divide-by-zero-exception? _%exn100475%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn100471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100471%_))
            (let ((_%e100473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100471%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e100473%_)
                  (macro-divide-by-zero-exception-arguments _%e100473%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e100473%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn100471%_)
                (macro-divide-by-zero-exception-arguments _%exn100471%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn100471%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn100465%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100465%_))
            (let ((_%e100468%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100465%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e100468%_)
                  (macro-divide-by-zero-exception-procedure _%e100468%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e100468%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn100465%_)
                (macro-divide-by-zero-exception-procedure _%exn100465%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn100465%_ '())))))))
    (define error-exception?
      (lambda (_%exn100461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100461%_))
            (let ((_%e100463%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100461%_ 'exception))))
              (macro-error-exception? _%e100463%_))
            (macro-error-exception? _%exn100461%_))))
    (define error-exception-message
      (lambda (_%exn100457%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100457%_))
            (let ((_%e100459%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100457%_ 'exception))))
              (if (macro-error-exception? _%e100459%_)
                  (macro-error-exception-message _%e100459%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e100459%_ '())))))
            (if (macro-error-exception? _%exn100457%_)
                (macro-error-exception-message _%exn100457%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn100457%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn100451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100451%_))
            (let ((_%e100454%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100451%_ 'exception))))
              (if (macro-error-exception? _%e100454%_)
                  (macro-error-exception-parameters _%e100454%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e100454%_ '())))))
            (if (macro-error-exception? _%exn100451%_)
                (macro-error-exception-parameters _%exn100451%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn100451%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn100447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100447%_))
            (let ((_%e100449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100447%_ 'exception))))
              (macro-expression-parsing-exception? _%e100449%_))
            (macro-expression-parsing-exception? _%exn100447%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn100443%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100443%_))
            (let ((_%e100445%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100443%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e100445%_)
                  (macro-expression-parsing-exception-kind _%e100445%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e100445%_ '())))))
            (if (macro-expression-parsing-exception? _%exn100443%_)
                (macro-expression-parsing-exception-kind _%exn100443%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn100443%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn100439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100439%_))
            (let ((_%e100441%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100439%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e100441%_)
                  (macro-expression-parsing-exception-parameters _%e100441%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e100441%_ '())))))
            (if (macro-expression-parsing-exception? _%exn100439%_)
                (macro-expression-parsing-exception-parameters _%exn100439%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn100439%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn100433%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100433%_))
            (let ((_%e100436%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100433%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e100436%_)
                  (macro-expression-parsing-exception-source _%e100436%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e100436%_ '())))))
            (if (macro-expression-parsing-exception? _%exn100433%_)
                (macro-expression-parsing-exception-source _%exn100433%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn100433%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn100429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100429%_))
            (let ((_%e100431%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100429%_ 'exception))))
              (macro-file-exists-exception? _%e100431%_))
            (macro-file-exists-exception? _%exn100429%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn100425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100425%_))
            (let ((_%e100427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100425%_ 'exception))))
              (if (macro-file-exists-exception? _%e100427%_)
                  (macro-file-exists-exception-arguments _%e100427%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e100427%_ '())))))
            (if (macro-file-exists-exception? _%exn100425%_)
                (macro-file-exists-exception-arguments _%exn100425%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn100425%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn100419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100419%_))
            (let ((_%e100422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100419%_ 'exception))))
              (if (macro-file-exists-exception? _%e100422%_)
                  (macro-file-exists-exception-procedure _%e100422%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e100422%_ '())))))
            (if (macro-file-exists-exception? _%exn100419%_)
                (macro-file-exists-exception-procedure _%exn100419%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn100419%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn100415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100415%_))
            (let ((_%e100417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100415%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e100417%_))
            (macro-fixnum-overflow-exception? _%exn100415%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn100411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100411%_))
            (let ((_%e100413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100411%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e100413%_)
                  (macro-fixnum-overflow-exception-arguments _%e100413%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e100413%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn100411%_)
                (macro-fixnum-overflow-exception-arguments _%exn100411%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn100411%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn100405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100405%_))
            (let ((_%e100408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100405%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e100408%_)
                  (macro-fixnum-overflow-exception-procedure _%e100408%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e100408%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn100405%_)
                (macro-fixnum-overflow-exception-procedure _%exn100405%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn100405%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn100399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100399%_))
            (let ((_%e100402%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100399%_ 'exception))))
              (macro-heap-overflow-exception? _%e100402%_))
            (macro-heap-overflow-exception? _%exn100399%_))))
    (define inactive-thread-exception?
      (lambda (_%exn100395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100395%_))
            (let ((_%e100397%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100395%_ 'exception))))
              (macro-inactive-thread-exception? _%e100397%_))
            (macro-inactive-thread-exception? _%exn100395%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn100391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100391%_))
            (let ((_%e100393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100391%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e100393%_)
                  (macro-inactive-thread-exception-arguments _%e100393%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e100393%_ '())))))
            (if (macro-inactive-thread-exception? _%exn100391%_)
                (macro-inactive-thread-exception-arguments _%exn100391%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn100391%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn100385%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100385%_))
            (let ((_%e100388%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100385%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e100388%_)
                  (macro-inactive-thread-exception-procedure _%e100388%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e100388%_ '())))))
            (if (macro-inactive-thread-exception? _%exn100385%_)
                (macro-inactive-thread-exception-procedure _%exn100385%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn100385%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn100381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100381%_))
            (let ((_%e100383%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100381%_ 'exception))))
              (macro-initialized-thread-exception? _%e100383%_))
            (macro-initialized-thread-exception? _%exn100381%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn100377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100377%_))
            (let ((_%e100379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100377%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e100379%_)
                  (macro-initialized-thread-exception-arguments _%e100379%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e100379%_ '())))))
            (if (macro-initialized-thread-exception? _%exn100377%_)
                (macro-initialized-thread-exception-arguments _%exn100377%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn100377%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn100371%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100371%_))
            (let ((_%e100374%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100371%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e100374%_)
                  (macro-initialized-thread-exception-procedure _%e100374%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e100374%_ '())))))
            (if (macro-initialized-thread-exception? _%exn100371%_)
                (macro-initialized-thread-exception-procedure _%exn100371%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn100371%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn100367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100367%_))
            (let ((_%e100369%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100367%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e100369%_))
            (macro-invalid-hash-number-exception? _%exn100367%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn100363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100363%_))
            (let ((_%e100365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100363%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e100365%_)
                  (macro-invalid-hash-number-exception-arguments _%e100365%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e100365%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn100363%_)
                (macro-invalid-hash-number-exception-arguments _%exn100363%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn100363%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn100357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100357%_))
            (let ((_%e100360%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100357%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e100360%_)
                  (macro-invalid-hash-number-exception-procedure _%e100360%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e100360%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn100357%_)
                (macro-invalid-hash-number-exception-procedure _%exn100357%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn100357%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn100353%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100353%_))
            (let ((_%e100355%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100353%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e100355%_))
            (macro-invalid-utf8-encoding-exception? _%exn100353%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn100349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100349%_))
            (let ((_%e100351%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100349%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e100351%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e100351%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e100351%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn100349%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn100349%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn100349%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn100343%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100343%_))
            (let ((_%e100346%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100343%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e100346%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e100346%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e100346%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn100343%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn100343%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn100343%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn100339%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100339%_))
            (let ((_%e100341%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100339%_ 'exception))))
              (macro-join-timeout-exception? _%e100341%_))
            (macro-join-timeout-exception? _%exn100339%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn100335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100335%_))
            (let ((_%e100337%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100335%_ 'exception))))
              (if (macro-join-timeout-exception? _%e100337%_)
                  (macro-join-timeout-exception-arguments _%e100337%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e100337%_ '())))))
            (if (macro-join-timeout-exception? _%exn100335%_)
                (macro-join-timeout-exception-arguments _%exn100335%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn100335%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn100329%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100329%_))
            (let ((_%e100332%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100329%_ 'exception))))
              (if (macro-join-timeout-exception? _%e100332%_)
                  (macro-join-timeout-exception-procedure _%e100332%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e100332%_ '())))))
            (if (macro-join-timeout-exception? _%exn100329%_)
                (macro-join-timeout-exception-procedure _%exn100329%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn100329%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn100325%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100325%_))
            (let ((_%e100327%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100325%_ 'exception))))
              (macro-keyword-expected-exception? _%e100327%_))
            (macro-keyword-expected-exception? _%exn100325%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn100321%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100321%_))
            (let ((_%e100323%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100321%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e100323%_)
                  (macro-keyword-expected-exception-arguments _%e100323%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e100323%_ '())))))
            (if (macro-keyword-expected-exception? _%exn100321%_)
                (macro-keyword-expected-exception-arguments _%exn100321%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn100321%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn100315%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100315%_))
            (let ((_%e100318%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100315%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e100318%_)
                  (macro-keyword-expected-exception-procedure _%e100318%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e100318%_ '())))))
            (if (macro-keyword-expected-exception? _%exn100315%_)
                (macro-keyword-expected-exception-procedure _%exn100315%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn100315%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn100311%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100311%_))
            (let ((_%e100313%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100311%_ 'exception))))
              (macro-length-mismatch-exception? _%e100313%_))
            (macro-length-mismatch-exception? _%exn100311%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn100307%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100307%_))
            (let ((_%e100309%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100307%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e100309%_)
                  (macro-length-mismatch-exception-arg-id _%e100309%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e100309%_ '())))))
            (if (macro-length-mismatch-exception? _%exn100307%_)
                (macro-length-mismatch-exception-arg-id _%exn100307%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn100307%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn100303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100303%_))
            (let ((_%e100305%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100303%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e100305%_)
                  (macro-length-mismatch-exception-arguments _%e100305%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e100305%_ '())))))
            (if (macro-length-mismatch-exception? _%exn100303%_)
                (macro-length-mismatch-exception-arguments _%exn100303%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn100303%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn100297%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100297%_))
            (let ((_%e100300%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100297%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e100300%_)
                  (macro-length-mismatch-exception-procedure _%e100300%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e100300%_ '())))))
            (if (macro-length-mismatch-exception? _%exn100297%_)
                (macro-length-mismatch-exception-procedure _%exn100297%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn100297%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn100293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100293%_))
            (let ((_%e100295%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100293%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e100295%_))
            (macro-mailbox-receive-timeout-exception? _%exn100293%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn100289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100289%_))
            (let ((_%e100291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100289%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e100291%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e100291%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e100291%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn100289%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn100289%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn100289%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn100283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100283%_))
            (let ((_%e100286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100283%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e100286%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e100286%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e100286%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn100283%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn100283%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn100283%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn100279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100279%_))
            (let ((_%e100281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100279%_ 'exception))))
              (macro-module-not-found-exception? _%e100281%_))
            (macro-module-not-found-exception? _%exn100279%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn100275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100275%_))
            (let ((_%e100277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100275%_ 'exception))))
              (if (macro-module-not-found-exception? _%e100277%_)
                  (macro-module-not-found-exception-arguments _%e100277%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e100277%_ '())))))
            (if (macro-module-not-found-exception? _%exn100275%_)
                (macro-module-not-found-exception-arguments _%exn100275%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn100275%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn100269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100269%_))
            (let ((_%e100272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100269%_ 'exception))))
              (if (macro-module-not-found-exception? _%e100272%_)
                  (macro-module-not-found-exception-procedure _%e100272%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e100272%_ '())))))
            (if (macro-module-not-found-exception? _%exn100269%_)
                (macro-module-not-found-exception-procedure _%exn100269%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn100269%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn100263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100263%_))
            (let ((_%e100266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100263%_ 'exception))))
              (macro-multiple-c-return-exception? _%e100266%_))
            (macro-multiple-c-return-exception? _%exn100263%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn100259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100259%_))
            (let ((_%e100261%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100259%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e100261%_))
            (macro-no-such-file-or-directory-exception? _%exn100259%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn100255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100255%_))
            (let ((_%e100257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100255%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e100257%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e100257%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e100257%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn100255%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn100255%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn100255%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn100249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100249%_))
            (let ((_%e100252%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100249%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e100252%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e100252%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e100252%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn100249%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn100249%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn100249%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn100245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100245%_))
            (let ((_%e100247%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100245%_ 'exception))))
              (macro-noncontinuable-exception? _%e100247%_))
            (macro-noncontinuable-exception? _%exn100245%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn100239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100239%_))
            (let ((_%e100242%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100239%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e100242%_)
                  (macro-noncontinuable-exception-reason _%e100242%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e100242%_ '())))))
            (if (macro-noncontinuable-exception? _%exn100239%_)
                (macro-noncontinuable-exception-reason _%exn100239%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn100239%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn100235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100235%_))
            (let ((_%e100237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100235%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e100237%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn100235%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn100231%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100231%_))
            (let ((_%e100233%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100231%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e100233%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e100233%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e100233%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn100231%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn100231%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn100231%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn100225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100225%_))
            (let ((_%e100228%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100225%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e100228%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e100228%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e100228%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn100225%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn100225%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn100225%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn100221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100221%_))
            (let ((_%e100223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100221%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e100223%_))
            (macro-nonprocedure-operator-exception? _%exn100221%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn100217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100217%_))
            (let ((_%e100219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100217%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100219%_)
                  (macro-nonprocedure-operator-exception-arguments _%e100219%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e100219%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100217%_)
                (macro-nonprocedure-operator-exception-arguments _%exn100217%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn100217%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn100213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100213%_))
            (let ((_%e100215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100213%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100215%_)
                  (macro-nonprocedure-operator-exception-code _%e100215%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e100215%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100213%_)
                (macro-nonprocedure-operator-exception-code _%exn100213%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn100213%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn100209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100209%_))
            (let ((_%e100211%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100209%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100211%_)
                  (macro-nonprocedure-operator-exception-operator _%e100211%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e100211%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100209%_)
                (macro-nonprocedure-operator-exception-operator _%exn100209%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn100209%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn100203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100203%_))
            (let ((_%e100206%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100203%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e100206%_)
                  (macro-nonprocedure-operator-exception-rte _%e100206%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e100206%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn100203%_)
                (macro-nonprocedure-operator-exception-rte _%exn100203%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn100203%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn100199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100199%_))
            (let ((_%e100201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100199%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e100201%_))
            (macro-not-in-compilation-context-exception? _%exn100199%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn100195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100195%_))
            (let ((_%e100197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100195%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e100197%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e100197%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e100197%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn100195%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn100195%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn100195%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn100189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100189%_))
            (let ((_%e100192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100189%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e100192%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e100192%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e100192%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn100189%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn100189%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn100189%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn100185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100185%_))
            (let ((_%e100187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100185%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e100187%_))
            (macro-number-of-arguments-limit-exception? _%exn100185%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn100181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100181%_))
            (let ((_%e100183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100181%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e100183%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e100183%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e100183%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn100181%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn100181%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn100181%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn100175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100175%_))
            (let ((_%e100178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100175%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e100178%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e100178%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e100178%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn100175%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn100175%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn100175%_ '())))))))
    (define os-exception?
      (lambda (_%exn100171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100171%_))
            (let ((_%e100173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100171%_ 'exception))))
              (macro-os-exception? _%e100173%_))
            (macro-os-exception? _%exn100171%_))))
    (define os-exception-arguments
      (lambda (_%exn100167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100167%_))
            (let ((_%e100169%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100167%_ 'exception))))
              (if (macro-os-exception? _%e100169%_)
                  (macro-os-exception-arguments _%e100169%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e100169%_ '())))))
            (if (macro-os-exception? _%exn100167%_)
                (macro-os-exception-arguments _%exn100167%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn100167%_ '())))))))
    (define os-exception-code
      (lambda (_%exn100163%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100163%_))
            (let ((_%e100165%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100163%_ 'exception))))
              (if (macro-os-exception? _%e100165%_)
                  (macro-os-exception-code _%e100165%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e100165%_ '())))))
            (if (macro-os-exception? _%exn100163%_)
                (macro-os-exception-code _%exn100163%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn100163%_ '())))))))
    (define os-exception-message
      (lambda (_%exn100159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100159%_))
            (let ((_%e100161%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100159%_ 'exception))))
              (if (macro-os-exception? _%e100161%_)
                  (macro-os-exception-message _%e100161%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e100161%_ '())))))
            (if (macro-os-exception? _%exn100159%_)
                (macro-os-exception-message _%exn100159%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn100159%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn100153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100153%_))
            (let ((_%e100156%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100153%_ 'exception))))
              (if (macro-os-exception? _%e100156%_)
                  (macro-os-exception-procedure _%e100156%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e100156%_ '())))))
            (if (macro-os-exception? _%exn100153%_)
                (macro-os-exception-procedure _%exn100153%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn100153%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn100149%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100149%_))
            (let ((_%e100151%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100149%_ 'exception))))
              (macro-permission-denied-exception? _%e100151%_))
            (macro-permission-denied-exception? _%exn100149%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn100145%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100145%_))
            (let ((_%e100147%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100145%_ 'exception))))
              (if (macro-permission-denied-exception? _%e100147%_)
                  (macro-permission-denied-exception-arguments _%e100147%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e100147%_ '())))))
            (if (macro-permission-denied-exception? _%exn100145%_)
                (macro-permission-denied-exception-arguments _%exn100145%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn100145%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn100139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100139%_))
            (let ((_%e100142%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100139%_ 'exception))))
              (if (macro-permission-denied-exception? _%e100142%_)
                  (macro-permission-denied-exception-procedure _%e100142%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e100142%_ '())))))
            (if (macro-permission-denied-exception? _%exn100139%_)
                (macro-permission-denied-exception-procedure _%exn100139%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn100139%_ '())))))))
    (define range-exception?
      (lambda (_%exn100135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100135%_))
            (let ((_%e100137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100135%_ 'exception))))
              (macro-range-exception? _%e100137%_))
            (macro-range-exception? _%exn100135%_))))
    (define range-exception-arg-id
      (lambda (_%exn100131%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100131%_))
            (let ((_%e100133%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100131%_ 'exception))))
              (if (macro-range-exception? _%e100133%_)
                  (macro-range-exception-arg-id _%e100133%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e100133%_ '())))))
            (if (macro-range-exception? _%exn100131%_)
                (macro-range-exception-arg-id _%exn100131%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn100131%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn100127%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100127%_))
            (let ((_%e100129%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100127%_ 'exception))))
              (if (macro-range-exception? _%e100129%_)
                  (macro-range-exception-arguments _%e100129%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e100129%_ '())))))
            (if (macro-range-exception? _%exn100127%_)
                (macro-range-exception-arguments _%exn100127%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn100127%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn100121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100121%_))
            (let ((_%e100124%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100121%_ 'exception))))
              (if (macro-range-exception? _%e100124%_)
                  (macro-range-exception-procedure _%e100124%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e100124%_ '())))))
            (if (macro-range-exception? _%exn100121%_)
                (macro-range-exception-procedure _%exn100121%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn100121%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn100117%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100117%_))
            (let ((_%e100119%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100117%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e100119%_))
            (macro-rpc-remote-error-exception? _%exn100117%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn100113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100113%_))
            (let ((_%e100115%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100113%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100115%_)
                  (macro-rpc-remote-error-exception-arguments _%e100115%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e100115%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100113%_)
                (macro-rpc-remote-error-exception-arguments _%exn100113%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn100113%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn100109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100109%_))
            (let ((_%e100111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100109%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100111%_)
                  (macro-rpc-remote-error-exception-message _%e100111%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e100111%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100109%_)
                (macro-rpc-remote-error-exception-message _%exn100109%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn100109%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn100103%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100103%_))
            (let ((_%e100106%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100103%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e100106%_)
                  (macro-rpc-remote-error-exception-procedure _%e100106%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e100106%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn100103%_)
                (macro-rpc-remote-error-exception-procedure _%exn100103%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn100103%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn100099%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100099%_))
            (let ((_%e100101%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100099%_ 'exception))))
              (macro-scheduler-exception? _%e100101%_))
            (macro-scheduler-exception? _%exn100099%_))))
    (define scheduler-exception-reason
      (lambda (_%exn100093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100093%_))
            (let ((_%e100096%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100093%_ 'exception))))
              (if (macro-scheduler-exception? _%e100096%_)
                  (macro-scheduler-exception-reason _%e100096%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e100096%_ '())))))
            (if (macro-scheduler-exception? _%exn100093%_)
                (macro-scheduler-exception-reason _%exn100093%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn100093%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn100089%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100089%_))
            (let ((_%e100091%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100089%_ 'exception))))
              (macro-sfun-conversion-exception? _%e100091%_))
            (macro-sfun-conversion-exception? _%exn100089%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn100085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100085%_))
            (let ((_%e100087%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100085%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100087%_)
                  (macro-sfun-conversion-exception-arguments _%e100087%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e100087%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100085%_)
                (macro-sfun-conversion-exception-arguments _%exn100085%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn100085%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn100081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100081%_))
            (let ((_%e100083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100081%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100083%_)
                  (macro-sfun-conversion-exception-code _%e100083%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e100083%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100081%_)
                (macro-sfun-conversion-exception-code _%exn100081%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn100081%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn100077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100077%_))
            (let ((_%e100079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100077%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100079%_)
                  (macro-sfun-conversion-exception-message _%e100079%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e100079%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100077%_)
                (macro-sfun-conversion-exception-message _%exn100077%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn100077%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn100071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100071%_))
            (let ((_%e100074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100071%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e100074%_)
                  (macro-sfun-conversion-exception-procedure _%e100074%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e100074%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn100071%_)
                (macro-sfun-conversion-exception-procedure _%exn100071%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn100071%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn100065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100065%_))
            (let ((_%e100068%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100065%_ 'exception))))
              (macro-stack-overflow-exception? _%e100068%_))
            (macro-stack-overflow-exception? _%exn100065%_))))
    (define started-thread-exception?
      (lambda (_%exn100061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100061%_))
            (let ((_%e100063%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100061%_ 'exception))))
              (macro-started-thread-exception? _%e100063%_))
            (macro-started-thread-exception? _%exn100061%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn100057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100057%_))
            (let ((_%e100059%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100057%_ 'exception))))
              (if (macro-started-thread-exception? _%e100059%_)
                  (macro-started-thread-exception-arguments _%e100059%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e100059%_ '())))))
            (if (macro-started-thread-exception? _%exn100057%_)
                (macro-started-thread-exception-arguments _%exn100057%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn100057%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn100051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100051%_))
            (let ((_%e100054%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100051%_ 'exception))))
              (if (macro-started-thread-exception? _%e100054%_)
                  (macro-started-thread-exception-procedure _%e100054%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e100054%_ '())))))
            (if (macro-started-thread-exception? _%exn100051%_)
                (macro-started-thread-exception-procedure _%exn100051%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn100051%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn100047%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100047%_))
            (let ((_%e100049%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100047%_ 'exception))))
              (macro-terminated-thread-exception? _%e100049%_))
            (macro-terminated-thread-exception? _%exn100047%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn100043%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100043%_))
            (let ((_%e100045%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100043%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e100045%_)
                  (macro-terminated-thread-exception-arguments _%e100045%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e100045%_ '())))))
            (if (macro-terminated-thread-exception? _%exn100043%_)
                (macro-terminated-thread-exception-arguments _%exn100043%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn100043%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn100037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100037%_))
            (let ((_%e100040%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100037%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e100040%_)
                  (macro-terminated-thread-exception-procedure _%e100040%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e100040%_ '())))))
            (if (macro-terminated-thread-exception? _%exn100037%_)
                (macro-terminated-thread-exception-procedure _%exn100037%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn100037%_ '())))))))
    (define type-exception?
      (lambda (_%exn100033%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100033%_))
            (let ((_%e100035%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100033%_ 'exception))))
              (macro-type-exception? _%e100035%_))
            (macro-type-exception? _%exn100033%_))))
    (define type-exception-arg-id
      (lambda (_%exn100029%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100029%_))
            (let ((_%e100031%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100029%_ 'exception))))
              (if (macro-type-exception? _%e100031%_)
                  (macro-type-exception-arg-id _%e100031%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e100031%_ '())))))
            (if (macro-type-exception? _%exn100029%_)
                (macro-type-exception-arg-id _%exn100029%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn100029%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn100025%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100025%_))
            (let ((_%e100027%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100025%_ 'exception))))
              (if (macro-type-exception? _%e100027%_)
                  (macro-type-exception-arguments _%e100027%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e100027%_ '())))))
            (if (macro-type-exception? _%exn100025%_)
                (macro-type-exception-arguments _%exn100025%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn100025%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn100021%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100021%_))
            (let ((_%e100023%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100021%_ 'exception))))
              (if (macro-type-exception? _%e100023%_)
                  (macro-type-exception-procedure _%e100023%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e100023%_ '())))))
            (if (macro-type-exception? _%exn100021%_)
                (macro-type-exception-procedure _%exn100021%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn100021%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn100015%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100015%_))
            (let ((_%e100018%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100015%_ 'exception))))
              (if (macro-type-exception? _%e100018%_)
                  (macro-type-exception-type-id _%e100018%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e100018%_ '())))))
            (if (macro-type-exception? _%exn100015%_)
                (macro-type-exception-type-id _%exn100015%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn100015%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn100011%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100011%_))
            (let ((_%e100013%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100011%_ 'exception))))
              (macro-unbound-global-exception? _%e100013%_))
            (macro-unbound-global-exception? _%exn100011%_))))
    (define unbound-global-exception-code
      (lambda (_%exn100007%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100007%_))
            (let ((_%e100009%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100007%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100009%_)
                  (macro-unbound-global-exception-code _%e100009%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e100009%_ '())))))
            (if (macro-unbound-global-exception? _%exn100007%_)
                (macro-unbound-global-exception-code _%exn100007%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn100007%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn100003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn100003%_))
            (let ((_%e100005%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn100003%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100005%_)
                  (macro-unbound-global-exception-rte _%e100005%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e100005%_ '())))))
            (if (macro-unbound-global-exception? _%exn100003%_)
                (macro-unbound-global-exception-rte _%exn100003%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn100003%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn99997%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99997%_))
            (let ((_%e100000%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99997%_ 'exception))))
              (if (macro-unbound-global-exception? _%e100000%_)
                  (macro-unbound-global-exception-variable _%e100000%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e100000%_ '())))))
            (if (macro-unbound-global-exception? _%exn99997%_)
                (macro-unbound-global-exception-variable _%exn99997%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn99997%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn99993%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99993%_))
            (let ((_%e99995%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99993%_ 'exception))))
              (macro-unbound-key-exception? _%e99995%_))
            (macro-unbound-key-exception? _%exn99993%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn99989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99989%_))
            (let ((_%e99991%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99989%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99991%_)
                  (macro-unbound-key-exception-arguments _%e99991%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e99991%_ '())))))
            (if (macro-unbound-key-exception? _%exn99989%_)
                (macro-unbound-key-exception-arguments _%exn99989%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn99989%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn99983%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99983%_))
            (let ((_%e99986%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99983%_ 'exception))))
              (if (macro-unbound-key-exception? _%e99986%_)
                  (macro-unbound-key-exception-procedure _%e99986%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e99986%_ '())))))
            (if (macro-unbound-key-exception? _%exn99983%_)
                (macro-unbound-key-exception-procedure _%exn99983%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn99983%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn99979%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99979%_))
            (let ((_%e99981%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99979%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e99981%_))
            (macro-unbound-os-environment-variable-exception? _%exn99979%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn99975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99975%_))
            (let ((_%e99977%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99975%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99977%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e99977%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e99977%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99975%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn99975%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn99975%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn99969%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99969%_))
            (let ((_%e99972%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99969%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception? _%e99972%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e99972%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e99972%_ '())))))
            (if (macro-unbound-os-environment-variable-exception? _%exn99969%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn99969%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn99969%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn99965%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99965%_))
            (let ((_%e99967%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99965%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e99967%_))
            (macro-unbound-serial-number-exception? _%exn99965%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn99961%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99961%_))
            (let ((_%e99963%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99961%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99963%_)
                  (macro-unbound-serial-number-exception-arguments _%e99963%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e99963%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn99961%_)
                (macro-unbound-serial-number-exception-arguments _%exn99961%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn99961%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn99955%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99955%_))
            (let ((_%e99958%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99955%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e99958%_)
                  (macro-unbound-serial-number-exception-procedure _%e99958%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e99958%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn99955%_)
                (macro-unbound-serial-number-exception-procedure _%exn99955%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn99955%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn99951%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99951%_))
            (let ((_%e99953%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99951%_ 'exception))))
              (macro-uncaught-exception? _%e99953%_))
            (macro-uncaught-exception? _%exn99951%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn99947%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99947%_))
            (let ((_%e99949%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99947%_ 'exception))))
              (if (macro-uncaught-exception? _%e99949%_)
                  (macro-uncaught-exception-arguments _%e99949%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e99949%_ '())))))
            (if (macro-uncaught-exception? _%exn99947%_)
                (macro-uncaught-exception-arguments _%exn99947%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn99947%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn99943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99943%_))
            (let ((_%e99945%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99943%_ 'exception))))
              (if (macro-uncaught-exception? _%e99945%_)
                  (macro-uncaught-exception-procedure _%e99945%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e99945%_ '())))))
            (if (macro-uncaught-exception? _%exn99943%_)
                (macro-uncaught-exception-procedure _%exn99943%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn99943%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn99937%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99937%_))
            (let ((_%e99940%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99937%_ 'exception))))
              (if (macro-uncaught-exception? _%e99940%_)
                  (macro-uncaught-exception-reason _%e99940%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e99940%_ '())))))
            (if (macro-uncaught-exception? _%exn99937%_)
                (macro-uncaught-exception-reason _%exn99937%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn99937%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn99933%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99933%_))
            (let ((_%e99935%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99933%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e99935%_))
            (macro-uninitialized-thread-exception? _%exn99933%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn99929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99929%_))
            (let ((_%e99931%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99929%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99931%_)
                  (macro-uninitialized-thread-exception-arguments _%e99931%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e99931%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn99929%_)
                (macro-uninitialized-thread-exception-arguments _%exn99929%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn99929%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn99923%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99923%_))
            (let ((_%e99926%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99923%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e99926%_)
                  (macro-uninitialized-thread-exception-procedure _%e99926%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e99926%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn99923%_)
                (macro-uninitialized-thread-exception-procedure _%exn99923%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn99923%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn99919%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99919%_))
            (let ((_%e99921%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99919%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e99921%_))
            (macro-unknown-keyword-argument-exception? _%exn99919%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn99915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99915%_))
            (let ((_%e99917%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99915%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99917%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e99917%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e99917%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn99915%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn99915%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn99915%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn99909%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99909%_))
            (let ((_%e99912%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99909%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e99912%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e99912%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e99912%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn99909%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn99909%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn99909%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn99905%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99905%_))
            (let ((_%e99907%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99905%_ 'exception))))
              (macro-unterminated-process-exception? _%e99907%_))
            (macro-unterminated-process-exception? _%exn99905%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn99901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99901%_))
            (let ((_%e99903%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99901%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99903%_)
                  (macro-unterminated-process-exception-arguments _%e99903%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e99903%_ '())))))
            (if (macro-unterminated-process-exception? _%exn99901%_)
                (macro-unterminated-process-exception-arguments _%exn99901%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn99901%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn99895%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99895%_))
            (let ((_%e99898%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99895%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e99898%_)
                  (macro-unterminated-process-exception-procedure _%e99898%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e99898%_ '())))))
            (if (macro-unterminated-process-exception? _%exn99895%_)
                (macro-unterminated-process-exception-procedure _%exn99895%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn99895%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn99891%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99891%_))
            (let ((_%e99893%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99891%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e99893%_))
            (macro-wrong-number-of-arguments-exception? _%exn99891%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn99887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99887%_))
            (let ((_%e99889%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99887%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99889%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e99889%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e99889%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99887%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn99887%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn99887%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn99881%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99881%_))
            (let ((_%e99884%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99881%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e99884%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e99884%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e99884%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn99881%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn99881%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn99881%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn99877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99877%_))
            (let ((_%e99879%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99877%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e99879%_))
            (macro-wrong-number-of-values-exception? _%exn99877%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn99873%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99873%_))
            (let ((_%e99875%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99873%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99875%_)
                  (macro-wrong-number-of-values-exception-code _%e99875%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e99875%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99873%_)
                (macro-wrong-number-of-values-exception-code _%exn99873%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn99873%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn99869%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99869%_))
            (let ((_%e99871%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99869%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99871%_)
                  (macro-wrong-number-of-values-exception-rte _%e99871%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e99871%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99869%_)
                (macro-wrong-number-of-values-exception-rte _%exn99869%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn99869%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn99863%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99863%_))
            (let ((_%e99866%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99863%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e99866%_)
                  (macro-wrong-number-of-values-exception-vals _%e99866%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e99866%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn99863%_)
                (macro-wrong-number-of-values-exception-vals _%exn99863%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn99863%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn99857%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn99857%_))
            (let ((_%e99860%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn99857%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e99860%_))
            (macro-wrong-processor-c-return-exception? _%exn99857%_))))))
